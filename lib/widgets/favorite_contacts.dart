import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Favorite Contacts",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                    iconSize: 30.0,
                    color: Colors.blueGrey,
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
          Container(
              height: 120.0,
              child: ListView.builder(
                  itemCount: favorites.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage(favorites[index].imageUrl),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            favorites[index].name,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
