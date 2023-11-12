import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_portfolio/screens/homescreens.dart';
import 'package:mini_portfolio/screens/interest.dart';
import 'package:mini_portfolio/screens/profile.dart';
import 'package:mini_portfolio/screens/skills.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(child: Homescreen()),
      routes: [
        GoRoute(
          path: 'profile',
          pageBuilder: (context, state) =>
              const MaterialPage(child: ProfilePage()),
        ),
        GoRoute(
          path: 'interest',
          pageBuilder: (context, state) =>
              const MaterialPage(child: InterestPage()),
        ),
        GoRoute(
          path: 'skills',
          pageBuilder: (context, state) => MaterialPage(child: SkillPage()),
        ),
      ],
    ),
  ],
);
