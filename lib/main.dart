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
  final accessToken =
      'eyJraWQiOiJQeGFpTXpNTGlNczNoOEVKd3VzRkkzRkwyNGxPTTYwQXJ3d3hoeElvTkFrPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJiZmQ2YzFjOS1kZmE0LTQ3ZDEtYTQxZC1iNmQ4MTA0ZTNjY2IiLCJldmVudF9pZCI6ImQ2YmEwZTYzLTNmOWMtNGI3MC1iYjgzLTFhYmVmYjhiZWVkOCIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3MzEzMTc2MTEsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC5jYS1jZW50cmFsLTEuYW1hem9uYXdzLmNvbVwvY2EtY2VudHJhbC0xXzVLVEg4dnY3OSIsImV4cCI6MTczMTQwNDAxNCwiaWF0IjoxNzMxMzE3NjE0LCJqdGkiOiI5YzE5OWNmZS1mZjU3LTRmOGMtOTg4ZC1iOGEwNWQzYmU1YmUiLCJjbGllbnRfaWQiOiIxam5iZnZnNDR0dTI5bTNxMDA1NGduaWNtciIsInVzZXJuYW1lIjoiYmZkNmMxYzktZGZhNC00N2QxLWE0MWQtYjZkODEwNGUzY2NiIn0.gGy0aGysgt8L1ULHDL-wcrPSPXUjOYDGH2o1LOeemm8pl5ZBGs1-KdwCoHSxNfKqlYrLviiKpMiVNTjFad-hLxiYP_ObQZJjjWbhknH00ZyTfMggzNLqA5dxuaiFH0LCMOqvsyA1moU-wwOZIBr6iSihIwvujGRlwdo0HHu-pfEVVdku0ehTmwUZxV4We0-0m9rnVCkB29jK8AJVsPzmdGDiotwWUmrbayTCHbPswk9YnWKvIr9ouQJZURfzHj9LmbtujYu23DZWbcC9pJHnpWkg5co8mpchBls1Oa9BjJ-0We_k94C9HByN6ks819O1XySz23CARpOehtW165VuHQ';
  final identityToken =
      "eyJraWQiOiI5VlFRdE9aV1FHanQxU1wvYlBLUXdVSkZHVkZNNWtZTWVTWUpMNERwYUdDZz0iLCJhbGciOiJSUzI1NiJ9.eyJpY2FuX2VuYWJsZWQiOiJmYWxzZSIsInN1YiI6ImJmZDZjMWM5LWRmYTQtNDdkMS1hNDFkLWI2ZDgxMDRlM2NjYiIsInVzZXJfY2xhaW1zIjoiW3tcInN5c3RlbVwiOlwicHJvY3VyYS1wcml2YXRlXCIsXCJhdXRob3JpemVkSWRzXCI6W1wiMDAwMDc5MTEyMVwiXX1dIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImNpdHVzIjoie30iLCJpc3MiOiJodHRwczpcL1wvY29nbml0by1pZHAuY2EtY2VudHJhbC0xLmFtYXpvbmF3cy5jb21cL2NhLWNlbnRyYWwtMV81S1RIOHZ2NzkiLCJjb2duaXRvOnVzZXJuYW1lIjoiYmZkNmMxYzktZGZhNC00N2QxLWE0MWQtYjZkODEwNGUzY2NiIiwidXNlcl9jbGFpbXNfdjIiOiJbe1wicHNJZFwiOlwiMDAwMDc5MTEyMVwiLFwic3lzdGVtVHlwZVwiOlwiaG9tZUNhcmVcIixcImF1dGhvcml6ZWRTeXN0ZW1zXCI6W3tcImlkXCI6XCIwMDAwNzkxMTIxXCIsXCJuYW1lXCI6XCJwcm9jdXJhLXByaXZhdGVcIixcInVzZXJUeXBlXCI6XCJjbGllbnRcIixcInRlbmFudHNcIjpbXCJQcm9jdXJhX1NpbWNvZVwiXX1dfV0iLCJjdXN0b206YWNjZXB0ZWRfZGlnaV90ZXJtcyI6IjEiLCJnaXZlbl9uYW1lIjoiU3RldmUiLCJjdXN0b206YWNjZXB0ZWRfdGVybXMiOiIxIiwiYXVkIjoiMWpuYmZ2ZzQ0dHUyOW0zcTAwNTRnbmljbXIiLCJldmVudF9pZCI6ImQ2YmEwZTYzLTNmOWMtNGI3MC1iYjgzLTFhYmVmYjhiZWVkOCIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNzMxMzE3NjExLCJjdXN0b206bGFzdF9sb2dpbiI6IjE3MzEzMDIyODQiLCJleHAiOjE3MzE0MDQwMTQsImlhdCI6MTczMTMxNzYxNCwiZmFtaWx5X25hbWUiOiJKb2huIiwiY3VzdG9tOnByZWZlcnJlZF9sYW5ndWFnZSI6ImVuIiwiZW1haWwiOiJzdGV2ZWpvaG41NEBtYWlsaW5hdG9yLmNvbSJ9.TgkR8vsx7Twx1pvx5XMvwvV9iOsaDQWNxkaikI75TUV7_zHqzzNNbSuGNz7hisekQgLAzilwU3h3eoln9HIMp6tfwcy-bfBkbuVDSyOkQWhc5Y-Vroi64vX0rbLeJCYV2PQqKkSIEJf9296vQYaxupquWLHnjerkHXRq7wVxMUlVUjYBpKXxeDYTwNmL3zw8KkAgGaa42w79Ez5G-xejRj4AVfqq0oUeJbouRHCFdN2ap85VejSdp8gtpNVmQOe4OJNRpS1ckxrtx4GCm7pRFjzzxvf7sZHL3sdAJnf7pIKYKv0hfjLG0BS2YY8BEPbTz_6LBM0gZsntYByRyabMJQ";
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
