import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile Picture
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(
                        color: Colors.blueGrey[100]!,
                        width: 5.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://scontent.fdvo2-2.fna.fbcdn.net/v/t39.30808-6/346307266_1212736459388204_5118761846982929133_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHJzDgCbUaM-QxBej6c2PUBoJbDjIZ9DceglsOMhn0NxxxL-N4hqz2b0ANjzZfNTqFdPu71qeFLDtIfq4dBm99r&_nc_ohc=iU2AT1n-hhQAX_w-56w&_nc_ht=scontent.fdvo2-2.fna&oh=00_AfAMTksKTKOFjmYWcacv2_DDhtAE_DG56Qwbqw5Azrb-GA&oe=65545886'),
                    ),
                  ),
                  // Name Text
                  Text(
                    'Jhon Doe',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Email
                  Text(
                    'Email: philliplumod@gmail.com',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  // Social Media Links with Icons
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.facebook, size: 24),
                      Text(' FB'),
                      SizedBox(width: 10),
                      FaIcon(FontAwesomeIcons.twitter, size: 24),
                      Text(' TWT'),
                      SizedBox(width: 10),
                      FaIcon(FontAwesomeIcons.instagram, size: 24),
                      Text(' IG'),
                    ],
                  ),
                  // Divider
                  const Divider(
                    color: Colors.blueGrey,
                    thickness: 0.5,
                    height: 20,
                  ),
                  // Short Bio
                   Text(
                    'Short bio: This is a brief biography about the person.',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
