import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../widgets/role-card.dart';

// Optional: add google_fonts to pubspec.yaml and uncomment to match the design font.
// import 'package:google_fonts/google_fonts.dart';

enum UserRole { student, manager }



class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({super.key});

  @override
  State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  UserRole? _selected;

  void _continue() {
    if (_selected == null) return;
    // Replace these with your real routes.
    final route = _selected == UserRole.student
        ? '/create_student'
        : '/create-manager';
    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 16, 22, 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
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
              const Text(
                'How will you use Residence?',
                style: TextStyle(
                  fontSize: 26,
                  height: 1.25,
                  fontWeight: FontWeight.w700,
                  color: AppColors.navy,
                ),
              ),

              const SizedBox(height: 6),
              const Text(
                'Choose your account type to get started.',
                style: TextStyle(fontSize: 14, color: AppColors.muted),
              ),
              const SizedBox(height: 26),
              RoleCard(
                icon: Icons.school_outlined,
                title: "I'm a student",
                subtitle: 'Find and book safe, affordable hostels.',
                selected: _selected == UserRole.student,
                onTap: () => setState(() => _selected = UserRole.student),
              ),

              const SizedBox(height: 14),
              RoleCard(
                icon: Icons.apartment_outlined,
                title: 'I manage a hostel',
                subtitle: 'List your hostel and manage bookings.',
                selected: _selected == UserRole.manager,
                onTap: () => setState(() => _selected = UserRole.manager),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: _selected == null ? null : _continue,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.orange,
                    foregroundColor: Colors.white,
                    disabledBackgroundColor:
                        AppColors.orange.withValues(alpha: 0.45),
                    disabledForegroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45)),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  child: const Text('Continue'),
                ),
              ),

              const SizedBox(height: 16),

              Center(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed('/login_page'),
                  child: const Text.rich(
                    TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(fontSize: 13, color: AppColors.muted),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: AppColors.orange,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
