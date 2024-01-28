import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../detilspage/views/detils_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To Do App",
          style: GoogleFonts.akshar(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFF79E89),
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.black,
            size: 40,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) => Container(
                height: MediaQuery.of(context).size.height * 0.80,
                decoration: const BoxDecoration(
                  color: Color(0xffF79E89),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Add your Task Title",
                            hintStyle: const TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hoverColor: Colors.white,
                          ),
                          cursorColor: Colors.white,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Description",
                            hintStyle: const TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hoverColor: Colors.white,
                          ),
                          maxLines: 20,
                          cursorColor: Colors.white,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Deadline",
                            hintStyle: const TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hoverColor: Colors.white,
                          ),
                          cursorColor: Colors.white,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                              height: Get.height * 0.1,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(
                                        5,
                                        5,
                                      ),
                                    ),
                                  ]),
                              child: Center(
                                child: Text(
                                  "ADD TODO",
                                  style: GoogleFonts.akshar(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFF79E89),
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                )),

            // backgroundColor: Color(0xffF79E89),
          );
        },
        backgroundColor: const Color(0xffF76C6A),
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.list,
                size: 40,
                color: Color(0xFFF76C6A),
              ),
              Text(
                "LIST OF TO DO",
                style: GoogleFonts.bebasNeue(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFF76C6A),
                ),
              ),
              const SizedBox(
                width: 36,
              ),
              const Icon(
                Icons.send,
                size: 40,
                color: Color(0xFFF76C6A),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/detils');
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              height: Get.height * 0.2,
              width: Get.width,
              decoration: const BoxDecoration(
                  color: Color(0xffF76C6A),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 10),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
