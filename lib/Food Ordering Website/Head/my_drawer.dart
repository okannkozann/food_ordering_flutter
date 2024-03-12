import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Sinyor Kozantino"),
            accountEmail: Text("sinyorkozantino@gmail.com"),
            currentAccountPicture: ClipOval(
              child: Image(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1709423377982-fbe2169e5b67?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
                fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Home"),
            leading: const Icon(Icons.home),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Favorite"),
            leading: const Icon(Icons.favorite),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Them"),
            leading: const Icon(Icons.dark_mode),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Message"),
            leading: const Icon(Icons.message),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Review"),
            leading: const Icon(Icons.reviews),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Share"),
            leading: const Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
