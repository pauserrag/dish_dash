import 'package:dish_dash/pagines/menus/pagina_menu_client.dart';
import 'package:dish_dash/pagines/primersplats/pagina_primers_plats.dart';
import 'package:flutter/material.dart';
import 'package:dish_dash/Clases/Plat.dart';
import 'package:dish_dash/Components/platoCard.dart';

class PaginaPostres extends StatelessWidget {
  const PaginaPostres({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Plat> platos = [ 
      Plat(
        imageUrl: 'images/pizzamargarita.png',
        nombrePlato: 'Pizza Margarita',
        descripcion: 'Pizza Margarita',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
      ),
      Plat(
        imageUrl: 'images/pizza4quesos.png',
        nombrePlato: 'Pizza 4 formatges',
        descripcion: 'Pizza 4 formatges',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
      ),
      Plat(
        imageUrl: 'images/pizzacarbonara.png',
        nombrePlato: 'Pizza Carbonara',
        descripcion: 'Pizza Carbonara',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
      ),
      Plat(
        imageUrl: 'images/pizza4estacions.png',
        nombrePlato: 'Pizza 4 estacions ',
        descripcion: 'Pizza 4 estacions',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
      ),
      Plat(
        imageUrl: 'images/pizzabolonyesa.png',
        nombrePlato: 'Pizza bolonyesa',
        descripcion: 'Pizza bolonyesa',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
      ),
      Plat(
        imageUrl: 'images/pizzaambpinya.png',
        nombrePlato: 'Pizza amb pinya',
        descripcion: 'Pizza amb pinya',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaginaMenuClient()));
                },
                child: Text('Fruita', style: TextStyle(color: Colors.white)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaginaPrimersPlats()));
                },
                child: Text('Gelats ', style: TextStyle(color: Colors.white)),
              ),
            ),
            
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaginaPrimersPlats()));
                },
                child: Text('Freds ',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaginaPrimersPlats()));
                },
                child: Text('Semifreds ',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaginaPrimersPlats()));
                },
                child: Text('Calents ',
                    style: TextStyle(color: Colors.white)),
              ),
            ),

            // añadir mas aqui
          ],
        ),
        actions: <Widget>[],
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
