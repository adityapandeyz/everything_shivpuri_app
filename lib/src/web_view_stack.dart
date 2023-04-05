import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewStack extends StatefulWidget {
  const WebViewStack({required this.controller, super.key});

  final WebViewController controller;
  @override
  State<WebViewStack> createState() => _WebViewStackState();
}

class _WebViewStackState extends State<WebViewStack> {
  var loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    widget.controller
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
          onNavigationRequest: (navigation) {
            final host = Uri.parse(navigation.url).host;
            if (host.contains('youtube.com')) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Blocking navigation to $host',
                  ),
                ),
              );
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
          onWebResourceError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Error: ${error.description}',
                ),
              ),
            );
          },
        ),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(
          controller: widget.controller,
        ),
        if (loadingPercentage < 100)
          AlertDialog(
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              content: BlurryContainer(
                color: Colors.white.withOpacity(0.15),
                blur: 8,
                elevation: 1,
                padding: const EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text('Loading...'),
                  ],
                ),
              )),
      ],
    );
  }
}
