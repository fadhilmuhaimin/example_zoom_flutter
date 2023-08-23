import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';


import 'auth_methods.dart';

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();
  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      // FeatureFlag featureFlag = FeatureFlag();
      // featureFlag.welcomePageEnabled = false;
      // featureFlag.resolution = FeatureFlagVideoResolution
      //     .MD_RESOLUTION; // Limit video resolution to 360p

      // var options = JitsiMeetingOptions(room: roomName)
      //   ..userDisplayName = _authMethods.user?.displayName
      //   ..userEmail = _authMethods.user?.email
      //   ..userAvatarURL = _authMethods.user?.photoURL
      //   ..audioMuted = isAudioMuted
      //   ..videoMuted = isVideoMuted;
      var options = JitsiMeetingOptions(roomNameOrUrl: "my-room");

      await JitsiMeetWrapper.joinMeeting(options: options);
    } catch (error) {
      print("error: $error");
    }
  }
}
