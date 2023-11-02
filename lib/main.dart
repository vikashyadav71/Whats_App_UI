import 'package:flutter/material.dart';
import 'package:whats_app_ui/Screens/Updates_screen.dart';
import 'package:whats_app_ui/Screens/call_screen.dart';
import 'package:whats_app_ui/Screens/group_screen.dart';

import 'Screens/chat_screen.dart';
void main() {
  runApp(const MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: DefaultTabController(
        animationDuration: const Duration(microseconds: 10),
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              const Icon(Icons.camera_alt_outlined),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.search),
              const SizedBox(
                width: 20,
              ),
              PopupMenuButton(
                position: PopupMenuPosition.under,
                elevation: 10,
                shadowColor: Colors.white,


                itemBuilder: (BuildContext context) {
                  return const[
                    PopupMenuItem(child: Text('New Group')),
                    PopupMenuItem(child: Text('New broadcast')),
                    PopupMenuItem(child: Text('Linked devices')),
                    PopupMenuItem(child: Text('Started  messages')),
                    PopupMenuItem(child: Text('Settings')),
                  ];
                },
                child: const Icon(Icons.more_vert_outlined),

              )
            ],
            titleTextStyle: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
            backgroundColor: const Color(0Xff009688),
            title: const Text('WhatsApp'),
            toolbarHeight: 100,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(
                    icon: Icon(
                      Icons.groups,
                      size: 32,
                    ),
                    iconMargin: EdgeInsets.only(left: 0, right: 500)),
                Tab(
                  text: 'Chats',
                ),
                Tab(text: 'Updates'),
                Tab(
                  text: 'Calls',
                )
              ],
            ),
          ),
          body: Center(child: TabBarView(children: [
            Group().group(context),
            Chat().chat(context),
            Updates().updates(context),
            const Call(),


          ],),),
        ),
      ),

    );

  }
}
