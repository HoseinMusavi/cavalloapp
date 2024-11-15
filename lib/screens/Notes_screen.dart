import 'package:flutter/material.dart';
import 'package:cavalloapp/provider/controler/provider_controler.dart';

import 'package:provider/provider.dart';

class Note_screen extends StatefulWidget {
  const Note_screen({super.key});

  @override
  State<Note_screen> createState() => _Note_screenState();
}

class _Note_screenState extends State<Note_screen> {
  @override
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
                "توییت ها",
                style: TextStyle(fontFamily: 'font1', fontSize: Width * .05),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Text(
                  "داغ ترین توییت ها",
                  style: TextStyle(fontFamily: 'font1', fontSize: Width * 0.04),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: context.read<Control_Provider>().prodacts.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: Container(
                            width: Width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${context.read<Control_Provider>().prodacts[index].name}',
                                        style: TextStyle(
                                            fontFamily: 'font1',
                                            fontSize: Width * 0.04),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 8.0, top: 8),
                                      child: Container(
                                        width: 60, // تنظیم اندازه دلخواه
                                        height: 70,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                '${context.read<Control_Provider>().prodacts[index].pictuer}'),
                                            fit: BoxFit.cover,
                                            // تنظیم نحوه قرارگیری عکس
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, right: 70, bottom: 40, left: 4),
                                  child: Text(
                                    '${context.read<Control_Provider>().prodacts[index].body}',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                        fontFamily: 'font1',
                                        fontSize: Width * 0.035),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4),
                                        child: Icon(
                                          Icons.heart_broken,
                                          size: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 2.0),
                                        child: Text(
                                          '${context.read<Control_Provider>().prodacts[index].likes}',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'font1',
                                              fontSize: Width * 0.025),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8),
                                        child: Text(
                                          'تعداد پسند ها ',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'font1',
                                              fontSize: Width * 0.025),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Width,
                                  height: Width * .001,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 50.0, right: 10),
          child: FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: () {},
            child: Icon(Icons.border_color),
          ),
        ),
      );
    });
  }
}
