import 'package:flutter/material.dart';

class RowsColumnsScreen extends StatelessWidget {
  const RowsColumnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: Text('Columnas y Filas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()=> {}, child: Text('Button 1')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: ()=> {}, child: Text('Button 2')),
                ElevatedButton(onPressed: ()=> {}, child: Text('Button 2')),
                ElevatedButton(onPressed: ()=> {}, child: Text('Button 2')),
              ],
            ),
            ElevatedButton(onPressed: ()=> {}, child: Text('Button 3')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: ()=> {}, icon: Icon(Icons.accessible_forward_sharp)),
                IconButton(onPressed: ()=> {}, icon: Icon(Icons.accessible)),
                IconButton(onPressed: ()=> {}, icon: Icon(Icons.not_accessible)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: ()=> {}, icon: Icon(Icons.accessible_forward_sharp)),
                IconButton(onPressed: ()=> {}, icon: Icon(Icons.accessible)),
                IconButton(onPressed: ()=> {}, icon: Icon(Icons.not_accessible)),
              ],
            )
          ],
        ),
      ),
    );
  }
}