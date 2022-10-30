import 'package:flutter/material.dart';
import 'package:inventory/structure/inventory.dart';

enum Menu_inventory { modifier, supprimer }

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    required this.thumbnail,
    required this.title,
    required this.description,
  });

  final Widget thumbnail;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: _Inventory_item(
              title: title,
              description: description,
            ),
          ),
          PopupMenuButton<Menu_inventory>(
              // Callback that sets the selected popup menu item.
              onSelected: (Menu_inventory item) {},
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<Menu_inventory>>[
                    const PopupMenuItem<Menu_inventory>(
                      value: Menu_inventory.modifier,
                      child: Text('modifier'),
                    ),
                    const PopupMenuItem<Menu_inventory>(
                      value: Menu_inventory.supprimer,
                      child: Text('supprimer'),
                    ),
                  ]),
        ],
      ),
    );
  }
}

class _Inventory_item extends StatelessWidget {
  const _Inventory_item({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            description,
            style: const TextStyle(fontSize: 18.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
        ],
      ),
    );
  }
}

class Inventory_list extends StatefulWidget {
  const Inventory_list({Key? key}) : super(key: key);

  @override
  State<Inventory_list> createState() => _Inventory_listState();
}

class _Inventory_listState extends State<Inventory_list> {
  final _inventory_list = <Inventory>[
    Inventory("inventaire 1", "", ""),
    Inventory("inventaire 2", "kitchen.jpeg", "inventaire 2022"),
    Inventory("inventaire 3", "", "avril-mai 2022"),
    Inventory("inventaire 4", "", "juin 2017"),
    Inventory("inventaire 5", "PC.jpg", "29/09/21"),
    Inventory("inventaire 6", "", ""),
  ];
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        // multiply by two cause its insert a diviser each row
        itemCount: _inventory_list.length * 2,
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          String img_name = "box.jpeg";
          if (_inventory_list[index].image_url != "")
            img_name = _inventory_list[index].image_url;

          return CustomListItem(
            description: _inventory_list[index].description,
            thumbnail: Image(image: AssetImage(img_name)),
            title: _inventory_list[index].name,
          );
        });
  }
}
