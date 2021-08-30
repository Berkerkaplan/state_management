import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/model/item.dart';

class AddFlower extends StatefulWidget {
  @override
  _AddFlowerState createState() => _AddFlowerState();
}

class _AddFlowerState extends State<AddFlower> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          // flowerNotify.addFlower(Flower('red', 'rose'));
          Provider.of<DarkFlowersModel>(context)
              .addFlower(Flower('Dark', 'Daisy'));
        },
      ),
    );
  }
}
