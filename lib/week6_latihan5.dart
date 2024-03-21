import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: TabBar(
              labelStyle: TextStyle(color: Colors.white),
              unselectedLabelStyle: TextStyle(color: Colors.white),
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'For You'),
                Tab(text: 'Following'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ForYouTab(),
              FollowingTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForYouTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 11, // Mulai dari indeks 0 hingga 10
      itemBuilder: (context, index) {
        return ListTile(
          leading: FlutterLogo(),
          title: Text('Data ke $index'),
        );
      },
    );
  }
}

class FollowingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          _buildGridItem(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          _buildGridItem(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          _buildGridItem(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          _buildGridItem(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          _buildGridItem(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          _buildGridItem(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        ],
      ),
    );
  }

  Widget _buildGridItem(String imageUrl) {
    return Container(
      padding: EdgeInsets.all(14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageUrl,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}