import 'package:flutter/material.dart';
import 'package:flutter_tic_toc_toi/grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {  },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.all(50.0),
              width: 300,
              height: 300,
              child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: List.generate(9, (index) => GridItem(index: index)),
              ),
            ),
          ),
          Divider(color: Colors.black),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Player One is X', style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                Divider(color: Colors.black),
                Row(
                  children: [
                    Icon(Icons.play_arrow,color: Colors.black,),
                    SizedBox(width: 5,),
                    Text('Player One: ',style: TextStyle(fontSize: 18),),
                    SizedBox(width: 10,),
                    Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.play_arrow,color: Colors.black,),
                    SizedBox(width: 5,),
                    Text('Player Two: ',style: TextStyle(fontSize: 18),),
                    SizedBox(width: 10,),
                    Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Start The Game',style: TextStyle(fontSize: 30),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
