import 'package:flutter/material.dart';

class BottomMenuButton extends StatefulWidget {
  @override
  _BottomMenuButtonState createState() => _BottomMenuButtonState();
}

class _BottomMenuButtonState extends State<BottomMenuButton> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(50.0),
              bottomStart: Radius.circular(50.0),
              topEnd: Radius.circular(50.0),
              bottomEnd: Radius.circular(50.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.5),
                blurRadius: 7,
                spreadRadius: 3.0,
                offset: Offset(0, -4))
          ],
        ),
        child: Row(
//          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  child: Icon(Icons.home),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(50.0),
                        bottomStart: Radius.circular(50.0)),
                    color: Color(0xFF424242),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Icon(Icons.shopping_cart),
                decoration: BoxDecoration(
                  color: Color(0xFF424242),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Container(
                    child: Icon(Icons.settings),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(50.0),
                          topEnd: Radius.circular(50.0)),
                      color: Color(0xFF424242),
                    ),
                  )),
            )
          ],
        ),
      ),
    );

//    );
  }
}
