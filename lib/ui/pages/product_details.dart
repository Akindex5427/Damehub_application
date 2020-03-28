import 'package:flutter/material.dart';

import 'package:damehub/ui/pages/dame_home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
      this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new DameHomePage()));},
            child: Text('Dameshub')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                  Icons.search,
                  color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                    leading: new Text(widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text("\$${widget.product_detail_old_price}",
                            style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                        ),

                        Expanded(
                            child: new Text("\$${widget.product_detail_old_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
                        ),
                      ],
                    ),
                ),
              ),
            ),
          ),

//                =========== the first buttons =============
          Row(
            children: <Widget>[
//                ============ the size button ===============
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                     return new AlertDialog(
                       title: new Text("Size"),
                       content: new Text("Choose the size"),
                       actions: <Widget>[
                         new MaterialButton(onPressed: (){
                           Navigator.of(context).pop(context);
                         },
                         child: new Text("close"),)
                       ],
                     );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              //                      ========== the color button ===============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Color"),
                          content: new Text("Choose a color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("close"),)
                          ],
                        );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              //                      ========== the quantity button ===============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Quantity"),
                        content: new Text("choose the quantity"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("close"),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //                =========== the second buttons =============
          Row(
            children: <Widget>[
//                      ========== the second button ===============
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now")
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.redAccent, onPressed: (){}),

              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.redAccent, onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"),
          ),
          Divider(),
      new Row(
        children: <Widget>[
          Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
          child: new Text ("Product name", style: TextStyle(color: Colors.grey),),),
          Padding(padding: EdgeInsets.all(5.0),
          child: new Text(widget.product_detail_name),)
        ],
      ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text ("Product brand", style: TextStyle(color: Colors.grey),),),

//          REMEBER TO CREATE THE PRODUCT BRAND
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("Brand X"),)
            ],
          ),

//          ADD PRODUCT CONDITION
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text ("Product condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),)
            ],
          ),

        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text("Similar Products"),
        ),

//        SIMILAR PRODUCT SECTION
        Container(
          height: 360.0,
          child: Similar_products(),
        )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Shoulder bag",
      "picture": "assets/images/products/Shoulder3.jpg",
      "old_price": 24,
      "price": 20,
    },
    {
      "name": "Satchel Bags",
      "picture": "assets/images/products/Satchel3.jpg",
      "old_price": 20,
      "price": 18,
    },
    {
      "name": "Quilted Bags",
      "picture": "assets/images/products/Quilted1.jpg",
      "old_price": 25,
      "price": 19,
    },
    {
      "name": "Hobo Bags",
      "picture": "assets/images/products/Hobo1.jpg",
      "old_price": 25,
      "price": 22,
    },
    {
      "name": "Beach Bags",
      "picture": "assets/images/products/Beach2.jpg",
      "old_price": 19,
      "price": 13,
    },
    {
      "name": "Minaudiere",
      "picture": "assets/images/products/Minau1.jpg",
      "old_price": 30,
      "price": 24,
    },
    {
      "name": "Slip on Pump",
      "picture": "assets/images/products/Pump1.jpg",
      "old_price": 27,
      "price": 24,
    },
    {
      "name": "Cone",
      "picture": "assets/images/products/Cone1.jpg",
      "old_price": 25,
      "price": 23,
    },
    {
      "name": "Ankle Strap",
      "picture": "assets/images/products/Ankle1.jpg",
      "old_price": 35,
      "price": 31,
    },
    {
      "name": "Flip flop",
      "picture": "assets/images/products/Flip2.jpg",
      "old_price": 15,
      "price": 8,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap:()=> Navigator.of(context).push(new MaterialPageRoute(
                //           Here we are passing the values of the product to the product details page
                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
                  ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white70,
                      child: new Row(children: <Widget>[
                        Expanded(
                          child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                        ),
                        new Text("\$${prod_price}", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w900),)
                      ],)
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}



