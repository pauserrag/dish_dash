import 'package:dish_dash/Clases/Plat.dart';
import 'package:dish_dash/Components/platoCard.dart';
import 'package:flutter/material.dart';

class Refrescs extends StatelessWidget {
  const Refrescs({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Plat> platos = [
      Plat(
        imageUrl: 'images/cocacola.png',
        nombrePlato: 'CocaCola ',
        descripcion: '',
        ingredientes: ['Sucres'],
      ),
      Plat(
        imageUrl: 'images/nestea.png',
        nombrePlato: 'Nestea ',
        descripcion: '',
        ingredientes: ['Sucres'],
      ),
      Plat(
        imageUrl: 'images/depsi.png',
        nombrePlato: 'Depsi Chino',
        descripcion: '',
        ingredientes: ['Sucres'],
      ),Plat(
        imageUrl: 'images/cocacola.png',
        nombrePlato: 'CocaCola ',
        descripcion: '',
        ingredientes: ['Sucres'],
      ),
      Plat(
        imageUrl: 'images/nestea.png',
        nombrePlato: 'Nestea ',
        descripcion: '',
        ingredientes: ['Sucres'],
      ),
      Plat(
        imageUrl: 'images/depsi.png',
        nombrePlato: 'Depsi Chino',
        descripcion: '',
        ingredientes: ['Sucres'],
      ),
     
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Refrescs'),
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
