import 'package:flutter/material.dart';

import '../../core/ui/etiqueta_catalogo.dart';
import '../../core/ui/texto_jerarquico.dart';
import '../../core/ui/texto_resumen.dart';

class TextEjemplosPantalla extends StatelessWidget {
  const TextEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Text')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const EtiquetaCatalogo(texto: 'Texto de ejemplo'),
          const EtiquetaCatalogo(texto: 'Texto de ejemplo', variante: VarianteEtiqueta.destacada),
          const EtiquetaCatalogo(texto: 'Aviso: revisa la ruta', variante: VarianteEtiqueta.aviso),
          const Textojerarquico(texto: 'Ruta del río', tipo: TipoTexto.titulo),
          const Textojerarquico(texto: 'Ruta del río', tipo: TipoTexto.cuerpo),
          const Center(
            child: SizedBox(
              width: 220,
              child: TextoResumen(
                texto: 'Un recorrido largo que permite comparar las líneas visibles.',
                lineas: 1,
                centrado: true,
              ),
            ),
          ),
          const Center(
            child: SizedBox(
              width: 220,
              child: TextoResumen(
                texto: 'Un recorrido largo que permite comparar las líneas visibles.',
                lineas: 3,
                centrado: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
