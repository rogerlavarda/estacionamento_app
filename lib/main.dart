import 'package:app_firebase/pagina_principal.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Estacionamento IFRS Campus Ibirubá',
        theme: ThemeData(
            colorSchemeSeed: const Color.fromARGB(0, 6, 51, 111),
            useMaterial3: true,
            brightness: Brightness.dark
        ),
        home: const PaginaPrincipal()
    );
  }
}







