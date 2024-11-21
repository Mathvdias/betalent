class Employer {
  final int id;
  final String name;
  final String job;
  final DateTime admissionDate;
  final String phone;
  final String image;

  Employer({
    required this.id,
    required this.name,
    required this.job,
    required this.admissionDate,
    required this.phone,
    required this.image,
  });

  String get phoneFormatted {
    final cleaned = phone.replaceAll(RegExp(r'\D'), '');
    return '+55 (${cleaned.substring(2, 4)}) ${cleaned.substring(4, 9)}-${cleaned.substring(9)}';
  }

  String get admissionDateFormatted {
    return '${admissionDate.day.toString().padLeft(2, '0')}/'
        '${admissionDate.month.toString().padLeft(2, '0')}/'
        '${admissionDate.year}';
  }
}

class EmployerAdapter {
  static Employer fromJson(Map<String, dynamic> json) {
    return Employer(
      id: json['id'] as int,
      name: json['name'] as String,
      job: json['job'] as String,
      admissionDate: DateTime.parse(json['admission_date'] as String),
      phone: json['phone'] as String,
      image: json['image'] as String,
    );
  }
}

// {
// "id": 1,
// "name": "João",
// "job": "Back-end",
// "admission_date": "2019-12-02T00:00:00.000Z",
// "phone": "5551234567890",
// "image": "https://img.favpng.com/25/7/23/computer-icons-user-profile-avatar-image-png-favpng-LFqDyLRhe3PBXM0sx2LufsGFU.jpg"
// },