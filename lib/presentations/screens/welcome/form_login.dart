import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkmelo_app/presentations/widgets/primary_button.dart';
import 'package:inkmelo_app/presentations/widgets/text_form_field_default.dart';
import '../../../blocs/authentication/authentication_bloc.dart';
import '../../widgets/text_form_field_password.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({
    super.key,
  });

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthenticationBloc>().state;
    var loginWidget = (switch (authState) {
      AuthenticationInitial() =>
        _buildAuthIntial(userNameController, passwordController),
      AuthenticationFailed(error: final error) => _buildAuthFailed(
          userNameController,
          passwordController,
          error,
        ),
      AuthenticationSuccess() =>
        _buildAuthIntial(userNameController, passwordController),
      AuthenticationInProcess() =>
        _buildAuthIntial(userNameController, passwordController),
    });

    loginWidget = BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/home-page', (Route<dynamic> route) => false);
        } 
        // else {
        //   Navigator.pushNamedAndRemoveUntil(
        //       context, '/home-page', (Route<dynamic> route) => false);
        // }
      },
      child: loginWidget,
    );

    return Form(
      key: _formKey,
      child: Column(
        children: [
          loginWidget,
          const SizedBox(
            height: 25,
          ),
          PrimaryButton(
            btnName: 'Login',
            ontap: () {
              if (_formKey.currentState!.validate()) {
                context.read<AuthenticationBloc>().add(LoginAccount(
                    userName: userNameController.text.trim(),
                    password: passwordController.text.toString()));
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}

Widget _buildAuthIntial(
  TextEditingController userNameController,
  TextEditingController passwordController,
) {
  return Container(
    width: 318,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0c000000),
            offset: Offset(0, 4),
            blurRadius: 2.5,
          )
        ]),
    child: Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        TextFormFieldDefault(
          labelText: 'TÀI KHOẢN *',
          hintText: 'Nhập tài khoản của bạn',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Tài khoản không được bỏ trống';
            }
            return null;
          },
          textController: userNameController,
        ),
        const SizedBox(
          height: 25,
        ),
        TextFormFieldPassword(
          labelText: 'MẬT KHẨU *',
          hintText: '******',
          isPassword: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Mật khẩu không được bỏ trống';
            }
            return null;
          },
          textController: passwordController,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    ),
  );
}

Widget _buildAuthFailed(TextEditingController userNameController,
    TextEditingController passwordController, String error) {
  return Container(
    width: 318,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0c000000),
            offset: Offset(0, 4),
            blurRadius: 2.5,
          )
        ]),
    child: Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        TextFormFieldDefault(
          labelText: 'TÀI KHOẢN',
          hintText: 'Nhập tài khoản của bạn',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Tài khoản không được bỏ trống';
            }
            return null;
          },
          textController: userNameController,
        ),
        const SizedBox(
          height: 25,
        ),
        TextFormFieldPassword(
          labelText: 'MẬT KHẨU *',
          hintText: '******',
          isPassword: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Mật khẩu không được bỏ trống';
            }
            return null;
          },
          textController: passwordController,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            error,
            style: GoogleFonts.openSans(
              color: Colors.red,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
