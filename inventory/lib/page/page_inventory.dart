import 'package:flutter/material.dart';

class Page_inventory extends StatelessWidget {
  const Page_inventory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Créer un nouveau inventaire"),
        ),
        body: Row(
          const Text("nom"),
          const Text("image"),
          const Text("description"),
        ));
  }
}
