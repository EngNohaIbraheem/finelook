import 'package:flutter/material.dart';
class SearchBarWidget extends StatefulWidget {
  final Function(String) onSearch;

  const SearchBarWidget({
    super.key,
    required this.onSearch, required TextEditingController controller, required void Function(String query) onChanged, required Null Function() onFilterTap,
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                widget.onSearch(value);
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Search',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Icon(Icons.tune),
        )
      ],
    );
  }
}

// class SearchBarWidget extends StatelessWidget {
//   const SearchBarWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: Container(
//             height: 50,
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             decoration: BoxDecoration(
//               color: Colors.grey.shade100,
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: const Row(
//               children: [
//                 Icon(Icons.search, color: Colors.grey),
//                 SizedBox(width: 8),
//                 Text(
//                   'Search',
//                   style: TextStyle(color: Colors.grey),
//                 )
//               ],
//             ),
//           ),
//         ),
//         const SizedBox(width: 12),
//         Container(
//           height: 50,
//           width: 50,
//           decoration: BoxDecoration(
//             color: Colors.grey.shade100,
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: const Icon(Icons.tune),
//         )
//       ],
//     );
//   }
// }
