import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integration_twilio/models/models.dart';

final webRtcController = StateNotifierProvider.autoDispose(
  (_) => WebRtcController(),
);
