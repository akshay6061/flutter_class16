import 'package:flutter/material.dart';
import 'package:flutter_class16/provider/provider.dart';
import 'package:flutter_class16/view/screens/addcart.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
                      "Details",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
        actions: [
          Icon(Icons.notification_important_outlined,
                      size: 40,)
        ],            
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          children: [
           
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                      width: double.infinity,
                      height: 400,
                      color: Colors.white,
                      child: Image.asset(
                        "assets/IMG_0053_5c650849-9d9d-4cc3-8863-6a23778cd9a0.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Center(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]),
                  Container(
                    width: double.infinity,
                    height: 290,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 200, top: 10),
                          child: Container(
                              width: 1600,
                              height: 40,
                              color: Colors.white,
                              child: Text(
                                "Regular Fit Polo",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              )),
                        ),
                        Container(
                          width: double.infinity,
                          height: 30,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.star),
                              Text("   4.5/5 (45 reviews) ")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          height: 70,
                          color: Colors.white,
                          child: Text(
                              "lhjbh bhjbhbfhiu jkhvjhhff kjhvhjg kjhvjhgvhgf kjhvgfr kjhvfyu bnljhkvyurftd jhbkugvuygfv uguiuytfty kljoihyutyu gggutytyu ibugvugyvuy jibuhgvfvf jghbhguvyf jihbhgvtf ihjhjnijhbuyf  ihbyuty iyhiugty ubuyvuty "),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Choose Size",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 70,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 128, 126, 126)),
                                child: Center(
                                    child: Text(
                                  "S",
                                  style: TextStyle(fontSize: 40),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          Color.fromARGB(255, 128, 126, 126)),
                                  child: Center(
                                      child: Text(
                                    "M",
                                    style: TextStyle(fontSize: 40),
                                  )),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 128, 126, 126)),
                                child: Center(
                                    child: Text(
                                  "L",
                                  style: TextStyle(fontSize: 40),
                                )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 65,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 60,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text(
                          "price",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Consumer<MyPro>(
                            builder: (context, value, child) => Text(
                              Provider.of<MyPro>(context).price.toString(),
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => Provider.of<MyPro>(context, listen: false)
                                      .subnew(),
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: IconButton(
                            onPressed: () =>
                                  Provider.of<MyPro>(context, listen: false)
                                      .addnew(),
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.shopping_bag,
                                color: Colors.white,
                                size: 30,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: GestureDetector(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => CartPage(), )),
                            child: Text(
                              "Add to cart",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Consumer<MyPro>(
                            builder: (context, value, child) => Text(
                              Provider.of<MyPro>(context).quantity.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
