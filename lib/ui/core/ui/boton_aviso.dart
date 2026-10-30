import 'package:flutter/material.dart';

class BotonAviso extends StatelessWidget {
  const new({
    super.key,
    required this.etiqueta,
    required this.mensaje,
    this.flotante = false,
    this.segundos = 3,
  });
  final String etiqueta;
  final String mensaje;
  final bool flotante;
  final int segundos;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
            content: Text(etiqueta),
            duration: Duration(seconds: segundos),
            behavior:flotante? SnackBarBehavior.floating: SnackBarBehavior.fixed,
          ),
        );
      },
      child: Text(mensaje),
    );
  }
}
