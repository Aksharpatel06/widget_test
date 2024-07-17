import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_test/view/json_screen/provider/data_provider.dart';

class JsonScreen extends StatelessWidget {
  const JsonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('JSON Screen')),
      body: (dataProvider.jsonMap.isEmpty)
          ? Center(child: CircularProgressIndicator())
          : Column(
        children: [
          Text(dataProvider.jsonMap[0].posts![0].tags![0]),
        ],
      ),
    );
  }
}
