import 'package:dyte_core/dyte_core.dart';
import 'package:flutter/material.dart';
import 'integration.dart';

class DyteMeeting extends StatefulWidget {
  const DyteMeeting({super.key});

  @override
  State<DyteMeeting> createState() => _DyteMeetingState();
}

class _DyteMeetingState extends State<DyteMeeting> {
  final dyteClient = DyteMobileClient();

  @override
  Widget build(BuildContext context) {
    final meetingInfo = DyteMeetingInfoV2(
      authToken: dyteToken,
      baseUrl: "https://api.cluster.dyte.in/v2", // new https://api.cluster.dyte.in/v2 === old https://api.dyte.io/v2
      enableAudio: false,
      enableVideo: false,
    );
    dyteClient.init(meetingInfo);
    return GestureDetector(
      onTap: joinRoom,
    );
  }

  void joinRoom() {
    dyteClient.joinRoom();
  }

  void leaveRoom() {
    dyteClient.leaveRoom();
  }
}

