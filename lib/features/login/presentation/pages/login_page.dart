import 'package:e_commerce/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/login_cubit.dart';
import '../cubit/login_state.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Login Page')),
        body: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            if (state is LoginLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoginFailure) {
              return Center(child: Text('Error: ${state.error}'));
            }
            return Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(color: Colors.blue,
                  child: TextFormField(decoration: InputDecoration(),
                  controller: TextEditingController(text: emailController.text),
                  obscureText: false,
                  ),


                  
                ),
                SizedBox(height: 20),
                  Container(color: Colors.blue,
                  child: TextFormField(decoration: InputDecoration(),
                  controller: TextEditingController(text: passwordController.text),
                  obscureText: true,
                  ),


                  
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<LoginCubit>().login(emailController.text, passwordController.text);
                     Navigator.pushReplacementNamed(context, Routes.HomePage);

                    //Navigator.pushNamed(context, '/HomePage');
                  },
                  child: const Text('Login'),
                  
                  )
              ],
            );
          },
        ),
      ),
    );
  }
}
