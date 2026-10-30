import 'package:flutter/material.dart';
import 'package:flutter_example/ui/core/ui/icono_estado.dart';
import 'package:flutter_example/ui/core/ui/icono_favorito.dart';

import '../../core/ui/etiqueta_catalogo.dart';
import '../../core/ui/seccion_catalogo.dart';

class IconEjemplosPantalla extends StatelessWidget {
  const IconEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Icons')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SeccionCatalogo(
            titulo: 'IconoEstado',
            descripcion: 'Representa visualmente el estado de una ruta.',
            parametros: const [
              'estado: obligatorio · pendiente, completada o error.',
              'tamano: opcional · 32 por defecto.',
            ],
            codigo: """const IconoEstado(
  estado: EstadoRuta.completada,
  tamano: 48,
)""",
            demostracion: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconoEstado(estado: EstadoRuta.pendiente),
                IconoEstado(estado: EstadoRuta.completada, tamano: 48),
                IconoEstado(estado: EstadoRuta.error),
              ],
            ),
          ),
          SeccionCatalogo(
            titulo: 'IconoFavorito',
            descripcion: 'Muestra si un elemento está marcado como favorito.',
            parametros: const [
              'marcado: opcional · false por defecto.',
              'tamano: opcional · 32 por defecto.',
            ],
            codigo: 'const IconoFavorito(marcado: true)',
            demostracion: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconoFavorito(),
                IconoFavorito(marcado: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
