import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';

const organizationId = "0ecb8f5e-c75a-4074-b82f-c3a75141e8b7";
const apiKey = "0ecb8f5e-c75a-4074-b82f-c3a75141e8b7";
const baseUrl = "https://api.dyte.io/v2";
const meetingId = "bbb479f4-7774-4a29-94e3-3923b0ec3014";

class DyterController {

  Future<String?> fetchAuthToken() async {
    const String authTokenUrl = '$baseUrl/meetings';

    final String authString = base64Encode(utf8.encode('$organizationId:$apiKey'));

    try {
      final response = await http.post(
        Uri.parse(authTokenUrl),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Basic $authString',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "title": "Your Meeting Title",
          "preferred_region": "ap-south-1",
          "record_on_start": false,
          "live_stream_on_start": false,
          "recording_config": {
            "max_seconds": 60,
            "file_name_prefix": "string",
            "video_config": {
              "codec": "H264",
              "width": 1280,
              "height": 720,
              "watermark": {
                "url": "http://example.com",
                "size": {"width": 1, "height": 1},
                "position": "left top"
              },
              "export_file": true
            },
            "audio_config": {
              "codec": "AAC",
              "channel": "stereo",
              "export_file": true
            },
            "storage_config": {
              "type": "aws",
              "access_key": "string",
              "secret": "string",
              "bucket": "string",
              "region": "us-east-1",
              "path": "string",
              "auth_method": "KEY",
              "username": "string",
              "password": "string",
              "host": "string",
              "port": 0,
              "private_key": "string"
            },
            "dyte_bucket_config": {"enabled": true},
            "live_streaming_config": {"rtmp_url": "rtmp://a.rtmp.youtube.com/live2"}
          },
          "persist_chat": false,
          "summarize_on_end": false
        }),
      );

      log("dyter - response: ${response.body}");
      if (response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        return responseData['data']['authToken'];
      } else {
        print('Failed to fetch auth token: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Exception while fetching auth token: $e');
      return null;
    }
  }


}