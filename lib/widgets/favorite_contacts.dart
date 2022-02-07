import 'package:chatappui/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import '../models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorite Contacts',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                  iconSize: 30,
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) => GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ChatScreen(user: favorites[index]))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(favorites[index].imageUrl),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      favorites[index].name,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )
                  ]),
                ),
              ),
              itemCount: favorites.length,
            ),
          )
        ],
      ),
    );
  }
}
