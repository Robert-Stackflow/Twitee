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

import 'package:twitee/Openapi/models/item_content_union.dart';

class TimelineTrend extends ItemContentUnion{
  String? itemType;
  String? sTypename;
  List<dynamic>? associatedCards;
  String? name;
  String? rank;
  TrendUrl? trendUrl;
  TrendMetadata? trendMetadata;

  TimelineTrend(
      {this.itemType,
        this.sTypename,
        this.associatedCards,
        this.name,
        this.rank,
        this.trendUrl,
        this.trendMetadata});

  TimelineTrend.fromJson(Map<String, dynamic> json) {
    itemType = json['itemType'];
    sTypename = json['__typename'];
    if (json['associated_cards'] != null) {
      associatedCards = <Null>[];
      json['associated_cards'].forEach((v) {
        associatedCards!.add(v);
      });
    }
    name = json['name'];
    rank = json['rank'];
    trendUrl = json['trend_url'] != null
        ? TrendUrl.fromJson(json['trend_url'])
        : null;
    trendMetadata = json['trend_metadata'] != null
        ? TrendMetadata.fromJson(json['trend_metadata'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['itemType'] = this.itemType;
    data['__typename'] = this.sTypename;
    if (this.associatedCards != null) {
      data['associated_cards'] =
          this.associatedCards!.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['rank'] = this.rank;
    if (this.trendUrl != null) {
      data['trend_url'] = this.trendUrl!.toJson();
    }
    if (this.trendMetadata != null) {
      data['trend_metadata'] = this.trendMetadata!.toJson();
    }
    return data;
  }
}

class TrendUrl {
  String? url;
  String? urlType;
  UrtEndpointOptions? urtEndpointOptions;

  TrendUrl({this.url, this.urlType, this.urtEndpointOptions});

  TrendUrl.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    urlType = json['urlType'];
    urtEndpointOptions = json['urtEndpointOptions'] != null
        ? UrtEndpointOptions.fromJson(json['urtEndpointOptions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = this.url;
    data['urlType'] = this.urlType;
    if (this.urtEndpointOptions != null) {
      data['urtEndpointOptions'] = this.urtEndpointOptions!.toJson();
    }
    return data;
  }
}

class UrtEndpointOptions {
  List<RequestParams>? requestParams;

  UrtEndpointOptions({this.requestParams});

  UrtEndpointOptions.fromJson(Map<String, dynamic> json) {
    if (json['requestParams'] != null) {
      requestParams = <RequestParams>[];
      json['requestParams'].forEach((v) {
        requestParams!.add(RequestParams.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.requestParams != null) {
      data['requestParams'] =
          this.requestParams!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RequestParams {
  String? key;
  String? value;

  RequestParams({this.key, this.value});

  RequestParams.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['key'] = this.key;
    data['value'] = this.value;
    return data;
  }
}

class TrendMetadata {
  String? domainContext;
  String? metaDescription;
  TrendUrl? url;

  TrendMetadata({this.domainContext, this.metaDescription, this.url});

  TrendMetadata.fromJson(Map<String, dynamic> json) {
    domainContext = json['domain_context'];
    metaDescription = json['meta_description'];
    url = json['url'] != null ? TrendUrl.fromJson(json['url']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['domain_context'] = this.domainContext;
    data['meta_description'] = this.metaDescription;
    if (this.url != null) {
      data['url'] = this.url!.toJson();
    }
    return data;
  }
}
