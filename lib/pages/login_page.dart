import 'dart:math';

import'package:flutter/material.dart';
import '../widgets/textFormField.dart';
import '../helpers/colors.dart';
import '../widgets/Button.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
 
  @override
  void dispose() {
    
    _emailController.dispose();
    _passwordController.dispose();
    
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(padding: EdgeInsets.fromLTRB(22,16,22,22),
      child: SafeArea(
        
        child:SingleChildScrollView(
          child: Column(
             crossAxisAlignment:CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // InkWell(
              //   onTap: () => Navigator.of(context).maybePop(),
              //   customBorder: const CircleBorder(),
              //   child: Container(
              //     width: 40,
              //     height: 40,
              //     decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       border: Border.all(color: AppColors.line),
              //     ),
              //     child: const Icon(Icons.arrow_back_ios_new_rounded,
              //         size: 16, color: AppColors.navy),
              //   ),
              // ),
              // const SizedBox(height: 24,),

              const Text('Welcome Back',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),

              const SizedBox(height: 4,),

              const Text('Login to your account',
              style: TextStyle(
                fontSize: 14,
              ),),

              const SizedBox(height: 70,),

              

              Label(text: 'Email Address', fontSize:15),
              AppTextField(
                hint: 'enter your email',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email_outlined,
              ),

              const SizedBox(height: 24,),
              Label(text: 'password', fontSize:15),
              AppTextField(
                hint: 'enter password',
                controller: _passwordController,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.lock_outline,
              ),

              const SizedBox(height: 10,),

              Padding(padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){

                    // navigates to forgotten password page 
                  },
                   child: Text('fogotten password ?',
                   style: TextStyle(color: Primary),
                   ),
                   )
                ],
              ),),


               const SizedBox(height: 50,),

              AppButton(text: 'login',
              onPressed: () {

                // navigates to main page
              },
               horizontalPadding: 120,
                verticalPadding: 15,
                Bold: true,
              ),
               
                const SizedBox(height: 15,),

                Center(
                  child: SizedBox(
                  width: 350,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child:Divider(
                          color: Colors.grey[400],
                          thickness: 0.9,
                        ), 
                      ),
                  
                        Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text('OR',
                        style: TextStyle(fontSize: 12,
                        fontWeight: FontWeight.bold),),
                        ),
                  
                        Expanded(
                        child:Divider(
                          color: Colors.grey[400],
                          thickness: 0.9,
                        ), ),
                    ],
                  ),
                 ),
                ),

                const SizedBox(height: 24,),

                  // sign in option with gmail
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(

                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton.icon(
                      onPressed: (){
                        // 
                      }, 
                      icon: Image.asset('assets/logo/icons8-google-logo-48.png',
                      height: 25,
                      // alignment: AlignmentGeometry.centerLeft,
                      ),
                      
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.black)
                      ),
                      label: Text('Continue with Goggle',
                      style: TextStyle(color: Colors.black,
                      fontSize: 16,),
                      )),
                  ),
                ),

                const SizedBox(height: 20,),

                  // sign in option with gmail
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton.icon(
                      onPressed: (){
                        // allows user to sign in with apple account
                      }, 
                      icon: Image.asset('assets/logo/pngwing.com.png',
                      height: 25,
                      // alignment: AlignmentGeometry.centerLeft,
                      ),
                      
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.black)
                      ),
                      label: Text('Continue with Apple',
                      style: TextStyle(color: Colors.black,
                      fontSize: 16,),
                      )),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account ?'),

                    TextButton(
                      onPressed: (){

                        // navigates to the create student account / create manager page
                      },
                       child: Text('Register',
                       style: TextStyle(
                        color: Primary,
                       ),),
                       )
                  ],
                )

            ],
          ),
        )
         ),),
    );
  }
}
