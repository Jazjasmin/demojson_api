import 'package:demo_json_pjct/const_value/debounce.dart';
import 'package:demo_json_pjct/const_value/string.dart';
import 'package:demo_json_pjct/screens/home/home_screen.dart';
import 'package:demo_json_pjct/screens/home/product_search_page.dart';
import 'package:demo_json_pjct/bloc/productblocmodel/productblocmodel_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //BlocProvider.of<ProductBloc>(context).add(Initialize());
    });
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CupertinoSearchTextField(
                    backgroundColor: kGrey.withOpacity(0.4),
                    prefixIcon: const Icon(
                      CupertinoIcons.search,
                      color: kGrey,
                    ),
                    suffixIcon: const Icon(
                      CupertinoIcons.xmark_circle_fill,
                      color: kGrey,
                    ),
                    style: const TextStyle(
                      color: kblack,
                    ),
                    onChanged: (value) {
                      if (value.isEmpty) {
                        return;
                      }
                      _debouncer.run(() {
                        BlocProvider.of<ProductblocmodelBloc>(context)
                            .add(SearchProduct(searchQuery: value));
                       });
                    },
                  ),
                ),
                width5,
                
              ],
            ),
            height10,
            Expanded(child:
                BlocBuilder<ProductblocmodelBloc, ProductblocmodelState>(builder: (context, state) {
              if (state.searchResultList.isEmpty) {
                return const ScreenHome();
              } else {
                return const SearchResult();
              }
            })),
          ],
        ),
      )),
    );
  }
}
