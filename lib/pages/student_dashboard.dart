import 'package:flutter/material.dart';
import 'package:residence_app/widgets/textFormField.dart';
import '../helpers/colors.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key});

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(

          padding: EdgeInsets.all(20),

           child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Hello Gabby',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold),
              ),
             

              Text('Good to see you.'),

              const SizedBox(height: 20,),

              AppTextField(hint:'search for hostels',
              prefixIcon: Icons.search,
              ),

              const SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Primary,
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Row(
                  children: [
                    Expanded(
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Find Your Perfect Hostel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          )),

                          const SizedBox(height: 6,),

                          Text('Discover great places near you',
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal
                          )),
                        ],
                      ), ),
                    const SizedBox(width: 12,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/images/af94dc9f1348574d0539f1169a825953.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,),
                    )
                  ],
                )
              ),

              const SizedBox(height: 10,),

              Row(
                children: [
                  Text('Featured hostels',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  const SizedBox(width: 160,),
                  Text('View all',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),

              child:Row(

                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset('assets/images/af94dc9f1348574d0539f1169a825953.jpg',
                    width: 150,
                    height: 130,
                    fit: BoxFit.cover,),
                  ),

                  const SizedBox(width: 20,),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Unidaz Hostel',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                    
                        const SizedBox(height: 6,),
                    
                        Text('Abeka, tesano',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                        ),),
                    
                        const SizedBox(height: 6,),
                    
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow,),
                            const SizedBox(width: 4,),
                            Text('4.5',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                            ),),
                          ],
                        ),

                         const SizedBox(height: 6,),
                    
                        Text('GHc 3000/semester',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                        ),),
                      ],
                    ),
                  )
                ],
              ),
              ),

               // Second hostel container
              const SizedBox(height: 20,),

              
               Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),

              child:Row(

                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset('assets/images/af94dc9f1348574d0539f1169a825953.jpg',
                    width: 150,
                    height: 130,
                    fit: BoxFit.cover,),
                  ),

                  const SizedBox(width: 20,),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Unidaz Hostel',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                    
                        const SizedBox(height: 6,),
                    
                        Text('Abeka, tesano',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                        ),),
                    
                        const SizedBox(height: 6,),
                    
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow,),
                            const SizedBox(width: 4,),
                            Text('4.5',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                            ),),
                          ],
                        ),

                         const SizedBox(height: 6,),
                    
                        Text('GHc 3000/semester',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                        ),),
                      ],
                    ),
                  )
                ],
              ),

              ),



           

            ],
           ),
        ), 
        ),




    );
  }
}