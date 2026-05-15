import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // el ProviderScope es lo que permite que Riverpod funcione, haciedno que cualquier widget dentro del árbol de widgets tenga acceso a los providers.
  runApp(ProviderScope(child: MaterialApp(home: MyApp())));
}

//provider
final staticStringProvider = Provider((Ref ref) {
  return "Riverpod text test";
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // el WidgetRef viene de la importación de flutter_riverpod
    final stringResult = ref.watch(
      staticStringProvider,
    ); // el watch permite escuchar cambios
    return Scaffold(body: Center(child: Text(stringResult)));
  }
}
