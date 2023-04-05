import 'package:everything_shivpuri_app/src/web_view_stack.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://adityapandeyz.github.io/everything_shivpuri_web/#/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Flutter WebView'),
      //   actions: [
      //     NavigationControls(controller: controller),
      //     Menu(controller: controller),
      //   ],
      // ),
      body: SafeArea(
        child: WebViewStack(
          controller: controller,
        ),
      ),
    );
  }
}
