import 'package:app/stores/person_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class Home extends StatelessWidget {
  final store = GetIt.I.get<PersonStore>();
  @override
  Widget build(BuildContext context) {
    store.init();
    return Scaffold(
      appBar: AppBar(
        title: Text("Get It"),
      ),
      body: Container(child: Observer(
        builder: (_) {
          return ListView.builder(
              itemCount: store.people.length,
              itemBuilder: (_, int i) {
                return ListTile(
                  title: Text(store.people.elementAt(i).name),
                );
              });
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.add("name");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
