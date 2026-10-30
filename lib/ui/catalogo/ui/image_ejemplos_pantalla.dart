import 'package:flutter/material.dart';
import 'package:flutter_example/ui/core/ui/imagen_remota.dart';
import 'package:flutter_example/ui/core/ui/imagen_ruta.dart';

import '../../core/ui/seccion_catalogo.dart';

class ImageEjemplosPantalla extends StatelessWidget {
  const ImageEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de imagenes')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SeccionCatalogo(
            titulo: 'ImagenRuta',
            descripcion: 'Carga una imagen incluida como recurso de la aplicación.',
            parametros: const [
              'rutaAsset: obligatorio · ruta declarada en pubspec.yaml.',
              'descripcion: obligatorio · texto alternativo accesible.',
              'panoramica: opcional · false por defecto; true cambia la proporción.',
            ],
            codigo: """const ImagenRuta(
  rutaAsset: 'assets/images/socialcredit.webp',
  descripcion: '+ 15 social credit',
  panoramica: true,
)""",
            demostracion: const Column(
              children: [
                ImagenRuta(
                  rutaAsset: 'assets/images/socialcredit.webp',
                  descripcion: '+ 15 social credit',
                ),
                ImagenRuta(
                  rutaAsset: 'assets/images/socialcredit.webp',
                  descripcion: '+ 15 social credit',
                  panoramica: true,
                ),
              ],
            ),
          ),
          SeccionCatalogo(
            titulo: 'ImagenRemota',
            descripcion:
                'Descarga y muestra una imagen desde una URL, con estados de carga y error.',
            parametros: const [
              'url: obligatorio · dirección de la imagen.',
              'ajuste: opcional · BoxFit.cover por defecto.',
              'decorativa: opcional · false por defecto.',
              'descripcion: opcional solo si decorativa es true; si no, proporciona texto alternativo.',
            ],
            codigo: """const ImagenRemota(
  url: 'https://ejemplo.com/imagen.png',
  descripcion: 'Pájaro Flutter',
)""",
            demostracion: const ImagenRemota(
              url:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpT3b8XWxbnZ_lGmdGlx8U9bv4hAXp34JMbCmjdudiJw&s=10',
              descripcion: 'Pájaro Flutter',
            ),
          ),
        ],
      ),
    );
  }
}
