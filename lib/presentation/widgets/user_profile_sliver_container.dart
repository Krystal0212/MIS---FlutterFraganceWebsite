import 'package:cached_network_image/cached_network_image.dart';
import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class SliverContainer extends StatelessWidget {
  final double maxWidth;
  final Function() onImagePressed;
  final Map<String, String> userInfo;
  final Function(Map<String, String>) onSave;

  const SliverContainer({
    super.key,
    required this.maxWidth,
    required this.onImagePressed,
    required this.userInfo,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    double validWidth = maxWidth * 0.7;
    return SliverToBoxAdapter(
      child: Container(
        height: 1000,
        width: validWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserImageProfile(
              maxWidth: validWidth,
              onPressed: onImagePressed,
            ),
            UserInfo(
              maxWidth: validWidth,
              userInfo: userInfo,
              onSave: onSave,
            ),
          ],
        ),
      ),
    );
  }
}

class UserImageProfile extends StatelessWidget {
  final double maxWidth;
  final Function() onPressed;

  const UserImageProfile({
    super.key,
    required this.maxWidth,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (maxWidth * 0.4) - 10,
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppTheme.black, // Border color
                  width: 1.0, // Border width
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12)), // Match ClipRRect's border radius
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: CachedNetworkImage(
                  width: maxWidth * 0.2,
                  height: maxWidth * 0.2,
                  maxHeightDiskCache: 300,
                  maxWidthDiskCache: 300,
                  imageUrl:
                  'https://cdn.pixabay.com/photo/2023/07/14/19/36/ai-generated-8127609_1280.jpg',
                  errorWidget: (context, url, error) => Center(
                    child: Icon(
                      Icons.image_not_supported_outlined,
                      color: AppTheme.black,
                    ),
                  ),
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  placeholderFadeInDuration: const Duration(milliseconds: 300),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            style: AppTheme.defaultStyle,
            child: Text(
              'Change image',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppTheme.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final double maxWidth;
  final Map<String, String> userInfo;
  final Function(Map<String, String>) onSave;

  const UserInfo({
    super.key,
    required this.maxWidth,
    required this.userInfo,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController =
    TextEditingController(text: userInfo['name']);
    final TextEditingController ageController =
    TextEditingController(text: userInfo['age']);
    final TextEditingController sexController =
    TextEditingController(text: userInfo['sex']);
    final TextEditingController phoneController =
    TextEditingController(text: userInfo['phone']);
    final TextEditingController emailController =
    TextEditingController(text: userInfo['email']);

    return Container(
      width: (maxWidth * 0.6) - 10,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        color: AppTheme.primary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWithTextBox(
            title: "Name: ",
            controller: nameController,
          ),
          TitleWithTextBox(
            title: "Age: ",
            controller: ageController,
          ),
          TitleWithTextBox(
            title: "Sex: ",
            controller: sexController,
          ),
          TitleWithTextBox(
            title: "Phone: ",
            controller: phoneController,
          ),
          TitleWithTextBox(
            title: "Email: ",
            controller: emailController,
          ),
          const SizedBox(height: 20),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              style: AppTheme.defaultStyle,
              onPressed: () {
                final updatedInfo = {
                  'name': nameController.text,
                  'age': ageController.text,
                  'sex': sexController.text,
                  'phone': phoneController.text,
                  'email': emailController.text,
                };

                onSave(updatedInfo);
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                width: 100,
                child: Text(
                    "Save",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}