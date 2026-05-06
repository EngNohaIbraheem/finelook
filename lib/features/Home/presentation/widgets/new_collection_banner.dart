import 'package:flutter/material.dart';

class NewCollectionBanner extends StatelessWidget {
  const NewCollectionBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(20),
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
                  '|  NEW COLLECTION',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff9E9E9E),
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'HANG OUT\n& PARTY',
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3A3A3A),
                  ),
                ),
              ],
            ),
          ),

          // RIGHT CIRCLE (IMAGE PLACEHOLDER)
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
          ),
        ],
      ),
    );
  }
}
