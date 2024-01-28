import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetilsPage extends StatelessWidget {
  const DetilsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "ToDo Detils",
          style: GoogleFonts.akshar(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFF79E89),
          ),
        ),
        actions: [
          const Icon(
            Icons.watch_later_outlined,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.edit,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.delete,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
