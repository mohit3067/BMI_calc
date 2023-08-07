import 'dart:math';

class bmibrain{
final int weight;
final int height;
bmibrain({required this.height,required this.weight});



String calculator(){
  var bmi = weight / pow(height/100, 2);
  return bmi.toStringAsFixed(2);
}


String numresult(){
var bmi = weight / pow(height/100, 2);
  if(bmi >=25){
return 'Overweight';
  }else if (bmi >=18.5){
    return 'Normal';
  }else{
  return 'underweight';
}
}

String descresult(){
  var bmi = weight / pow(height/100, 2);
  if(bmi >=25){
return 'your weight is too high,so you have to loose some weight,get a healthy diet & avoid junk food and do exercise regularly 🏋️‍♀️🚴‍♂️';
  }else if (bmi >= 18.5){
    return 'your weight is perfect as compare to height,you are pretty fit👍';
  }else{
  return 'babe you are to skinny you should gain your weight,eat any junk food,cheese & protein';
}
}
}