import 'package:dish_dash/Clases/Plat.dart';
import 'package:dish_dash/Components/platoCard.dart';
import 'package:flutter/material.dart';

class Cocktails extends StatelessWidget {
  const Cocktails({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Plat> platos = [
      Plat(
        imageUrl: 'images/cocktail.png',
        nombrePlato: 'Cocktail ',
        descripcion: 'Conte Sucre i Alcohol',
        ingredientes: ['Alcohol', 'Refresc', 'Sucre'],
      ),
      Plat(
        imageUrl: 'images/cocktail2.png',
        nombrePlato: 'Tropical Elegance ',
        descripcion: 'Conte Sucre i Alcohol',
        ingredientes: ['Alcohol', 'Refresc', 'Sucre'],
      ),
      Plat(
        imageUrl: 'images/cocktail3.png',
        nombrePlato: 'Somni Vermell',
        descripcion: 'Conte Sucre i Alcohol',
        ingredientes: ['Alcohol', 'Refresc', 'Sucre'],
      ),
      Plat(
        imageUrl: 'images/cocktail4.png',
        nombrePlato: 'Fruit Explosion ',
        descripcion: 'Conte Sucre i Alcohol',
        ingredientes: ['Alcohol', 'Refresc', 'Sucre'],
      ),
      Plat(
        imageUrl: 'images/cocktail5.png',
        nombrePlato: 'Tropical',
        descripcion: 'Conte Sucre i Alcohol',
        ingredientes: ['Alcohol', 'Refresc', 'Sucre'],
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Cocktails'),
        centerTitle: true,
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: platos.length,
          itemBuilder: (context, index) {
            final plato = platos[index];
            return PlatoCard(
              imageUrl: plato.imageUrl,
              nombrePlato: plato.nombrePlato,
              descripcion: plato.descripcion,
              ingredientes: plato.ingredientes,
            );
          }),
    );
  }
}
