import 'package:flutter/material.dart';
import 'package:flutter_permisos_estados/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: const Text('Miscelaneos'),
        actions: [
          IconButton(onPressed: (){
            context.push('/permissions');
          }, 
          icon: const Icon( Icons.settings )
          )
        ],
      ),
      */
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: const Text('Holis'),
              actions: [
                IconButton(onPressed: (){
                  context.push('/permissions');
                }, 
                icon: const Icon( Icons.settings )
                )
              ]
            ),
            const MainMenu(),
          ],
        ),
      ),
    );
  }
}



