import 'package:demo_json_pjct/productblocmodel/productblocmodel_bloc.dart';
import 'package:flutter/material.dart';
import 'package:demo_json_pjct/const_value/di/injectable.dart';
import 'package:demo_json_pjct/widget/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProductblocmodelBloc>(),
        ),
      ],
      child: 
       MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage(),
       ),
    );
  }
}
