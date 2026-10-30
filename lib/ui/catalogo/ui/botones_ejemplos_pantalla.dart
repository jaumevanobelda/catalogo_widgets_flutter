import 'package:flutter/material.dart';
import 'package:flutter_example/ui/core/ui/boton_accion.dart';
import 'package:flutter_example/ui/core/ui/boton_con_icono.dart';

import '../../core/ui/seccion_catalogo.dart';

class BotonesEjemplosPantalla extends StatelessWidget {
  const BotonesEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de botones')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SeccionCatalogo(
            titulo: 'BotonAccion',
            descripcion: 'Ejecuta una acción y ofrece una variante destacada.',
            parametros: const [
              'texto: obligatorio · etiqueta visible.',
              'onPressed: opcional · callback al pulsar; null deshabilita el botón.',
              'destacado: opcional · false por defecto.',
            ],
            codigo: """BotonAccion(
  texto: 'Comenzar',
  destacado: true,
  onPressed: () => debugPrint('Comenzar'),
)""",
            demostracion: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BotonAccion(
                  texto: 'Comenzar',
                  destacado: true,
                  onPressed: () => debugPrint('Comenzar desde el catálogo'),
                ),
                BotonAccion(
                  texto: 'Comenzar',
                  onPressed: () => debugPrint('Comenzar desde el catálogo'),
                ),
                const BotonAccion(texto: 'No disponible'),
              ],
            ),
          ),
          SeccionCatalogo(
            titulo: 'BotonConIcono',
            descripcion: 'Combina una etiqueta, un icono y una acción.',
            parametros: const [
              'texto: obligatorio · etiqueta visible.',
              'icono: obligatorio · IconData que se muestra.',
              'secundario: obligatorio · true usa el estilo outlined.',
              'onPressed: opcional · callback al pulsar; null lo deshabilita.',
            ],
            codigo: """BotonConIcono(
  texto: 'Guardar',
  icono: Icons.bookmark_border,
  secundario: true,
  onPressed: guardar,
)""",
            demostracion: BotonConIcono(
              texto: 'Guardar',
              icono: Icons.bookmark_border,
              secundario: true,
              onPressed: () => debugPrint('Guardar desde el catálogo'),
            ),
          ),
        ],
      ),
    );
  }
}
