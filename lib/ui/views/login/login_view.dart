import 'package:bushido/app/app.locator.dart';
import 'package:bushido/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({super.key});

  @override
  Widget builder(
      BuildContext context, LoginViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // ------------------ Email ------------------
            TextField(
              onChanged: viewModel.setEmail,
              decoration: const InputDecoration(labelText: 'Email'),
            ),

            // ------------------ Password ------------------
            TextField(
              onChanged: viewModel.setPassword,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),

            const SizedBox(height: 20),

            // ------------------ Error Message ------------------
            ValueListenableBuilder<String?>(
              valueListenable: viewModel.errorMessage,
              builder: (context, error, _) {
                if (error == null) return const SizedBox.shrink();
                return Text(error, style: const TextStyle(color: Colors.red));
              },
            ),

            const SizedBox(height: 20),

            // ------------------ Login Button ------------------
            ElevatedButton(
              onPressed: viewModel.isBusy ||
                      viewModel.email.value.isEmpty ||
                      viewModel.password.value.isEmpty
                  ? null
                  : () => viewModel.login(),
              child: viewModel.isBusy
                  ? const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                          color: Colors.white, strokeWidth: 2),
                    )
                  : const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                locator<NavigationService>().navigateToRegisterView();
              },
              child: const Text('Nog geen account? Register'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();
}
