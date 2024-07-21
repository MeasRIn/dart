import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  int? id;
  String? name;
  String? sex;
  String? address;
  stdout.write("Enter ID :"); id=int.parse(stdin.readLineSync()!);
  stdout.write("Enter Name :"); name=stdin.readLineSync();
  stdout.write("Enter Gender :"); sex=stdin.readLineSync();
  stdout.write("Enter Address :"); address=stdin.readLineSync();
  print("Id :$id");
  print("Name : $name");
  print("Gender :$sex");
  print("Address :$address");

  if(name =="MeasRin"){
    print("$name is boos");
  }

}