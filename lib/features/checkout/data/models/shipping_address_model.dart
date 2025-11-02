import 'package:fruits_hub/features/checkout/domain/entites/shipping_address_entity.dart';

class ShippingAddressModel {
  String? name;
  String? phoneNumber;
  String? address;
  String? email;
  String? city;
  String? floorNumber;

  ShippingAddressModel({
    this.name,
    this.phoneNumber,
    this.address,
    this.email,
    this.city,
    this.floorNumber,
  });

  factory ShippingAddressModel.fromEntity(ShippingAddressEntity entity) {
    return ShippingAddressModel(
      name: entity.name,
      phoneNumber: entity.phoneNumber,
      address: entity.address,
      email: entity.email,
      city: entity.city,
      floorNumber: entity.floorNumber,
    );
  }

  String get fullAddress {
    return '$address, $city, مبنى رقم: $floorNumber';
  }

  toJson() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'address': address,
      'email': email,
      'city': city,
      'floorNumber': floorNumber,
    };
  }
}
