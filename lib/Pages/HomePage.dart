import 'dart:ui';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 4, 
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70), 
            child: AppBar(
              elevation: 0,
              title: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("Whatsapp",
                style: TextStyle(fontSize: 21),),
              ),
              actions: [
                Padding(
                    padding: EdgeInsets.only(top: 15,right: 15),
                child: Icon(Icons.search,size: 28,),
                ),
                PopupMenuButton(
                  elevation: 10,
                  padding : EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                        child: Text("New Group",
                        style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.w500),),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text("New Broadcast",
                        style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.w500),),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text("Linked Device",
                        style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.w500),),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text("Starred Messages",
                        style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.w500),),
                    ),
                    PopupMenuItem(
                      value: 5,
                      child: Text("Payments",
                        style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.w500),),
                    ),
                    PopupMenuItem(
                      value: 6,
                      child: Text("Settings",
                        style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.w500),),
                    ),
                  ],
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Color(0xFF075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold),
                  tabs: [
                    // tab 1
                    Container(
                      width: 24,
                      child: Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                    Container(
                      // tab 2
                      width: 90,
                      child: Tab(
                        child: Row(
                          children: [
                            Text("CHATS"),
                            SizedBox(width: 8,),
                            Container(
                              alignment: Alignment.center,
                              // padding: EdgeInsets.all(10),
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "10",
                                style: TextStyle(
                                  color: Color(0xFF075E55),
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                   ),
                  //   Tab 3
                    Container(
                      width: 90,
                      child: Tab(
                        child: Text("STATUS"),),),
                    Container(
                      // tab 4
                      width: 90,
                      child: Tab(
                        child: Text("CALLS"),),),
                  ],
                ),
              ),
              Flexible(child: TabBarView(
                children: [
                  // tab 1
                Container(color: Colors.black),
                  // tab 3
                  Container(color: Colors.black,),
                  // tab 3
                  Container(color: Colors.black,),
                  // tab 4
                  Container(color: Colors.black,),
              ],)),
            ],
          ),
        )
    );
  }
}
