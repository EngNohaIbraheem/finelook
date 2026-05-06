import 'package:flutter/material.dart';

class TopCollectionBannerslim extends StatelessWidget {
  const TopCollectionBannerslim({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // LEFT TEXT
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '|  Sale up to 40%',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff8A8A8A),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'FOR SLIM\n& BEAUTY',
                  style: TextStyle(
                    fontSize: 26,
                    height: 1.2,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4A4A4A),
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
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffEDEDED),
                ),
              ),
              Image.asset(
                'assets/images/top2.png',
                height: 150,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
