import 'package:flutter/material.dart';
import 'package:mbc_common/mbc_common.dart';

class NavBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBackPressed;
  final String title;
  final String subtitle;
  const NavBarWidget(
      {super.key,
      required this.onBackPressed,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              onBackPressed();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  color: ColorConstants.primaryBrandColor,
                  size: 20,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: ColorConstants.primaryBrandColor,
                      height: 1.5),
                ),
              ],
            ),
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 32,
                color: ColorConstants.primaryBrandColor,
                height: 1.5),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
