import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tarefas'),
        ),
        body: Column(
          children: [
           Task('Aprender Flutter'),
           Task('Andar de bike'),
           Task('Meditar'),
           Task('Treinar'),
          ],
        ),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Container(color: Colors.blue, height: 140,),
            Container(
              color: Colors.white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black26,
                    width: 80,
                  ),
                  Text(nome),
                  ElevatedButton(onPressed: (){},
                    child: Icon(
                      Icons.arrow_drop_up,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

