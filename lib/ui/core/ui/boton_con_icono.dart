import 'package:flutter/material.dart';

class BotonConIcono extends StatelessWidget {
  const new({
    super.key,
    required this.texto,
    this.onPressed,
    required this.secundario,
    required this.icono,
  });
  final String texto;
  final VoidCallback? onPressed;
  final bool secundario;
  final IconData icono;
  @override
  Widget build(BuildContext context) {
    return !secundario
        ? FilledButton.icon(
            onPressed: onPressed,
            icon: Icon(icono),
            label: Text(texto),
          )
        : OutlinedButton.icon(
            onPressed: onPressed,
            icon: Icon(icono),
            label: Text(texto),
          );
  }
}
