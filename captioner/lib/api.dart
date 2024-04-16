import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String uploadUrl = "http://192.168.102.102:8080/api";
String downloadUrl = "http://192.168.102.102:8080/result";


Future<Map<String, dynamic>> getData(String url) async {
  http.Response response = await http.get(Uri.parse(url));
  return jsonDecode(response.body);
}

Future<void> uploadImage(File imageFile, String url) async {
  try {
    String base64Image = base64Encode(imageFile.readAsBytesSync());
    await Dio().post(
      url,
      data: {'image': base64Image},
    );
  } catch (error) {
    print('Error uploading image: $error');
  }
}
