import 'package:flutter/material.dart';
import 'package:mbc_common/mbc_common.dart';

class NavBarWidget extends StatelessWidget implements PreferredSizeWidget{
  final VoidCallback onBackPressed;
  const NavBarWidget({super.key, required this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
             children: [
               Icon(Icons.arrow_back_ios, color: ColorConstants.primaryBrandColor, size: 20,),
               Text("Back to Dashboard", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: ColorConstants.primaryBrandColor, height: 1.5),),
             ],
           ),
           Text("Wellness Status", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32,color: ColorConstants.primaryBrandColor, height: 1.5),),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
