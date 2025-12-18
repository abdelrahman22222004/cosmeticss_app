import 'package:cosmetics/views/home/widgets/profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 180.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFECA4C5), Color(0x434C6DD4)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(0, -50.h),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 46.r,
                  child: CircleAvatar(
                    radius: 46.r,
                    backgroundImage: const AssetImage("assets/images/pro2.jpg"),
                  ),
                ),

                SizedBox(height: 16.h),

                Text(
                  "Abdo Talaat",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff434C6D),
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              children: [
                ProfileTile(
                  icon: SvgPicture.asset(
                    'assets/icons/edit.svg',
                    width: 22.w,
                    height: 22.h,
                  ),
                  title: "Edit Info",
                ),
                ProfileTile(
                  icon: SvgPicture.asset(
                    'assets/icons/history.svg',
                    width: 22.w,
                    height: 22.h,
                  ),
                  title: "Order History",
                ),
                ProfileTile(
                  icon: SvgPicture.asset(
                    'assets/icons/wavellet.svg',
                    width: 22.w,
                    height: 22.h,
                  ),
                  title: "Wallet",
                ),
                ProfileTile(
                  icon: SvgPicture.asset(
                    'assets/icons/settings.svg',
                    width: 22.w,
                    height: 22.h,
                  ),
                  title: "Settings",
                ),
                ProfileTile(
                  icon: SvgPicture.asset(
                    'assets/icons/voucher.svg',
                    width: 22.w,
                    height: 22.h,
                  ),
                  title: "Voucher",
                ),

                ProfileTile(
                  icon: SvgPicture.asset(
                    'assets/icons/logout.svg',
                    width: 22.w,
                    height: 22.h,
                  ),
                  title: "Logout",
                  isLogOut: true,
                  color: const Color(0xffCD0F0F),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
