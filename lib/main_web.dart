// lib/main_web.dart (entry point for web)
import 'dart:convert';
import 'dart:html' as html;
import 'package:js/js_util.dart' as js_util;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'mbc_wellness.dart';
import 'package:go_router/go_router.dart';

import 'package:mbc_common/mbc_common.dart';
import 'package:mbc_core/mbc_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  // Post a message to JavaScript indicating Flutter is ready
  html.window.postMessage('flutter-ready', '*');

  // Wait for configuration parameters from JavaScript
  html.window.onMessage.listen((event) {
    print('Received message: ${event.data}');

    // event.data is a JavaScript object, not a Dart Map
    final data = event.data;
    if (data is! String) {
      Map<String, dynamic> data = jsonDecode(event.data);

      // If data is already a Map
      Map<String, dynamic> parsedData = data;
      if(parsedData.containsKey("type") && parsedData["type"] == "initialize") {
        Map<String, dynamic> values = parsedData["values"];

        final String? accessToken = values['accessToken'];
        final String? identityToken =  values[ 'identityToken'];
        final String? systemId = values['systemId'];
        final String? env = values['env'];
        print('Initialization data received:');
        print('Access Token: $accessToken');
        print('Identity Token: $identityToken');
        print('System ID: $systemId');
        print('Environment: $env');

        // Proceed with running the app
        runApp(
          WellnessAppWeb(
            accessToken: accessToken,
            identityToken: identityToken,
            systemId: systemId,
            env: _mapStringToFlavor(env ?? 'dev'),
          ),
        );
      }// Directly use it as a Map
    } else {
      print('Received data is not a JSON string or Map');
    }

  });
}

Flavor _mapStringToFlavor(String env) {
  switch (env) {
    case 'dev':
      return Flavor.dev;
    case 'staging':
      return Flavor.staging;
    case 'prod':
      return Flavor.prod;
    default:
      return Flavor.dev;
  }
}

class WellnessAppWeb extends StatelessWidget {

  final String? accessToken;
  final String? identityToken;
  final String? systemId;
  final Flavor env;

  const WellnessAppWeb({
    super.key,
    required this.accessToken,
    required this.identityToken,
    required this.systemId,
    required this.env,
  });


  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: WellnessRootAppWeb(
        accessToken: accessToken,
        identityToken: identityToken,
        systemId: systemId,
        env: env,
      ),
    );
  }
}

class WellnessRootAppWeb extends ConsumerStatefulWidget {


  final String? accessToken;
  final String? identityToken;
  final String? systemId;
  final Flavor env;

  const WellnessRootAppWeb({
    super.key,
    required this.accessToken,
    required this.identityToken,
    required this.systemId,
    required this.env,
  });

  @override
  _WellnessRootAppWebState createState() => _WellnessRootAppWebState();
}

class _WellnessRootAppWebState extends ConsumerState<WellnessRootAppWeb> {
  late final GoRouter _router;
  @override
  void initState() {
    super.initState();

    // Initialize the router synchronously
    _router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => WellnessScreen(
            systemId: widget.systemId ?? '0000662212',
          ),
        ),
        GoRoute(
          path: '/wellnessDetails',
          builder: (context, state) => WellnessDetailsScreen(
            systemId: widget.systemId ?? '0000662212',
          ),
        ),
        // Add more routes if necessary
      ],
    );

    // Set the flavor
    ref.read(flavorProvider.notifier).state = widget.env;

    // Store access token synchronously
    ref
        .read(tokenServiceProvider(ref.read(networkServiceProvider)))
        .storeAccessToken(widget.accessToken!, "", widget.identityToken!);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
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
