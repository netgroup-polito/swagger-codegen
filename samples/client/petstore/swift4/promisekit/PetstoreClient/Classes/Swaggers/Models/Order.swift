//
// Order.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class Order: Codable {

    public enum Status: String, Codable { 
        case placed = "placed"
        case approved = "approved"
        case delivered = "delivered"
    }
    public var id: Int64?
    public var petId: Int64?
    public var quantity: Int?
    public var shipDate: Date?
    /** Order Status */
    public var status: Status?
    public var complete: Bool?


    
    public init(id: Int64?, petId: Int64?, quantity: Int?, shipDate: Date?, status: Status?, complete: Bool?) {
        self.id = id
        self.petId = petId
        self.quantity = quantity
        self.shipDate = shipDate
        self.status = status
        self.complete = complete
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(petId, forKey: "petId")
        try container.encodeIfPresent(quantity, forKey: "quantity")
        try container.encodeIfPresent(shipDate, forKey: "shipDate")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(complete, forKey: "complete")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(Int64.self, forKey: "id")
        petId = try container.decodeIfPresent(Int64.self, forKey: "petId")
        quantity = try container.decodeIfPresent(Int.self, forKey: "quantity")
        shipDate = try container.decodeIfPresent(Date.self, forKey: "shipDate")
        status = try container.decodeIfPresent(Status.self, forKey: "status")
        complete = try container.decodeIfPresent(Bool.self, forKey: "complete")
    }
}
