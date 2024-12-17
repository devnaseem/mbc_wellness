import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WellnessAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback onSeeTodayPressed;
  const WellnessAppBarWidget({super.key, required this.onSeeTodayPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Wellness Status History",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.5,
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              InkWell(
                onTap: () {
                  onSeeTodayPressed();
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      color: Color(0xFF0B435B),
                      size: 20,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "See today",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: const Color(0xFF0B435B),
                          height: 1.5,
                          letterSpacing: -0.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(86);
}
