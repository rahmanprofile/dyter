import 'package:dyte_core/dyte_core.dart';
import 'package:dyter/integration/dyte_meeting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Integration extends StatefulWidget {
  const Integration({super.key});

  @override
  State<Integration> createState() => _IntegrationState();
}

class _IntegrationState extends State<Integration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("dyte core",style: GoogleFonts.inter(fontWeight: FontWeight.w500, color: Colors.white)),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DyteMeeting()));
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.purple
                ),
                child: Center(
                  child: Text("Join Now",style: GoogleFonts.inter(color: Colors.white)),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}

var dyteToken = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvcmdJZCI6IjI4ZjNjMjhhLTkyOTItNDFhNS04NTExLWIwNjkyYTZjOWNlOSIsIm1lZXRpbmdJZCI6ImJiYjJkMThmLTQ5YzItNDZiNC1hYWY5LTcwZTVhNGZmZjkzOCIsInBhcnRpY2lwYW50SWQiOiJhYWE0YmJhOC1lZjQwLTQ4MzgtYjdkNi1kZGI0NmFjOTY5ZDYiLCJwcmVzZXRJZCI6ImY1YjEwYjI2LTRlNGUtNDYzNy1hNTdkLTY3OTI1Y2UyNDk2YiIsImlhdCI6MTcxNDcxNTE4MywiZXhwIjoxNzIzMzU1MTgzfQ.jEQhcGoHIqonDFFc0hw5L_jr9Srt5eiK_0_T4DTAte4ilEDSNHbPOFM3xs1B4uTRBC8b4w3m_YIPVysRkP6jxje0VQ0UHxhi9o2aS3VGlLj3DmprQ0WPkm1Rz35V49PTxg0ZC4nNbdVOuq6jvOks-GiwsJ7cZMED8grGFPsC0gGkK9EA2yZmGMJKQ0o8VuwxpD-yHvXneeQ6ghGchS-aogn4NfEv85cngbjOU5sxHynZwQ8IcGuf99Mr8RpcNp-Q1sqOdQyLGi3CRrWBk8fvQHZuj9MWAGqpWC9dJsjgiqYKkf8GmKfTHysJHw0d_OnOonv790SNmVKkEFgondaXyw";


/*
*  final dyteClient = DyteMobileClient();

  Future<void> initialization() async {
    final meetingInfo = DyteMeetingInfoV2(
      authToken: dyteToken,
      baseUrl: 'https://api.dyte.io/v2',
      enableAudio: false,
      enableVideo: false,
    );
    return dyteClient.init(meetingInfo);
  }


  @override
  void initState() {
    initialization();
    super.initState();
  }

* */

