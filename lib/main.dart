import 'package:flutter/material.dart';

void main() {
  runApp(const slider());
}

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  String img1='https://www.reckontalk.com/wp-content/uploads/2015/10/19-Adorable-Pics-Of-The-Cutest-Baby-Animals-17.jpg';
  String img2='https://images.unsplash.com/photo-1529429617124-95b109e86bb8?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEyMDd9&s=4be6f29d095bc56cb800cc08ea6b3480';
  String img3='https://3.bp.blogspot.com/-ijNlFcqO3dg/UkW2bK6BTEI/AAAAAAAAsO4/GuQrxCnfY6w/s1600/funny-animals-photos-075-019.jpg';
  String setImage = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 13, 30),
      appBar: AppBar(
        title: Text("Slider",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
         
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 130, 60, 94),
      ),
      body: Column(
        children:[
        Expanded(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 390,
                height: 250,
                child: Image.network('$setImage'),
                
              )
        
          ],),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  setImage =img1;
                });
              },
              child: SizedBox(
                width: 100,
                height: 200,
                child: Image.network('$img1'),
              ),
            ),
             GestureDetector(
              onTap: (){
                setState(() {
                  setImage =img2;
                });
              },
              child: SizedBox(
                width: 110,
                height: 100,
                child: Image.network('$img2'),
              ),
            ),
             GestureDetector(
              onTap: (){
                setState(() {
                  setImage =img3;
                });
              },
              child: SizedBox(
                width: 80,
                height: 90,
                child: Image.network('$img3'),
              ),
            )

        ],)

      ]),
    ));

  }
}


