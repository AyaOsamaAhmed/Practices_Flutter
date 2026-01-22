import '../../home_screen.dart';
import '../screens/forget_password_screen.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';
import '../screens/splash_screen.dart';

final applicationRoutes = {
  'splash' :(context) => SplashScreen(),
  'login' :(context) => LoginScreen(),
  'register' : (context) => RegisterScreen(),
  'forget' : (context) => ForgetPasswordScreen(),
  'home' : (context) => HomeScreen(),

};