import 'package:flutter/cupertino.dart';
import '../helper/valoratn_helper.dart';
import 'package:animation_app/headers.dart';

class ValorantController with ChangeNotifier {
  ValorantController() {
    getAgents();
  }
  List allData = [];

  Future<void> getAgents() async {
    allData = await Apihepler.apihepler.getCharacters();
    notifyListeners();
  }
}
