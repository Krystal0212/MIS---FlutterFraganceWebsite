import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<StatefulWidget> createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  late double maxWidth, maxHeight, appBarHeight;
  late Size appBarSize;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    maxWidth = MediaQuery.of(context).size.width;
    maxHeight = MediaQuery.of(context).size.height;

    appBarHeight = maxHeight * 0.2;
    appBarSize = Size(maxWidth, appBarHeight);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: appBarSize,
          child: CustomAppBar(appBarSize: appBarSize)
      ),
      body: CustomScrollView(
        slivers: [
          const CustomFloatingSliverTitle(title: 'Black Friday', floatingLevel: 2,),
          ProductGrid(maxHeight: maxHeight, maxWidth: maxWidth),

          const CustomFloatingSliverTitle(title: 'Latest in Stock', floatingLevel: 1,),
          ProductGrid(maxHeight: maxHeight, maxWidth: maxWidth),
        ],
      )
    );
  }
}



