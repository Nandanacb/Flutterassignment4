//import 'package:assignment4/database.dart';
import 'package:assignment4/database.dart';
import'package:flutter/material.dart';

class Newdesign extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
    backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivery",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Row(
              children: [
                Text("Bacangan, Sambit ",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                Spacer(),
                CircleAvatar(
                  radius: 25,
                  foregroundImage: AssetImage("assets/images/head.jpeg"),
                ),
              ],
            ),

          Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Text(" What would you like to eat?",style: TextStyle(fontSize: 10,color: Colors.grey),),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 20),
          Text("Choose Category",style: TextStyle(fontWeight: FontWeight.bold),
          ),
           SizedBox(height: 10),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(6, (index){
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      radius: 45,
                      foregroundImage: AssetImage(Database.myList[index]["image"]),
                      
                    ),
                  ),
                ],
              
              );
          }),
             ),
          
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text(" Main"),
                Spacer(),
                Text(" Appetizer"),
                Spacer(),
                Text(" Drinks"),
                Spacer(),
                Text(" Desserts"),
              ],
            ),
          ),
          
 SizedBox(height: 15),        
Row(
  children: [
    Text("Main Course",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    Spacer(),
    Text("See All",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
  ],
),
SizedBox(height: 13),
Expanded(
  child: GridView.builder(
    itemCount:6,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      ), 
      itemBuilder: (context,index){
        return Stack(
          children:[ Container(
            height: 250,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color:Database.myfoodList[index]["color"]),
            
          ),
          
           Positioned(
            top:15,
            left: 15,
            child:Text(Database.myfoodList[index]["text"]),
            ),
           
            Positioned(
            top:35,
            left: 25,
            child:CircleAvatar(
              radius: 120,
              foregroundImage: 
              AssetImage(Database.myfoodList[index]["image"]),
            ),
            ),

      ] );
      }),
      ),         
          
      ],
        ),
      ),
      
       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 250, 241, 241),
        
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,

        items: 
        [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.percent),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
        ]
        
        ),
      
    );          
  }        
  }
