import 'package:flutter/material.dart';

import '../../app/constants/place_object.dart';
import '../../app/widgets/place_extras.dart';

class LocationDetails extends StatelessWidget {
  final PlaceObject place;
  
  const LocationDetails({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    final name = place.name;
    final info = place.description;
    final path = place.path;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(name)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Hero(
              tag: name,
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(path),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),
            const SizedBox(height: 5,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PlaceExtras(
                  extraname: 'call', 
                  icon: Icon(Icons.phone, size: 14),),
                PlaceExtras(
                  extraname: 'map', 
                  icon: Icon(Icons.near_me, size: 14),),
                PlaceExtras(
                  extraname: 'web', 
                  icon: Icon(Icons.public, size: 14),),
              ],
            ),
            const SizedBox(height: 15),
            Text(name,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 15),
            Text(info,
            style: const TextStyle(
              fontSize: 16,
            ),),
          ],
        ),
      )
    );
  }
}