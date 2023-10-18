import 'package:conomiza/componets/bottom_app_bar.dart';
import 'package:conomiza/componets/category_list.dart';
import 'package:conomiza/componets/select_month.dart';
import 'package:conomiza/componets/top_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.endDocked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: const [
          SelectMonth(),
          SizedBox(
            height: 20,
          ),
          TopCard(),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'CATEGORIAS',
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xFF515151), fontSize: 16),
            ),
          ),
          CategoryList()
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        tooltip: 'Adicionar',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: _fabLocation,
      bottomNavigationBar: BottomMenu(
        fabLocation: _fabLocation,
        shape: const CircularNotchedRectangle(),
      ),
    );
  }
}
