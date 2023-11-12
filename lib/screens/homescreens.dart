import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/iconbtn.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mini Portfolio App'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            CustomIconBtn(
              onPressed: () {
                GoRouter.of(context).go('/profile');
              },
              icon: Icons.person,
              label: 'Profile',
            ),
            CustomIconBtn(
              onPressed: () {
                GoRouter.of(context).go('/interest');
              },
              icon: Icons.star,
              label: 'Interest',
            ),
            CustomIconBtn(
              onPressed: () {
                GoRouter.of(context).go('/skills');
              },
              icon: Icons.build,
              label: 'Skills',
            ),
          ],
        ),
      ),
    );
  }
}
