import 'dart:core';

class Defect {
  int defectiveUnits; // Number of defective units
  String defectReason; // Reason for the defect
  String defectDate;
  String defectCase;
  String? fromBranch;
  bool defectResolved; // Whether defect has been resolved

  Defect({
    required this.defectiveUnits,
    required this.defectReason,
    required this.defectResolved,
    required this.defectCase,
    required this.defectDate,
    this.fromBranch,
  });

  Map<String, dynamic> toMap() {
    return {
      'defectiveUnits': defectiveUnits,
      'defectReason': defectReason,
      'defectResolved': defectResolved,
      'defectCase': defectCase,
      'defectDate': defectDate,
      'fromBranch': fromBranch,
    };
  }

  factory Defect.fromMap(Map<String, dynamic> map) {
    return Defect(
      defectiveUnits: map['defectiveUnits'],
      defectReason: map['defectReason'],
      defectResolved: map['defectResolved'],
      defectCase: map['defectCase'],
      defectDate: map['defectDate'],
      fromBranch: map['fromBranch'],
    );
  }
}