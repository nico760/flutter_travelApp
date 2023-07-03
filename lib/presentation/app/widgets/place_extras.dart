import 'package:flutter/material.dart';

class PlaceExtras extends StatelessWidget {
  final Icon icon;
  final String extraname;
  const PlaceExtras({super.key, required this.icon, required this.extraname});


  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(46, 46),
      child: ClipOval(
        child: Material(
          color: const Color.fromARGB(255, 197, 220, 238),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icon, 
              Text(extraname,style: const TextStyle(fontSize: 11),), 
          ],
          ),
      ),
    ),
  );
  }
}