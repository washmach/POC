import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:integration_twilio/flutter_riverpod/models/entities/webrtc.dart';

part 'webrtc_state.freezed.dart';

@freezed
abstract class WebRtcState with _$WebRtcState {
  const factory WebRtcState({
    @Default(VideoInfo()) VideoInfo localVideoInfo,
    @Default(VideoInfo()) VideoInfo remoteVideoInfo,
  }) = _WebRtcState;
}
