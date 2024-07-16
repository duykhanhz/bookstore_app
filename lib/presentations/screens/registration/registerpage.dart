import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inkmelo_app/blocs/registration/register_bloc.dart';
import 'package:inkmelo_app/blocs/registration/register_event.dart';
import 'package:inkmelo_app/blocs/registration/register_state.dart';
import 'package:inkmelo_app/models/user_model.dart';
import 'package:inkmelo_app/repositories/user_repository.dart';

class RegisterPage extends StatelessWidget {
  static const String routeName = '/register-page';

  const RegisterPage({super.key});
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const RegisterPage(),
      settings: const RouteSettings(name: routeName),
    );
  }
  @override
  Widget build(BuildContext context) {
    final UserRepository userRepository = UserRepository();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: BlocProvider(
        create: (context) => RegisterBloc(userRepository: userRepository),
        child: const RegisterForm(),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _confirmpasswordController,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _fullnameController,
              decoration: const InputDecoration(
                labelText: 'Fullname',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your fullname';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            BlocConsumer<RegisterBloc, RegisterState>(
              listener: (context, state) {
                if (state is RegisterSuccess) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home-page', (route) => false);
                } else if (state is RegisterFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Registration failed: ${state.error}'),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is RegisterLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final userModel = UserModel(
                        id: 1,
                        username: _usernameController.text.trim(),
                        fullname: _fullnameController.text.trim(),
                        email: _emailController.text.trim(),
                        role: 'user',
                        createdAt: DateTime.now().toIso8601String(),
                        lastUpdatedTime: DateTime.now().toIso8601String(),
                        lastChangedBy: 'system',
                        status: 'active',
                      );
                      context
                          .read<RegisterBloc>()
                          .add(LoadRegister(userModel: userModel));
                    }
                  },
                  child: const Text('Register'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    _fullnameController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}