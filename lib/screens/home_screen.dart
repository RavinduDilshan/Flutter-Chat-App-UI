import 'package:chatappui/models/message_model.dart';
import 'package:chatappui/widgets/category_selector.dart';
import 'package:chatappui/widgets/favorite_contacts.dart';
import 'package:chatappui/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text(
            'Chats',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: Column(
          children: [
            CategorySelector(),
            Expanded(
              child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [FavoriteContacts(), RecentChats()],
                  )),
            )
          ],
        ));
  }
}
