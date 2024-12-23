import 'package:eaudelux/utils/activity/routing.dart';
import 'package:flutter/material.dart';

import '../../utils/activity/load_data.dart';
import '../model/product_model.dart';
import '../widgets/pseudo_product_data.dart';
import '../widgets/widgets.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<StatefulWidget> createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  late double maxWidth, maxHeight, appBarHeight;
  late Size appBarSize;
  late Future<List<Perfume>> perfumes;

  @override
  void initState() {
    super.initState();
    perfumes = loadPerfumesFromCsv('../../../assets/data/final_perfume_data.csv');
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
      body: FutureBuilder(
          future: perfumes,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error loading data: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No perfumes found.'));
            }
            final perfumes = snapshot.data!;

            return CustomScrollView(
              slivers: [
                const CustomSliverTitle(title: 'Available Fragrances'),
                ProductGrid(maxHeight: maxHeight, maxWidth: maxWidth, perfumes: perfumes,
                ),
                CustomSliverTextButton(
                    onPressed: (){
                      AppRoutes.pushReplacement(context, ProductPage(key: UniqueKey()));
                    },
                    text: 'View more',
                    maxWidth: 400
                ),

                ProductGrid(maxHeight: maxHeight, maxWidth: maxWidth, perfumes: perfumes,),
                CustomSliverTextButton(
                    onPressed: (){
                      AppRoutes.pushReplacement(context, ProductPage(key: UniqueKey(),));
                    },
                    text: 'View more',
                    maxWidth: 400
                ),

              ],
            );
          }
      )
    );
  }
}



