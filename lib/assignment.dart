void main(){
  List<int> numbers =[34, 34, 55, 5, 8, 72];
  int len = numbers.length;
  int sum=0;
  for( int i = 0 ; i<len;i++) {
    sum +=numbers[i];
  }
  double avg = (sum / len) ;
  avg.round();
  int favg= avg.toInt();
  if(favg>= 70 ){
    print("Student average grade: $avg");
    print("Rounded average: $favg");
    print("passed");
  }
  else{
    print("Failed");
  }
  

}
