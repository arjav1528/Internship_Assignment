import 'package:flutter_riverpod/flutter_riverpod.dart';
class DayProvider extends Notifier<bool>{
  @override
  bool build(){
    return true;
  }

  void changeDay(bool day){
    state = !state;
  }



}
final dayNotifier = NotifierProvider<DayProvider,bool>(() => DayProvider());
