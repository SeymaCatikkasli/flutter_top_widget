
import 'package:mobx/mobx.dart';


part 'mobx_counter.g.dart';

class MobxCounter = _MobxCounterBase with _$MobxCounter;
 abstract class _MobxCounterBase with Store{

@observable
int counter= 0;
  
  @action
  void increment(){

    counter++;
  }



}