import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView Builder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListViewBuilder(),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const numItems = 20;

    Widget _buildRow(int idx) {
      return ListTile(
        leading: CircleAvatar(
          child: Text('$idx'),
        ),
        title: Text(
          'Item thứ $idx',
          style: const TextStyle(fontSize: 18),
        ),
        trailing: const Icon(Icons.dashboard),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder'),
      ),
      body: ListView.builder(
          itemCount: numItems * 2,
          padding: const EdgeInsets.all(8),
          itemBuilder: (BuildContext context, int i) {
            if (i.isOdd) return const Divider();
            var index = i ~/ 2 + 1;
            return _buildRow(index);
          }),
    );
  }
}
