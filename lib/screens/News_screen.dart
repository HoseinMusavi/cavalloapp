import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cavalloapp/provider/controler/provider_controler.dart';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
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
                "اخبار",
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
                  "داغ ترین اخبار را با ما دنبال کنید",
                  style:
                      TextStyle(fontFamily: 'font1', fontSize: Width * 0.028),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: context.read<Control_Provider>().image.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Container(
                              width: 400,
                              height: 400,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '${context.read<Control_Provider>().image[index].titele}',
                                          style: TextStyle(
                                              fontFamily: 'font1',
                                              fontSize: Width * 0.04),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      );
    });
  }
}
