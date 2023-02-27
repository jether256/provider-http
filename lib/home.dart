
import 'package:flutter/material.dart';
import 'package:http_provider/provider/categoryprovider.dart';
import 'package:provider/provider.dart';


import 'api/service.dart';
import 'model/categorymodel.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoryModel> categories=[];
    Servicess _servicess= new Servicess();

  bool? isLoading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

      Provider.of<CategoryProvider>(context,listen: false).getAllCats();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.green,
        child:Consumer<CategoryProvider>(
          builder: (context,value,child){

            final pros=value.catmo;

          return  ListView.builder(
                itemCount:pros.length,
                itemBuilder:(context,index){

                  return ListTile(
                    title: Text(pros[index].nem,style: const TextStyle(color: Colors.white),),
                  );
                }
            );
          },
        ),
      ),
    );
  }
}
