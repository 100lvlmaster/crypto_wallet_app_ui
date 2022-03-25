import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 15.32,
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
            ),
            const Divider(color: Colors.transparent, height: 3),
            Text(
              'Rabah',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.08,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.epilogue().fontFamily,
              ),
            ),
          ],
        ),
        const Spacer(),
        Image.asset('assets/profile.png'),
      ],
    );
  }
}
