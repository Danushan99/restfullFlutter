import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:testnewversion/ui/views/home/home_viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) =>  Scaffold(
              body: Center(child: Text(model.title)),
            ));
  }
}
