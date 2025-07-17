import 'dart:convert';

import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/core/utils/constants.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';

UserEntity getUser() {
  var userData = SharedPreferencesSingleton.getString(kUserDataKey);
  var userEntity = UserModel.fromSnapshot(jsonDecode(userData));
  return userEntity;
}
