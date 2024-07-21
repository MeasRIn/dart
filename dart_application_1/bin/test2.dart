import 'dart:io';

class Staff {
  int? id;
  String? name, sex, age, position;

  Staff(this.id, this.name, this.sex, this.age, this.position);

  @override
  String toString() {
    return "ID: $id\nName: $name\nGender: $sex\nAge: $age\nPosition: $position";
  }
}

void main(List<String> args) {
  List<Staff> staffList = [];

  // Function to input staff details
  void input() {
    stdout.write("Enter Number of Staff: ");
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      stdout.write("\nEnter Name: ");
      String? name = stdin.readLineSync();

      stdout.write("Enter Gender: ");
      String? sex = stdin.readLineSync();

      stdout.write("Enter Age: ");
      String? age = stdin.readLineSync();

      stdout.write("Enter Position: ");
      String? position = stdin.readLineSync();

      staffList.add(Staff(i + 1, name, sex, age, position));
    }
  }

  // Function to output staff details
  void output() {
    for (var staff in staffList) {
      print("\nStaff Details:");
      print(staff);
    }
  }

  // Calling the input function to populate staffList
  input();

  // Calling the output function to display staff details
  output();
}
