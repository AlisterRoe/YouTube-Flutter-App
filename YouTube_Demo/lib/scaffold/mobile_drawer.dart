import 'package:flutter/material.dart';

class MobileAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 150,
            child: InkWell(
              onTap: () => {},
              child: DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Color(0xFF24695C),
                    Color(0xFF24695C),
                  ]),
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    color: Color(0xFFFFFFFF),
                    iconSize: 30,
                    tooltip: 'Close Drawer',
                    onPressed: () => {Navigator.pop(context)},
                  ),
                ),
              ),
            ),
          ),
          CustomMenuListTile('Tile 1', () => {}, false),
          CustomMenuListTile('Tile 2', () => {}, false),
          ExpansionTile(
            title: Text(
              'Expansion Tile',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            children: <Widget>[
              CustomMenuListTile('Tile 3', () => {}, true),
              CustomMenuListTile('Tile 4', () => {}, true),
              CustomMenuListTile('Tile 5', () => {}, true),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenuListTile extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool indented;

  CustomMenuListTile(this.text, this.onTap, this.indented);

  @override
  Widget build(BuildContext context) {
    if (indented == false) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 15, 0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
