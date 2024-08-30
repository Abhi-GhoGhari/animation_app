import 'package:animation_app/headers.dart';

class DragDropController extends ChangeNotifier {
  bool boxAccepted = false;

  void boxAccepte() {
    boxAccepted = true;
    notifyListeners();
  }
}
