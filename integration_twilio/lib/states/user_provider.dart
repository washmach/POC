import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integration_twilio/models/controllers/web_rtc/webrtc_controller.dart';

final userController = StateNotifierProvider.autoDispose(
  (_) => WebRtcController(),
);
