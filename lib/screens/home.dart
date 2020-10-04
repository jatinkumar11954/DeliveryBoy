import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  double w, h;

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Esmart Delivery"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
ClipRRect(borderRadius: BorderRadius.circular(5),
  child: Container(width: w*0.8,child: RaisedButton(onPressed: (){},child: Text("Checkout"),),)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: w * 0.45,
                height: h * 0.2,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.fromLTRB(18, 0, 15, 5),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        2.0, // Move to right 10  horizontally
                        2.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: GridTile(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5,
                      child: Icon(Icons.new_releases),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("New Orders"),
                  ),
                ),
              ),
              Container(
                width: w * 0.45,
                height: h * 0.2,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.fromLTRB(18, 0, 15, 5),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        2.0, // Move to right 10  horizontally
                        2.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: GridTile(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5,
                      child: Icon(Icons.new_releases),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("New Orders"),
                  ),
                ),
              ),
            ],
          ),   Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: w * 0.45,
                height: h * 0.2,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.fromLTRB(18, 0, 15, 5),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        2.0, // Move to right 10  horizontally
                        2.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: GridTile(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5,
                      child: Icon(Icons.new_releases),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("New Orders"),
                  ),
                ),
              ),
              Container(
                width: w * 0.45,
                height: h * 0.2,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.fromLTRB(18, 0, 15, 5),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        2.0, // Move to right 10  horizontally
                        2.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: GridTile(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5,
                      child: Icon(Icons.new_releases),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("New Orders"),
                  ),
                ),
              ),
            ],
          ),   Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: w * 0.45,
                height: h * 0.2,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.fromLTRB(18, 0, 15, 5),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        2.0, // Move to right 10  horizontally
                        2.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: GridTile(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5,
                      child: Icon(Icons.new_releases),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("New Orders"),
                  ),
                ),
              ),
              Container(
                width: w * 0.45,
                height: h * 0.2,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.fromLTRB(18, 0, 15, 5),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        2.0, // Move to right 10  horizontally
                        2.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: GridTile(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5,
                      child: Icon(Icons.new_releases),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("New Orders"),
                  ),
                ),
              ),
            ],
          )
       
       
        ],
      ),
    );
  }
}
