import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> imgs = [
    'https://images.unsplash.com/photo-1684069158042-de27cd720172?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1683924070870-688ef2080511?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1683969285330-eb996c2803db?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1684069158042-de27cd720172?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1683924070870-688ef2080511?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1683969285330-eb996c2803db?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          pattern: [
            const WovenGridTile(1,
                alignment: AlignmentDirectional.center, crossAxisRatio: 1),
            const WovenGridTile(
              0.7,
              crossAxisRatio: 1,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: imgs.length,
          (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imgs[index]), fit: BoxFit.fill),
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text('data'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
