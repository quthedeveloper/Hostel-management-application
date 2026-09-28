import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../widgets/textFormField.dart';
import '../widgets/Button.dart';



class ResetPasswordPage extends StatefulWidget{
  const ResetPasswordPage({super.key});

 @override
 State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
    Padding(
      padding: const EdgeInsets.all(19.0),
       child: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
              const Text("Reset Your Password",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Enter your email address to reset your password.",
              style: TextStyle(
                fontSize: 14,
                color: Gray,
              ),
            ),
              const SizedBox(height: 25),

              Label(text: "Email", fontSize: 15),
              const SizedBox(height: 8),

              AppTextField(
                hint: "Enter your email",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email_outlined,
              ),

              const SizedBox(height: 16),
              AppButton(
                text: "Reset Password",
                onPressed: () {
                  // Handle reset password logic here
                },
                horizontalPadding: 120,
                verticalPadding: 15,
                Bold: true,
              ),

              
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Remember your password?"),
                  TextButton(
                    onPressed: () {
                      // Handle navigation to login page
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
            ]
          )
        )
      )
    )
    );
  }
}
