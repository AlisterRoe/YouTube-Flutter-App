import 'package:flutter/material.dart';

class MobileAppBar extends StatefulWidget implements PreferredSizeWidget {
  MobileAppBar({Key key})
      : preferredSize = Size.fromHeight(100),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _MobileAppBarState createState() => _MobileAppBarState();
}

class _MobileAppBarState extends State<MobileAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 120,
      centerTitle: true,
      title: InkWell(
        onTap: () => {},
        child: Container(
          child: Image(
            image: AssetImage('assets/images/logo.png'),
            fit: BoxFit.contain,
            height: 100,
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 15, 20),
          child: SizedBox(
            width: 80,
            child: FlatButton(
              textColor: Color(0xFFFFFFFF),
              color: Color(0xFF24695C),
              onPressed: () => {},
              child: Text(
                "Button",
                style: new TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
      iconTheme: new IconThemeData(color: Color(0xFF24695C)),
    );
  }
}
