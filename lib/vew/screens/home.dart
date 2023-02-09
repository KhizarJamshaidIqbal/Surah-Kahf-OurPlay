// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../component/sorah_kahaf_data.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int currentPage = 0;
      PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Center(child: Text("سورة الكهف",style: TextStyle(fontSize: 40),),),
        backgroundColor: Color.fromARGB(255, 18, 1, 79),
        ),
        body: Column(
          children: [
            Expanded(child: PageView.builder(
         physics: BouncingScrollPhysics(),
         controller: _pageController,
         pageSnapping: true,
         reverse: true,
         itemCount: Sorah_kahaf_data.length,
          onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemBuilder: (context, index){
                return Column(
                       children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .765,
                      child: Image(
                        image: AssetImage(
                          Sorah_kahaf_data[index].images,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                );
              },

            ))
          ],
        ),
      ),
  

    );
  }
}