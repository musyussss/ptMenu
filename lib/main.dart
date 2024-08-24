import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptmenu/data.dart';
import 'package:ptmenu/data2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: menuData.length,
          //     itemBuilder: (context, index) {
          //       return ListView(
          //         padding: EdgeInsets.symmetric(
          //             vertical: 20,
          //             horizontal: MediaQuery.of(context).size.width * 0.1),
          //         shrinkWrap: true,
          //         children: [
          //           Center(
          //             child: Text(
          //               menuData[index]['category'],
          //               style: const TextStyle(
          //                   fontSize: 16,
          //                   fontStyle: FontStyle.italic,
          //                   fontWeight: FontWeight.bold,
          //                   decoration: TextDecoration.underline),
          //             ),
          //           ),
          //           const SizedBox(
          //             height: 5,
          //           ),
          //           ListView.builder(
          //               shrinkWrap: true,
          //               itemCount: menuData[index]['items'].length,
          //               itemBuilder: (context, subIndex) {
          //                 return Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                   crossAxisAlignment: CrossAxisAlignment.center,
          //                   children: [
          //                     Expanded(
          //                         child: Text(
          //                       menuData[index]['items'][subIndex]['name'],
          //                       style: const TextStyle(
          //                         fontSize: 14,
          //                         fontStyle: FontStyle.italic,
          //                       ),
          //                     )),
          //                     const SizedBox(
          //                       width: 10,
          //                     ),
          //                     Expanded(
          //                       child: Center(
          //                         child: Text(
          //                           menuData[index]['items'][subIndex]['price']
          //                               .toString(),
          //                           style: const TextStyle(
          //                             fontSize: 15,
          //                             fontStyle: FontStyle.italic,
          //                             fontWeight: FontWeight.w600,
          //                           ),
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 );
          //               }),
          //         ],
          //       );
          //     }),
          ListView.builder(
              shrinkWrap: true,
              itemCount: liquorsData.length,
              itemBuilder: (context, index) {
                return ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  children: [
                    Center(
                      child: Text(
                        liquorsData[index]['category'],
                        style: const TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: liquorsData[index]['items'].length,
                        itemBuilder: (context, sIndex) {
                          return ListView(
                            shrinkWrap: true,
                            children: [
                              Center(
                                child: Text(
                                  liquorsData[index]["items"][sIndex]['name'],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: liquorsData[index]["items"][sIndex]
                                          ['subitems']
                                      .length,
                                  itemBuilder: (context, subIndex) {
                                    return ListView(
                                      shrinkWrap: true,
                                      children: [
                                        Expanded(
                                            child: Text(
                                          liquorsData[index]['items'][sIndex]
                                              ['name'],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        )),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemBuilder: (context, sIndex) {
                                              return Center(
                                                child: Text(
                                                  liquorsData[index]['items']
                                                              [subIndex]
                                                          ['subitems']['price']
                                                      .toString(),
                                                  style: const TextStyle(
                                                    fontSize: 15,
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              );
                                            }),
                                      ],
                                    );
                                  }),
                            ],
                          );
                        }),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
