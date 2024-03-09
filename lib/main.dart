import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider/model/TravelModel.dart';
import 'package:expandable_text/expandable_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _selectedIndex = 0;
  double imageSize = 55;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(color: Colors.white,
              width: double.infinity,
              height: size.height / 1.8,

              child: Stack(
                children: [

                  // background image
                  Container(
                    width: double.infinity,
                    height: size.height / 2.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60)),
                      image: DecorationImage(image: AssetImage(travelList[_selectedIndex].img),
                      fit: BoxFit.cover,

                      )
                    ),
                  ),

                  // header icons
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(100, 220, 220, 220),
                            ),
                            child: const Icon(CupertinoIcons.arrow_left,color: Colors.black,),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(100, 220, 220, 220),
                            ),
                            child: const Icon(CupertinoIcons.suit_heart_fill,color: Colors.redAccent,),
                          ),
                        ],),
                    ),
                  ),

                  // image list
                  Positioned(
                    right: 0,
                    top: 100,
                    child: SizedBox(
                      width: 100,
                      height: double.maxFinite,
                      child: ListView.builder(
                          itemCount: travelList.length,
                          itemBuilder: (context, index) {

                            return imageItem(index);
                          },
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 80,
                    left: size.width / 9.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(travelList[_selectedIndex].name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Icon(CupertinoIcons.placemark_fill, color: Colors.white,),
                            Text(travelList[_selectedIndex].location,style: TextStyle(color: Colors.white),)
                          ],
                        )
                      ],
                    ),
                  )

              ]),
            ),
            Container(color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color.fromARGB(60, 0, 0, 0),
                                width: 1
                            )
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Distance",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(travelList[_selectedIndex].distance + "Km"),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Color.fromARGB(60, 0, 0, 0),
                                width: 1
                            )
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Temp",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(travelList[_selectedIndex].temp + "\u00B0 C"),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Color.fromARGB(60, 0, 0, 0),
                                width: 1
                            )
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Rating",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(travelList[_selectedIndex].rating),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ExpandableText(
                          travelList[_selectedIndex].discription,
                          expandText: "read more",
                          collapseText: "show less",
                          textDirection: TextDirection.ltr,
                        ),
                        SizedBox(height: 16,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("Total Price"),
                                Text(travelList[_selectedIndex].price + "\$",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),)
                              ],
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: const Icon(CupertinoIcons.arrow_right, color: Colors.white,),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
      ),
        ),
    ));
  }
  Widget imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: _selectedIndex == index ? Colors.blueGrey : Colors.white,
                      width: 3),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(travelList[index].img,)
                  )),
              width: _selectedIndex == index ? imageSize + 15 : imageSize,
              height: _selectedIndex == index ? imageSize + 15 : imageSize,
              duration: const Duration(milliseconds: 500),

            ),
          ),
        ),
      ],
    );
  }
}