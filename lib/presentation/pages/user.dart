import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../../utils/SharedPreferences/shared_preferences.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  late double maxWidth, maxHeight, appBarHeight;
  late Size appBarSize;

  Map<String, String> userInfo = {
    'name': 'Luong Chi Dung',
    'age': '21',
    'sex': 'Male',
    'phone': '123456789',
    'email': 'Dung@gmail.com',
  };

  String imgLink = 'https://imgcdn.stablediffusionweb.com/2024/2/24/4abb7f5d-c625-4f72-88dc-3da18e45aad9.jpg';

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    maxWidth = MediaQuery.of(context).size.width;
    maxHeight = MediaQuery.of(context).size.height;

    appBarHeight = maxHeight * 0.2;
    appBarSize = Size(maxWidth, appBarHeight);
  }

  Future<void> _loadUserData() async {
    // Load user info and image link from SharedPreferences
    final loadedUserInfo = await UserSharedPreference.getUserInfo();
    setState(() {
      userInfo = loadedUserInfo.isEmpty
          ? userInfo // Use default if no data is found
          : loadedUserInfo;
    });
  }

  void _saveUserInfo(Map<String, String> updatedInfo) async {
    // Save user info to SharedPreferences and update state
    await UserSharedPreference.saveUserInfo(updatedInfo);
    setState(() {
      userInfo = updatedInfo;
    });
  }

  void _changeProfileImage() {
    setState(() {
      imgLink = 'https://imgcdn.stablediffusionweb.com/2024/2/24/4abb7f5d-c625-4f72-88dc-3da18e45aad9.jpg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: appBarSize,
        child: CustomAppBar(appBarSize: appBarSize),
      ),
      body: CustomScrollView(
        slivers: [
          const CustomSliverTitle(
            title: 'User profile',
            alignment: Alignment.center,
          ),
          SliverContainer(
            maxWidth: maxWidth,
            onImagePressed: _changeProfileImage,
            userInfo: userInfo,
            onSave: _saveUserInfo,
          ),
        ],
      ),
    );
  }
}

