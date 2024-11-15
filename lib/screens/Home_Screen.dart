import 'package:cavalloapp/provider/controler/provider_controler.dart';
import 'package:cavalloapp/screens/Complaints_Screen.dart';
import 'package:cavalloapp/screens/Notes_screen.dart';
import 'package:cavalloapp/screens/news_screen.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  void initState() {
    super.initState();
    context.read<Control_Provider>().fetchdata();
    context.read<Control_Provider>().fetchdata2();
  }

  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    return Consumer<Control_Provider>(builder: (context, provider, child) {
      return Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "قلعه تل",
                style: TextStyle(fontFamily: 'font1'),
              ),
            ),
          ),
        ),
        drawer: Drawer(
            backgroundColor: Color.fromARGB(187, 0, 0, 0),
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "حسین موسوی",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontFamily: 'font1'),
                  ),
                  accountEmail: Text(
                    "seyed.o.hosein.o.1382@gmail.com",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontFamily: 'font1'),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/55/p.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      Text(
                        ' تماس',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                            fontFamily: 'font1'),
                      )
                    ],
                  ),
                )
              ],
            )),
        body: ListView(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  'سلام همشهری',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontFamily: 'font1'),
                ),
              ),
            ),
            Container(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewsScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: 175,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.newspaper,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'اخبار',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'font1'),
                              )
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Complaints_Screen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 175,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 121, 68),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      Colors.black.withOpacity(0.2), // رنگ سایه
                                  spreadRadius: 3, // میزان گسترش سایه
                                  blurRadius: 5, // میزان محو شدن سایه
                                  offset: Offset(0, 0), // موقعیت سایه
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.assignment_outlined,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'انتقادات',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      fontFamily: 'font1'),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  //row 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewsScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 175,
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 105, 68, 255),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      Colors.black.withOpacity(0.2), // رنگ سایه
                                  spreadRadius: 3, // میزان گسترش سایه
                                  blurRadius: 5, // میزان محو شدن سایه
                                  offset: Offset(0, 0), // موقعیت سایه
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.store_rounded,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'فروشگاه',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      fontFamily: 'font1'),
                                )
                              ],
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Note_screen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 175,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 68, 96),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      Colors.black.withOpacity(0.2), // رنگ سایه
                                  spreadRadius: 3, // میزان گسترش سایه
                                  blurRadius: 5, // میزان محو شدن سایه
                                  offset: Offset(0, 0), // موقعیت سایه
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.note_alt_outlined,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'نوشتن',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      fontFamily: 'font1'),
                                )
                              ],
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "قلعه انلاین",
                    style: TextStyle(
                        color: Colors.black, fontSize: 18, fontFamily: 'font1'),
                  ),
                )),
            // Container(
            //   color: const Color.fromARGB(255, 255, 255, 255),
            //   height: 150,
            //   child: ListView.builder(
            //     reverse: true,
            //     scrollDirection: Axis.horizontal,
            //     itemCount: context.read<Control_Provider>().prodacts.length,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         margin: EdgeInsets.all(6),
            //         width: 150,
            //         height: 150,
            //         decoration: BoxDecoration(
            //             color: Color.fromARGB(255, 13, 97, 161),
            //             borderRadius: BorderRadius.circular(15)),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Text(
            //               '${context.read<Control_Provider>().prodacts[index].titel1}',
            //               style: TextStyle(
            //                   color: const Color.fromARGB(255, 255, 255, 255)),
            //             ),
            //             Text(
            //               '${context.read<Control_Provider>().prodacts[index].prise1}',
            //               style: TextStyle(
            //                   color: const Color.fromARGB(255, 255, 255, 255)),
            //             ),
            //           ],
            //         ),
            //       );
            //     },
            //   ),
            // ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "اخبار ",
                  style: TextStyle(fontSize: 20, fontFamily: 'font1'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "جدید ترین اخبار شهر ",
                  style: TextStyle(fontSize: 10, fontFamily: 'font1'),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 400,
              child: ListView.builder(
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: context.read<Control_Provider>().image.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            width: 380,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      '${context.read<Control_Provider>().image[index].picture}'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '${context.read<Control_Provider>().image[index].titele}',
                              style: TextStyle(
                                  fontFamily: 'font1', fontSize: Width * 0.04),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: Width,
                height: 40,
                color: const Color.fromARGB(31, 255, 255, 255),
                child: Center(
                  child: Text(
                    "سید حسین موسوی منش",
                    style: TextStyle(fontSize: 10, fontFamily: 'font1'),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}







    // Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => Login_screen(),
    //                 ),
    //               );