import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String name;
  final String path;
  const PlaceCard({super.key, required this.name, required this.path});

  @override
  Widget build(BuildContext context) {
    return Hero(
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
      child: Column(
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 5.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.location_on, color: Colors.black,),
                    Text(name, style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none
                      ),)
                  ],
                ),
              ),
              const Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.star, color: Colors.white,),
                  Icon(Icons.star, color: Colors.white,),
                  Icon(Icons.star, color: Colors.white,),
                  Icon(Icons.star, color: Colors.white,),
                  Icon(Icons.star, color: Colors.white,),
                ],
              ),
            ],
          ),
        ),
      ],
      ),
      ),
    );
  }
}