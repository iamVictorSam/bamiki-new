class HomeResponse {
  final List influencers;

  HomeResponse(this.influencers);

  factory HomeResponse.fromJson(Map<String, dynamic> json) {
    final influencers = json['influencers'];

    return HomeResponse(influencers);
  }
}

class ModelResponse {
  final HomeResponse influencers;

  ModelResponse(this.influencers);

  factory ModelResponse.fromJson(Map<String, dynamic> json) {
    final dataJson = json['data'];
    final data = HomeResponse.fromJson(dataJson);

    return ModelResponse(data);
  }
}


// To parse this JSON data, do
//
//     final influencers = influencersFromJson(jsonString);

// import 'dart:convert';

// Influencers influencersFromJson(String str) => Influencers.fromJson(json.decode(str));

// String influencersToJson(Influencers data) => json.encode(data.toJson());

// class Influencers {
//     Influencers({
//        required this.status,
//        required this.data,
//        required this.message,
//        required this.error,
//     });

//     bool status;
//     Data data;
//     String message;
//     bool error;

//     factory Influencers.fromJson(Map<String, dynamic> json) => Influencers(
//         status: json["status"],
//         data: Data.fromJson(json["data"]),
//         message: json["message"],
//         error: json["error"],
//     );

//     Map<String, dynamic> toJson() => {
//         "status": status,
//         "data": data.toJson(),
//         "message": message,
//         "error": error,
//     };
// }

// class Data {
//     Data({
// required        this.influencers,
// required        this.totalNumber,
// required        this.numberOfPages,
//     });

//     List<Influencer> influencers;
//     int totalNumber;
//     int numberOfPages;

//     factory Data.fromJson(Map<String, dynamic> json) => Data(
//         influencers: List<Influencer>.from(json["influencers"].map((x) => Influencer.fromJson(x))),
//         totalNumber: json["total_number"],
//         numberOfPages: json["number_of_pages"],
//     );

//     Map<String, dynamic> toJson() => {
//         "influencers": List<dynamic>.from(influencers.map((x) => x.toJson())),
//         "total_number": totalNumber,
//         "number_of_pages": numberOfPages,
//     };
// }

// class Influencer {
//     Influencer({
//        required this.id,
//        required this.createdAt,
//        required this.updatedAt,
//        required this.fullName,
//        required this.handle,
//        required this.email,
//        required this.phoneNumber,
//        required this.countryCode,
//        required this.isVerified,
//        required this.status,
//        required this.lastLogin,
//        required this.accountType,
//        required this.role,
//        required this.profileImage,
//        required this.bio,
//        required this.referredBy,
//        required this.socialMediaLink,
//        required this.liveVideo,
//        required this.isAdminVerified,
//        required this.referralCode,
//        required this.referralCount,
//        required this.averageShoutOutRating,
//        required this.averageDmRating,
//        required this.averageRating,
//        required this.rateDm,
//        required this.rateShoutOut,
//        required this.wallet,
//        required this.transactions,
//        required this.requests,
//        required this.followers,
//        required this.following,
//        required this.industry,
//        required this.influencerRequests,
//        required this.fanRequests,
//        required this.sent,
//        required this.received,
//        required this.fanRooms,
//        required this.banks,
//        required this.ratings,
//        required this.influencerRooms,
//     });

//     int id;
//     DateTime createdAt;
//     DateTime updatedAt;
//     String fullName;
//     String handle;
//     String email;
//     String phoneNumber;
//     int countryCode;
//     bool isVerified;
//     Status status;
//     DateTime lastLogin;
//     AccountType accountType;
//     Role role;
//     dynamic profileImage;
//     dynamic bio;
//     dynamic referredBy;
//     String socialMediaLink;
//     String liveVideo;
//     bool isAdminVerified;
//     String referralCode;
//     int referralCount;
//     dynamic averageShoutOutRating;
//     dynamic averageDmRating;
//     dynamic averageRating;
//     dynamic rateDm;
//     dynamic rateShoutOut;
//     Wallet wallet;
//     List<dynamic> transactions;
//     List<dynamic> requests;
//     List<dynamic> followers;
//     List<dynamic> following;
//     InfluencerIndustry industry;
//     List<dynamic> influencerRequests;
//     List<dynamic> fanRequests;
//     List<dynamic> sent;
//     List<dynamic> received;
//     List<dynamic> fanRooms;
//     List<dynamic> banks;
//     List<dynamic> ratings;
//     List<dynamic> influencerRooms;

//     factory Influencer.fromJson(Map<String, dynamic> json) => Influencer(
//         id: json["id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         fullName: json["full_name"],
//         handle: json["handle"],
//         email: json["email"],
//         phoneNumber: json["phone_number"],
//         countryCode: json["country_code"],
//         isVerified: json["is_verified"],
//         status: statusValues.map[json["status"]]!,
//         lastLogin: DateTime.parse(json["last_login"]),
//         accountType: accountTypeValues.map[json["account_type"]]!,
//         role: roleValues.map[json["role"]]!,
//         profileImage: json["profile_image"],
//         bio: json["bio"],
//         referredBy: json["referred_by"],
//         socialMediaLink: json["social_media_link"],
//         liveVideo: json["live_video"],
//         isAdminVerified: json["is_admin_verified"],
//         referralCode: json["referral_code"],
//         referralCount: json["referral_count"],
//         averageShoutOutRating: json["average_shout_out_rating"],
//         averageDmRating: json["average_dm_rating"],
//         averageRating: json["average_rating"],
//         rateDm: json["rate_dm"],
//         rateShoutOut: json["rate_shout_out"],
//         wallet: Wallet.fromJson(json["wallet"]),
//         transactions: List<dynamic>.from(json["transactions"].map((x) => x)),
//         requests: List<dynamic>.from(json["requests"].map((x) => x)),
//         followers: List<dynamic>.from(json["followers"].map((x) => x)),
//         following: List<dynamic>.from(json["following"].map((x) => x)),
//         industry: json["industry"] == null ? null : InfluencerIndustry.fromJson(json["industry"]),
//         influencerRequests: List<dynamic>.from(json["influencer_requests"].map((x) => x)),
//         fanRequests: List<dynamic>.from(json["fan_requests"].map((x) => x)),
//         sent: List<dynamic>.from(json["sent"].map((x) => x)),
//         received: List<dynamic>.from(json["received"].map((x) => x)),
//         fanRooms: List<dynamic>.from(json["fan_rooms"].map((x) => x)),
//         banks: List<dynamic>.from(json["banks"].map((x) => x)),
//         ratings: List<dynamic>.from(json["ratings"].map((x) => x)),
//         influencerRooms: List<dynamic>.from(json["influencer_rooms"].map((x) => x)),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "full_name": fullName,
//         "handle": handle,
//         "email": email,
//         "phone_number": phoneNumber,
//         "country_code": countryCode,
//         "is_verified": isVerified,
//         "status": statusValues.reverse[status],
//         "last_login": lastLogin.toIso8601String(),
//         "account_type": accountTypeValues.reverse[accountType],
//         "role": roleValues.reverse[role],
//         "profile_image": profileImage,
//         "bio": bio,
//         "referred_by": referredBy,
//         "social_media_link": socialMediaLink,
//         "live_video": liveVideo,
//         "is_admin_verified": isAdminVerified,
//         "referral_code": referralCode,
//         "referral_count": referralCount,
//         "average_shout_out_rating": averageShoutOutRating,
//         "average_dm_rating": averageDmRating,
//         "average_rating": averageRating,
//         "rate_dm": rateDm,
//         "rate_shout_out": rateShoutOut,
//         "wallet": wallet.toJson(),
//         "transactions": List<dynamic>.from(transactions.map((x) => x)),
//         "requests": List<dynamic>.from(requests.map((x) => x)),
//         "followers": List<dynamic>.from(followers.map((x) => x)),
//         "following": List<dynamic>.from(following.map((x) => x)),
//         "industry": industry == null ? null : industry.toJson(),
//         "influencer_requests": List<dynamic>.from(influencerRequests.map((x) => x)),
//         "fan_requests": List<dynamic>.from(fanRequests.map((x) => x)),
//         "sent": List<dynamic>.from(sent.map((x) => x)),
//         "received": List<dynamic>.from(received.map((x) => x)),
//         "fan_rooms": List<dynamic>.from(fanRooms.map((x) => x)),
//         "banks": List<dynamic>.from(banks.map((x) => x)),
//         "ratings": List<dynamic>.from(ratings.map((x) => x)),
//         "influencer_rooms": List<dynamic>.from(influencerRooms.map((x) => x)),
//     };
// }

// enum AccountType { CELEBRITY }

// final accountTypeValues = EnumValues({
//     "celebrity": AccountType.CELEBRITY
// });

// class InfluencerIndustry {
//     InfluencerIndustry({
//      required   this.id,
//        required this.createdAt,
//        required this.updatedAt,
// required        this.industries,
//     });

//     int id;
//     DateTime createdAt;
//     DateTime updatedAt;
//     List<IndustryElement> industries;

//     factory InfluencerIndustry.fromJson(Map<String, dynamic> json) => InfluencerIndustry(
//         id: json["id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         industries: List<IndustryElement>.from(json["industries"].map((x) => IndustryElement.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "industries": List<dynamic>.from(industries.map((x) => x.toJson())),
//     };
// }

// class IndustryElement {
//     IndustryElement({
// required        this.name,
// required        this.slug,
//     });

//     String name;
//     String slug;

//     factory IndustryElement.fromJson(Map<String, dynamic> json) => IndustryElement(
//         name: json["name"],
//         slug: json["slug"],
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name,
//         "slug": slug,
//     };
// }

// enum Role { BAMIKI_USER }

// final roleValues = EnumValues({
//     "BAMIKI_USER": Role.BAMIKI_USER
// });

// enum Status { ACTIVE }

// final statusValues = EnumValues({
//     "active": Status.ACTIVE
// });

// class Wallet {
//     Wallet({
//         required this.id,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.walletBalance,
//         required this.ledgerBalance,
//     });

//     int id;
//     DateTime createdAt;
//     DateTime updatedAt;
//     String walletBalance;
//     String ledgerBalance;

//     factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
//         id: json["id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         walletBalance: json["wallet_balance"],
//         ledgerBalance: json["ledger_balance"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "wallet_balance": walletBalance,
//         "ledger_balance": ledgerBalance,
//     };
// }

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//    late EnumValues(this?.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
