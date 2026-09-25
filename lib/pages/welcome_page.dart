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
    
      color: Colors.black.withValues(alpha: 0.5),
      child: SafeArea(
        child:Column(
          children: [

            // SizedBox(height: 60,),

           const Spacer(flex: 3,),

            // SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset('assets/logo/ca4771df2e21bd50fdd5d6759d21c7b3.jpg',
                  height: 60,),

                  SizedBox(width: 25,),

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

            const Spacer(flex: 3,),

            SizedBox(height: 50,),

           const Text('YOUR NEXT \n HOME AWAITS',
           textAlign: TextAlign.center,
           style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 1.5,
           ),),

           const SizedBox(height:15,),

           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Safe, Confortable & And Affodable Hostel For Students',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18,
            color: Colors.white),),
            ),

            const Spacer(flex: 2,),

            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed:() {
                  // navigate to sign up page
                },style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                
                 child: Text('Get Started',
                 style: TextStyle(
                  fontSize: 17
                 ),)),
              ),),

              SizedBox(height: 25,),

              Padding(padding: EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(onPressed:() {
                 // navigate to login page

                }, style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                
                child: Text('Login',
                style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                ),)),
              ),),

          SizedBox(height: 50,),

          Spacer(),

          ],
        ) ),
    ),     



    )
      
    );
  }
}