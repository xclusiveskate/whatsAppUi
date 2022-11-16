// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:whatsappui/whatsapp/call.dart';
import 'package:whatsappui/whatsapp/chat.dart';
import 'package:whatsappui/whatsapp/status.dart';

class UiPage extends StatefulWidget {
  const UiPage({super.key});

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        animationDuration: const Duration(microseconds: 1),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            title: const Text("WhatsApp"),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              PopupMenuButton(
                  // initialValue: initialValue,
                  padding: const EdgeInsets.all(0),
                  elevation: 10,
                  splashRadius: 5.0,
                  enableFeedback: true,
                  position: PopupMenuPosition.over,
                  shape: const Border(
                      left: BorderSide(
                          color: Colors.green,
                          width: 1.0,
                          strokeAlign: StrokeAlign.inside),
                      bottom: BorderSide(
                          color: Colors.green,
                          width: 1.0,
                          strokeAlign: StrokeAlign.inside)),
                  onCanceled: () {},
                  onSelected: (value) {
                    print(value);
                  },
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context) {
                    return Mypop(context);
                  }),
            ],
            bottom: TabBar(
              isScrollable: false,
              unselectedLabelColor: Colors.grey,
              tabs: [
                const Icon(Icons.camera_alt),
                Text("Chats".toUpperCase()),
                Text("Status".toUpperCase()),
                Text("Calls".toUpperCase())
              ],
            ),
          ),
          body:
              const TabBarView(children: [Text(""), Chat(), Status(), Call()]),
        ));
  }
}

Mypop(context) {
  var changepop = DefaultTabController.of(context)!.index;
  if (changepop == 1) {
    return [
      PopupMenuItem(
          value: 1, onTap: () {}, child: const Text("Advertise on Facebook")),
      PopupMenuItem(
          value: 2, onTap: () {}, child: const Text("Business tools")),
      PopupMenuItem(value: 3, onTap: () {}, child: const Text("New group")),
      PopupMenuItem(value: 4, onTap: () {}, child: const Text("New broadcast")),
      PopupMenuItem(value: 5, onTap: () {}, child: const Text("Labels")),
      PopupMenuItem(
          value: 6, onTap: () {}, child: const Text("Linked devices")),
      PopupMenuItem(
          value: 7, onTap: () {}, child: const Text("Starred messages")),
      PopupMenuItem(value: 8, onTap: () {}, child: const Text("Settings")),
    ];
  } else if (changepop == 2) {
    return [
      PopupMenuItem(
          value: 1, onTap: () {}, child: const Text("Status Privacy")),
      PopupMenuItem(
          value: 2, onTap: () {}, child: const Text("Business Tools")),
      PopupMenuItem(value: 3, onTap: () {}, child: const Text("Settings")),
    ];
  } else if (changepop == 3) {
    return [
      PopupMenuItem(
          value: 1, onTap: () {}, child: const Text("Advertise on Facebook")),
      PopupMenuItem(
          value: 2, onTap: () {}, child: const Text("Clear call log")),
      PopupMenuItem(
          value: 3, onTap: () {}, child: const Text("Business Tools")),
      PopupMenuItem(value: 4, onTap: () {}, child: const Text("Settings")),
    ];
  } else {
    return null;
  }
}

var dates = DateTime;
