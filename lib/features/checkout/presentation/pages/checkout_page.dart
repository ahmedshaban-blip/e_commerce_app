import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/checkout_cubit.dart';
import '../cubit/checkout_state.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CheckoutCubit(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Checkout Page')),
        body: BlocBuilder<CheckoutCubit, CheckoutState>(
          builder: (context, state) {
            if (state is CheckoutLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CheckoutFailure) {
              return Center(child: Text('Error: ${state.error}'));
            }
            return const Center(child: Text('Checkout Page'));
          },
        ),
      ),
    );
  }
}
