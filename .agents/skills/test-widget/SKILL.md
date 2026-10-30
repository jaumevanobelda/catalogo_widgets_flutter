---
name: test-widget
description: Genera o mejora pruebas de widgets Flutter a partir de requisitos observables. Usar al pedir tests de componentes o variantes del catálogo.
---

# Pruebas precisas de widgets
Lee los requisitos, el componente real, sus usos y las pruebas existentes.
No inventes nombres de clases, rutas, claves ni comportamientos ausentes.
Si falta un criterio de aceptación esencial, pregunta antes de darlo por supuesto.

## De requisitos a casos
Prepara una tabla: requisito, configuración/acción, resultado esperado y selector.
Cubre las variantes solicitadas y los límites relevantes, no combinaciones sin
sentido. Cada prueba debe detectar un fallo concreto; explica cuál.
No deduzcas el resultado esperado copiando la lógica de la implementación.

## Construcción de las pruebas
- Guarda los tests de interfaz bajo test/ui/, reflejando la ruta de lib/ui/.
- Usa flutter_test y testWidgets. Monta el componente aislado con el entorno mínimo
  necesario (por ejemplo MaterialApp y Scaffold). No incluyas el listado del catálogo
  si el requisito trata del componente.
- Organiza preparación, acción y comprobaciones. Usa nombres que describan la
  condición y el resultado. Crea una instancia nueva para cada caso independiente.
- Usa find.text, find.byTooltip o find.byKey si son inequívocos. Si hay duplicados,
  acota el selector al componente con find.descendant; no uses .first para ocultar
  ambigüedades. Añade una Key estable solo cuando esté justificada.
- Comprueba contenido y comportamiento: un callback debe contar llamadas, no solo
  existir. Para desactivación comprueba que no se llama. Prueba cambios de
  configuración del padre cuando sean parte del contrato.
- Si el estilo es requisito explícito, comprueba sus valores en el elemento
  correspondiente y ambas variantes; no afirmes que eso verifica el aspecto
  renderizado completo. No inspecciones detalles privados ni árboles exactos.
- Usa pump para reconstrucciones y tiempos concretos para comportamiento temporal.
  Reserva pumpAndSettle para animaciones finitas: puede no terminar con indicadores
  de progreso. No añadas pausas arbitrarias para hacer pasar una prueba.
- No dependas de Internet, reloj real ni recursos remotos. Aísla la carga con una
  dependencia controlable cuando se solicite probar imágenes o errores de red.
- Comprueba ausencia de excepciones como complemento, nunca como única aserción.
  No cambies el requisito, borres aserciones ni modifiques producción solo para
  conseguir pruebas verdes. Justifica cualquier ajuste de testabilidad.

## Validación y límites
Entrega archivos de test ejecutables con imports reales y sin marcadores pendientes.
Ejecuta flutter test con la ruta concreta y flutter analyze si el entorno lo permite.
Indica qué ejecutaste, el resultado y qué quedó sin comprobar. No prometas cobertura
completa ni precisión visual por tener pruebas verdes; señala qué requiere revisión
manual o pruebas visuales. Si no ejecutaste, dilo expresamente.