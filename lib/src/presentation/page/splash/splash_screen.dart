import 'package:flutter_bloc_clean_architecture/src/comman/constant.dart';
import 'package:flutter_bloc_clean_architecture/src/comman/routes.dart';
import 'package:flutter_bloc_clean_architecture/src/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      Future.microtask(
        () => context.read<AuthenticatorWatcherBloc>().add(
              const AuthenticatorWatcherEvent.authCheckRequest(),
            ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              authenticating: (_) {},
              authenticated: (_) {
                context.replaceNamed(AppRoutes.DASHBOARD_ROUTE_NAME);
              },
              isFirstTime: (_) {},
              unauthenticated: (_) {
                context.replaceNamed(AppRoutes.LOGIN_ROUTE_NAME);
              });
        },
        child: Scaffold(
          body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // color: Colors.black,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FadeTransition(
                      opacity: _animation,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Logo',
                              style: GoogleFonts.pacifico(
                                fontSize: 40,
                                color: Theme.of(context).primaryColor,
                              )),
                          const SizedBox(height: SPACE12),
                          Text(
                            'Welcome to App',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ],
                      ),
                    ),
                  ])),
        ));
  }
}
