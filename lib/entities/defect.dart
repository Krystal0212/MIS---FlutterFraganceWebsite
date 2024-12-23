import 'dart:core';

class Defect {
  int defectiveUnits; // Number of defective units
  String defectReason; // Reason for the defect
  String defectDate;
  String defectCase;
  String? fromBranch;
  String? solution;
  bool defectResolved; // Whether defect has been resolved

  Defect({
    required this.defectiveUnits,
    required this.defectReason,
    required this.defectResolved,
    required this.defectCase,
    required this.defectDate,
    this.solution,
    this.fromBranch,
  });

  Map<String, dynamic> toMap() {
    return {
      'defectiveUnits': defectiveUnits,
      'defectReason': defectReason,
      'defectResolved': defectResolved,
      'defectCase': defectCase,
      'defectDate': defectDate,
      'solution': solution,
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
      solution: map['solution'],
      fromBranch: map['fromBranch'],
    );
  }

  void resolveDefect(String solution) {
    defectResolved = true;
    this.solution = solution;
  }
}