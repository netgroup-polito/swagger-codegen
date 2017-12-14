//
// Tag.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class Tag: Codable {

    public var id: Int64?
    public var name: String?


    
    public init(id: Int64?, name: String?) {
        self.id = id
        self.name = name
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(name, forKey: "name")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(Int64.self, forKey: "id")
        name = try container.decodeIfPresent(String.self, forKey: "name")
    }
}
