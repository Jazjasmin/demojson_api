import 'package:demo_json_pjct/const_value/string.dart';
import 'package:demo_json_pjct/productblocmodel/productblocmodel_bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height10,
        Expanded(child:
            BlocBuilder<ProductblocmodelBloc, ProductblocmodelState>(builder: (context, state) {
          return GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.4,
            shrinkWrap: true,
            children: List.generate(state.searchResultList.length, (index) {
              final product = state.searchResultList[index];
              return MainCard(imageUrl: product.thumbnail.toString(),title: product.title.toString(),);
            }),
          );
        }))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  const MainCard({Key? key, required this.imageUrl, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(title),
    );
  }
}
