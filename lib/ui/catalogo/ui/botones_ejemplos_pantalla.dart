import 'package:flutter/material.dart';
import 'package:flutter_example/ui/core/ui/boton_accion.dart';
import 'package:flutter_example/ui/core/ui/boton_con_icono.dart';


class BotonesEjemplosPantalla extends StatelessWidget {
  const BotonesEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Text')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          BotonAccion(
            texto: 'Comenzar',
            destacado: true,
            onPressed: () {
              debugPrint('Comenzar desde el catálogo');
            },
          ),
          BotonAccion(
            texto: 'Comenzar',
            destacado: false,
            onPressed: () {
              debugPrint('Comenzar desde el catálogo');
            },
          ),
          const BotonAccion(texto: 'No disponible', onPressed: null),
          BotonConIcono(
            texto: 'Guardar',
            icono: Icons.bookmark_border,
            secundario: true,
            onPressed: () {
              debugPrint('Guardar desde el catálogo');
            },
          ),
        ],
      ),
    );
  }
}
