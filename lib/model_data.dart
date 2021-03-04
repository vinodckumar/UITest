class Data {
  final String name;
  final String specialization;
  final String reg;

  Data(this.name,  this.specialization,this.reg,);
}

List<Data> categories = categoriesData
    .map((item) => Data(item['name'], item['specialization'], item['reg']))
    .toList();

var categoriesData = [
  {"name": "Robert", 'specialization': "Cycling", 'reg': "12345"},
];
