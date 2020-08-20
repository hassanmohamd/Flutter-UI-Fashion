import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fashon",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String desc =
      "Maxwell sole construction delivers exceptional durability and is resistant to oil,"
      "fat, acid, petrol and alkali; air-cushioned honeycomb";
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: width * 0.90,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.2),
                  color: Colors.black12,
                  spreadRadius: 5.0)
            ],
            image: DecorationImage(
                image: AssetImage("assets/images/model.png"),
                fit: BoxFit.contain),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Classic",
                          style: TextStyle(
                              fontSize: 28.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Cotton Jacket",
                          style: TextStyle(
                              fontSize: 28.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star_half),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Color",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 7.0,
                                        spreadRadius: 4.5,
                                        offset: Offset(1.0, 3))
                                  ]),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[500],
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 7.0,
                                        spreadRadius: 3,
                                        offset: Offset(1.0, 3))
                                  ]),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 7.0,
                                      spreadRadius: 3,
                                      offset: Offset(1.0, 3),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            desc,
                            style: TextStyle(
                              fontSize: 16.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "204",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationStyle: TextDecorationStyle.solid,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        SizedBox(height: 5.0,),
                        Text(
                          "209.99",
                          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,),
                        ),
                        SizedBox(height: 50.0,),
                        RawMaterialButton(
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                          onPressed: () {},
                          fillColor: Colors.white,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        RawMaterialButton(
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                          onPressed: () {},
                          fillColor: Colors.black,
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
