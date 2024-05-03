//
// import 'dart:developer';
//
// import 'package:dyte_core/dyte_core.dart';
// import 'package:dyter/view/chat_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
//
// import '../controller/dyte_controller.dart';
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> { //..>
//   DyterController dyterController = DyterController();
//   DyteMobileClient dyteClient = DyteMobileClient();
//
//
//   var token = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvcmdJZCI6IjI4ZjNjMjhhLTkyOTItNDFhNS04NTExLWIwNjkyYTZjOWNlOSIsIm1lZXRpbmdJZCI6ImJiYmVjOWJkLWRmNDctNDRkZC1iNTRmLWU4ZmJkMjc4M2RhMiIsInBhcnRpY2lwYW50SWQiOiJhYWE0OTFiZi04NTJlLTRiM2QtOWUyOC03MjkzMGYwODkxOTMiLCJwcmVzZXRJZCI6ImY1YjEwYjI2LTRlNGUtNDYzNy1hNTdkLTY3OTI1Y2UyNDk2YiIsImlhdCI6MTcxNDY1MDUyOCwiZXhwIjoxNzIzMjkwNTI4fQ.B4kVJmv1HdIeAJxCWkntqrXr-aUfvS7ZNp6DKgRnSIRZidRDdFjd858RMCrDv2CAW2GauUGboPaCoFhQGc5gOmV1uzLqycYNcE4hl5omKaKaM7TcJFg-nsG1L9G7qNY64tQQ9hrFsiuCg7n7P6gpE9wwMYm6gQ93p6jNeEjGNtECFxn97OofXOCMW01O92881tImo3efYQgoCORCrKCgeDrj8MJlVScyjXiOG-E1DZXeqG79vzG3-xWwdLJjo29hgzDSFBrr7AgXNzhS3kbOwMe4UPI4bUoNTAaqCY1ZCo9rLyy7HUu3kHrxSYXLO2S37mA5nKd42KLQTnMUpa4U5Q";
//
//   @override
//   void initState() {
//     super.initState();
//     initializeDyte();
//   }
//
//   void initializeDyte() async {
//     final meetingInfo = DyteMeetingInfoV2(
//       authToken: token,
//       baseUrl: "https://api.dyte.io/v2",
//       enableAudio: false,
//       enableVideo: false,
//     );
//      dyteClient.init(meetingInfo);
//   }
//
//   void initial() async {
//       DyteChatMessage message = DyteTextMessage(
//         displayName: 'Saifi',
//         read: false,
//         time: DateTime.now().millisecondsSinceEpoch.toString(),
//         type: DyteMessageType.text,
//         userId: 'Your UserID',
//         pluginId: 'Your PluginID',
//         message: 'Hello Sir',
//       );
//
//       dyteClient.chat.sendTextMessage(message as String);
//
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Dyter"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             log('message');
//             initial();
//              startMeeting();
//           },
//           child: const Text('Start Meeting'),
//         ),
//       ),
//     );
//   }
//
//
//
//   void startMeeting() {
//     // final newMeetingImplement = NewMeetingImplement();
//     // newMeetingImplement.onMeetingRoomJoinStarted();
//     dyteClient.joinRoom();
//   }
//
//   @override
//   void dispose() {
//     dyteClient.leaveRoom();
//     super.dispose();
//   }
// }
//
//
//
// class NewMeetingImplement implements DyteMeetingRoomEventsListener {
//   @override
//   void onConnectedToMeetingRoom() {
//     // TODO: implement onConnectedToMeetingRoom
//   }
//
//   @override
//   void onConnectingToMeetingRoom() {
//     // TODO: implement onConnectingToMeetingRoom
//   }
//
//   @override
//   void onDisconnectedFromMeetingRoom(String reason) {
//     // TODO: implement onDisconnectedFromMeetingRoom
//   }
//
//   @override
//   void onMeetingInitCompleted() {
//     // TODO: implement onMeetingInitCompleted
//   }
//
//   @override
//   void onMeetingInitFailed(Exception exception) {
//     // TODO: implement onMeetingInitFailed
//   }
//
//   @override
//   void onMeetingInitStarted() {
//     // TODO: implement onMeetingInitStarted
//   }
//
//   @override
//   void onMeetingRoomConnectionError(String errorMessage) {
//     // TODO: implement onMeetingRoomConnectionError
//   }
//
//   @override
//   void onMeetingRoomConnectionFailed() {
//     // TODO: implement onMeetingRoomConnectionFailed
//   }
//
//   @override
//   void onMeetingRoomDisconnected() {
//     // TODO: implement onMeetingRoomDisconnected
//   }
//
//   @override
//   void onMeetingRoomJoinCompleted() {
//     // TODO: implement onMeetingRoomJoinCompleted
//   }
//
//   @override
//   void onMeetingRoomJoinFailed(Exception exception) {
//     // TODO: implement onMeetingRoomJoinFailed
//   }
//
//   @override
//   void onMeetingRoomJoinStarted() {
//     // TODO: implement onMeetingRoomJoinStarted
//   }
//
//   @override
//   void onMeetingRoomLeaveCompleted() {
//     // TODO: implement onMeetingRoomLeaveCompleted
//   }
//
//   @override
//   void onMeetingRoomLeaveStarted() {
//     // TODO: implement onMeetingRoomLeaveStarted
//   }
//
//   @override
//   void onMeetingRoomReconnectionFailed() {
//     // TODO: implement onMeetingRoomReconnectionFailed
//   }
//
//   @override
//   void onReconnectedToMeetingRoom() {
//     // TODO: implement onReconnectedToMeetingRoom
//   }
//
//   @override
//   void onReconnectingToMeetingRoom() {
//     // TODO: implement onReconnectingToMeetingRoom
//   }
//
//
//
// }