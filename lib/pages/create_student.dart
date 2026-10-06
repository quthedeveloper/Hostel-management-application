import 'package:flutter/material.dart';
import "../helpers/colors.dart";
import "../widgets/textFormField.dart";
import "../widgets/Button.dart";





class CreateStudent extends StatefulWidget {
  const CreateStudent({super.key});

  @override
  State<CreateStudent> createState() => _CreateStudentState();
}

class _CreateStudentState extends State<CreateStudent> {
   final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _hostelNameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    _hostelNameController.dispose();
    super.dispose();
  }

   

  Widget build(BuildContext context) {

bool _obscureText = true;

    return Scaffold(
       body: Padding(
        padding: const EdgeInsets.fromLTRB(22, 16, 22, 22),
        child: SafeArea(
          child: SingleChildScrollView(
            child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).maybePop(),
                customBorder: const CircleBorder(),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.line),
                  ),
                  child: const Icon(Icons.arrow_back_ios_new_rounded,
                      size: 16, color: AppColors.navy),
                ),
              ),

              const SizedBox(height: 24),
              
              const Text("Create Student Account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              " Join our community of students.",
              style: TextStyle(
                fontSize: 14,
                color: Gray,
              ),
            ),
              const SizedBox(height: 45),

              Label(text: "Full Name", fontSize: 15),
              const SizedBox(height: 8),
              AppTextField(
                hint: "Enter your name",
                controller: _nameController,
                prefixIcon: Icons.person_outline,
                validator: (value) =>
                     (value == null || value.trim().isEmpty)
                         ? 'Please enter your full name'
                         : null,
              ),

              const SizedBox(height: 16),

              Label(text: "Email", fontSize: 15),
              const SizedBox(height: 8),
              AppTextField(
                hint: "Enter your email",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email_outlined,
                validator: (value) {
                   if (value == null || value.trim().isEmpty) {
                     return 'Please enter your email';
                   }
                   if (!value.contains('@') || !value.contains('.')) {
                     return 'Please enter a valid email';
                   }
                   return null; // null means "valid"
                 },
              ),

            const SizedBox(height: 16),

              Label(text: "Phone Number", fontSize: 15),
              const SizedBox(height: 8),
              AppTextField(
                hint: "Enter your phone number",
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                prefixIcon: Icons.phone_outlined,
                validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Please enter your phone number';
                   }
                   if (value.length < 10) {
                     return 'please enter a valid phone number';
                   }
                   return null;
                 },
                
              ),

              // const SizedBox(height: 16),

              // Label(text: "Hostel Name", fontSize: 15),
              // const SizedBox(height: 8),
              // AppTextField(
              //   hint: "Enter your hostel name",
              //   controller: _hostelNameController,
              //   keyboardType: TextInputType.text,
              //   prefixIcon: Icons.home_outlined,
              // ),


              const SizedBox(height: 16),

              Label(text: "Password", fontSize: 15),
              const SizedBox(height: 8),
              AppTextField(
                hint: "Enter your password",
                controller: _passwordController,
                obscureText: _obscureText,
                prefixIcon: Icons.lock_outline,
                validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Please enter your password';
                   }
                   if (value.length < 6) {
                     return 'Password must be at least 6 characters';
                   }
                   return null;
                 },
              ),

              const SizedBox(height: 45),

              AppButton(
                text: "Create Account",
                onPressed: () {
                  // Handle create manager logic here
                },
                horizontalPadding: 120,
                verticalPadding: 15,
                Bold: true,
              ),

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login_page');
                    },
                    child: Text("Login",
                      style: TextStyle(
                        color: Primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    )

    );
  }
}
