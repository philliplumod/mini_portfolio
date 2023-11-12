import 'package:flutter/material.dart';
import 'package:mini_portfolio/model/router.dart';

void main() {
  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,
      builder: (context, router) {
        return Scaffold(
          body: router,
        );
      },
    ),
  );
}
