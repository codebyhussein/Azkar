import 'dart:convert';

import 'package:flutter/material.dart';

import '../constant/ListView.dart';

class DataFromJson extends StatelessWidget {
  const DataFromJson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Center(
            child: const Text(
              "أذكار ",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
      backgroundColor: Colors.white10,
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/Askar.json"),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('error happend'));
          } else if (snapshot.hasData) {
            var showdata = json.decode(snapshot.data!);
            return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return listView(
                    zekr: showdata[index]['zekr'],
                    count: showdata[index]['count'] != ""
                        ? showdata[index]['count']
                        : "50",
                    description: showdata[index]['description'],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: showdata.length);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
