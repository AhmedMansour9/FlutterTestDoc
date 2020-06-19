import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();

  }
  }

  class HomeState extends State<Home>{
  TextEditingController _foo= TextEditingController();
  String price;
  String dropdown="Cairo";

  var checked=false;
  var radio=0;
  void OnRadioChanged(int val){
    setState(() {
      radio=val;
    });
  }
  void OnCheckboxChanged(bool val){
    setState(() {
      checked=val;
    });
  }
  void OnClick(){
    setState(() {
      price=_foo.text;
    });
  }
  void OnDataChanged(var val){
    setState(() {
      price=_foo.text;
    });
  }

  void DropChange(String val){
       setState(() {
         dropdown=val;
       });
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Ahmed alii'),
          centerTitle: true,
//        backgroundColor: Colors.pinkAccent,
//        backgroundColor: Color(0xffff0000),  // colors hash should add 0xff before color
//          backgroundColor: Colors.pinkAccent[400], // Le drgat el colors
//         backgroundColor: Color.fromRGBO(200, 100, 200, .5), // gradint from red green blue obcaity
          backgroundColor: Colors.black.withOpacity(1), // color with opcity
          elevation: 0.0,
        ),

        body:Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Center(
              child: CircleAvatar (
                backgroundImage: NetworkImage('https://img.freepik.com/free-vector/abstract-colorful-flow-shapes-background_23-2148258092.jpg?size=626&ext=jpg'),
                radius: 50,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Ahmed Mansour',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),

            Card(
              margin: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: ListTile(
                leading:  Icon(
                  Icons.email,
                  color: Colors.green,
                ),

                title:Text(
                  'Ahmed Sayed Mansour',
                  style: TextStyle(
                      color: Colors.green
                  ),
                ),
              ),
            ),
           SizedBox(
                height: 20,
           width: MediaQuery.of(context).size.width*.2,
           child: Divider(
          color: Colors.green,
               ) ),










//                DropdownButtonFormField(
//                     decoration: InputDecoration(
//                       labelText: 'foo' // text above spinner
//                     prefixIcon: Icon(Icons.access_time)
//                     suffixIcon:  Icon(Icons.access_time)
//                     border: InputBorder.none
//                     icon: Icon(Icons.access_time)
//                     contentPadding: EdgeInsets.all(10)
//                     ),
//                        elevation: 0,
//                        hint: Text('Select Country'),
//                        isDense: true, // remove margin out spinner
//                        isExpanded: true, // make spinner match parent
//                        iconSize: 30.0, // icon spinner size
//                        onChanged: DropChange,
//                        value: dropdown,
//                        items: <String>['Cairo','Egypt']
//                            .map<DropdownMenuItem<String>>((String val){
//                          return DropdownMenuItem<String>(
//                            child: Text(val),
//                            value: val,
//                          );
//                        }).toList(),

//                      )



//                DropdownButtonHideUnderline(
//                  child: DropdownButton<String>(
//                elevation: 0,
//                hint: Text('Select Country'),
//                isDense: true, // remove margin out spinner
//                isExpanded: true, // make spinner match parent
//                iconSize: 30.0, // icon spinner size
//                    onChanged: DropChange,
//                    value: dropdown,
//                    items: <String>['Cairo','Egypt']
//                        .map<DropdownMenuItem<String>>((String val){
//                      return DropdownMenuItem<String>(
//                        child: Text(val),
//                        value: val,
//                      );
//                    }).toList(),
//                  )
//                  ,
//                )





//               Checkbox(
//                 value:true,
//                 onChanged:OnCheckboxChanged,
//                 checkColor: Colors.white,
//                 activeColor: Colors.green,
//               )

//                Text('Male'),
//                Radio(
//                  value: 0,
//                  groupValue: radio,
//                onChanged: OnRadioChanged,
//                 activeColor: Colors.green,
//
//                ),
//
//                Text('Femail'),
//                Radio(
//                  value: 1,
//                  groupValue: radio,
//                  onChanged: OnRadioChanged,
//                )
//


//                TextField(   // like Edit text
//                autocorrect: true, // to correct texts
//                textInputAction:  TextInputAction.send,
//                controller: _foo,
//                onTap: (){   // when click on edittext
//
//                },
//               obscureText: true,   // for secure password
//                onChanged:OnDataChanged , // listen changes
//                keyboardType: TextInputType.number,  // inputkeyboard
//                onEditingComplete: , //when text finish
//                onSubmitted:(val){  // when finish and click send in keyboard
//                  print(val);
//                },
//                  textAlign: TextAlign.center,
//                 autofocus: false, // too focus on edittext
//                cursorColor: Colors.black, // text color
//                maxLength: 3,
//                maxLines: null, // for milion line
//                style: TextStyle(
//                  color: Colors.red,
//                  wordSpacing: 15.0 // for big space
//                letterSpacing: 1.0 //space between letters
//                 fontSize: 30
//                decorationStyle: TextDecorationStyle.solid // line undertext

//                ),
//                ),
//                FlatButton(
//                  child: Text('Click me'),
//                  onPressed: OnClick,
//                ),
//                TextFormField(
//                  onFieldSubmitted: (vae){ // when user click submit on keyboard
//                  setState(() {
//                    price=vae;
//                  });
//                },
//                decoration: InputDecoration(
//                  border: InputBorder.none //  to remove underline
//                  fillColor: Colors.white    // filled color
//                    focusedBorder:  OutlineInputBorder(
//                      borderRadius: BorderRadius.all(Radius.circular(5)),
//                      borderSide: BorderSide(
//                        color: Colors.red,
//                        width: 2,
//                        style: BorderStyle.solid,
//                      )
//                    )
//                filled: true // animation inside edittext
//                  contentPadding: EdgeInsets.all(20) //  pading from abox
//                counterText: 'labeel'   // label below edittext
//                labelText: 'new text'  // label show inside and above box
//                labelStyle: TextStyle(
//                  color: Colors.red,
//                  fontSize: 50
//                )
//                  focusedBorder: OutlineInputBorder(
//                      borderSide: BorderSide(
//                        color: Colors.red,
//                        width: 2,
////                      style: BorderStyle.none // to remove background
//                      ),
//                    borderRadius: BorderRadius.circular(30)   // raduis
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(50)
//                 )
//                  borderRadius: BorderRadius.horizontal(
//                    left: Radius.circular(50)
//                  )
//                  ),
//                  enabledBorder: OutlineInputBorder(
//                    borderSide: BorderSide(
//                      color: Colors.green,
//                      width: 2,
////                      style: BorderStyle.none // to remove background
//                    )
//                  )
//                  suffixIcon: Icon(Icons.access_time), // icon at the end of edittext
//                  suffixText: 'email ',  // hint  sabt  w mesh beytshal
//                  suffixStyle:  //  style  like size and color
//                prefixIcon: Icon(Icons.access_time), // like suffixIcon but it show from left
//                prefixText: ' dateeee'
//                prefix: Image.asset('image/splash.png',width: 25,height: 25,) // too add image in the first of edittext
//                ),
//                )


              ],
            ),

        )
    );
  }

  }