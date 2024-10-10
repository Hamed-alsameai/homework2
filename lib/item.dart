import 'package:flutter/material.dart';

class itemInfo extends StatelessWidget {

  final String name;

  itemInfo({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text( name, style: TextStyle(fontSize: 30),),
              Column(
                children: [
                  Text("details"),
                  Text('details details details details details details')
                ],
              ),
              ElevatedButton(
                  onPressed: (){}, child: Text('Add')
              )

            ],
          ),
        ),
      ),
    );
  }
}
