import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return const CustomRow();
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: const BoxDecoration(color: Color(0xFF101010)),
            child: const Center(
              child: Icon(
                Icons.star,
                size: 32.0,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          const Expanded(
            child: Text(
              'Alimentação',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                '\$100',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 18.0, color: Colors.red),
              ),
              Text(
                '\$50',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
