import 'package:damehub/model/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//  my own imports
import 'package:damehub/components/horizontal_listview.dart';
import 'package:damehub/components/products.dart';
import 'package:damehub/ui/pages/cart.dart';
import 'package:provider/provider.dart';

class DameHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fitHeight,
        images: [
          AssetImage('assets/images/Beach6.jpg'),
          AssetImage('assets/images/Heel1.jpg'),
          AssetImage('assets/images/Rug1.jpg'),
          AssetImage('assets/images/Special1.jpg'),
          AssetImage('assets/images/special2.jpeg'),
          AssetImage('assets/images/Special3.jpg'),
          AssetImage('assets/images/special4.JPG'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
        dotSize: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: Text('Dameshub'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//            header
            new UserAccountsDrawerHeader(
              accountName: Text('Akinde Fisayo'),
              accountEmail: Text('akindex5427@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.redAccent
              ),
            ),

            //           body

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.black),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.black),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.black),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.black),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.black),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.redAccent,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Exit'),
                leading: IconButton( icon: Icon(Icons.exit_to_app),
                onPressed: () => Provider.of<UserRepository>(context).signOut(),
             ),
            ), 
           ),   
         ],
        ),
      ),

      body: Column(
        children: <Widget>[
//        Image carousel begins here
          image_carousel,

//        Padding widget
          Padding(padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),),

//        Horizontal list view begins here
          HorizontalList(),

//          Padding widget
          Padding(padding: const EdgeInsets.all(25.0),
            child: Text('Recent products'),),

//        Grid view
          Flexible(child: Products()),

        ],
      ),
    );
  }

}