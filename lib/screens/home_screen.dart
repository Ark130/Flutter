import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mi primer  App en Flutter'),
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          centerTitle: true
        ),
        body: Column(
          children:[
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Botones'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap:(){
                Navigator.pushNamed(context, '/buttons');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Containerss'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap:(){
                Navigator.pushNamed(context, '/containers');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Rows y Columns'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap:(){
                Navigator.pushNamed(context, '/rows-columns');
              },
            )
          ],
        ),
      );
  }
}