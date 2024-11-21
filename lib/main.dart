import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:new_task/screen/home_screen.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return const MyApp();
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Flutter Demo',
      supportedLocales: [
        const Locale('en'),
        const Locale('ar'),
      ],
      locale: const Locale('ar'),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SafeArea(child: HomeScreen()

          // ProductDetailsScreen(
          //   carModel: CarModel(
          //       name: 'يوكن بحالة جيدة',
          //       cylinders: 6,
          //       yearOfManufacture: 2019,
          //       image: 'assets/Image 1.png',
          //       mileage: 2000,
          //       price: 8700,
          //       currency: 'د.ك',
          //       warrantyKm: 70000,
          //       exteriorColor: 'ابيض',
          //       interiorColor: 'بيج',
          //       seatType: 'مخمل',
          //       hasSunroof: true,
          //       hasRearCamera: true,
          //       sensor: 'امامي - خبفي',
          //       transmission: 'اوتوماتيك',
          //       details:
          //           """رنجات النيوم ٨٨ انش اسود وكروم ديكور خشب + كروم مقعد السائق كهربانى دواسات جانبية ، تحكم بالقود مع تعديل يدوي - F1 نظام الرتفعات سايد بريك كهربائي ، مرأة داخليك اوتو- USB - off Traction - شاحن. كهربائي - ٧ مقاعد الخلفي والوسطي قابل للاغلاق جناح خلفي ، عواكس خلفية سيرفس منتظح ىالكالة"""),
          // ),

          ),
    );
  }
}
