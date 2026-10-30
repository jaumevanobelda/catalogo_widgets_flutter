import 'package:flutter/material.dart';

import '../../core/ui/etiqueta_catalogo.dart';
import '../../core/ui/seccion_catalogo.dart';
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
          SeccionCatalogo(
            titulo: 'EtiquetaCatalogo',
            descripcion: 'Muestra una etiqueta breve con una jerarquía visual.',
            parametros: const [
              'texto: obligatorio · contenido que se muestra.',
              'variante: opcional · normal por defecto.',
              'Variantes: normal, destacada y aviso.',
            ],
            codigo: """const EtiquetaCatalogo(
  texto: 'Ruta del río',
  variante: VarianteEtiqueta.destacada,
)""",
            demostracion: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EtiquetaCatalogo(texto: 'Texto de ejemplo'),
                EtiquetaCatalogo(
                  texto: 'Texto destacado',
                  variante: VarianteEtiqueta.destacada,
                ),
                EtiquetaCatalogo(
                  texto: 'Aviso: revisa la ruta',
                  variante: VarianteEtiqueta.aviso,
                ),
              ],
            ),
          ),
          SeccionCatalogo(
            titulo: 'TextoJerarquico',
            descripcion:
                'Muestra el mismo texto con tres niveles de jerarquía visual.',
            parametros: const [
              'texto: obligatorio · contenido que se muestra.',
              'tipo: opcional · TipoTexto.cuerpo por defecto.',
              'Variantes: titulo, subtitulo y cuerpo.',
            ],
            codigo: """const TextoJerarquico(
  texto: 'Ruta del río',
  tipo: TipoTexto.titulo,
)""",
            demostracion: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _VarianteTexto(
                  nombre: 'TipoTexto.titulo',
                  texto: Textojerarquico(
                    texto: 'Ruta del río',
                    tipo: TipoTexto.titulo,
                  ),
                ),
                _VarianteTexto(
                  nombre: 'TipoTexto.subtitulo',
                  texto: Textojerarquico(
                    texto: 'Ruta del río',
                    tipo: TipoTexto.subtitulo,
                  ),
                ),
                _VarianteTexto(
                  nombre: 'TipoTexto.cuerpo',
                  texto: Textojerarquico(texto: 'Ruta del río'),
                ),
              ],
            ),
          ),
          SeccionCatalogo(
            titulo: 'TextoResumen',
            descripcion:
                'Limita un texto a un número de líneas y permite centrarlo.',
            parametros: const [
              'texto: obligatorio · contenido del resumen.',
              'lineas: opcional · 2 líneas por defecto.',
              'centrado: opcional · false por defecto; usa true para centrar.',
            ],
            codigo: """const TextoResumen(
  texto: 'Un recorrido largo...',
  lineas: 3,
  centrado: true,
)""",
            demostracion: const Column(
              children: [
                SizedBox(
                  width: 220,
                  child: TextoResumen(
                    texto:
                        'Un recorrido largo que permite comparar las líneas visibles.',
                    lineas: 1,
                    centrado: true,
                  ),
                ),
                SizedBox(
                  width: 220,
                  child: TextoResumen(
                    texto:
                        'Un recorrido largo que permite comparar las líneas visibles.',
                    lineas: 3,
                    centrado: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _VarianteTexto extends StatelessWidget {
  const _VarianteTexto({required this.nombre, required this.texto});

  final String nombre;
  final Widget texto;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      decoration: BoxDecoration(
        border: Border.all(color: theme.colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nombre,
            style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
          ),
          const SizedBox(height: 8),
          texto,
        ],
      ),
    );
  }
}
