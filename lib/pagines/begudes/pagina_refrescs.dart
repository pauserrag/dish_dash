import 'package:dish_dash/Clases/Plat.dart';
import 'package:dish_dash/Clases/model_dades.dart';
import 'package:dish_dash/Components/platoCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';


class Refrescs extends StatelessWidget {
  const Refrescs({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Plat> platos = [
      Plat(
        idPlat: 'br2',
        imageUrl: 'images/cocacola.png',
        nombrePlato: 'CocaCola ',
        descripcion: '',
        ingredientes: ['Sucres'],
        precio: 10,
      ),
      Plat(
        idPlat: 'br3',
        imageUrl: 'images/nestea.png',
        nombrePlato: 'Nestea ',
        descripcion: '',
        ingredientes: ['Sucres'],
        precio: 10,
      ),
      Plat(
         idPlat: 'br1',
        imageUrl: 'images/depsi.png',
        nombrePlato: 'Depsi Chino',
        descripcion: '',
        ingredientes: ['Sucres'],
        precio: 10,
      ),
      Plat(
        idPlat: 'br2',
        imageUrl: 'images/cocacola.png',
        nombrePlato: 'CocaCola ',
        descripcion: '',
        ingredientes: ['Sucres'],
        precio: 10,
      ),
      Plat(
        idPlat: 'br3',
        imageUrl: 'images/nestea.png',
        nombrePlato: 'Nestea ',
        descripcion: '',
        ingredientes: ['Sucres'],
        precio: 10,
      ),
      Plat(
        idPlat: 'br1',
        imageUrl: 'images/depsi.png',
        nombrePlato: 'Depsi Chino',
        descripcion: '',
        ingredientes: ['Sucres'],
        precio: 10,
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

