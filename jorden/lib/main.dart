import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jorden/cubit/bording/cubit/onbording_cubit.dart';
import 'package:jorden/cubit/bottom_bar/cubit/bottombar_cubit.dart';
import 'package:jorden/cubit/filter/cubit/filter_cubit.dart';
import 'package:jorden/screens/splashsceen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnbordingCubit>(create: (_) => OnbordingCubit()),
        BlocProvider<BottombarCubit>(create: (_) => BottombarCubit()),
        BlocProvider<FilterCubit>(create: (_) => FilterCubit())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Splashscreen(),
      ),
    );
  }
}
