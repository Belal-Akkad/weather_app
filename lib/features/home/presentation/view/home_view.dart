import 'package:flutter/material.dart';
import 'package:weather_app/core/functions/get_location.dart';
import 'package:weather_app/features/home/presentation/view/widgets/home_view_body_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    getLocation(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBodyBuilder(),
      ),
    );
  }
}
