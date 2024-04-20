import 'package:dish_dash/Clases/model_dades.dart';
import 'package:dish_dash/pagines/begudes/pagina_begudes.dart';
import 'package:dish_dash/pagines/carrito/rebut_client.dart';
import 'package:dish_dash/pagines/menus/pagina_menu_client.dart';
import 'package:dish_dash/pagines/postres/pagina_postres.dart';
import 'package:dish_dash/pagines/primersplats/pagina_primers_plats.dart';
import 'package:dish_dash/pagines/segonsplats/pagina_segons_plats.dart';
import 'package:flutter/material.dart';
import 'package:dish_dash/Clases/Plat.dart';
import 'package:dish_dash/Components/platoCard.dart';
import 'package:provider/provider.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class PaginaInicialClient extends StatelessWidget {
  const PaginaInicialClient({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Plat> platos = [
      Plat(
        idPlat: 'pz1',
        imageUrl: 'images/pizzamargarita.png',
        nombrePlato: 'Pizza Margarita',
        descripcion: 'Pizza Margarita',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
        precio: 10,
      ),
      Plat(
        idPlat: 'pz2',
        imageUrl: 'images/pizza4quesos.png',
        nombrePlato: 'Pizza 4 formatges',
        descripcion: 'Pizza 4 formatges',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
        precio: 10,
      ),
      Plat(
        idPlat: 'pz3',
        imageUrl: 'images/pizzacarbonara.png',
        nombrePlato: 'Pizza Carbonara',
        descripcion: 'Pizza Carbonara',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
        precio: 10,
      ),
      Plat(
        idPlat: 'pz4',
        imageUrl: 'images/pizza4estacions.png',
        nombrePlato: 'Pizza 4 estacions ',
        descripcion: 'Pizza 4 estacions',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
        precio: 10,
      ),
      Plat(
        idPlat: 'pz5',
        imageUrl: 'images/pizzabolonyesa.png',
        nombrePlato: 'Pizza bolonyesa',
        descripcion: 'Pizza bolonyesa',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
        precio: 10,
      ),
      Plat(
        idPlat: 'pz6',
        imageUrl: 'images/pizzaambpinya.png',
        nombrePlato: 'Pizza amb pinya',
        descripcion: 'Pizza amb pinya',
        ingredientes: ['Tomate', 'Queso', 'Piña'],
        precio: 10,
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
                child: Text('Menús', style: TextStyle(color: Colors.white)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaginaBegudes()));
                },
                child: Text('Begudes', style: TextStyle(color: Colors.white)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaginaEntrants()));
                },
                child: Text('Entrants', style: TextStyle(color: Colors.white)),
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
                child: Text('Primers Plats',
                    style: TextStyle(color: Colors.white)),
              ),
            ),

            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaginaPostres()));
                },
                child: Text('Postres', style: TextStyle(color: Colors.white)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaginaCarrito()));
                },
                child: Text('Carrito', style: TextStyle(color: Colors.white)),
              ),
            ),
            // añadir mas aqui
          ],
        ),
        actions: <Widget>[],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: platos.length,
        itemBuilder: (context, index) {
          final plato = platos[index];
          return PlatoCard(
            plato: plato,
            onAdd: () {
              Provider.of<ModelDades>(context, listen: false)
                  .agregarAlCarrito(plato);

              final snackBar = SnackBar(
                backgroundColor: Color.fromARGB(100,92, 174, 99),
                elevation: 10,
                behavior: SnackBarBehavior.fixed,
                content: AwesomeSnackbarContent(
                  color: Color.fromARGB(1000,92, 174, 99),
                  title: '¡Éxito!',
                  message: '${plato.nombrePlato} añadido al carrito',
                  contentType: ContentType.success,
                ),
              );

              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            },
          );
        },
      ),
    );
  }
}
