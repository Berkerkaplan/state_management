import 'package:flutter/material.dart';
import 'package:state_management/add_flower.dart';
import 'package:state_management/model/item.dart';

class FlowerView extends StatefulWidget {
  @override
  _FlowerViewState createState() => _FlowerViewState();
}

class _FlowerViewState extends State<FlowerView> {
  var model = FlowersModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(('State Management')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddFlower()));
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: flowerNotify,
        builder: (context, model, child) {
          return ListView.builder(
            itemCount: model.list.length,
            itemBuilder: (context, index) {
              return Card(child: Text(model.list[index].color));
            },
          );
        },
      ),
    );
  }
}
