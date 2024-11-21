import 'package:app/entities/employer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Employer', () {
    final employerJson = {
      "id": 1,
      "name": "João",
      "job": "Back-end",
      "admission_date": "2019-12-02T00:00:00.000Z",
      "phone": "5551234567890",
      "image":
          "https://img.favpng.com/25/7/23/computer-icons-user-profile-avatar-image-png-favpng-LFqDyLRhe3PBXM0sx2LufsGFU.jpg"
    };
    test('should correctly format phone number', () {
      final employer = EmployerAdapter.fromJson(employerJson);

      expect(employer.phoneFormatted, '+55 (51) 23456-7890');
    });

    test('should correctly format admission date', () {
      final employer = EmployerAdapter.fromJson(employerJson);

      expect(employer.admissionDateFormatted, '02/12/2019');
    });

    test('should create Employer from JSON correctly', () {
      final employer = EmployerAdapter.fromJson(employerJson);

      expect(employer.id, 1);
      expect(employer.name, 'João');
      expect(employer.job, 'Back-end');
      expect(employer.phone, '5551234567890');
      expect(employer.image,
          'https://img.favpng.com/25/7/23/computer-icons-user-profile-avatar-image-png-favpng-LFqDyLRhe3PBXM0sx2LufsGFU.jpg');
    });
  });
}
