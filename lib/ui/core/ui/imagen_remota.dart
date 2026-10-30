import 'package:flutter/material.dart';

class ImagenRemota extends StatelessWidget {
  const new({
    super.key,
    required this.url,
    this.ajuste = BoxFit.cover,
    this.decorativa = false,
    this.descripcion,
  });

  final String url;
  final BoxFit ajuste;
  final bool decorativa;
  final String? descripcion;

  @override
  Widget build(BuildContext context) {
    if (!decorativa && descripcion == null && descripcion == "") {
      throw ("Descripciuon requerida");
    }
    return Center(
      child: Image.network(
        url,
        height: 180,
        fit: BoxFit.cover,
        semanticLabel: descripcion,
        loadingBuilder: (context, child, progreso) {
          if (progreso == null) return child;
          return const SizedBox(
            height: 180,
            child: Center(child: CircularProgressIndicator()),
          );
        },
        errorBuilder: (context, error, stackTrace) => const SizedBox(
          height: 180,
          child: Center(child: Text('Imagen no disponible')),
        ),
        // alignment: Alignment.topCenter,
      ),
    );
  }
}
