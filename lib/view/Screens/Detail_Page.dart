import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation opacity;
  late Animation position;
  late Animation bannerPosition;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..forward();

    opacity = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1.0),
      ),
    );
    position = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1.0),
      ),
    );
    bannerPosition = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Planet Detail"),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
          animation: _animationController,
          builder: (context, val) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: List.generate(
                  9,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("All_Detail_Page");
                    },
                    child: const Card(
                      margin: EdgeInsets.all(10),
                      color: Colors.red,
                      child: Text("name"),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
