
import 'package:flutter/cupertino.dart';
import 'package:http_provider/api/service.dart';

import '../model/categorymodel.dart';

class CategoryProvider extends ChangeNotifier{

  Servicess _servicess= new Servicess();
  bool isLoading=false;
  List<CategoryModel> _catmo=[];
  List<CategoryModel> get catmo=>_catmo;


  Future<void> getAllCats() async{

    isLoading=true;
    notifyListeners();

    final response= await _servicess.getCategories();
    _catmo=response!;
    isLoading=false;
    notifyListeners();

  }
}