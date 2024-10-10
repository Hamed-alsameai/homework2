import 'package:flutter/material.dart';
import 'package:secound_hw/item.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<String> names = ['hamed','ham','hammm','mm','rrr','rr','hhhh','mmm'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeWork'),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child :ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (context , index){
                  return Container(
                    margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(15),
                        color: Colors.grey.shade300,
                        width: 100,
                        height: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(names[index] , style: TextStyle(fontSize: 15),),
                            IconButton(onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => itemInfo(name: names[index]),
                                ),
                              );
                            }, icon: Icon(Icons.add))
                          ],
                        ),
                  );
                }
            ),
          ),
          SizedBox(height: 20,),
          Flexible(
            flex: 4,
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context , index){
                return Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(7),
                  color: Colors.grey.shade300,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.grey.shade700,width: 2)
                        ),
                        child: Text((index+1).toString()),
                      ),
                      Text(names[index] , style: TextStyle(fontSize: 15),),
                      IconButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => itemInfo(name: names[index]),
                              ),
                            );

                          },
                          icon: Icon(Icons.add)
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
