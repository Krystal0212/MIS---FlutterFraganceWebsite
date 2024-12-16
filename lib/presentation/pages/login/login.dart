import 'package:eaudelux/presentation/widgets/import_packages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late double deviceWidth, deviceHeight;
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Hardcoded roles and passwords
  final Map<String, String> userCredentials = {
    'ceo': '123',
    'idirector': '123',
    'imanager': '123',
    'istaff': '123',
    'sdirector': '123',
    'smanager': '123',
    'sstaff': '123',
  };

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    _passwordController.text = "123";
  }

  void _authenticateUser(BuildContext context) {
    String userId = _userIdController.text.trim();
    String password = _passwordController.text.trim();

    // Check if the credentials match
    if (userCredentials.containsKey(userId) && userCredentials[userId] == password) {
      // If credentials are correct, navigate to the respective page
      if (userId == 'ceo') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TrendPredictPage()),
        );
      } else if (userId == 'idirector') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const InventoryDashboard(role: 'Operation Director',),
          ),
        );
      }else if (userId == 'imanager'){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const InventoryDashboard(role: 'Operation Manager',),
          ),
        );
      }else if (userId == 'istaff'){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const InventoryDashboard(role: 'Operation Staff',),
          ),
        );
      }
      else if (userId == 'sdirector') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SalesDirectorPage()),
        );
      } else if (userId == 'smanager') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SalesManagerPage()),
        );
      } else if (userId == 'sstaff') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SalesStaffPage()),
        );
      }
    } else {
      // If credentials are incorrect, show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid User ID or Password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.blueAccent,
          width: deviceWidth * 0.3,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset('assets/images/background.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 60.0, bottom: 20.0, left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(fontSize: 50.0),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back,',
                          style: TextStyle(fontSize: 30.0),
                        ),
                        Text(
                          'please login',
                          style: TextStyle(fontSize: 30.0),
                        ),
                        Text(
                          'to your account',
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextField(
                          controller: _userIdController,
                          decoration: const InputDecoration(
                            hintText: 'UserID',
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                      ],
                    ),
                    TextNavigatorButton(
                      onPressedFunction: () async {
                        _authenticateUser(context);
                      },
                      title: 'Login', buttonStyle: AppTheme.sliverTextButtonStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}