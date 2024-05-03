import 'package:dyter/integration/integration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dyter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Integration(),
    );
  }
}


// @override
// void initState() {
//   super.initState();
//   dyteClient = DyteMobileClient();
//   initializeDyte();
// }
//
// var baseUrl = "";
//
// void initializeDyte() async {
//   final meetingInfo = DyteMeetingInfoV2(
//     authToken: token,
//     baseUrl: "https://api.dyte.io/v2",
//     enableAudio: false,
//     enableVideo: false,
//   );
//   dyteClient.init(meetingInfo);
//
//   // final String? authToken = await dyterController.fetchAuthToken();
//   // if (token != null) {
//   //
//   // } else {
//   //   if (kDebugMode) {
//   //     print('Failed to initialize Dyte: Auth token not available');
//   //   }
//   // }
// }
//
//
// void initial() async {
//   DyteChatMessage message = DyteTextMessage(
//     displayName: 'Your Display Name',
//     read: false,
//     time: DateTime.now().millisecondsSinceEpoch.toString(),
//     type: DyteMessageType.text,
//     userId: 'Your UserID',
//     pluginId: 'Your PluginID',
//     message: 'Your Text Message',
//   );
//
//   final filePath = "file_path_of_image";
//   final fileName = "file_name";
//
//   dyteClient.chat.sendTextMessage(message as String);
//   dyteClient.chat.sendImageMessage(filePath, fileName);
//   dyteClient.chat.sendFileMessage(filePath, fileName);
//
//   // dyteClient.chat.sendFileMessage(path, message);
//   // dyteClient.chat.sendImageMessage(path, message);
// }
