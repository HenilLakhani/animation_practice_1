import 'package:circular_rotation/circular_rotation.dart';
import 'package:flutter/material.dart';

import '../../controllers/const.dart';
import '../../controllers/dimens.dart';
import '../../controllers/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List<Widget> _firstCircleImages = [];
  final List<Widget> _secondCircleImages = [];
  final List<Widget> _thirdCircleImages = [];

  @override
  void initState() {
    generateImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("Detail_Page");
            },
            child: const Icon(
              Icons.menu,
            )),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Images.galaxy,
            ),
          ),
        ),
        child: CircularRotation(
          circularRotationProperty: CircularRotationModel(
            defaultCircleStrokeWidth: Dimens.strokeSmall,
            defaultCircleStrokeColor: Colors.white,
            startAnimation: true,
            repeatAnimation: false,
            firstCircleAnimationDuration:
                Constants.firstCircleAnimationDurationInMilliseconds,
            secondCircleAnimationDuration:
                Constants.secondCircleAnimationDurationInMilliseconds,
            thirdCircleAnimationDuration:
                Constants.thirdCircleAnimationDurationInMilliseconds,
            centerWidget: const InkWell(
              onTap: CircularRotation.eitherStartOrStopAnimation,
              child: _GetProfile(
                image: Images.center,
                radius: Dimens.radiusLarge,
              ),
            ),
            firstCircleWidgets: _firstCircleImages,
            secondCircleWidgets: _secondCircleImages,
            thirdCircleWidgets: _thirdCircleImages,
            thirdCircleRadians: Dimens.thirdCircleRadians,
            secondCircleRadians: Dimens.secondCircleRadians,
            firstCircleRadians: Dimens.firstCircleRadians,
          ),
        ),
      ),
    );
  }

  void generateImages() {
    /// Adding images into first circle.
    _firstCircleImages.add(
      const _GetProfile(image: Images.planet_5),
    );
    _firstCircleImages.add(
      const _GetProfile(image: Images.planet_4),
    );
    _firstCircleImages.add(
      const _GetProfile(image: Images.planet_7),
    );

    /// Adding images into second circle.
    _secondCircleImages.add(
      const _GetProfile(image: Images.planet_2),
    );
    _secondCircleImages.add(
      const _GetProfile(image: Images.planet_3),
    );
    _secondCircleImages.add(
      const _GetProfile(image: Images.planet_6),
    );

    /// Adding images into third circle.
    _thirdCircleImages.add(
      const _GetProfile(image: Images.planet_1),
    );
  }
}

class _GetProfile extends StatelessWidget {
  const _GetProfile({
    required this.image,
    this.radius = Dimens.radiusNormal,
    Key? key,
  }) : super(key: key);
  final String image;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CircularImage(image: image, radius: radius),
      ],
    );
  }
}

class _CircularImage extends StatelessWidget {
  const _CircularImage({required this.image, required this.radius, Key? key})
      : super(key: key);
  final String image;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(
        image,
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
