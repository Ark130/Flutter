import 'package:flutter/material.dart';

class ContainersScreen extends StatelessWidget {
  const ContainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: Text('Containers'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 200,
            width: double.infinity,

            child: Text('Box', style: TextStyle(fontSize: 45, color: Colors.white), textAlign: TextAlign.center,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ContainerIcon(),
              ContainerIcon(),
              ContainerIcon()
            ],
          )
        ],
      )
    );
  }
}

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.circular(20)),
      child: Icon(Icons.bug_report, size: 50,),
    );
  }
}