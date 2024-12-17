import 'package:flutter/material.dart';
import 'package:styling1/home_page.dart';

class GettingStarted extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:Colors.pinkAccent,
      body:Container(
        height: 896,
        width: 414,
         decoration: BoxDecoration(
                color:Color(0XFFE57373),
                border: Border.all(color:Color(0XFFE57373),width: 5.0),
                borderRadius:BorderRadius.circular(10.0)
                ),
        child: Stack(
          //alignment: Alignment.center,
          children: [
            
            Image.asset('assets/delivery-man 2.png',height: 590,width: 414,),
            Container(
              alignment: Alignment.center,
              width: 330,
              height: 210,
              transform: Matrix4.translationValues(35, 450.0, 0),
              decoration: BoxDecoration(
                color:Colors.white,
                border: Border.all(color: Colors.white,width: 5.0),
                borderRadius:BorderRadius.circular(10.0)
                ),
          
            ),
            Container(
              transform: Matrix4.translationValues(0, 455.0, 0),

              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text:TextSpan(
                    text: ('Quick Delivery at your '),
                    style: TextStyle(
                      color:Color(0XFF4F4F4F),
                      fontWeight: FontWeight.w500,
                      fontSize: 31,
                    ),
                    children: <TextSpan>[
                      TextSpan(text:'Doorstep',
                      style: TextStyle(
                        color: Color(0XFFE57373),
                        fontWeight: FontWeight.w500,
                        fontSize: 31,

                      ))

                    ],
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 50,
                    child: Text('Home delivery and onlione reservation system for retaurants and cafe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Color(0XFFBDBDBD),
                      
                    ),
                    
                    textAlign: TextAlign.center,),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomePage()),);
                    } ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color:Color(0XFFE57373),
                  minWidth: 210,
                  height: 65,
                                     
                  child: Text('Get Started',
                  style:TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  ),
                  )
                ],
              ),
            ),
          ],
        ),
      )

    );
  }

}