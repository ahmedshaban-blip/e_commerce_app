import 'package:e_commerce/core/routing/routes.dart';
import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';


class OnboardingScreen extends StatefulWidget {
 const OnboardingScreen({super.key});


 @override
 State<OnboardingScreen> createState() => _OnboardingScreenState();
}


class _OnboardingScreenState extends State<OnboardingScreen> {
 final controller = PageController();
 bool isLastPage = false;


 @override
 void dispose() {
   controller.dispose();
   super.dispose();
 }


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Theme.of(context).scaffoldBackgroundColor,
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal: 24),
       child: Column(
         children: [
           SizedBox(height: 60),
           Expanded(
             child: PageView(
               controller: controller,
               onPageChanged: (index) => setState(() => isLastPage = index == 2),
               children: const [
                 OnboardPage(title: 'Welcome', description: 'This is onboarding 1'),
                 OnboardPage(title: 'Explore', description: 'This is onboarding 2'),
                 OnboardPage(title: 'Start', description: 'This is onboarding 3'),
               ],
             ),
           ),
   
           SizedBox(height: 20),
           SizedBox(
             width: double.infinity,
             child: ElevatedButton(
               onPressed: () {
                 Navigator.pushNamed(context, Routes.loginScreen);
               },
               child: Text(isLastPage ? 'Get Started' : 'Next'),
             ),
           ),
           SizedBox(height: 40),
         ],
       ),
     ),
   );
 }
}


class OnboardPage extends StatelessWidget {
 final String title;
 final String description;
 const OnboardPage({super.key, required this.title, required this.description});


 @override
 Widget build(BuildContext context) {
   return Padding(
     padding: EdgeInsets.symmetric(horizontal: 24),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Icon(Icons.flutter_dash, size: 120),
         SizedBox(height: 20),
         Text(
           title,
           style: GoogleFonts.nunito(
             fontSize: 26,
             fontWeight: FontWeight.bold,
           ),
         ),
         SizedBox(height: 12),
         Text(
           description,
           textAlign: TextAlign.center,
           style: GoogleFonts.nunito(fontSize: 16),
         ),
       ],
     ),
   );
 }
}


