import 'package:flutter/material.dart';

import '../../utils/styles/themes.dart';

class Userdata extends StatelessWidget {
  final double maxWidth;
  final String? name, phone, email, address;

  const Userdata({
    super.key,
    required this.maxWidth,
    this.name,
    this.phone,
    this.email,
    this.address
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: maxWidth*0.8,
        child: Card(
          color: AppTheme.white,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserLabelAndData(
                title: 'Name:',
                data: 'Luong Chi Dung',
              ),
              UserLabelAndData(
                title: 'Phone Number:',
                data: '0123456789',
              ),
              UserLabelAndData(
                title: 'Email:',
                data: 'Dung@gmail.com',
              ),
              UserLabelAndData(
                title: 'Address:',
                data: '9999 Doan Van Bo',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserLabelAndData extends StatelessWidget {
  final String title, data;
  const UserLabelAndData({
    super.key,
    required this.title,
    required this.data
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            flex: 2,
              child: Text(
                  title,
                style: AppTheme.tileHeader,
              )
          ),
          Expanded(
            flex: 4,
              child: Text(
                  data,
                textAlign: TextAlign.end,
                style: AppTheme.tileAlertString,
              )
          )
        ],
      ),
    );
  }
}

