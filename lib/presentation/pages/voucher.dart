import 'package:eaudelux/presentation/widgets/voucher_tile.dart';
import 'package:eaudelux/utils/activity/load_data.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {

  late double maxWidth, maxHeight, appBarHeight;
  late Size appBarSize;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();

    maxWidth = MediaQuery.of(context).size.width;
    maxHeight = MediaQuery.of(context).size.height;

    appBarHeight = maxHeight * 0.2;
    appBarSize = Size(maxWidth, appBarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: appBarSize,
        child: CustomAppBar(appBarSize: appBarSize,),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: maxWidth*0.12),
        child: SingleChildScrollView(
          child: Column(
            children: vouchers.map((item) {
              return VoucherTile(
                imgTitle: item['imgTitle'] ?? '',
                imgColor: item['imgColor'] ?? Colors.grey,
                title: item['title'] ?? 'No Title',
                subtitle: item['subtitle'] ?? 'No Subtitle',
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
