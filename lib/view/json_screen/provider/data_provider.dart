import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_test/view/json_screen/modal/json_modal.dart';

class DataProvider extends ChangeNotifier {
  DataProvider() {
    storeList();
  }

  List<JsonModal> jsonMap = [];

  Future<void> storeList() async {
    String list = await rootBundle.loadString('asset/json/user.json');
    Map<String, dynamic> jsonData = jsonDecode(list);

    // Ensure we are accessing the posts list correctly
    List<dynamic> postsList = jsonData['posts'];
    jsonMap = postsList.map((e) => JsonModal.setData(e)).toList();

    print(jsonMap);
    notifyListeners(); // Notify listeners to update UI
  }
}
