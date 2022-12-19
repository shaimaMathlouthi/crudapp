import 'package:flutter/material.dart';
import 'package:my_crud_app/view/ui/add_player/add_player.dart';
import 'package:my_crud_app/view/shared/widgets/custom_text_form.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Welcome",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 18,
              ),
              Card(
                elevation: 30,
                shadowColor: const Color.fromARGB(31, 50, 50, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                margin: const EdgeInsets.all(10),
                // decoration:
                //     BoxDecoration(color: Color.fromARGB(255, 178, 176, 176)),
                child: Row(children: [
                  Container(
                    height: 57,
                    width: 64,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(121, 123, 197, 250),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            bottomLeft: Radius.circular(14))),
                    child: Image.asset(
                      "assets/images/search.png",
                      color: const Color.fromARGB(121, 2, 131, 223),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomCardTextForm(
                      hintText: 'Search for a footballer...',
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              ...List.generate(
                4,
                (index) => Card(
                    elevation: 30,
                    shadowColor: const Color.fromARGB(31, 50, 50, 50),
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        height: 190,
                        width: 384,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/profile.png",
                                color: Colors.black,
                              ),
                              const SizedBox(width: 18),
                              const Text(
                                "Ronaldo",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          actionsAlignment:
                                              MainAxisAlignment.center,
                                          titlePadding:
                                              const EdgeInsets.all(10),
                                          title: Image.asset(
                                            "assets/images/info.png",
                                            height: 50,
                                            width: 50,
                                          ),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 20),
                                          content: Column(
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              const Text(
                                                  "Are you sure you want to delete Ronaldo ?",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 20),
                                                    child: Container(
                                                      // padding:
                                                      //     const EdgeInsets.only(
                                                      //         top: 20,
                                                      //         bottom: 20,
                                                      //         left: 101,
                                                      //         right: 101),
                                                      height: 49,
                                                      width: 126,
                                                      decoration: BoxDecoration(
                                                        color: const Color
                                                                .fromARGB(
                                                            121, 123, 197, 250),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14),
                                                      ),
                                                      child: const Text(
                                                        "Delete",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              121, 2, 131, 223),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: Container(
                                  height: 46,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color:
                                        const Color.fromARGB(31, 254, 167, 167),
                                  ),
                                  child: Image.asset(
                                    "assets/images/delete.png",
                                    color:
                                        const Color.fromARGB(255, 244, 47, 47),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/id.png",
                                color: Colors.black,
                              ),
                              const SizedBox(width: 18),
                              const Text(
                                "#07",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/position.png",
                                color: Colors.black,
                              ),
                              const SizedBox(width: 18),
                              const Text(
                                "attack",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/salary.png",
                                color: Colors.black,
                              ),
                              const SizedBox(width: 18),
                              const Text(
                                "1200€",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ]))),
              ),
              const SizedBox(
                height: 200,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddPlayer()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 101, right: 101),
                  height: 63,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(121, 123, 197, 250),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Text(
                    "Add player",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(121, 2, 131, 223),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
