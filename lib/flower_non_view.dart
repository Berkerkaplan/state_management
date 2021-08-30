import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/add_flower.dart';
import 'package:state_management/model/item.dart';

class FlowerNonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<DarkFlowersModel>(
          child: Text('Hello'),
          builder: (context, model, child) {
            return FlatButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddFlower()));
              },
              icon: child,
              label: Text(model.list.length != 0 ? model.list.last.type : ''),
            );
          },
        ),
      ),
      body: ListView.builder(
          itemCount:
              Provider.of<DarkFlowersModel>(context, listen: true).list.length,
          itemBuilder: (context, index) {
            return Text('Hello');
          }),
    );
  }
}
