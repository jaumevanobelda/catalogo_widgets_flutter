import 'package:flutter/material.dart';

class IconoFavorito extends StatelessWidget {
  const new({super.key, this.marcado = false, this.tamano = 32});

  final bool marcado;
  final double tamano;
  @override
  Widget build(BuildContext context) {
    return Icon(
      marcado ? Icons.favorite : Icons.favorite_border,
      semanticLabel: marcado ? "Favorito" : "No favorito",
      size: tamano,
      color: Colors.red,
    );
  }
}
