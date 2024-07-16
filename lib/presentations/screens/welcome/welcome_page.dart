import 'package:flutter/material.dart';
import 'package:inkmelo_app/presentations/screens/welcome/form_login.dart';
import '../../../config/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static const String routeName = '/welcome-page';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const WelcomePage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      color: primaryColor,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 10),
                                  Image.asset(
                                    "assets/images/logo.svg",
                                    width: 100,
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    "InkMelo Book Store",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge
                                        ?.copyWith(
                                      // ignore: deprecated_member_use
                                      color: Theme.of(context)
                                          .colorScheme
                                          .surface,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    child: Text(
                                      "Here you can find best book for you and you can also read book and listens book",
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                        // ignore: deprecated_member_use
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [SizedBox(height: 30), FormLogin()],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
