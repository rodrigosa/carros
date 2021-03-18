import 'package:carros/drawer_list.dart';
import 'package:carros/pages/carro/carros_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text(
            "Carros",
          ),
        ),
        bottom: TabBar(tabs: [
          Tab(text: "Clássicos",),
          Tab(text: "Esportivos",),
          Tab(text: "Luxo",)
        ],),
        ),
        body: TabBarView(
          children: [
            CarrosListView(),
            CarrosListView(),
            CarrosListView()
          ],
        ),
        drawer: DrawerList(),
      ),
    );
  }


}
