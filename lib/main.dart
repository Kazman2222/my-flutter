import 'dart:ui';
import 'quote.dart';
import 'quayum.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: const myOwn(),
  routes: {
'/quayum':(context) => const quayum()
  },
));

class  myOwn extends StatefulWidget {
  const myOwn({super.key});

  @override
  State<myOwn> createState() => _myOwnState();
}

class _myOwnState extends State<myOwn> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
      backgroundColor: Colors.black,
     
      title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
        children: [
          
          Container( 
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          child: const Text(
        'Wesley Intl School',
        style: TextStyle(
          color:Colors.grey,
          fontSize: 23.0,
          fontWeight: FontWeight.w600,
          fontFamily: 'AlegreyaSans',
        ),
      ),
      ),
         
   ElevatedButton(
    onPressed: (){}, 
   child: Text(
    'Sign Up',
    style: TextStyle(
      fontSize: 19.0,
      fontFamily: 'Poppins'
    ),
   ),
   style: ButtonStyle(
    padding:  MaterialStatePropertyAll(
      const EdgeInsets.symmetric(horizontal: 25.0, vertical: 16.0)
    ),
    backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)
   ),
   )
        ],
      ),
    ),
    body: Column(
      children: [
       Container(
         padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
          child: const Text(
            'Welcome To Wesley Intl School',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
              letterSpacing: 1.0
            ),
          ),
        
       ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
          child: const TextField(
            style:  TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontFamily: 'Poppins'
            ),
           decoration: InputDecoration(
            labelText: 'Username',
            hintText: 'Enter Your UserName',
            border: OutlineInputBorder(
            ),
           ),
          ),
        ),
const  SizedBox(height: 35.0,),
         Container(
          margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: const TextField(
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontFamily: 'Poppins',
            ),
            obscureText: true,
           decoration: InputDecoration(
            
            labelText: 'Password',
            hintText: 'Enter Your Password',
            border: OutlineInputBorder(),
           ),
          ),
        ),

       
     const   SizedBox(height: 30.0,),
        ElevatedButton(
          onPressed: (){
        Navigator.pushNamed(context, '/quayum');
          }, 
          child:  Text(
            'Login',
            style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'Poppins'
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.red),
            padding:  MaterialStatePropertyAll(
              const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0)
            ),
            
          ),
          )
      ],
    ),
    );
  }
}
