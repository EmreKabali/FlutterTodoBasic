import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kabali Todo',
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  AnaEkran({Key key}) : super(key: key);

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController t1 = TextEditingController();

  List listem = [];

  elemanEkle() {
    setState(() {
      listem.add(t1.text);
      t1.clear();
    });
  }

  elemanCikar() {
    setState(() {
      listem.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(
              child: ListView.builder(
            itemCount: listem.length,
            itemBuilder: (context, indeksnumarasi) => ListTile(
              title: Text(listem[indeksnumarasi]),
            ),
          )),
          TextField(
            controller: t1,
          ),
          RaisedButton(
            onPressed: elemanEkle,
            child: Text('Add'),
          ),
          RaisedButton(
            onPressed: elemanCikar,
            child: Text('Remove'),
          ),
        ],
      ),
    );
  }
}
