import 'package:integracion_twiliobloc/blocmanage/bloc/bloc.dart';
import 'package:integracion_twiliobloc/blocmanage/blocs/video_event.dart';
import 'package:integracion_twiliobloc/blocmanage/blocs/video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  @override
  VideoState get initialState => throw UnimplementedError();

  Stream<VideoState> mapEventToState(VideoEvent event) {
    throw UnimplementedError();
  }
}
