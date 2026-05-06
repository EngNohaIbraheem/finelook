import 'package:flutter/material.dart';

class SummerCollectionBanner extends StatelessWidget {
  const SummerCollectionBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          // LEFT TEXT
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '|  Summer Collection 2021',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff8E8E8E),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Most sexy\n& fabulous\ndesign',
                  style: TextStyle(
                    fontSize: 26,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3A3A3A),
                  ),
                ),
              ],
            ),
          ),

          // RIGHT IMAGE
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 130,
                width: 130,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffEFEFEF),
                ),
              ),
              Image.asset(
                'assets/images/top1.png',
                height: 170,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
