import 'package:flutter/material.dart';
enum VarianteEtiqueta { normal, destacada, aviso }
class EtiquetaCatalogo extends StatelessWidget {
  const EtiquetaCatalogo({
    super.key,
    required this.texto,
    this.variante = VarianteEtiqueta.normal,
  });

  final String texto;
  // final bool destacada;
  final VarianteEtiqueta variante;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: variante != VarianteEtiqueta.normal ? 22 : 16,
        fontWeight: variante != VarianteEtiqueta.normal ? FontWeight.bold : FontWeight.normal,
        color: variante == VarianteEtiqueta.aviso ? Color.fromARGB(255, 255, 204, 0) : Colors.black,
        )
      );
  }
}