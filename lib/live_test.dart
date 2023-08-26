class Person {
  String name ='';
  int age =0;
  String address ='';

  Person(this.name,this.age, this.address);
  void sayHello(){
    print("Hello,my name is $name.");
  }
  int getAgeInMonths(){
    return age*12;
  }
}
void main() {
  String name = "Sudipto"; // assign your name
  int age = 22; //assign your age
  String address = "Cantonment, Dhaka"; //assign any address
  Person person = Person(name, age, address);
  person.sayHello();
  int ageInMonths = person.getAgeInMonths();
  print("Age in months:$ageInMonths");
}