import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title ;
  final String caption ;
  final String imageUrl ;


  SlideInfo({required this.title, required this.caption, required this.imageUrl});
}

// Slide # 1
final slides = <SlideInfo> [
  SlideInfo( title: "Busca la comida",
    caption: "In irure minim excepteur non.", 
    imageUrl: "assets/images/1.png"),
// Slide # 2
  SlideInfo( title: "Entrega rapida",
    caption: "Reprehenderit proident duis veniam labore elit cillum velit occaecat nisi laborum.", 
    imageUrl: "assets/images/1.png"),
// Slide # 32
  SlideInfo( title: "Disfruta la comida",
    caption: "Amet incididunt amet Lorem commodo eu dolore eu do ullamco.", 
    imageUrl: "assets/images/1.png"),
];

class AppTutorialScreen extends StatefulWidget {

  static const name = "tutorial_scree";

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageviewController = PageController();
  bool endReached = false ;

  @override
  void initState() {
    super.initState();

    pageviewController.addListener(() {

      final page = pageviewController.page ?? 0 ;
      // print("${ pageviewController.page }") ;
      if ( !endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true ;
        }); 
      }
    }) ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slideData) => _Slide(
              tittle: slideData.title, 
              caption: slideData.caption, 
              imagesUrl: slideData.imageUrl
              )
              ).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text("Back"),
              onPressed: () => context.pop(),
          )
          ),

          endReached ? Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(seconds: 1),
              child: FilledButton(
                onPressed: () => context.pop(),
                child: const Text("Empezar"),
                ),
            )
              ): const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  
  final String tittle ;
  final String caption ;
  final String imagesUrl ;
  
  const _Slide({
    required this.tittle, 
    required this.caption, 
    required this.imagesUrl});

  @override
  Widget build(BuildContext context) {
    final tittleStyle = Theme.of(context).textTheme.titleLarge ;
    final captionStyle = Theme.of(context).textTheme.bodySmall ;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imagesUrl)),
          const SizedBox(height: 20),
          Text(tittle, style: tittleStyle,),
          const SizedBox(height: 20),
          Text(caption, style: captionStyle,),
      ],)),
    );
  }
}