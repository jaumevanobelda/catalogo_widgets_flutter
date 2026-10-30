import 'package:flutter/material.dart';

class SeccionCatalogo extends StatelessWidget {
  const SeccionCatalogo({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.parametros,
    required this.codigo,
    required this.demostracion,
  });

  final String titulo;
  final String descripcion;
  final List<String> parametros;
  final String codigo;
  final Widget demostracion;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final documentacion = _Documentacion(
              titulo: titulo,
              descripcion: descripcion,
              parametros: parametros,
              codigo: codigo,
            );
            final demostraciones = _Demostraciones(
              contenido: demostracion,
            );

            if (constraints.maxWidth < 720) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  documentacion,
                  const SizedBox(height: 28),
                  demostraciones,
                ],
              );
            }

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: documentacion),
                const SizedBox(width: 28),
                Expanded(child: demostraciones),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Documentacion extends StatelessWidget {
  const _Documentacion({
    required this.titulo,
    required this.descripcion,
    required this.parametros,
    required this.codigo,
  });

  final String titulo;
  final String descripcion;
  final List<String> parametros;
  final String codigo;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 14),
        Text(
          descripcion,
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'Cómo utilizarlo',
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        for (final parametro in parametros)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              parametro,
              style: theme.textTheme.bodyLarge?.copyWith(height: 1.25),
            ),
          ),
        const SizedBox(height: 10),
        Text(
          'Ejemplo de uso',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color(0xff202630),
            borderRadius: BorderRadius.circular(7),
          ),
          child: SelectableText(
            codigo,
            style: const TextStyle(
              color: Color(0xfff1f3f5),
              fontFamily: 'monospace',
              height: 1.45,
            ),
          ),
        ),
      ],
    );
  }
}

class _Demostraciones extends StatelessWidget {
  const _Demostraciones({required this.contenido});

  final Widget contenido;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Demostraciones',
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLowest,
            border: Border.all(color: theme.colorScheme.outlineVariant),
            borderRadius: BorderRadius.circular(8),
          ),
          child: contenido,
        ),
      ],
    );
  }
}
