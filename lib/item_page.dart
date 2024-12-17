import 'package:flutter/material.dart';
import 'package:styling1/widget/inches_and_prices_widget.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: InkWell(
          onTap: (){
          Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,size:30)),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.favorite_outline_rounded,size:30,color:Colors.black,)),
        ],
      ),
      body:Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: Text("Melting Cheese",
            style:TextStyle(
              color:Colors.black,
              fontSize: 21,
              fontWeight: FontWeight.w500,
            )),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                    Text('\$',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFEB5757),
                    ),),
                    Text('9.47',style:
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color:Color(0XFF4F4F4F),
                    ),)
                  ],),
                  Image.asset('assets/Pizza 4.png',width: 200,height: 200,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Container(
                        width: 25,
                        height: 25,

                      decoration: BoxDecoration(
                      color:Color(0XFFEB5757),
                      borderRadius:BorderRadius.circular(10.0)
                      ),
                      
                       child: Image.asset('assets/Subtract.png',width: 10,height: 10),

                       ) ,
                       SizedBox(width: 10,),
                       Text('2',style: TextStyle(color: Colors.black,fontSize: 16),),
                       SizedBox(width: 10,),
                       Container(
                        width: 25,
                        height: 25,

                      decoration: BoxDecoration(
                      color:Color(0XFFEB5757),
                      borderRadius:BorderRadius.circular(10.0)
                      ),
                      
                       child: Image.asset('assets/Plus Math.png',width: 10,height: 10),

                       ) ,
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                    Text('\$',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF828282),
                    ),),
                    Text('19.34',style:
                    TextStyle(
                      fontSize: 14,
                      color:Color(0XFF828282),
                    ),)
                  ],),
                  SizedBox(height: 30,),
                  InchesAndPricesWidget(),
                  SizedBox(height: 30,),
                  Row(children: [
                    SizedBox(width: 30,),
                    Icon(Icons.star,color:Colors.yellow),
                    Text('4.9',style:TextStyle(fontSize: 14,color: Colors.black)),
                    SizedBox(width: 80,),
                    Image.asset('assets/Emoji.png',scale:0.8,),
                    SizedBox(width: 5,),
                    Text('44 Calories',style: TextStyle(fontSize: 14,color:Colors.black),),
                    SizedBox(width: 50,),
                    Image.asset('assets/Time.png'),
                    SizedBox(width: 5,),
                    Text('20 - 30 min',style: TextStyle(fontSize: 14,color:Colors.black),),

                  ],),
                  SizedBox(height: 30,),
                  MaterialButton(
                    onPressed: (){
                      showAlertDialog(context);
                      },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minWidth: 300,
                  height: 50,
                  color:Color(0XFFEB5757),
                  child:Text('ADD TO CART',style:TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color:Colors.white,
                  )))
                  
        ],
      )

    );
  }
  void showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () { 
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Item Added To Cart"),
    //content: Text("Item Added to Cart!"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

      
}