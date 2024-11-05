import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fundraiser/screens/auth/email_screen.dart';
import 'package:fundraiser/screens/auth/email_verification.dart';
import 'package:fundraiser/screens/auth/forget_password/forget_pass_phone_verification.dart';
import 'package:fundraiser/screens/auth/forget_password/forget_password_email_verification.dart';
import 'package:fundraiser/screens/auth/forget_password/reset_password.dart';
import 'package:fundraiser/screens/auth/forget_password/reset_password_with_email.dart';
import 'package:fundraiser/screens/auth/forget_password/reset_password_with_number.dart';
import 'package:fundraiser/screens/auth/login.dart';
import 'package:fundraiser/screens/auth/phone_verification.dart';
import 'package:fundraiser/screens/auth/signUp.dart';
import 'package:fundraiser/screens/confirmPayment.dart';
import 'package:fundraiser/screens/drawer_item_screens/promotion.dart';
import 'package:fundraiser/screens/home/events/event_details.dart';
import 'package:fundraiser/screens/home/events/event_type.dart';
import 'package:fundraiser/screens/home/events/events_details_screen.dart';
import 'package:fundraiser/screens/home/events/events_screen.dart';
import 'package:fundraiser/screens/home/events/store_select_screen.dart';
import 'package:fundraiser/screens/home/home.dart';
import 'package:fundraiser/screens/home/home_screen_inside.dart';
import 'package:fundraiser/screens/location_screen.dart';
import 'package:fundraiser/screens/prac.dart';
import 'package:fundraiser/screens/splash/splash.dart';
import 'package:fundraiser/screens/splash1.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen1.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen2.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen3.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen4.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen5.dart';
import 'package:fundraiser/screens/view_cart/view_cart_screen.dart';
import 'package:fundraiser/searchScreen.dart';
import 'package:fundraiser/splash2.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


void main() {
  runApp(MyApp()
  );
}


/*void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(),
  )
  );
}*/

///Device Preview Main
/*DevicePreview(
enabled: !kReleaseMode,
builder: (context) => MyApp(), // Wrap your app
),*/

/*void main() {
  runApp(MyApp()
  );
}*/



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (buildContext , orientation , screenType ) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          ///Custom theme here..........

          theme: ThemeData(

            primarySwatch: Colors.red,
          ),
          home: SplashScreen2(),
        );
      },

    );
  }
}


