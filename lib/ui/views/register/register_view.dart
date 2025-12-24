import 'package:bushido/app/app.locator.dart';
import 'package:bushido/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'register_viewmodel.dart';

class RegisterView extends StackedView<RegisterViewModel> {
  const RegisterView({super.key});

  @override
  Widget builder(
      BuildContext context, RegisterViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                onChanged: viewModel.setFirstName,
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
              TextField(
                onChanged: viewModel.setLastName,
                decoration: const InputDecoration(labelText: 'Last Name'),
              ),
              TextField(
                onChanged: viewModel.setEmail,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                onChanged: viewModel.setPassword,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ValueListenableBuilder<String?>(
                valueListenable: viewModel.errorMessage,
                builder: (_, error, __) => error != null
                    ? Text(error, style: const TextStyle(color: Colors.red))
                    : const SizedBox.shrink(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: viewModel.isBusy ||
                        viewModel.email.value.isEmpty ||
                        viewModel.password.value.isEmpty
                    ? null
                    : viewModel.register,
                child: viewModel.isBusy
                    ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                            color: Colors.white, strokeWidth: 2),
                      )
                    : const Text('Register'),
              ),
              TextButton(
                onPressed: () {
                  locator<NavigationService>().navigateToLoginView();
                },
                child: const Text('Al een account? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterViewModel viewModelBuilder(BuildContext context) =>
      RegisterViewModel();
}
