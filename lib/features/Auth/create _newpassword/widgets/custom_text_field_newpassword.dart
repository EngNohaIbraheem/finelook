// import 'package:flutter/material.dart';
//
// class CustomTextFieldNewpassword extends StatefulWidget {
//   final String label;
//   final TextEditingController? controller;
//   final bool isPassword;
//   final TextInputType keyboardType;
//   final String? Function(String?)? validator;
//   final void Function(String)? onChanged;
//
//   const CustomTextFieldNewpassword({
//     super.key,
//     required this.label,
//     this.controller,
//     this.isPassword = false,
//     this.keyboardType = TextInputType.text,
//     this.validator,
//     this.onChanged,
//   });
//
//   @override
//   State<CustomTextFieldNewpassword> createState() => _CustomTextFieldState();
// }
//
// class _CustomTextFieldState extends State<CustomTextFieldNewpassword> {
//   bool _obscureText = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: widget.controller,
//       keyboardType: widget.keyboardType,
//       obscureText: widget.isPassword ? _obscureText : false,
//       validator: widget.validator,
//       onChanged: widget.onChanged,
//       style: const TextStyle(fontSize: 16),
//       decoration: InputDecoration(
//         labelText: widget.label,
//         labelStyle: TextStyle(
//           color: Colors.grey.shade500,
//           fontSize: 14,
//         ),
//         floatingLabelStyle: const TextStyle(
//           color: Colors.black,
//         ),
//         suffixIcon: widget.isPassword
//             ? IconButton(
//           icon: Icon(
//             _obscureText
//                 ? Icons.visibility_off_outlined
//                 : Icons.visibility_outlined,
//             color: Colors.grey,
//           ),
//           onPressed: () {
//             setState(() => _obscureText = !_obscureText);
//           },
//         )
//             : null,
//         enabledBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.grey),
//         ),
//         focusedBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         errorBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.red),
//         ),
//         focusedErrorBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.red),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomTextFieldNewpass extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final VoidCallback? onChanged;
  final String? Function(String?)? validator;

  const CustomTextFieldNewpass({
    super.key,
    required this.label,
    required this.controller,
    this.isPassword = false,
    this.onChanged,
    this.validator,
  });

  @override
  State<CustomTextFieldNewpass> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextFieldNewpass> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _obscure : false,
      validator: widget.validator,
      onChanged: (_) => widget.onChanged?.call(),
      decoration: InputDecoration(
        labelText: widget.label,
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            _obscure ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() => _obscure = !_obscure);
          },
        )
            : null,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
