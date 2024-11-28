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
    'age': '100',
    'sex': 'Male',
    'phone': '123456789',
    'email': 'Dung@gmail.com',
  };

  String imgLink = 'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/people19.png';

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
      imgLink = 'https://static.scientificamerican.com/dam/m/4aaa836e513fa8a5/original/krijn_neanderthal_face_reconstruction.jpg?m=1728652157.415&w=600';
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

