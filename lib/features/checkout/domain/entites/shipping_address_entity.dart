class ShippingAddressEntity {
  String? name;
  String? phoneNumber;
  String? address;
  String? email;
  String? city;
  String? floorNumber;

  ShippingAddressEntity({
    this.name,
    this.phoneNumber,
    this.address,
    this.email,
    this.city,
    this.floorNumber,
  });

  String get fullAddress {
    return '$address, $city, مبنى رقم: $floorNumber';
  }
}
