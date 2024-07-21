import 'dart:io';

class Employee {
  int? id;
  String? name, sex, age, position;

  Employee(this.id, this.name, this.sex, this.age, this.position);
  List data=[];
  void input() {
    int? n;
    stdout.write("Enter Number of Employees: ");
    n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      stdout.write("Enter ID: ");
      id = int.parse(stdin.readLineSync()!);
      
      stdout.write("Enter Name: ");
      name = stdin.readLineSync();
      
      stdout.write("Enter Gender: ");
      sex = stdin.readLineSync();
      
      stdout.write("Enter Age: ");
      age = stdin.readLineSync();
      
      stdout.write("Enter Position: ");
      position = stdin.readLineSync();

      Employee emp = Employee(id, name, sex, age, position);
      data.add(emp);
    }
  }

  void output() {
    for (var emp in data) {
      print("ID: ${emp.id}");
      print("Name: ${emp.name}");
      print("Gender: ${emp.sex}");
      print("Age: ${emp.age}");
      print("Position: ${emp.position}");
      print("-------------------"); 
    }
  }
  void search(){
    String? searchName;
    stdout.write("Enter Name for Search :"); searchName=stdin.readLineSync();
     for (var emp in data) {
      if(searchName == emp.name){
      print("ID: ${emp.id}");
      print("Name: ${emp.name}");
      print("Gender: ${emp.sex}");
      print("Age: ${emp.age}");
      print("Position: ${emp.position}");
      print("-------------------"); 
      }
    }
  }
  void update(){
    int? update;
    stdout.write("Enter Id for Update :"); update=int.parse(stdin.readLineSync()!);
     bool found = false;
    for (var emp in data) {
      if (update == emp.id) {
        stdout.write("Enter Name: ");
        emp.name = stdin.readLineSync();
        
        stdout.write("Enter Gender: ");
        emp.sex = stdin.readLineSync();
        
        stdout.write("Enter Age: ");
        emp.age = stdin.readLineSync();
        
        stdout.write("Enter Position: ");
        emp.position = stdin.readLineSync();
        found=true;
      }
      if(found == true){
        print("Update Success");
      }else{
        print("Update Fail");
      }
   }
  }
  void delete(){
    int? delete;
    stdout.write("Enter Id for Remove :"); delete=int.parse(stdin.readLineSync()!);
    for(var emp in data){
      if(delete == emp.id){
        data.removeAt(emp.id);
      }
    }
  }
}

void main(List<String> args) {
  String? choice;
  Employee emp = Employee(0, "", "", "", "");
  

    while(choice !="exit"){
    stdout.write("Enter Choice :"); choice=stdin.readLineSync();
    choice.toString().toLowerCase(); 

      switch(choice){
        case "input":
            emp.input();
            break;
        case "output":
            emp.output();
            break;
        case "search":
            emp.search(); 
            break;
        case "update":
            emp.update();
            break;
        case "delete":
            emp.delete();
      }
    }

  
    
 

}
