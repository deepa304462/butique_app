class AddCustomerModel {
  final String id;
  final String name;
  final String phone;
  final String address;
  final String oldMeasurement; // New old measurement parameter

  AddCustomerModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
    required this.oldMeasurement, // Add old measurement parameter to the constructor
  });

  // Method to convert object to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'address': address,
      'old_measurement': oldMeasurement, // Include old measurement in the map
    };
  }

  // Factory method to create a Customer object from a Map
  factory AddCustomerModel.fromMap(Map<String, dynamic> map) {
    return AddCustomerModel(
      id: map['id'],
      name: map['name'],
      phone: map['phone'],
      address: map['address'],
      oldMeasurement: map['old_measurement'], // Retrieve old measurement from the map
    );
  }
}
