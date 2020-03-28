import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/cat/Bl.png',
            image_caption: 'Handbags',
          ),

          Category(
            image_location: 'assets/images/cat/Ffl.png',
            image_caption: 'Flipflop',
          ),

          Category(
            image_location: 'assets/images/cat/Hl.png',
            image_caption: 'iheel',
          ),

          Category(
            image_location: 'assets/images/cat/Rl.png',
            image_caption: 'Rugs',
          ),

          Category(
            image_location: 'assets/images/cat/Wwl.png',
            image_caption: 'Watches',
          ),
        ],
       ),
     );
   }
}

class Category extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String image_location;
  // ignore: non_constant_identifier_names
  final String image_caption;

  // ignore: non_constant_identifier_names
  const Category({Key key, this.image_location, this.image_caption})
      : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            )
          ),
        ),
      ),
    );
  }
}
