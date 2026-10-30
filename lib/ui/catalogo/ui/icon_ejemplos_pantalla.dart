import 'package:flutter/material.dart';
import 'package:flutter_example/ui/core/ui/icono_estado.dart';
import 'package:flutter_example/ui/core/ui/icono_favorito.dart';

import '../../core/ui/etiqueta_catalogo.dart';

class IconEjemplosPantalla extends StatelessWidget {
  const IconEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Icons')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const IconoEstado(estado: EstadoRuta.pendiente),
          const IconoEstado(estado: EstadoRuta.completada, tamano: 48),
          const IconoEstado(estado: EstadoRuta.error),
          const IconoFavorito(),
          const IconoFavorito(marcado: true),
        ],
      ),
    );
  }
}
