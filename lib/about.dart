import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black54
            ),
            accountName: Text("Curso Técnico em Informática"),
            accountEmail: Text("Campus Ibirubá"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              //backgroundImage: AssetImage('images/info.png'),
              child: Image(image: AssetImage('images/info.png')),
            ),
          ),
          ListTile(title: Text('Projeto desenvolvido no contexto do Projeto Integrador do curso pelos alunos: ')),
          ListTile(title: Text('Iuri Facco Silva'), leading: Icon(Icons.arrow_right)),
          ListTile(title: Text('Thomas Neu'), leading: Icon(Icons.arrow_right)),
          ListTile(title: Text('Felipe Winck Ottoni'), leading: Icon(Icons.arrow_right)),
          ListTile(title: Text('Luiz Fernando Andrade'), leading: Icon(Icons.arrow_right)),
          ListTile(title: Text('João Vitor Krammes'), leading: Icon(Icons.arrow_right)),
          ListTile(title: Text('Gabriel Silva'), leading: Icon(Icons.arrow_right)),
          ListTile(title: Text('Pietro Soares'), leading: Icon(Icons.arrow_right)),
          ListTile(title: Text('Thierry Fagundes'), leading: Icon(Icons.arrow_right)),
          ListTile(title: Text('Orientador:')),
          ListTile(title: Text('Roger Hoff Lavarda'), leading: Icon(Icons.arrow_right)),
        ],
      ),
    );
  }
}
