class HomeCategroyModel {
  final String categoryId;
  final String blobImageURL;
  final String categoryName;
  final String categoryWiseGst;
  

  HomeCategroyModel({
    required this.categoryId,
    required this.blobImageURL, 
    required this.categoryName,
    required this.categoryWiseGst,
    
    });

  factory HomeCategroyModel.fromJson(Map<String, dynamic> json) {
    return HomeCategroyModel(
        categoryId: json['categoryId'],
        blobImageURL: json['blobImageURL'], 
        categoryName: json['categoryName'],
        categoryWiseGst: json['categoryWiseGst'],
        );
  }

  Map<String, dynamic> toJson() {
    return {
      'categoryId':categoryId,
      'blobImageURL': blobImageURL, 
      'categoryName': categoryName,
      'categoryWiseGst': categoryWiseGst,
      };
  }
}


// class HomeCategroyModel {
//   String? message;
//   List<Result>? result;

//   HomeCategroyModel({this.message, this.result});

//   HomeCategroyModel.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     if (json['result'] != null) {
//       result = <Result>[];
//       json['result'].forEach((v) {
//         result!.add(new Result.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['message'] = this.message;
//     if (this.result != null) {
//       data['result'] = this.result!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Result {
//   int? categoryId;
//   String? categoryName;
//   String? blobImageURL;
//   String? categoryWiseGst;

//   Result(
//       {this.categoryId,
//       this.categoryName,
//       this.blobImageURL,
//       this.categoryWiseGst});

//   Result.fromJson(Map<String, dynamic> json) {
//     categoryId = json['categoryId'];
//     categoryName = json['categoryName'];
//     blobImageURL = json['blobImageURL'];
//     categoryWiseGst = json['categoryWiseGst'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['categoryId'] = this.categoryId;
//     data['categoryName'] = this.categoryName;
//     data['blobImageURL'] = this.blobImageURL;
//     data['categoryWiseGst'] = this.categoryWiseGst;
//     return data;
//   }
// }