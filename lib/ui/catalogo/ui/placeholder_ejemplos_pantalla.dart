import 'package:flutter/material.dart';

import '../../core/ui/etiqueta_catalogo.dart';

class PlaceholderEjemplosPantalla extends StatelessWidget {
  const PlaceholderEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Text')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const EtiquetaCatalogo(texto: 'Texto de ejemplo'),
          const EtiquetaCatalogo(texto: 'Texto de ejemplo', variante: VarianteEtiqueta.destacada,
          ),
        ],
      ),
    );
  }
}
