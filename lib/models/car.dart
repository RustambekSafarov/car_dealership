class Car {
  String id;
  String name;
  String typename;
  String image;
  String model;
  String price;
  String description;
  Car({
    required this.id,
    required this.name,
    required this.typename,
    required this.image,
    required this.model,
    required this.price,
    required this.description,
  });

  factory Car.getCar(Map data) {
    return Car(
      id: data['id'].toString(),
      name: data['name'],
      typename: data['typename'],
      image: data['image'],
      model: data['model'],
      price: data['price'].toString(),
      description: data['description'],
    );
  }
}
