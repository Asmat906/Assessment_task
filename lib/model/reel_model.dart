class reelsModel {
  int? statusCode;
  String? message;
  Data? data;

  reelsModel({this.statusCode, this.message, this.data});

  reelsModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<ReelData>? data;
  MetaData? metaData;

  Data({this.data, this.metaData});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ReelData>[];
      json['data'].forEach((v) {
        data!.add(new ReelData.fromJson(v));
      });
    }
    metaData = json['meta_data'] != null
        ? new MetaData.fromJson(json['meta_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.metaData != null) {
      data['meta_data'] = this.metaData!.toJson();
    }
    return data;
  }
}

class ReelData {
  int? id;
  String? title;
  String? url;
  String? cdnUrl;
  String? thumbCdnUrl;
  int? userId;
  String? status;
  String? slug;
  String? encodeStatus;
  int? priority;
  int? categoryId;
  int? totalViews;
  int? totalLikes;
  int? totalComments;
  int? totalShare;
  int? totalWishlist;
  int? duration;
  String? byteAddedOn;
  String? byteUpdatedOn;
  String? bunnyStreamVideoId;
  String? language;
  int? bunnyEncodingStatus;
  Null deletedAt;
  User? user;
  bool? isLiked;
  bool? isWished;
  bool? isFollow;

  ReelData(
      {this.id,
      this.title,
      this.url,
      this.cdnUrl,
      this.thumbCdnUrl,
      this.userId,
      this.status,
      this.slug,
      this.encodeStatus,
      this.priority,
      this.categoryId,
      this.totalViews,
      this.totalLikes,
      this.totalComments,
      this.totalShare,
      this.totalWishlist,
      this.duration,
      this.byteAddedOn,
      this.byteUpdatedOn,
      this.bunnyStreamVideoId,
      this.language,
      this.bunnyEncodingStatus,
      this.deletedAt,
      this.user,
      this.isLiked,
      this.isWished,
      this.isFollow});

  ReelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    url = json['url'];
    cdnUrl = json['cdn_url'];
    thumbCdnUrl = json['thumb_cdn_url'];
    userId = json['user_id'];
    status = json['status'];
    slug = json['slug'];
    encodeStatus = json['encode_status'];
    priority = json['priority'];
    categoryId = json['category_id'];
    totalViews = json['total_views'];
    totalLikes = json['total_likes'];
    totalComments = json['total_comments'];
    totalShare = json['total_share'];
    totalWishlist = json['total_wishlist'];
    duration = json['duration'];
    byteAddedOn = json['byte_added_on'];
    byteUpdatedOn = json['byte_updated_on'];
    bunnyStreamVideoId = json['bunny_stream_video_id'];
    language = json['language'];
    bunnyEncodingStatus = json['bunny_encoding_status'];
    deletedAt = json['deleted_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    isLiked = json['is_liked'];
    isWished = json['is_wished'];
    isFollow = json['is_follow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['cdn_url'] = this.cdnUrl;
    data['thumb_cdn_url'] = this.thumbCdnUrl;
    data['user_id'] = this.userId;
    data['status'] = this.status;
    data['slug'] = this.slug;
    data['encode_status'] = this.encodeStatus;
    data['priority'] = this.priority;
    data['category_id'] = this.categoryId;
    data['total_views'] = this.totalViews;
    data['total_likes'] = this.totalLikes;
    data['total_comments'] = this.totalComments;
    data['total_share'] = this.totalShare;
    data['total_wishlist'] = this.totalWishlist;
    data['duration'] = this.duration;
    data['byte_added_on'] = this.byteAddedOn;
    data['byte_updated_on'] = this.byteUpdatedOn;
    data['bunny_stream_video_id'] = this.bunnyStreamVideoId;
    data['language'] = this.language;
    data['bunny_encoding_status'] = this.bunnyEncodingStatus;
    data['deleted_at'] = this.deletedAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['is_liked'] = this.isLiked;
    data['is_wished'] = this.isWished;
    data['is_follow'] = this.isFollow;
    return data;
  }
}

class User {
  int? userId;
  String? fullname;
  String? username;
  String? profilePicture;
  String? profilePictureCdn;
  String? designation;

  User(
      {this.userId,
      this.fullname,
      this.username,
      this.profilePicture,
      this.profilePictureCdn,
      this.designation});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    fullname = json['fullname'];
    username = json['username'];
    profilePicture = json['profile_picture'];
    profilePictureCdn = json['profile_picture_cdn'];
    designation = json['designation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['fullname'] = this.fullname;
    data['username'] = this.username;
    data['profile_picture'] = this.profilePicture;
    data['profile_picture_cdn'] = this.profilePictureCdn;
    data['designation'] = this.designation;
    return data;
  }
}

class MetaData {
  int? total;
  int? page;
  int? limit;

  MetaData({this.total, this.page, this.limit});

  MetaData.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    page = json['page'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['page'] = this.page;
    data['limit'] = this.limit;
    return data;
  }
}
