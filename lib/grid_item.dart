import 'package:flutter/material.dart';

class GridItem extends StatefulWidget {
  final int index;

  const GridItem({Key? key, required this.index}) : super(key: key);

  @override
  State<GridItem> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue.shade700,
        child: Text('X',style: TextStyle(fontSize: 40, color: Colors.white),),
      ),
    );
  }
}
