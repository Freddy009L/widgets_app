import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  const SlideInfo('Buscando la comida', 'Deserunt cupidatat velit sit aliquip aute aute quis id commodo pariatur deserunt quis.', 'assets/images/1.png'),
    const SlideInfo('Entrga rapida', 'Duis est qui excepteur nostrud.', 'assets/images/2.png'),
      const SlideInfo('Disfruta la comida', 'Sit nostrud elit tempor nisi esse voluptate elit.', 'assets/images/3.png'),


];

class AppTutorialScreens extends StatefulWidget {

   static const name = 'tutorial_Screens';
  const AppTutorialScreens({super.key});

  @override
  State<AppTutorialScreens> createState() => _AppTutorialScreensState();
}

class _AppTutorialScreensState extends State<AppTutorialScreens> {

  late final PageController pageviewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageviewController.addListener(() {
      final page = pageviewController.page ?? 0;
      if ( !endReached && page >= (slides.length - 1.5) ) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slideData) => _Slide(
              title: slideData.title,
              caption: slideData.caption,
              imageUrl: slideData.imageUrl,
            )).toList(),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              child: Text('Salir'),
              onPressed: () => context.pop(), 
              
            ), 
          ),

        endReached?
          Positioned(
            bottom: 30,
            right: 30,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Comenzar'),
            ),
          ): const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageUrl)),
              SizedBox(height: 20),
              Text(title,style: titleStyle, ),
              SizedBox(height: 10),
              Text(caption, style: captionStyle,),
          ],
        ),
      ),
    );
  }
}