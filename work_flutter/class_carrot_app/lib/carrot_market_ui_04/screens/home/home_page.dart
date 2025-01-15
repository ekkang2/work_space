import 'package:class_carrot_app/carrot_market_ui_04/screens/home/components/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        title: Row(
          children: [
            Text('좌동'),
            const SizedBox(width: 4.0),
            Icon(
              Icons.keyboard_arrow_down,
              size: 25,
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.list),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell),
          )
        ],
      ),
      // body: ListView.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount),
      // ListView.Se..
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ProductItem(product: productList[index]);
        },
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey,
        ),
        itemCount: productList.length,
      ),
    );
  }
}
