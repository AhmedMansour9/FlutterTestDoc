import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/CustomButton.dart';
import 'package:flutterapp/Home.dart';
import 'ExpandleWedgit.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,

      home: MyApp(),
  ));

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home:SampleAppPage(),


    );
  }
}












// response from server with http
//class SampleAppPage extends StatefulWidget {
//  SampleAppPage({Key key}) : super(key: key);
//
//  @override
//  _SampleAppPageState createState() => _SampleAppPageState();
//}
//
//class _SampleAppPageState extends State<SampleAppPage> {
//  List widgets = [];
//
//  @override
//  void initState() {
//    super.initState();
//
//    loadData();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Sample App"),
//      ),
//      body: ListView.builder(
//        itemCount: widgets.length,
//        itemBuilder: (BuildContext context, int position) {
//          return getRow(position);
//        },
//      ),
//    );
//  }
//
//  Widget getRow(int i) {
//    return Padding(
//      padding: EdgeInsets.all(10.0),
//      child: Text("Row ${widgets[i]["title"]}"),
//    );
//  }
//
//  Future<void> loadData() async {
//    String dataURL = "https://jsonplaceholder.typicode.com/posts";
//    http.Response response = await http.get(dataURL);
//    setState(() {
//      widgets = json.decode(response.body);
//    });
//  }
//}






// open new class
//Map coordinates = await Navigator.of(context).pushNamed('/location');
// close new class and send data with it like startActivityForResult()
//Navigator.of(context).pop({"lat":43.821757,"long":-79.226392});






  // select  image from galeery and comera  ( tutorial ( https://flutter-examples.com/wp-content/uploads/2019/11/Image_Picker_Android_Flutter_1.png )
//class MyImagePicker extends StatefulWidget {
//  @override
//  MyImagePickerState createState() => MyImagePickerState();
//}
//
//class MyImagePickerState extends State {
//
//  File imageURI;
//
//  Future getImageFromCamera() async {
//
//    var image = await ImagePicker.pickImage(source: ImageSource.camera);
//
//    setState(() {
//      imageURI = image;
//    });
//  }
//
//  Future getImageFromGallery() async {
//    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
//    setState(() {
//      imageURI = image;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        body: Center(
//            child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  imageURI == null
//                      ? Text('No image selected.')
//                      : Image.file(imageURI, width: 300, height: 200, fit: BoxFit.cover),
//
//                  Container(
//                      margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
//                      child: RaisedButton(
//                        onPressed: () => getImageFromCamera(),
//                        child: Text('Click Here To Select Image From Camera'),
//                        textColor: Colors.white,
//                        color: Colors.green,
//                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
//                      )),
//
//                  Container(
//                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//                      child: RaisedButton(
//                        onPressed: () => getImageFromGallery(),
//                        child: Text('Click Here To Select Image From Gallery'),
//                        textColor: Colors.white,
//                        color: Colors.green,
//                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
//                      ))
//                ]))
//    );
//  }
//}





 // Navigatiate to another padge
//void main() {
//  runApp(MaterialApp(
//    home: MyAppHome(), // becomes the route named '/'
//    routes: <String, WidgetBuilder> {
//      '/a': (BuildContext context) => MyPage(title: 'page A'),
//      '/b': (BuildContext context) => MyPage(title: 'page B'),
//      '/c': (BuildContext context) => MyPage(title: 'page C'),
//    },
//  ));
//  Navigator.of(context).pushNamed('/b');
//
//}
//




//
// // custom button
//@override
//Widget build(BuildContext context) {
//
//  return Center(
//    child: CustomButton("Hello"),
//  );
//}



//// animation obcaity
//class MyFadeTest extends StatefulWidget {
//  MyFadeTest({Key key, this.title}) : super(key: key);
//  final String title;
//  @override
//  _MyFadeTest createState() => _MyFadeTest();
//}
//
//class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
//  AnimationController controller;
//  CurvedAnimation curve;
//
//  @override
//  void initState() {
//    super.initState();
//    controller = AnimationController(
//      duration: const Duration(milliseconds: 2000),
//      vsync: this,
//    );
//    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Center(
//          child: Container(
//              child: FadeTransition(
//                  opacity: curve,
//                  child: FlutterLogo(
//                    size: 100.0,
//                  )))),
//      floatingActionButton: FloatingActionButton(
//        tooltip: 'Fade',
//        child: Icon(Icons.brush),
//        onPressed: () {
//          controller.forward();
//        },
//      ),
//    );
//  }
//}









 // change viwes dynamic
//class SampleAppPage extends StatefulWidget {
//  SampleAppPage({Key key}) : super(key: key);
//
//  @override
//  _SampleAppPageState createState() => _SampleAppPageState();
//}
//
//class _SampleAppPageState extends State<SampleAppPage> {
//  // Default value for toggle
//  bool toggle = true;
//  void _toggle() {
//    setState(() {
//      toggle = !toggle;
//    });
//  }
//
//  _getToggleChild() {
//    if (toggle) {
//      return Text('Toggle One');
//    } else {
//      return MaterialButton(
//          onPressed: () {}, child: Text('Toggle Two')
//      );
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Sample App"),
//      ),
//      body: Center(
//        child: _getToggleChild(),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _toggle,
//        tooltip: 'Update Text',
//        child: Icon(Icons.update),
//      ),
//    );
//  }
//}
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("image/splash.png"), fit: BoxFit.fill),
      ),
//      child: Center(child: FlutterLogo(size: 300)),
    );

  }
}
class MyHomePage extends StatelessWidget {
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
//        color: Colors.red,
        child: Column(
          children: <Widget>[
            Image.asset('image/splash.png',
                fit: BoxFit.cover)
          ],
        )



      )
    );


//      Card(
////              elevation: 20,
//      color: Colors.white10 ,  //for opcity color
//      child: Text('Ahmeed',
//        style: TextStyle(
//            fontSize: 100
//        ),),
//    ),

//      FlatButton(
//      child: Text(' Click me',
//      style: TextStyle(
////                 color: Colors.white
//      ),),
//    onPressed: Clickme,
//    color: Colors.red,
//    padding: EdgeInsets.all(20),
//    colorBrightness: Brightness.dark, // for onclick effect
//    textColor: Colors.white,
//    ),
//    FlatButton.icon(onPressed: Clickme,
//    icon: Icon(Icons.verified_user,size: 30,color: Colors.red),
//    label: Text('Click Me 2'),
//    colorBrightness: Brightness.light,
//    textColor: Colors.amber,
//    )

//      body: Container(
//        decoration: BoxDecoration(
//          border: Border.all(color: Colors.red,width: 5)
//        ),
//        width: MediaQuery.of(context).size.width,
//        height: MediaQuery.of(context).size.height,
////        padding: EdgeInsets.all(20),
////        margin: EdgeInsets.all(30),
////        margin: EdgeInsets.only(left: 20),
//
//        child: Column(
////          verticalDirection:VerticalDirection.down , // texts show from top to bottom
////          verticalDirection:VerticalDirection.up, // texts show from bottom to top
////          mainAxisAlignment: MainAxisAlignment.center, // to make all data in center
////            mainAxisAlignment: MainAxisAlignment.spaceBetween, // to make all data same space between there
////             mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // to make all data same in all postions from top and bottom
////              crossAxisAlignment: CrossAxisAlignment.end, // to make text at the end of view
////            crossAxisAlignment: CrossAxisAlignment.stretch, // to make text auto size with view
////              textDirection: TextDirection.ltr, // to make all text from right or left
//          children: <Widget>[
//           Text('ahmeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeed')





//          ],
//            Center(
//              child: Container(
//                child: Column(
//                  children: <Widget>[
//                    Text('ahmed'),
//                    Text('ahmed'),
//                    Text('ahmed'),
//                    Text('ahmed')
//                  ],
//                ),
//              ),
//            )


//            Text('ahmeeeed ahmeeeedahmeeeedahmeeeedahmeeeedahmeeeed',
//              style: TextStyle(
//                fontSize: 30,
//                color: Colors.amber,
////                fontStyle: FontStyle.italic,
//                fontWeight: FontWeight.bold,
//              ),
//              softWrap: true, // to make text ynzl L 50 line 7ta bra7to
//            )
//             textDirection: TextDirection.rtl),  // Directions text
//            Text('ahmeeeed ahmeeeed ahmeeeed ahmeeeed ahmeeeed ahmeeeed ahmeeeed',
//            textAlign: TextAlign.center) ,// to customize text options like style and align ,,else
//                textAlign: TextAlign.justify, // justify text
//            ),
//            Text('width = ${MediaQuery.of(context).size.width}',textAlign: TextAlign.center),
//            Text('height = ${MediaQuery.of(context).size.height}',textAlign: TextAlign.center)



    // TODO: implement build
  }









//  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

//  final String title;

//  @override
//  _MyHomePageState createState() => _MyHomePageState();
}

//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//
//          // Column is also a layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.headline4,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
