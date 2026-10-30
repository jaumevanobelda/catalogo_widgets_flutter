import 'package:flutter/material.dart';
import 'package:flutter_example/ui/core/ui/boton_aviso.dart';
import 'package:flutter_example/ui/core/ui/pantalla_demostracion.dart';

import '../../core/ui/etiqueta_catalogo.dart';

class ScaffoldEjemplosPantalla extends StatelessWidget {
  const ScaffoldEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: const Text('Ejemplos de Text')),
    //   body: ListView(
    //     padding: const EdgeInsets.all(16),
    //     children: [
    //       const EtiquetaCatalogo(texto: 'Texto de ejemplo'),
    //       const EtiquetaCatalogo(texto: 'Texto de ejemplo', variante: VarianteEtiqueta.destacada,
    //       ),
    //     ],
    //   ),
    // );

    return PantallaDemostracion(
      titulo: 'Variantes de pantalla',
      destacada: true,
      centrarTitulo: true,
      contenido: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          BotonAviso(etiqueta: 'Aviso fijo', mensaje: 'Primer mensaje'),
          BotonAviso(
            etiqueta: 'Aviso flotante',
            mensaje: 'Segundo mensaje',
            flotante: true,
          ),
        ],
      ),
    );
  }
}
