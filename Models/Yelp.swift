//
//  Yelp.swift
//  Cafes
//
//  Created by Adam Winiecki Aug 25th, 2021
//

import Foundation

struct YelpsContainer: Decodable {
    let yelps: [Yelp]
    
    enum CodingKeys: String, CodingKey {
        case yelps = "statuses"
    }
}
struct Yelp:Codable {
  var businesses:[Business]?
}

struct GeoCoordinate: Codable {
  var latitude: Double
  var longitude: Double
}

struct Category: Codable {
  var alias: String
  var title: String
}

struct Location: Codable {
  var address1: String
  var address2: String
  var address3: String
  var city: String
  var zip_code: String
  var country: String
  var state: String
  var display_address: [String]
}

struct Business: Codable {
  var id: String
  var alias: String
  var name: String //d
  var image_url: String? //d
  var is_closed: Bool //d
  var url: String
  var review_count: Int
  var categories: [Category]
  var rating: Int //d       <-- toggle between distance and rating
  var coordinates: [GeoCoordinate]
  var transactions: [String]
  var price: String
  var location: Location
  var phone: String
  var display_phone: String
  var distance: Double //d    <-- sorted by this
}
