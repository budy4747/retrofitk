// // To parse this JSON data, do
// //
// //     final user = userFromJson(jsonString);
//
// import 'dart:convert';
//
// User userFromJson(String str) => User.fromJson(json.decode(str));
//
// String userToJson(User data) => json.encode(data.toJson());
//
// class User {
//   User({
//     required this.meta,
//     required this.data,
//   });
//
//   Meta meta;
//   List<Datum> data;
//
//   factory User.fromJson(Map<String, dynamic> json) => User(
//     meta: Meta.fromJson(json["meta"]),
//     data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "meta": meta.toJson(),
//     "data": List<dynamic>.from(data.map((x) => x.toJson())),
//   };
// }
//
// class Datum {
//   Datum({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.gender,
//     required this.status,
//   });
//
//   int id;
//   String name;
//   String email;
//   Gender gender;
//   Status status;
//
//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//     id: json["id"],
//     name: json["name"],
//     email: json["email"],
//     gender: genderValues.map[json["gender"]]!,
//     status: statusValues.map[json["status"]]!,
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "email": email,
//     "gender": genderValues.reverse[gender],
//     "status": statusValues.reverse[status],
//   };
// }
//
// enum Gender { FEMALE, MALE }
//
// final genderValues = EnumValues({
//   "female": Gender.FEMALE,
//   "male": Gender.MALE
// });
//
// enum Status { INACTIVE, ACTIVE }
//
// final statusValues = EnumValues({
//   "active": Status.ACTIVE,
//   "inactive": Status.INACTIVE
// });
//
// class Meta {
//   Meta({
//     required this.pagination,
//   });
//
//   Pagination pagination;
//
//   factory Meta.fromJson(Map<String, dynamic> json) => Meta(
//     pagination: Pagination.fromJson(json["pagination"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "pagination": pagination.toJson(),
//   };
// }
//
// class Pagination {
//   Pagination({
//     required this.total,
//     required this.pages,
//     required this.page,
//     required this.limit,
//     required this.links,
//   });
//
//   int total;
//   int pages;
//   int page;
//   int limit;
//   Links links;
//
//   factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
//     total: json["total"],
//     pages: json["pages"],
//     page: json["page"],
//     limit: json["limit"],
//     links: Links.fromJson(json["links"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "total": total,
//     "pages": pages,
//     "page": page,
//     "limit": limit,
//     "links": links.toJson(),
//   };
// }
//
// class Links {
//   Links({
//     this.previous,
//     required this.current,
//     required this.next,
//   });
//
//   dynamic previous;
//   String current;
//   String next;
//
//   factory Links.fromJson(Map<String, dynamic> json) => Links(
//     previous: json["previous"],
//     current: json["current"],
//     next: json["next"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "previous": previous,
//     "current": current,
//     "next": next,
//   };
// }
//
// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());
@JsonSerializable()
class Post {
  Post({
    required this.error,
    required this.msg,
    required this.userId,
    required this.role,
    required this.section,
    required this.schoolId,
    required this.schoolname,
    required this.name,
    required this.photo,
    required this.email,
    required this.yearId,
    required this.classId,
    required this.className,
    required this.divId,
    required this.divName,
    required this.divArray,
    required this.classArray,
    required this.classStatus,
    required this.principalArray,
    required this.educationArray,
    required this.categoryArray,
    required this.religionArray,
    required this.contactNumber1,
  });

  bool error;
  String msg;
  String userId;
  String role;
  String section;
  String schoolId;
  String schoolname;
  String name;
  String photo;
  String email;
  String yearId;
  String classId;
  String className;
  String divId;
  String divName;
  List<DivArray> divArray;
  List<ClassArray> classArray;
  String classStatus;
  PrincipalArray principalArray;
  List<EducationArray> educationArray;
  List<CategoryArray> categoryArray;
  List<ReligionArray> religionArray;
  String contactNumber1;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    error: json["error"],
    msg: json["msg"],
    userId: json["user_id"],
    role: json["role"],
    section: json["section"],
    schoolId: json["school_id"],
    schoolname: json["schoolname"],
    name: json["name"],
    photo: json["photo"],
    email: json["email"],
    yearId: json["year_id"],
    classId: json["class_id"],
    className: json["class_name"],
    divId: json["div_id"],
    divName: json["div_name"],
    divArray: List<DivArray>.from(json["div_array"].map((x) => DivArray.fromJson(x))),
    classArray: List<ClassArray>.from(json["class_array"].map((x) => ClassArray.fromJson(x))),
    classStatus: json["class_status"],
    principalArray: PrincipalArray.fromJson(json["principal_array"]),
    educationArray: List<EducationArray>.from(json["education_array"].map((x) => EducationArray.fromJson(x))),
    categoryArray: List<CategoryArray>.from(json["category_array"].map((x) => CategoryArray.fromJson(x))),
    religionArray: List<ReligionArray>.from(json["religion_array"].map((x) => ReligionArray.fromJson(x))),
    contactNumber1: json["ContactNumber1"],
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "msg": msg,
    "user_id": userId,
    "role": role,
    "section": section,
    "school_id": schoolId,
    "schoolname": schoolname,
    "name": name,
    "photo": photo,
    "email": email,
    "year_id": yearId,
    "class_id": classId,
    "class_name": className,
    "div_id": divId,
    "div_name": divName,
    "div_array": List<dynamic>.from(divArray.map((x) => x.toJson())),
    "class_array": List<dynamic>.from(classArray.map((x) => x.toJson())),
    "class_status": classStatus,
    "principal_array": principalArray.toJson(),
    "education_array": List<dynamic>.from(educationArray.map((x) => x.toJson())),
    "category_array": List<dynamic>.from(categoryArray.map((x) => x.toJson())),
    "religion_array": List<dynamic>.from(religionArray.map((x) => x.toJson())),
    "ContactNumber1": contactNumber1,
  };
}

class CategoryArray {
  CategoryArray({
    required this.categoryId,
    required this.categoryName,
  });

  String categoryId;
  String categoryName;

  factory CategoryArray.fromJson(Map<String, dynamic> json) => CategoryArray(
    categoryId: json["CategoryId"],
    categoryName: json["CategoryName"],
  );

  Map<String, dynamic> toJson() => {
    "CategoryId": categoryId,
    "CategoryName": categoryName,
  };
}

class ClassArray {
  ClassArray({
    required this.classId,
    required this.className,
    required this.divArray,
  });

  String classId;
  String className;
  List<DivArray> divArray;

  factory ClassArray.fromJson(Map<String, dynamic> json) => ClassArray(
    classId: json["class_id"],
    className: json["ClassName"],
    divArray: List<DivArray>.from(json["div_array"].map((x) => DivArray.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "class_id": classId,
    "ClassName": className,
    "div_array": List<dynamic>.from(divArray.map((x) => x.toJson())),
  };
}

class DivArray {
  DivArray({
    required this.divId,
    required this.divisionName,
  });

  String divId;
  String divisionName;

  factory DivArray.fromJson(Map<String, dynamic> json) => DivArray(
    divId: json["div_id"],
    divisionName: json["DivisionName"],
  );

  Map<String, dynamic> toJson() => {
    "div_id": divId,
    "DivisionName": divisionName,
  };
}

class EducationArray {
  EducationArray({
    required this.educationId,
    required this.educationName,
  });

  String educationId;
  String educationName;

  factory EducationArray.fromJson(Map<String, dynamic> json) => EducationArray(
    educationId: json["EducationId"],
    educationName: json["EducationName"],
  );

  Map<String, dynamic> toJson() => {
    "EducationId": educationId,
    "EducationName": educationName,
  };
}

class PrincipalArray {
  PrincipalArray({
    required this.userId,
    required this.name,
    required this.photo,
  });

  String userId;
  String name;
  String photo;

  factory PrincipalArray.fromJson(Map<String, dynamic> json) => PrincipalArray(
    userId: json["user_id"],
    name: json["name"],
    photo: json["photo"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId,
    "name": name,
    "photo": photo,
  };
}

class ReligionArray {
  ReligionArray({
    required this.religionId,
    required this.religionName,
  });

  String religionId;
  String religionName;

  factory ReligionArray.fromJson(Map<String, dynamic> json) => ReligionArray(
    religionId: json["ReligionId"],
    religionName: json["ReligionName"],
  );

  Map<String, dynamic> toJson() => {
    "ReligionId": religionId,
    "ReligionName": religionName,
  };
}
