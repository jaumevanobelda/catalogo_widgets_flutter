---
name: create-component
description: Crea o adapta un componente Flutter del catálogo con parámetros y estándares del proyecto. Usar al solicitar implementación o extracción de un componente.
---

# Crear componentes del catálogo
Lee el archivo de destino, las instrucciones del proyecto y el comportamiento pedido.
Si faltan datos que cambian la API pública o el resultado esperado, acláralos;
para decisiones menores sigue las convenciones existentes.

## Estándares de este proyecto
- Toda pieza visual se guarda bajo lib/ui/: las compartidas en lib/ui/core/ui/
  y las específicas en lib/ui/<funcionalidad>/ui/. No crees otras carpetas
  para componentes visuales. Los ViewModels van en ui/<funcionalidad>/view_models/.
- Conserva las clases de pantalla y la infraestructura entregada. No cambies el
  listado, main.dart ni el mecanismo entre pantallas para añadir un ejemplo.
- Usa UpperCamelCase para clases, lowerCamelCase para miembros y
  lower_case_with_underscores.dart para archivos. Respeta el idioma del código.
- Define una responsabilidad por componente y una API pequeña: campos final,
  parámetros nombrados, required para datos obligatorios y valores predeterminados
  cuando tengan sentido. Acepta super.key y usa constructor const si procede.
- Prefiere StatelessWidget si solo recibe configuración. Usa StatefulWidget
  cuando deba conservar datos propios; no inicialices ese estado en build.
- Recibe las acciones mediante callbacks tipados, como VoidCallback?, cuando
  correspondan. No ejecutes el callback al construir el widget.
- Expresa las variantes visuales con un parámetro booleano o enum. Guarda cada
  componente reutilizable en su archivo dentro de lib/ui/core/ui/ e impórtalo
  desde su pantalla. Define el estilo dentro del componente; no crees temas
  globales ni archivos de estilos en esta unidad.
- Mantén build sin efectos secundarios. Extrae un widget cuando permita reutilizar
  una pieza o aclarar responsabilidades; evita capas y paquetes innecesarios.
- Aporta tooltip a acciones de icono y descripción a imágenes informativas.
  No comuniques diferencias relevantes solo mediante color.
- Considera texto largo y espacio limitado; no fijes dimensiones arbitrarias
  salvo que formen parte de la demostración.

## Entrega y comprobación
Implementa solo lo pedido. Indica el archivo, los parámetros y un uso real en
la sección del catálogo, conservando los ejemplos anteriores. Explica la sintaxis
nueva. Identifica qué comportamiento se podrá comprobar en cada variante.
Ejecuta dart format sobre los archivos modificados y flutter analyze si puedes.
Comunica comandos y resultados reales; si no puedes ejecutarlos, indícalo.
No generes pruebas extensas salvo que se pidan: puedes proponer los casos útiles.