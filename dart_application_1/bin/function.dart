import 'dart:ffi';
import 'dart:io';
     int? id;
    String? name;
    String? sex;
    String? address;
void input(){
    stdout.write("Enter ID :"); id=int.parse(stdin.readLineSync()!);
    stdout.write("Enter Name :"); name=stdin.readLineSync();
    stdout.write("Enter Gender :"); sex=stdin.readLineSync();
    stdout.write("Enter Address :"); address=stdin.readLineSync();
}
void output(){
    print("output");
    print("Id :$id");
    print("Name : $name");
    print("Gender :$sex");
    print("Address :$address");
}
void calculate(int x,int y){
  print("Sum :${x+y}");

}

void main(List<String> args) {
  // input();
  // output();
  calculate(10, 15);
}