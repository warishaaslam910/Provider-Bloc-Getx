import 'package:flutter/material.dart';
import 'package:flutterapp_7/Apptheme.dart';

class Homeappbar extends StatelessWidget {
  const Homeappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 130,
      backgroundColor: AppTheme.primaryColor,
      leading: InkWell(
        onTap: () {},
        child: Icon(
          Icons.menu,
          size: 23,
          color: AppTheme.accentColor,
        ),
      ),
      title: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                style: TextStyle(color: AppTheme.accentColor, fontSize: 16),
              ),
              Text(
                'Royal Society Block 2 Street no 14',
                style: TextStyle(color: AppTheme.accentColor, fontSize: 12),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
          color: AppTheme.accentColor,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_bag_outlined),
          color: AppTheme.accentColor,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(top: 32, left: 8, right: 8),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 38,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: AppTheme.accentColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search for shops & restaurants',
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
