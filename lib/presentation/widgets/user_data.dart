import 'package:flutter/material.dart';

import '../../utils/styles/themes.dart';

class Userdata extends StatelessWidget {
  final double maxWidth;
  final String? name, phone, email, address, paymentMethod;

  const Userdata({
    super.key,
    required this.maxWidth,
    this.name,
    this.phone,
    this.email,
    this.address,
    this.paymentMethod
  });

  @override
  Widget build(BuildContext context) {
    String _name, _phone, _email, _address, _paymentMethod;
    if (name == ''){
       _name = 'Luong Chi Dung';
    }
    else {
      _name = name!;
    }
    if (phone == ''){
       _phone = '0123456789';
    }
    else {
      _phone = phone!;
    }
    if (email == ''){
       _email = 'Dung@gmail.com';
    }
    else {
      _email = email!;
    }
    if (address == ''){
       _address = '9999 Doan Van Bo';
    }
    else {
      _address = address!;
    }
    if (paymentMethod == '' || paymentMethod == null){
      _paymentMethod = 'Bank';
    }
    else {
      _paymentMethod = paymentMethod!;
    }
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: maxWidth*0.8,
        child: Card(
          color: AppTheme.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserLabelAndData(
                title: 'Name:',
                data: _name!,
              ),
              UserLabelAndData(
                title: 'Phone Number:',
                data: _phone!,
              ),
              UserLabelAndData(
                title: 'Email:',
                data: _email!,
              ),
              UserLabelAndData(
                title: 'Address:',
                data: _address!,
              ),
              UserLabelAndData(
                title: 'Payment:',
                data: _paymentMethod!,
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

