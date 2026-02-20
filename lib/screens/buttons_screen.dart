import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: Text('Botones Flutter'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Balcón'),
        icon: Icon(Icons.balcony),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Click me'),
              onPressed: () {},
            ),
            TextButton(
              onPressed: () => print('Click!'),
              child: Text('Solo texto'),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined button'),
            ),
            SizedBox(height: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.catching_pokemon),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Elevated con icon'),
              icon: Icon(Icons.baby_changing_station),
            ),
            SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text('Outlined button con icon'),
              icon: Icon(Icons.ac_unit_outlined),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 5.4,
              ),
              onPressed: () => Navigator.pop(context),
              child: Text('Regresar'),
            ),
            SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.deepPurpleAccent],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text('Degradado'),
              ),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              onPressed: () {},
              child: Text('Forma'),
            ),
          ],
        ),
      ),
    );
  }
}