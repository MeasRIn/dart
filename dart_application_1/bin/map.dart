void main(List<String> args) {
  Map map={"id":12,"Name":"MeasRin","Gender":"Male"};
  print(map);

  Map <String, dynamic> map1={"id":22,"Name":"MeasRin168","Gender":"Male"};
  // print(map1);

  List<Map<String, dynamic>> list=[{"id":22,"Name":"MeasRin168","Gender":"Male"},{"id":12,"Name":"MeasRin","Gender":"Male"}];
  list.sort((a, b) => a["id"].compareTo(b["id"]));
  for(var lists in list){
    lists.forEach((key, value){
        print("$key: $value");

    });
  }

}