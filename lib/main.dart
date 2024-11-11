// lib/main.dart (for the standalone app)
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mbc_common/mbc_common.dart';
import 'package:mbc_core/mbc_core.dart';
import 'mbc_wellness.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    const WellnessApp(),
  );
}

ProviderContainer _providerContainer = ProviderContainer();

ProviderContainer get providerContainer => _providerContainer;

class WellnessApp extends StatelessWidget {
  const WellnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: WellnessRootApp(),
    );
  }
}

class WellnessRootApp extends ConsumerStatefulWidget {
  @override
  _WellnessRootAppState createState() => _WellnessRootAppState();
}

class _WellnessRootAppState extends ConsumerState<WellnessRootApp> {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => WellnessScreen(),
      ),
      // Add more routes if necessary
    ],
  );
  final accessToken ='eyJraWQiOiJQeGFpTXpNTGlNczNoOEVKd3VzRkkzRkwyNGxPTTYwQXJ3d3hoeElvTkFrPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJiZmQ2YzFjOS1kZmE0LTQ3ZDEtYTQxZC1iNmQ4MTA0ZTNjY2IiLCJldmVudF9pZCI6ImQ2YmEwZTYzLTNmOWMtNGI3MC1iYjgzLTFhYmVmYjhiZWVkOCIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3MzEzMTc2MTEsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC5jYS1jZW50cmFsLTEuYW1hem9uYXdzLmNvbVwvY2EtY2VudHJhbC0xXzVLVEg4dnY3OSIsImV4cCI6MTczMTQwODUxNCwiaWF0IjoxNzMxMzIyMTE0LCJqdGkiOiI4MWVmNTg1MS1mMzE4LTQ4NjktYWE5NC1lYWM1MzFlZjM4YTQiLCJjbGllbnRfaWQiOiIxam5iZnZnNDR0dTI5bTNxMDA1NGduaWNtciIsInVzZXJuYW1lIjoiYmZkNmMxYzktZGZhNC00N2QxLWE0MWQtYjZkODEwNGUzY2NiIn0.eWYkm8mwMNgVdWaXUbyDFllsb7eR8G3Vts7TjPLiY-PUAvJtRXqWAQiTeFpCTfScIIeZagm-uWgbfLpGfKLzSWPz348hS0V6Z3_rXR6-hKKjpcmDUQiYwU1sZbjMcyUz-WjKhloh3A6yRNyRqPBZRsG9zrbq2eqxSB5VCTQ1UwLomnYIhr_f4Bur6uB3IDeiqXspIePRCCj_2q4XQB3dFkwjw-a_JzyxGMw8Uf8z6TOUMZCz8eifgauPdF2pwYlToV8f7OZpDjcWYc_aHJeThTi55H2QnrDLWpWDMEEfOTm2CvTlbPY8PJ15e-3FkNkGHLbzn9dXmYh-Y_qHJmWtRQ';
  final identityToken =
      "eyJraWQiOiI5VlFRdE9aV1FHanQxU1wvYlBLUXdVSkZHVkZNNWtZTWVTWUpMNERwYUdDZz0iLCJhbGciOiJSUzI1NiJ9.eyJpY2FuX2VuYWJsZWQiOiJmYWxzZSIsInN1YiI6ImJmZDZjMWM5LWRmYTQtNDdkMS1hNDFkLWI2ZDgxMDRlM2NjYiIsInVzZXJfY2xhaW1zIjoiW3tcInN5c3RlbVwiOlwicHJvY3VyYS1wcml2YXRlXCIsXCJhdXRob3JpemVkSWRzXCI6W1wiMDAwMDc5MTEyMVwiXX1dIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImNpdHVzIjoie30iLCJpc3MiOiJodHRwczpcL1wvY29nbml0by1pZHAuY2EtY2VudHJhbC0xLmFtYXpvbmF3cy5jb21cL2NhLWNlbnRyYWwtMV81S1RIOHZ2NzkiLCJjb2duaXRvOnVzZXJuYW1lIjoiYmZkNmMxYzktZGZhNC00N2QxLWE0MWQtYjZkODEwNGUzY2NiIiwidXNlcl9jbGFpbXNfdjIiOiJbe1wicHNJZFwiOlwiMDAwMDc5MTEyMVwiLFwic3lzdGVtVHlwZVwiOlwiaG9tZUNhcmVcIixcImF1dGhvcml6ZWRTeXN0ZW1zXCI6W3tcImlkXCI6XCIwMDAwNzkxMTIxXCIsXCJuYW1lXCI6XCJwcm9jdXJhLXByaXZhdGVcIixcInVzZXJUeXBlXCI6XCJjbGllbnRcIixcInRlbmFudHNcIjpbXCJQcm9jdXJhX1NpbWNvZVwiXX1dfV0iLCJjdXN0b206YWNjZXB0ZWRfZGlnaV90ZXJtcyI6IjEiLCJnaXZlbl9uYW1lIjoiU3RldmUiLCJjdXN0b206YWNjZXB0ZWRfdGVybXMiOiIxIiwiYXVkIjoiMWpuYmZ2ZzQ0dHUyOW0zcTAwNTRnbmljbXIiLCJldmVudF9pZCI6ImQ2YmEwZTYzLTNmOWMtNGI3MC1iYjgzLTFhYmVmYjhiZWVkOCIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNzMxMzE3NjExLCJjdXN0b206bGFzdF9sb2dpbiI6IjE3MzEzMDIyODQiLCJleHAiOjE3MzE0MDg1MTQsImlhdCI6MTczMTMyMjExNCwiZmFtaWx5X25hbWUiOiJKb2huIiwiY3VzdG9tOnByZWZlcnJlZF9sYW5ndWFnZSI6ImVuIiwiZW1haWwiOiJzdGV2ZWpvaG41NEBtYWlsaW5hdG9yLmNvbSJ9.LC0_GYySbbUHmsbvb05CVMs72ZFLVK4xAMdO7wKQn1gezUFXJe4orjqmvClJwjdGXOPQZpF_395_UDjT6wNuK4vHmaJp6R5sk3T03EkRXZVwB41ZzNa1-WboD8cSHeg2RyLJfIjPq45jvzcYG_Ae0JtQzM0CE5E6RRYwKLh6Ad-AJhYw7t27iDrH-cJ_Du_656OmQ0nyQAjgpaJmrDHkfUH3j6fxfbGQloaTO2Y0xZmRvpr6g5RHat0k9iFQccmwOlnDvHEuNV31XfYQTKr63nNCUsBqWZUbfhFKynVCDupcBFZxj2Z6-qGIN4p4eqY1evAj_OE_o15tLr18lIRMAQ";
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    Future.microtask(() {
      // Set the flavor to staging
      ref.read(flavorProvider.notifier).state = Flavor.staging;

      // Store access token
      ref.read(tokenServiceProvider(ref.read(networkServiceProvider))).storeAccessToken(accessToken, "", identityToken);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      // Initialize GoRouter
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'CA'),
        Locale('fr', 'CA'),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode && supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
