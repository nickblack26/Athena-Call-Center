import Foundation

struct Reference: Decodable {
    var id: Int
    var name: String
    var sort: Int?
    var identifier: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case sort = "sort"
        case identifier = "identifier"
    }
}

struct CustomField: Decodable {
    var id: Int
    var caption: String?
    var type: FieldType
    var entryMethod: EntryMethod
    var numberOfDecimals: Int?
    var value: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case caption
        case type
        case entryMethod
        case numberOfDecimals
        case value
    }
}

extension CustomField {
    enum FieldType: Codable {
        case TextArea, Button, Currency, Date, Hyperlink, IPAddress, Checkbox, Number, Percent, Text, Password
    } 
    
    enum EntryMethod: Codable {
        case Date, EntryField, List, Option
    }
}
