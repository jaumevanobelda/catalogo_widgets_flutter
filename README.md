# Catálogo de widgets Flutter

Aplicación Flutter educativa que reúne demostraciones de componentes
reutilizables. Cada sección del catálogo combina la explicación del componente
con ejemplos interactivos de sus variantes.

## Requisitos

- Flutter instalado y disponible en el `PATH`.
- Dart incluido en la instalación de Flutter.
- Un dispositivo, emulador o navegador configurado para ejecutar Flutter.

La versión mínima de Dart declarada por el proyecto es la indicada en
[`pubspec.yaml`](./pubspec.yaml).

## Ejecución

Desde la raíz del proyecto:

```bash
flutter pub get
flutter devices
flutter run
```

También se puede seleccionar un dispositivo concreto:

```bash
flutter run -d <device-id>
```

Al iniciar la aplicación, abre una categoría desde la pantalla **Catálogo de
widgets**. Dentro de cada categoría se puede desplazar el `ListView` para
consultar todas las tarjetas.

## Comprobación

Ejecuta el formateador y el analizador antes de revisar los cambios:

```bash
dart format lib test
flutter analyze
flutter test
```

La aplicación utiliza una imagen local y una imagen remota en la sección
**Image**. Para comprobarla completamente:

1. Verifica que `assets/images/socialcredit.webp` se muestra.
2. Abre la demostración de `ImagenRemota` con conexión disponible.
3. Pulsa los botones de las secciones **Botones** y **Scaffold y AppBar**.
4. Comprueba los estados de carga, error y los avisos fijos o flotantes.
5. Selecciona texto del bloque de código para confirmar que es copiable.

### Estado de la prueba incluida

`test/widget_test.dart` conserva la prueba inicial generada por Flutter para
una aplicación de contador. Comprueba que existen los textos `0` y `1` y que
un botón `+` incrementa el contador. Como la aplicación actual es un catálogo,
esa prueba no describe el comportamiento actual y falla al ejecutarse contra
`MyApp`; debe sustituirse por pruebas de las pantallas y componentes del
catálogo antes de usar `flutter test` como validación completa.

La prueba específica de `EtiquetaCatalogo`, ubicada en
[`test/ui/core/ui/etiqueta_catalogo_test.dart`](./test/ui/core/ui/etiqueta_catalogo_test.dart),
está preparada como ubicación para esa cobertura, pero actualmente no contiene
casos ejecutables.

## Lista de verificación de mejoras

- [x] Cada pantalla de categoría mantiene un `ListView` desplazable.
- [x] Cada componente tiene una tarjeta de documentación junto a sus
      demostraciones.
- [x] La tarjeta se divide en documentación y demostraciones en pantallas
      anchas, como en la referencia visual.
- [x] En pantallas estrechas, la tarjeta se adapta apilando ambas columnas.
- [x] La documentación explica para qué sirve cada componente.
- [x] Se indican los parámetros obligatorios.
- [x] Se indican los parámetros opcionales y sus valores predeterminados.
- [x] Se enumeran las variantes disponibles mediante enums o booleanos.
- [x] Cada sección incluye un ejemplo breve de uso en Dart.
- [x] Los ejemplos de código se muestran con `SelectableText` y fuente
      monoespaciada.
- [x] Las instancias reales aparecen debajo del bloque informativo.
- [x] Se documentan callbacks `onPressed` en los botones.
- [x] Se documenta el recurso local y la descripción accesible de las
      imágenes.
- [x] Se documenta la URL, el ajuste y la descripción de `ImagenRemota`.
- [x] Se muestran las variantes de `EtiquetaCatalogo`,
      `TextoJerarquico` y `TextoResumen`.
- [x] Se muestran los estados de `IconoEstado` y los estados de
      `IconoFavorito`.
- [x] Se muestran los avisos fijos y flotantes de `BotonAviso`.
- [x] La pantalla de `PantallaDemostracion` muestra configuración del título,
      centrado y contenido.
- [x] El README describe cómo ejecutar y comprobar el proyecto.

## Dos componentes explicados

### `TextoJerarquico`

[`TextoJerarquico`](./lib/ui/core/ui/texto_jerarquico.dart) recibe `texto`
como parámetro obligatorio porque siempre necesita contenido que representar.
`tipo` es opcional y utiliza `TipoTexto.cuerpo` por defecto, de modo que el
caso sencillo no necesita configuración adicional.

El enum `TipoTexto` permite seleccionar las variantes `titulo`, `subtitulo` y
`cuerpo`. La variante cambia el tamaño y el peso tipográfico, pero conserva el
mismo contenido. La pantalla de Text muestra las tres variantes con el mismo
texto para que la diferencia jerárquica sea visible.

La prueba de widget inicial
[`test/widget_test.dart`](./test/widget_test.dart) detecta si la aplicación
todavía presenta el comportamiento de la plantilla del contador: busca `0`,
pulsa el icono `+` y espera encontrar `1`. En este catálogo esa prueba detecta
una expectativa obsoleta, no un fallo de `TextoJerarquico`; por eso debe
reemplazarse por una prueba que compruebe el texto y sus tres variantes.

### `BotonAccion`

[`BotonAccion`](./lib/ui/core/ui/boton_accion.dart) exige `texto` porque es la
etiqueta que identifica la acción. `onPressed` es opcional y está tipado como
`VoidCallback?`: se proporciona una función para reaccionar a la pulsación y
se usa `null` para mostrar el botón deshabilitado. `destacado` es opcional y
vale `false` por defecto para que el estilo normal sea el comportamiento
predeterminado.

La variante `destacado: true` aplica el estilo destacado; `false` conserva el
estilo normal. La sección de Botones muestra ambas variantes y un tercer caso
deshabilitado, además de un callback breve con `debugPrint`:

```dart
BotonAccion(
  texto: 'Comenzar',
  destacado: true,
  onPressed: () => debugPrint('Comenzar'),
)
```
