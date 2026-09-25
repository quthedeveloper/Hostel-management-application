import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:Container(
      width: double.infinity,
      height: double.infinity,
      decoration:BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/af94dc9f1348574d0539f1169a825953.jpg'),
        fit: BoxFit.cover,
        opacity: 0.8,
      ), 
    ),

    child: Container(
    
      child: SafeArea(
        child:Column(
          children: [

            Spacer(flex: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset('assets/logo/ca4771df2e21bd50fdd5d6759d21c7b3.jpg',
                  height: 60,),

                  SizedBox(width: 15,),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                      children: [
                        Text('RESIDENCE',
                       style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Colors.white
                       ), ),

                        // SizedBox(height: 5,),

                        Text('Hostel Management System',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 1.5,
                          color: Colors.white,
                        ),)
                      ],
                     ),
                   ),
              ],
            ),

            Spacer(flex: 3,),

            


          ],
        ) ),
    ),     



    )
      
    );
  }
}