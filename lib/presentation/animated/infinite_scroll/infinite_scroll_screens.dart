import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfinitScrollScreens extends StatefulWidget {

   static const name = 'infinit_Screens';
  const InfinitScrollScreens({super.key});

  @override
  State<InfinitScrollScreens> createState() => _InfinitScrollScreensState();
}

class _InfinitScrollScreensState extends State<InfinitScrollScreens> {

  List<int> imagesIds = [1,2,3,4,5];
  final ScrollController scrollController =ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener((){
      if ((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent) {
        // Load next page
        addFiveImages();
      }

    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
    
  }

  void addFiveImages() {
    final lastId = imagesIds.last;
    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          controller: scrollController,
          itemCount: imagesIds.length,
          itemBuilder: (context, index) {
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            placeholder: const AssetImage('assets/image/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/id/${ imagesIds[index
            ] }/200/300'),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed:()=> context.pop(),
      child:  const Icon(Icons.arrow_back_ios_rounded),
      ),
    );
 }
}