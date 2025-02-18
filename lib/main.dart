import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/presenter/screen/dragon_ball_screen.dart';
import 'package:flutter_clean_architectur/features/pokemon/presenter/screen/pokemon_screen.dart';
import 'package:flutter_clean_architectur/injection_container.dart';

import 'features/dragon_ball/presenter/bloc/dragon_ball_bloc.dart';
import 'features/pokemon/presenter/bloc/pokemon_bloc.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PokemonBloc(),
        ),
        BlocProvider(
          create: (context) => DragonBallBloc(),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const PokemonScreen(),
    const DragonBallScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Pokemon',
            icon: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            label: 'Dragon Ball',
            icon: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
