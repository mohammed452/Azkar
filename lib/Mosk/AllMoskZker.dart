import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarModels/DoaaWidget.dart';
import 'package:flutter_application_2/Mosk/MoslWidgit.dart';
import 'package:flutter_application_2/data/Mosk.dart';
import 'package:flutter_application_2/data/data.dart';

class AllMoskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("أذكار المسلم "),
            backgroundColor: const Color.fromARGB(255, 67, 160, 236),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.brightness_3,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              )
            ]),
        body: ListView.builder(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: MoskList.length,
            itemBuilder: ((context, index) {
              return MoslWidgit(MoskList[index].moskk);
            })));
  }
}
