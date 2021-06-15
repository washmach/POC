import 'package:flutter/material.dart';
import 'package:integracion_twiliobloc/blocmanage/bloc/bloc_supervisor.dart';
import 'package:rxdart/rxdart.dart';
import 'transition.dart';

abstract class Bloc<Event, State> {
  final PublishSubject<Event> _eventSubject = PublishSubject<Event>();
  late BehaviorSubject<State> _stateSubject;
  State get initialState;

  State get currentState => _stateSubject.value;
  Stream<State> get state => _stateSubject.stream;

  Bloc() {
    _stateSubject = BehaviorSubject<State>.seeded(initialState);
    _blindStateSubject();
  }

  @mustCallSuper
  void dispose() {
    _eventSubject.close();
    _stateSubject.close();
  }

  void dispatch(Event event) {
    try {
      BlocSupervisor.delegate.onEvent(this, event!);
      onEvent(event);
      _eventSubject.sink.add(event);
    } catch (error) {
      _handleError(error);
    }
  }

  Stream<State> transform(
    Stream<Event> events,
    Stream<State> next(Event event),
  ) {
    return events.asyncExpand(next);
  }

  void onTransition(Transition<Event, State> transition) => null;
  void onError(Object error, StackTrace? stackTrace) => null;
  void onEvent(Event event) => null;

  Stream<State> mapEventToState(Event event);

  void _blindStateSubject() {
    Event currentEvent = currentState as Event;
    transform(
      _eventSubject,
      (Event event) {
        currentEvent = event;
        return mapEventToState(currentEvent).handleError(_handleError);
      },
    ).forEach((State nextState) {
      if (currentState == nextState || _stateSubject.isClosed) return;
      final transition = Transition(
        currentState: currentState,
        event: currentEvent,
        nextState: nextState,
      );
      BlocSupervisor.delegate.onTransition(this, transition);
      onTransition(transition);
      _stateSubject.sink.add(nextState);
    });
  }

  void _handleError(Object error, [StackTrace? stackTrace]) {
    BlocSupervisor.delegate.onError(this, error, stackTrace!);
    onError(error, stackTrace);
  }
}
