import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Expande extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(20.0),
     child: Row(
          children: <Widget>[
            Expanded(
             child:  Image(
              image:  AssetImage('image/car.jpg'),
             )
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
                child:  Image(
                  image:  AssetImage('image/car.jpg'),
                )
            )
          ],


     ),
   );
  }
  
}


