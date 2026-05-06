import 'package:flutter/material.dart';
import '../models/voucher_model.dart';

class VoucherCard extends StatelessWidget {
  final VoucherModel voucher;

  const VoucherCard({super.key, required this.voucher});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                "${voucher.discount}%",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(voucher.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(voucher.description,
                    style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 6),
                Text("Code: ${voucher.code}",
                    style: const TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Column(
            children: [
              const Text("Exp.",
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
              Text(voucher.expiry,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
