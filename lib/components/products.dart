import 'package:flutter/cupertino.dart';
import 'package:damehub/ui/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // ignore: non_constant_identifier_names
  var product_list = [
    {
      "name": "Shoulder bag",
      "picture": "assets/images/products/Shoulder1.jpg",
      "old_price": 27,
      "price": 25,
    },
    {
      "name": "Shoulder bag",
      "picture": "assets/images/products/Shoulder2.jpg",
      "old_price": 26,
      "price": 24,
    },
    {
      "name": "Shoulder bag",
      "picture": "assets/images/products/Shoulder3.jpg",
      "old_price": 24,
      "price": 20,
    },
    {
      "name": "Shoulder bag",
      "picture": "assets/images/products/Shoulder5.jpg",
      "old_price": 25,
      "price": 20,
    },
    {
      "name": "Shoulder bag",
      "picture": "assets/images/products/Shoulder6.jpg",
      "old_price": 25,
      "price": 20,
    },
    {
      "name": "Clutch bag",
      "picture": "assets/images/products/Satchel1.jpg",
      "old_price": 30,
      "price": 25,
    },
    {
      "name": "Clutch bag",
      "picture": "assets/images/products/Satchel2.jpg",
      "old_price": 28,
      "price": 24,
    },
    {
      "name": "Satchel Bags",
      "picture": "assets/images/products/Satchel3.jpg",
      "old_price": 20,
      "price": 18,
    },
    {
      "name": "Satchel Bags",
      "picture": "assets/images/products/Satchel4.jpg",
      "old_price": 25,
      "price": 20,
    },
    {
      "name": "Satchel Bags",
      "picture": "assets/images/products/Satchel5.jpg",
      "old_price": 25,
      "price": 20,
    },
    {
      "name": "Satchel Bags",
      "picture": "assets/images/products/Satchel7.jpg",
      "old_price": 20,
      "price": 18,
    },
    {
      "name": "Korean Style",
      "picture": "assets/images/products/Korean1.jpg",
      "old_price": 20,
      "price": 18,
    },
    {
      "name": "Korean Style",
      "picture": "assets/images/products/Korean2.jpg",
      "old_price": 25,
      "price": 20,
    },
    {
      "name": "Quilted Bags",
      "picture": "assets/images/products/Quilted1.jpg",
      "old_price": 25,
      "price": 19,
    },
    {
      "name": "Quilted Bags",
      "picture": "assets/images/products/Quilted2.jpeg",
      "old_price": 21,
      "price": 18,
    },
    {
      "name": "Quilted Bags",
      "picture": "assets/images/products/Quilted3.jpg",
      "old_price": 24,
      "price": 20,
    },
    {
      "name": "Quilted Bags",
      "picture": "assets/images/products/Quilted4.jpg",
      "old_price": 25,
      "price": 19,
    },
    {
      "name": "Quilted Bags",
      "picture": "assets/images/products/Quilted5.jpg",
      "old_price": 24,
      "price": 20,
    },
    {
      "name": "Quilted Bags",
      "picture": "assets/images/products/Quilted6.jpg",
      "old_price": 22,
      "price": 18,
    },
    {
      "name": "Hobo Bags",
      "picture": "assets/images/products/Hobo1.jpg",
      "old_price": 25,
      "price": 22,
    },
    {
      "name": "Hobo Bags",
      "picture": "assets/images/products/Hobo2.jpg",
      "old_price": 24,
      "price": 20,
    },
    {
      "name": "Hobo Bags",
      "picture": "assets/images/products/Hobo3.jpg",
      "old_price": 23,
      "price": 20,
    },
    {
      "name": "Hobo Bags",
      "picture": "assets/images/products/Hobo4.jpg",
      "old_price": 28,
      "price": 23,
    },
    {
      "name": "Beach Bags",
      "picture": "assets/images/products/Beach2.jpg",
      "old_price": 19,
      "price": 13,
    },
    {
      "name": "Beach Bags",
      "picture": "assets/images/products/Beach3.jpg",
      "old_price": 19,
      "price": 14,
    },
    {
      "name": "Beach Bags",
      "picture": "assets/images/products/Beach4.jpg",
      "old_price": 20,
      "price": 14,
    },
    {
      "name": "Beach Bags",
      "picture": "assets/images/products/Beach5.jpg",
      "old_price": 18,
      "price": 14,
    },
    {
      "name": "Rugs",
      "picture": "assets/images/products/Rug2.jpg",
      "old_price": 160,
      "price": 130,
    },
    {
      "name": "Rugs",
      "picture": "assets/images/products/Rug3.jpg",
      "old_price": 210,
      "price": 185,
    },
    {
      "name": "Rugs",
      "picture": "assets/images/products/Rug4.jpg",
      "old_price": 275,
      "price": 200,
    },
    {
      "name": "Rugs",
      "picture": "assets/images/products/Rug5.jpg",
      "old_price": 225,
      "price": 170,
    },
    {
      "name": "Minaudiere",
      "picture": "assets/images/products/Minau1.jpg",
      "old_price": 30,
      "price": 24,
    },
    {
      "name": "Minaudiere",
      "picture": "assets/images/products/Minau2.jpg",
      "old_price": 28,
      "price": 23,
    },
    {
      "name": "Minaudiere",
      "picture": "assets/images/products/Minau4.jpg",
      "old_price": 25,
      "price": 22,
    },
    {
      "name": "Minaudiere",
      "picture": "assets/images/products/Minau5.jpg",
      "old_price": 25,
      "price": 23,
    },
    {
      "name": "Slip on Pump",
      "picture": "assets/images/products/Pump1.jpg",
      "old_price": 27,
      "price": 24,
    },
    {
      "name": "Slip on Pump",
      "picture": "assets/images/products/Pump2.jpg",
      "old_price": 33,
      "price": 27,
    },
    {
      "name": "Slip on Pump",
      "picture": "assets/images/products/Pump3.jpg",
      "old_price": 30,
      "price": 25,
    },
    {
      "name": "Slip on Pump",
      "picture": "assets/images/products/Pump4.jpg",
      "old_price": 30,
      "price": 24,
    },
    {
      "name": "Slip on Pump",
      "picture": "assets/images/products/Pump5.jpg",
      "old_price": 25,
      "price": 22,
    },
    {
      "name": "Slip on Pump",
      "picture": "assets/images/products/Pump6.jpg",
      "old_price": 29,
      "price": 25,
    },
    {
      "name": "Cone",
      "picture": "assets/images/products/Cone1.jpg",
      "old_price": 25,
      "price": 23,
    },
    {
      "name": "Cone",
      "picture": "assets/images/products/Cone2.jpg",
      "old_price": 35,
      "price": 30,
    },
    {
      "name": "Cone",
      "picture": "assets/images/products/Cone3.jpg",
      "old_price": 29,
      "price": 25,
    },
    {
      "name": "Cone",
      "picture": "assets/images/products/Cone4.jpg",
      "old_price": 25,
      "price": 21,
    },
    {
      "name": "Cone",
      "picture": "assets/images/products/Cone5.jpg",
      "old_price": 25,
      "price": 19,
    },
    {
      "name": "Cone",
      "picture": "assets/images/products/Cone6.jpg",
      "old_price": 27,
      "price": 23,
    },
    {
      "name": "Spool",
      "picture": "assets/images/products/Spool1.jpg",
      "old_price": 25,
      "price": 20,
    },
    {
      "name": "Spool",
      "picture": "assets/images/products/Spool2.jpg",
      "old_price": 45,
      "price": 30,
    },
    {
      "name": "Spool",
      "picture": "assets/images/products/Spool3.jpg",
      "old_price": 43,
      "price": 30,
    },
    {
      "name": "Ankle Strap",
      "picture": "assets/images/products/Ankle1.jpg",
      "old_price": 35,
      "price": 31,
    },
    {
      "name": "Ankle Strap",
      "picture": "assets/images/products/Ankle2.jpg",
      "old_price": 44,
      "price": 30,
    },
    {
      "name": "Ankle Strap",
      "picture": "assets/images/products/Ankle3.jpg",
      "old_price": 30,
      "price": 25,
    },
    {
      "name": "Ankle Strap",
      "picture": "assets/images/products/Ankle4.jpg",
      "old_price": 34,
      "price": 29,
    },
    {
      "name": "Ankle Strap",
      "picture": "assets/images/products/Ankle5.jpg",
      "old_price": 35,
      "price": 31,
    },
    {
      "name": "Ankle Strap",
      "picture": "assets/images/products/Ankle6.jpg",
      "old_price": 29,
      "price": 26,
    },
    {
      "name": "Flip flop",
      "picture": "assets/images/products/Flip2.jpg",
      "old_price": 15,
      "price": 8,
    },
    {
      "name": "Flip flop",
      "picture": "assets/images/products/Flip3.jpg",
      "old_price": 10,
      "price": 8,
    },
    {
      "name": "Flip flop",
      "picture": "assets/images/products/Flip5.jpg",
      "old_price": 9,
      "price": 6,
    },
    {
      "name": "Flip flop",
      "picture": "assets/images/products/Flip6.jpg",
      "old_price": 13,
      "price": 9,
    },
    {
      "name": "Flip flop",
      "picture": "assets/images/products/Flip7.jpg",
      "old_price": 12,
      "price": 10,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding
            (padding: const EdgeInsets.all(4.0),
            child: Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          ),
          );
        });
  }
}

// ignore: camel_case_types
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
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
                new Text("\$${prod_price}", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w900),),
                      new Text("\$${prod_old_price}", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w800, decoration: TextDecoration.lineThrough),)
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
