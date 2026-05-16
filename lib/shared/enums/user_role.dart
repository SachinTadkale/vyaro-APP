/**
 * Module: User Role
 * Purpose: Implements the User Role module for the FarmZy mobile app.
 * Note: Documentation-only change; behavior remains unchanged.
 */
import 'package:easy_localization/easy_localization.dart';

/**
 * User Role.
 */
enum UserRole {
  farmer,
  deliveryPartner;

  String get apiValue => switch (this) {
        UserRole.farmer => 'FARMER',
        UserRole.deliveryPartner => 'DELIVERY_PARTNER',
      };

  String get translationKey => switch (this) {
        UserRole.farmer => 'role.farmer',
        UserRole.deliveryPartner => 'role.delivery',
      };

  String get displayName => translationKey.tr();

  String get shortLabel => translationKey.tr();

  static UserRole fromApiValue(String? value) {
    final normalized = value?.trim().toUpperCase();
    return switch (normalized) {
      'DELIVERY_PARTNER' || 'DELIVERYPARTNER' || 'PARTNER' => UserRole.deliveryPartner,
      'FARMER' => UserRole.farmer,
      _ => UserRole.farmer,
    };
  }
}
