import 'package:flutter/material.dart';
import 'package:flutter_class16/view/widgets/datas.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Cart",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black,size: 30),
      ),
      body: SafeArea(child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 760,
          color: const Color.fromARGB(255, 156, 151, 151),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => 
            Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  color: Colors.white,
                  child: ImageList[index],
                ),
                Container(
                  height: 200,
                  width: 245,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: 245,
                        height: 50,
                        color: Colors.white,
                        child: Text("Regular Fit Polo \n PKR-170",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ),
                      Container(
                        width: 245,
                        height: 30,
                        color: Colors.white,
                        child: Row(
                            children: [
                              Icon(Icons.star),
                              Text("   4.5/5 (45 reviews) ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                            ],
                          ),
                      ),
                      Container(
                        width: 245,
                        height: 50,
                        color: Colors.white,
                        child: Text("Item Count = 0",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
            )
            ),
          
          // child: SingleChildScrollView(
          //   child: ListView.builder(
          //     itemCount: 5,
          //     itemBuilder: (context, index) => 
          //     Container(
          //       width: double.infinity,
          //       height: 150,
          //       color: Colors.blue,
          //     )
          //     ),
          // ),
        )
      ],
      )),
    );
  }
}