
class Car {
  String brand;
   String model;
   int year;
   double milesDriven;
  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven){
    numberOfCars++;
  }
  double getMilesDriven(){
    return milesDriven;
  }
  String getBrand(){
    return brand;
  }
  String getModel(){
    return model;
  }
  int getYear(){
    return year;
  }
  int getAge(){
    return DateTime.now().year-year;
  }
  void drivemiles(double m){
    m=milesDriven;
  }

}
void main(){
 Car car1 = Car("Toyota", "Canry", 2020 , 10000);
 Car car2 = Car("Honda", "Civic", 2018 , 8000);
 Car car3 = Car("Ford", "F-150", 2015 , 15000);
 
 print("Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} Miles :${car1.getMilesDriven()} Age :${car1.getAge()}");
 print("");
 print("Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} Miles :${car2.getMilesDriven()} Age :${car2.getAge()}");
 print("");
 print("Car 3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} Miles :${car3.getMilesDriven()} Age :${car3.getAge()}");
 print("");
 print("Total nuber of cars create: ${Car.numberOfCars}");

 
}
