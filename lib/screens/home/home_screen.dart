import 'package:demo_json_pjct/bloc/productblocmodel/productblocmodel_bloc.dart';
import 'package:demo_json_pjct/screens/home/detail_page.dart';
import 'package:demo_json_pjct/models/product_model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  
  const ScreenHome({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void _openProductDetailPage(Product product) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ProductDetailPage(product: product),
      ),
    );
  }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProductblocmodelBloc>(context).add(const Initialize());
    });
    return BlocBuilder<ProductblocmodelBloc, ProductblocmodelState>(
      builder: (context, state) {
        if(state.isLoading)
              {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }else if(state.isError) {
                return const Center(
                  child: Text('Error while getting data'),
                );
              
              }else if(state.idleList.isEmpty) {
                return const Center(
                  child: Text('List is empty'),
                );              
              }else{
        return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: state.idleList.length,
              itemBuilder: (context, index) {
                final product = state.idleList[index];
                return InkWell(
                  onTap: () {
                    _openProductDetailPage(product);
                  },
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(        
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 243, 242, 242),
                          blurRadius: 0,
                          spreadRadius: 1,
                        )
                      ]
                    ),
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "${product.thumbnail}",fit: BoxFit.fill,
                          height: 90,width: 90,
                        ),
                        SizedBox(height: 10),
                        Text("${product.title}"),
                        SizedBox(height: 5),
                        Text("\$${product.price}"),
                      ],
                    )
                  ),
              );
               } );
              }
      },
    );
  }

  
}
