/*
 * Copyright (c) 2024 Robert-Stackflow.
 *
 * This program is free software: you can redistribute it and/or modify it under the terms of the
 * GNU General Public License as published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
 * even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with this program.
 * If not, see <https://www.gnu.org/licenses/>.
 */

class SuggestionTopic {
  String topic;
  int roundedScore;
  List<dynamic> tokens;
  bool inline;
  ResultContext? resultContext;

  SuggestionTopic({
    required this.topic,
    required this.roundedScore,
    required this.tokens,
    required this.inline,
    required this.resultContext,
  });

  factory SuggestionTopic.fromJson(Map<String, dynamic> json) {
    return SuggestionTopic(
      topic: json['topic'],
      roundedScore: json['rounded_score'],
      tokens: List<dynamic>.from(json['tokens']),
      inline: json['inline'],
      resultContext: json['result_context'] != null ? ResultContext.fromJson(json['result_context']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'topic': topic,
      'rounded_score': roundedScore,
      'tokens': tokens,
      'inline': inline,
      'result_context': resultContext?.toJson(),
    };
  }

  @override
  String toString() {
    return 'SuggestionTopic(topic: $topic, roundedScore: $roundedScore, tokens: $tokens, inline: $inline, resultContext: $resultContext)';
  }
}

class ResultContext {
  String displayString;
  String redirectUrl;
  String redirectUrlTv;
  List<TypeData> types;

  ResultContext({
    required this.displayString,
    required this.redirectUrl,
    required this.redirectUrlTv,
    required this.types,
  });

  factory ResultContext.fromJson(Map<String, dynamic> json) {
    return ResultContext(
      displayString: json['display_string'],
      redirectUrl: json['redirect_url'],
      redirectUrlTv: json['redirect_url_tv'],
      types: List<TypeData>.from(json['types'].map((x) => TypeData.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'display_string': displayString,
      'redirect_url': redirectUrl,
      'redirect_url_tv': redirectUrlTv,
      'types': types.map((x) => x.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'ResultContext(displayString: $displayString, redirectUrl: $redirectUrl, redirectUrlTv: $redirectUrlTv, types: $types)';
  }
}

class TypeData {
  String type;

  TypeData({required this.type});

  factory TypeData.fromJson(Map<String, dynamic> json) {
    return TypeData(
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
    };
  }

  @override
  String toString() {
    return 'TypeData(type: $type)';
  }
}
class SuggestionUser {
  int id;
  String idStr;
  bool verified;
  bool extIsBlueVerified;
  List<dynamic> badges;
  bool isDmAble;
  bool isSecretDmAble;
  bool isBlocked;
  bool canMediaTag;
  String name;
  String screenName;
  String profileImageUrl;
  String profileImageUrlHttps;
  String location;
  bool isProtected;
  int roundedScore;
  int socialProof;
  int connectingUserCount;
  List<dynamic> connectingUserIds;
  List<dynamic> socialProofsOrdered;
  SocialContext socialContext;
  List<dynamic> tokens;
  bool inline;

  SuggestionUser({
    required this.id,
    required this.idStr,
    required this.verified,
    required this.extIsBlueVerified,
    required this.badges,
    required this.isDmAble,
    required this.isSecretDmAble,
    required this.isBlocked,
    required this.canMediaTag,
    required this.name,
    required this.screenName,
    required this.profileImageUrl,
    required this.profileImageUrlHttps,
    required this.location,
    required this.isProtected,
    required this.roundedScore,
    required this.socialProof,
    required this.connectingUserCount,
    required this.connectingUserIds,
    required this.socialProofsOrdered,
    required this.socialContext,
    required this.tokens,
    required this.inline,
  });

  factory SuggestionUser.fromJson(Map<String, dynamic> json) {
    return SuggestionUser(
      id: json['id'],
      idStr: json['id_str'],
      verified: json['verified'],
      extIsBlueVerified: json['ext_is_blue_verified'],
      badges: List<dynamic>.from(json['badges']),
      isDmAble: json['is_dm_able'],
      isSecretDmAble: json['is_secret_dm_able'],
      isBlocked: json['is_blocked'],
      canMediaTag: json['can_media_tag'],
      name: json['name'],
      screenName: json['screen_name'],
      profileImageUrl: json['profile_image_url'],
      profileImageUrlHttps: json['profile_image_url_https'],
      location: json['location'],
      isProtected: json['is_protected'],
      roundedScore: json['rounded_score'],
      socialProof: json['social_proof'],
      connectingUserCount: json['connecting_user_count'],
      connectingUserIds: List<dynamic>.from(json['connecting_user_ids']),
      socialProofsOrdered: List<dynamic>.from(json['social_proofs_ordered']),
      socialContext: SocialContext.fromJson(json['social_context']),
      tokens: List<dynamic>.from(json['tokens']),
      inline: json['inline'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_str': idStr,
      'verified': verified,
      'ext_is_blue_verified': extIsBlueVerified,
      'badges': badges,
      'is_dm_able': isDmAble,
      'is_secret_dm_able': isSecretDmAble,
      'is_blocked': isBlocked,
      'can_media_tag': canMediaTag,
      'name': name,
      'screen_name': screenName,
      'profile_image_url': profileImageUrl,
      'profile_image_url_https': profileImageUrlHttps,
      'location': location,
      'is_protected': isProtected,
      'rounded_score': roundedScore,
      'social_proof': socialProof,
      'connecting_user_count': connectingUserCount,
      'connecting_user_ids': connectingUserIds,
      'social_proofs_ordered': socialProofsOrdered,
      'social_context': socialContext.toJson(),
      'tokens': tokens,
      'inline': inline,
    };
  }

  @override
  String toString() {
    return 'UserProfile(id: $id, idStr: $idStr, verified: $verified, extIsBlueVerified: $extIsBlueVerified, badges: $badges, isDmAble: $isDmAble, isSecretDmAble: $isSecretDmAble, isBlocked: $isBlocked, canMediaTag: $canMediaTag, name: $name, screenName: $screenName, profileImageUrl: $profileImageUrl, profileImageUrlHttps: $profileImageUrlHttps, location: $location, isProtected: $isProtected, roundedScore: $roundedScore, socialProof: $socialProof, connectingUserCount: $connectingUserCount, connectingUserIds: $connectingUserIds, socialProofsOrdered: $socialProofsOrdered, socialContext: $socialContext, tokens: $tokens, inline: $inline)';
  }
}

class SocialContext {
  bool following;
  bool followedBy;

  SocialContext({
    required this.following,
    required this.followedBy,
  });

  factory SocialContext.fromJson(Map<String, dynamic> json) {
    return SocialContext(
      following: json['following'],
      followedBy: json['followed_by'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'following': following,
      'followed_by': followedBy,
    };
  }

  @override
  String toString() {
    return 'SocialContext(following: $following, followedBy: $followedBy)';
  }
}
class SearchSuggestionResponse {
  int numResults;
  List<SuggestionUser> users;
  List<SuggestionTopic> topics;
  List<dynamic> events;
  List<dynamic> lists;
  List<dynamic> orderedSections;
  List<dynamic> oneClick;
  List<dynamic> hashtags;
  double completedIn;
  String query;

  SearchSuggestionResponse({
    required this.numResults,
    required this.users,
    required this.topics,
    required this.events,
    required this.lists,
    required this.orderedSections,
    required this.oneClick,
    required this.hashtags,
    required this.completedIn,
    required this.query,
  });

  factory SearchSuggestionResponse.fromJson(Map<String, dynamic> json) {
    return SearchSuggestionResponse(
      numResults: json['num_results'],
      users: List<SuggestionUser>.from(json['users'].map((x) => SuggestionUser.fromJson(x))),
      topics: List<SuggestionTopic>.from(json['topics'].map((x) => SuggestionTopic.fromJson(x))),
      events: List<dynamic>.from(json['events']),
      lists: List<dynamic>.from(json['lists']),
      orderedSections: List<dynamic>.from(json['ordered_sections']),
      oneClick: List<dynamic>.from(json['oneclick']),
      hashtags: List<dynamic>.from(json['hashtags']),
      completedIn: json['completed_in'],
      query: json['query'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'num_results': numResults,
      'users': users.map((x) => x.toJson()).toList(),
      'topics': topics.map((x) => x.toJson()).toList(),
      'events': events,
      'lists': lists,
      'ordered_sections': orderedSections,
      'oneclick': oneClick,
      'hashtags': hashtags,
      'completed_in': completedIn,
      'query': query,
    };
  }

  @override
  String toString() {
    return 'SearchResponse(numResults: $numResults, users: $users, topics: $topics, events: $events, lists: $lists, orderedSections: $orderedSections, oneClick: $oneClick, hashtags: $hashtags, completedIn: $completedIn, query: $query)';
  }
}
