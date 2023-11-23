import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'about.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int likes = 0;
  int vagas = 0;
  late final DatabaseReference likesRef;
  late final DatabaseReference vagasRef;

  late StreamSubscription<DatabaseEvent> likesSubscription;
  late StreamSubscription<DatabaseEvent> vagasSubscription;
  @override
  void initState(){
    super.initState();
    init();
  }

  init() async{
    likesRef = FirebaseDatabase.instance.ref('estacionamento/total_vagas');
    vagasRef = FirebaseDatabase.instance.ref('estacionamento/vagas_livres');
    try{
      final likesSnapshot = await likesRef.get();
      final vagasSnapshot = await vagasRef.get();
      likes = likesSnapshot.value as int;
      vagas = vagasSnapshot.value as int;
    } catch(err){
      debugPrint(err.toString());
    }
    
    likesSubscription = likesRef.onValue.listen((DatabaseEvent event) {
      setState(() {
        likes = (event.snapshot.value ?? 0) as int;
      });
    });

    vagasSubscription = vagasRef.onValue.listen((DatabaseEvent event) {
      setState(() {
        vagas = (event.snapshot.value ?? 0) as int;
      });
    });
  }

  like() async{
    await likesRef.set(ServerValue.increment(1));
  }

  @override
  void dispose() {
    likesSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const About(),
      appBar: AppBar(
        title: const Text("Estacionamento Inteligente"),
        leading: Container(
            padding: const EdgeInsets.all(8),
            child: const Image(image: AssetImage('images/logo_ifrs.png'))
        ),
      ),
      body: Center(
        child: Card(
          color: Colors.black54,
          elevation: 25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(onPressed: like, icon: const Icon(Icons.car_repair)),
              Text(
                  'TOTAL DE VAGAS: $likes',
                  style: const TextStyle(fontSize: 20)
              ),
              Text(
                  'VAGAS LIVRES: $vagas',
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.car_repair), label: 'Vagas'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Estacionamentos'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configurações'),
        ],
      ),
    );
  }
}
