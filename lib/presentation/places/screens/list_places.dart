import 'package:flutter/material.dart';
import 'package:reto_tres/presentation/app/widgets/place_card.dart';

import '../../app/constants/place_object.dart';
import 'location_details.dart';

class ListPlaces extends StatelessWidget {
  static final List<PlaceObject> placeslist= [
    PlaceObject(
    'Guatapé', 
    'Es un lago artificial hermoso donde puedes hacer paseos en lancha o en catamarán. La atracción principal es una piedra de 220 mts de altura la cual puedes subir a través de una escalera de 700 escalones y ver el paisaje desde arriba. Dentro del pueblo te puedes transportar en unas motochivas que son motocicletas de tres ruedas con techo, muy coloridas y típicas del lugar.',
    'images/guatape.jpg', 
    ),
    PlaceObject(
    'Museo el Castillo', 
    'Un espacio verde en medio de la ciudad, para caminar, ver el paisaje, observar pájaros y ardillas y hacer un picnic que puedes comprar en la cafeteria del Museo.', 
    'images/castillo.jpg'
    ),
    PlaceObject(
    'Graffitour', 
    'Desde que se inicia el recorrido se van desubriendo detalles intetesantes, y cada uno le parece más interesante que el anterior. En cada rincón se respira arte, y sorprende como sus expresiones han cambiado la vida de la comuna.', 
    'images/graffitour.jpg'
    ),
    PlaceObject(
    'Parque Arví', 
    'Es un parque abierto desarrollado en predios de uso público, creado para el disfrute de toda la comunidad local, nacional e internacional. Además de hermosos senderos cuenta con actividades extremas como cannopy.', 
    'images/arvi.jpeg'
    ),
    PlaceObject(
    'Parque Explora', 
    'Parque de ciencia y tecnología, un acuario, un planetario. Espacios versátiles, escenarios memorables ubicados bajo el agua, al borde del universo y en salas premiadas nacional e internacionalmente por sus experiencias poco convencionales, que permiten vivir el significado más profundo y verdadero de la innovación.', 
    'images/explora.jpg'
    ),
    PlaceObject(
    'Viaje por el metro', 
    'Un símbolo de la cultura y el bienestar de Medellín es el Metro, un sistema de transporte masivo que atraviesa el área metropolitana de la ciudad de sur a norte, de norte a nororiente, del centro hacia el occidente y del occidente al noroccidente. El sistema sobre rieles se complementa con líneas de cable aéreo que conectan a la ciudad con los barrios ubicados en las montañas y con un parque ecoturístico.', 
    'images/metro.jpg'
    ),
    PlaceObject(
    'Provenza', 
    'Si están buscando una experiencia vibrante y llena de encanto, no pueden dejar de visitar la calle Provenza. Esta colorida y pintoresca calle les transportará a un ambiente bohemio y cosmopolita, repleto de cafés acogedores, restaurantes con sabores internacionales y tiendas de moda únicas.', 
    'images/provenza.jpg'
    ),

  ];

  const ListPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Places in Medellin'),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: placeslist.length,
          itemBuilder: (BuildContext context, int index) {
            
            return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: PlaceCard(
                  name: placeslist[index].name, 
                  path: placeslist[index].path,
                  ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LocationDetails(place: placeslist[index]), 
                  ),
                );
              }
            );
          }
          ),
      ),
    );
  }
}