import 'package:flutter/material.dart';
import 'package:flutter_example/ui/core/ui/imagen_remota.dart';
import 'package:flutter_example/ui/core/ui/imagen_ruta.dart';

import '../../core/ui/etiqueta_catalogo.dart';

class ImageEjemplosPantalla extends StatelessWidget {
  const ImageEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de imagenes')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const ImagenRuta(
            rutaAsset: 'assets/images/socialcredit.webp',
            descripcion: '+ 15 social credit',
          ),
          const ImagenRuta(
            rutaAsset: 'assets/images/socialcredit.webp',
            descripcion: '+ 15 social credit',
            panoramica: true,
          ),
          const ImagenRemota(
            url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpT3b8XWxbnZ_lGmdGlx8U9bv4hAXp34JMbCmjdudiJw&s=10',
            descripcion: 'Pajaro flutter',
          ),
        ],
      ),
    );
  }
}
