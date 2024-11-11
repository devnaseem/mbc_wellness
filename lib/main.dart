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
    return UncontrolledProviderScope(
      container: providerContainer,
      child: MyApp(),
    );
  }
}

class MyApp extends ConsumerStatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late final GoRouter _router;
  final accessToken =
      'eyJraWQiOiJQeGFpTXpNTGlNczNoOEVKd3VzRkkzRkwyNGxPTTYwQXJ3d3hoeElvTkFrPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJiZmQ2YzFjOS1kZmE0LTQ3ZDEtYTQxZC1iNmQ4MTA0ZTNjY2IiLCJldmVudF9pZCI6IjkzYTA3NmJlLTlmODgtNGM5OC1iYjY4LWUxMGIwMDhiNmE3NSIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3MzExMzQ3MTgsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC5jYS1jZW50cmFsLTEuYW1hem9uYXdzLmNvbVwvY2EtY2VudHJhbC0xXzVLVEg4dnY3OSIsImV4cCI6MTczMTM5OTQ5NywiaWF0IjoxNzMxMzEzMDk5LCJqdGkiOiJhZDdhODZhNy05YjNmLTQyMzMtYTYxOC0yZjY0NzMyNzc4ZDMiLCJjbGllbnRfaWQiOiIxam5iZnZnNDR0dTI5bTNxMDA1NGduaWNtciIsInVzZXJuYW1lIjoiYmZkNmMxYzktZGZhNC00N2QxLWE0MWQtYjZkODEwNGUzY2NiIn0.MsJSkEyJEtltkND_teOG-VDFSiWr3iXBVkMyINRwFIWAikWrLu00Gz1-gfZZtAa-V5fBqHtAROXLRwNZO35774X-bxrC-f5bkGyXh2e-0pJrNK3F8zwRCSgGOeaXHxD9gAj_3GFuWBzV8cScrxg9CPQ9ZnwNc448KwTaaIm4k74zpTQ7PHn4y6Y9cAv6CTMPbYNEnSGoq-KNax6wQcrXKgBEeVcIaUFUeV2auBzaCd0wa_Iz1139O-pl-KM6gILZKQTxleVZdHdLdQIY_vTCtKEypPIxgopCmEgm48b1UrhneuCW0';
  final identityToken =
      "eyJraWQiOiI5VlFRdE9aV1FHanQxU1wvYlBLUXdVSkZHVkZNNWtZTWVTWUpMNERwYUdDZz0iLCJhbGciOiJSUzI1NiJ9.eyJpY2FuX2VuYWJsZWQiOiJmYWxzZSIsInN1YiI6ImJmZDZjMWM5LWRmYTQtNDdkMS1hNDFkLWI2ZDgxMDRlM2NjYiIsInVzZXJfY2xhaW1zIjoiW3tcInN5c3RlbVwiOlwicHJvY3VyYS1wcml2YXRlXCIsXCJhdXRob3JpemVkSWRzXCI6W1wiMDAwMDc5MTEyMVwiXX1dIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImNpdHVzIjoie30iLCJpc3MiOiJodHRwczpcL1wvY29nbml0by1pZHAuY2EtY2VudHJhbC0xLmFtYXpvbmF3cy5jb21cL2NhLWNlbnRyYWwtMV81S1RIOHZ2NzkiLCJjb2duaXRvOnVzZXJuYW1lIjoiYmZkNmMxYzktZGZhNC00N2QxLWE0MWQtYjZkODEwNGUzY2NiIiwidXNlcl9jbGFpbXNfdjIiOiJbe1wicHNJZFwiOlwiMDAwMDc5MTEyMVwiLFwic3lzdGVtVHlwZVwiOlwiaG9tZUNhcmVcIixcImF1dGhvcml6ZWRTeXN0ZW1zXCI6W3tcImlkXCI6XCIwMDAwNzkxMTIxXCIsXCJuYW1lXCI6XCJwcm9jdXJhLXByaXZhdGVcIixcInVzZXJUeXBlXCI6XCJjbGllbnRcIixcInRlbmFudHNcIjpbXCJQcm9jdXJhX1NpbWNvZVwiXX1dfV0iLCJjdXN0b206YWNjZXB0ZWRfZGlnaV90ZXJtcyI6IjEiLCJnaXZlbl9uYW1lIjoiU3RldmUiLCJjdXN0b206YWNjZXB0ZWRfdGVybXMiOiIxIiwiYXVkIjoiMWpuYmZ2ZzQ0dHUyOW0zcTAwNTRnbmljbXIiLCJldmVudF9";
  @override
  void initState() {
    super.initState();

    // Set the flavor to staging
    ref.read(flavorProvider.notifier).state = Flavor.staging;

    // Store access token
    ref.read(tokenServiceProvider(ref.read(networkServiceProvider))).storeAccessToken(accessToken, "", identityToken);

    // Initialize GoRouter
    _router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => WellnessScreen(),
        ),
        // Add more routes if necessary
      ],
    );
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
//Authorization: Bearer eyJraWQiOiJQeGFpTXpNTGlNczNoOEVKd3VzRkkzRkwyNGxPTTYwQXJ3d3hoeElvTkFrPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJiZmQ2YzFjOS1kZmE0LTQ3ZDEtYTQxZC1iNmQ4MTA0ZTNjY2IiLCJldmVudF9pZCI6IjkzYTA3NmJlLTlmODgtNGM5OC1iYjY4LWUxMGIwMDhiNmE3NSIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3MzExMzQ3MTgsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC5jYS1jZW50cmFsLTEuYW1hem9uYXdzLmNvbVwvY2EtY2VudHJhbC0xXzVLVEg4dnY3OSIsImV4cCI6MTczMTM5OTQ5NywiaWF0IjoxNzMxMzEzMDk5LCJqdGkiOiJhZDdhODZhNy05YjNmLTQyMzMtYTYxOC0yZjY0NzMyNzc4ZDMiLCJjbGllbnRfaWQiOiIxam5iZnZnNDR0dTI5bTNxMDA1NGduaWNtciIsInVzZXJuYW1lIjoiYmZkNmMxYzktZGZhNC00N2QxLWE0MWQtYjZkODEwNGUzY2NiIn0.MsJSkEyJEtltkND_teOG-VDFSiWr3iXBVkMyINRwFIWAikWrLu00Gz1-gfZZtAa-V5fBqHtAROXLRwNZO35774X-bxrC-f5bkGyXh2e-0pJrNK3F8zwRCSgGOeaXHxD9gAj_3GFuWBzV8cScrxg9CPQ9ZnwNc448KwTaaIm4k74zpTQ7PHn4y6Y9cAv6CTMPbYNEnSGoq-KNax6wQcrXKgBEeVcIaUFUeV2auBzaCd0wa_Iz1139O-pl-KM6gILZKQTxleVZdHdLdQIY_vTCtKEypPIxgopCmEgm48b1UrhneuCW0
//flutter: ║  identity: Identity eyJraWQiOiI5VlFRdE9aV1FHanQxU1wvYlBLUXdVSkZHVkZNNWtZTWVTWUpMNERwYUdDZz0iLCJhbGciOiJSUzI1NiJ9.eyJpY2FuX2VuYWJsZWQiOiJmYWxzZSIsInN1YiI6ImJmZDZjMWM5LWRmYTQtNDdkMS1hNDFkLWI2ZDgxMDRlM2NjYiIsInVzZXJfY2xhaW1zIjoiW3tcInN5c3RlbVwiOlwicHJvY3VyYS1wcml2YXRlXCIsXCJhdXRob3JpemVkSWRzXCI6W1wiMDAwMDc5MTEyMVwiXX1dIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImNpdHVzIjoie30iLCJpc3MiOiJodHRwczpcL1wvY29nbml0by1pZHAuY2EtY2VudHJhbC0xLmFtYXpvbmF3cy5jb21cL2NhLWNlbnRyYWwtMV81S1RIOHZ2NzkiLCJjb2duaXRvOnVzZXJuYW1lIjoiYmZkNmMxYzktZGZhNC00N2QxLWE0MWQtYjZkODEwNGUzY2NiIiwidXNlcl9jbGFpbXNfdjIiOiJbe1wicHNJZFwiOlwiMDAwMDc5MTEyMVwiLFwic3lzdGVtVHlwZVwiOlwiaG9tZUNhcmVcIixcImF1dGhvcml6ZWRTeXN0ZW1zXCI6W3tcImlkXCI6XCIwMDAwNzkxMTIxXCIsXCJuYW1lXCI6XCJwcm9jdXJhLXByaXZhdGVcIixcInVzZXJUeXBlXCI6XCJjbGllbnRcIixcInRlbmFudHNcIjpbXCJQcm9jdXJhX1NpbWNvZVwiXX1dfV0iLCJjdXN0b206YWNjZXB0ZWRfZGlnaV90ZXJtcyI6IjEiLCJnaXZlbl9uYW1lIjoiU3RldmUiLCJjdXN0b206YWNjZXB0ZWRfdGVybXMiOiIxIiwiYXVkIjoiMWpuYmZ2ZzQ0dHUyOW0zcTAwNTRnbmljbXIiLCJldmVudF9<…>
