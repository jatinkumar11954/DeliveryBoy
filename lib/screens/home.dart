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
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                width: w * 0.7,
                height: 50,
                child: RaisedButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, "gmap");
                  },
                  child: Text("Checkout"),
                ),
              )),
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
                      backgroundColor: Color.fromRGBO(50,189,166,1),
                      radius: 5,
                      child: Icon(
                        Icons.new_releases,
                        color: Colors.white,
                        size: 50,
                      ),
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
                      backgroundColor: Color.fromRGBO(119,194,174,1),
                      radius: 5,
                      child: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("Current Orders"),
                  ),
                ),
              ),
            ],
          ),
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
                      backgroundColor: Color.fromRGBO(76,213,197,1),
                      radius: 5,
                      child: Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("Past Orders"),
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
                      backgroundColor: Color.fromRGBO(26,215,123,1),
                      radius: 5,
                      child: Icon(
                        Icons.attach_money,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("Wallet"),
                  ),
                ),
              ),
            ],
          ),
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
                      backgroundColor: Color.fromRGBO(107,176,209,1),
                      radius: 5,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("Profile"),
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
                      backgroundColor: Color.fromRGBO(221,87,75,1),
                      radius: 5,
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                  footer: Center(
                    // padding: const EdgeInsets.only(top:5.0),
                    child: Text("Logout"),
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
