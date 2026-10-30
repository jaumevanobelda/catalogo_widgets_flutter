import 'package:flutter/material.dart';
import 'package:flutter_example/ui/core/ui/boton_aviso.dart';
import 'package:flutter_example/ui/core/ui/pantalla_demostracion.dart';

import '../../core/ui/seccion_catalogo.dart';

class ScaffoldEjemplosPantalla extends StatelessWidget {
  const ScaffoldEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Scaffold y AppBar')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SeccionCatalogo(
            titulo: 'PantallaDemostracion',
            descripcion: 'Crea una pantalla con AppBar configurable y un contenido proporcionado por el usuario.',
            parametros: const [
              'titulo: obligatorio · texto del AppBar.',
              'contenido: obligatorio · widget que ocupa el cuerpo.',
              'destacada: opcional · false por defecto; cambia el color del título.',
              'centrarTitulo: opcional · false por defecto.',
            ],
            codigo: """PantallaDemostracion(
  titulo: 'Variantes de pantalla',
  destacada: true,
  centrarTitulo: true,
  contenido: const Text('Contenido'),
)""",
            demostracion: PantallaDemostracion(
              titulo: 'Vista previa',
              destacada: true,
              centrarTitulo: true,
              contenido: ListView(
                shrinkWrap: true,
                children: const [
                  BotonAviso(etiqueta: 'Aviso fijo', mensaje: 'Primer mensaje'),
                  BotonAviso(
                    etiqueta: 'Aviso flotante',
                    mensaje: 'Segundo mensaje',
                    flotante: true,
                  ),
                ],
              ),
            ),
          ),
          SeccionCatalogo(
            titulo: 'BotonAviso',
            descripcion: 'Muestra un SnackBar con un mensaje fijo o flotante durante unos segundos.',
            parametros: const [
              'etiqueta: obligatorio · mensaje que aparece en el SnackBar.',
              'mensaje: obligatorio · texto del botón.',
              'flotante: opcional · false por defecto.',
              'segundos: opcional · 3 por defecto.',
            ],
            codigo: """const BotonAviso(
  etiqueta: 'Guardado',
  mensaje: 'Mostrar aviso',
  flotante: true,
  segundos: 5,
)""",
            demostracion: const Column(
              children: [
                BotonAviso(etiqueta: 'Aviso fijo', mensaje: 'Primer mensaje'),
                BotonAviso(
                  etiqueta: 'Aviso flotante',
                  mensaje: 'Segundo mensaje',
                  flotante: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
