import 'package:flutter/material.dart';
import 'package:flutter_class16/provider/provider.dart';
import 'package:flutter_class16/view/screens/cartpage.dart';
import 'package:flutter_class16/view/widgets/datas.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
       SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text("Discover",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),),
                SizedBox(width: 200),
                Icon(Icons.notification_add_sharp,size: 40,)
              ],
            ),
            Row(
              children: [
                Container(
                  width: 350,
                  height: 100,
                  child:
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search Anything",
                          fillColor: Color.fromARGB(255, 204, 198, 198),filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(Icons.search,color: Colors.black,size: 40,),
                        ), 
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Container(height: 45,
                  width: 50,
                  color: Colors.black,
                  child: Icon(Icons.menu,color: Colors.white,size: 40,),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Container(
                height: 45,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: MyList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => 
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,left: 15),
                    child: Container(height: 20,
                    width: 80,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 204, 198, 198),),
                    
                      child: Center(child: MyList[index],),
                    ),
                  )
                  ,),
              )
            ),
            Container(
              width: double.infinity,
              height: 630,
              color: Colors.white,
              child: Expanded(child: 
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,childAspectRatio: 0.6),
                itemCount: 10,
                itemBuilder: (context, index) => 
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ChangeNotifierProvider(create: (context) => MyPro(),child: MyCart(),);
                  },)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 204, 198, 198),),
                      
                      child: Column(
                        children: [
                          Stack(
                            children:[ Container(
                              height: 250,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 204, 198, 198),),
                              child: ImageList[index],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 221, 218, 218)),
                              child: Center(child: Icon(Icons.favorite_border,color: Colors.black,),),
                            )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Container(
                              height: 76,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 204, 198, 198),),
                              child: TextList[index],
                            ),
                          )
                        ],
                      )
                      ),
                  ),
                ),
                )
              ),
            )
            // Padding(
            //   padding: const EdgeInsets.only(top: 10),
            //   child: Container(width: double.infinity,
            //   height: 400,
            //   color: Colors.blueAccent,
            //   child: SingleChildScrollView(
            //     child: Expanded(child:
            //     GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2
            //       ),
            //       itemBuilder:(context, index) {
            //         return Container(
            //           color: Colors.yellow,
            //         );
            //       },
                  
            //       )
            //     ),
            //   ),
            //   ),
            // )
          ],
        ),
      )
    );
  }
}