import Foundation

struct Currency: Decodable {
	let id : Int
	let symbol : String?
	let currencyCode : String?
	let decimalSeparator : String?
	let numberOfDecimals : Int?
	let thousandsSeparator : String?
	let negativeParenthesesFlag : Bool?
	let displaySymbolFlag : Bool?
	let currencyIdentifier : String?
	let displayIdFlag : Bool?
	let rightAlign : Bool?
	let name : String?

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case symbol = "symbol"
		case currencyCode = "currencyCode"
		case decimalSeparator = "decimalSeparator"
		case numberOfDecimals = "numberOfDecimals"
		case thousandsSeparator = "thousandsSeparator"
		case negativeParenthesesFlag = "negativeParenthesesFlag"
		case displaySymbolFlag = "displaySymbolFlag"
		case currencyIdentifier = "currencyIdentifier"
		case displayIdFlag = "displayIdFlag"
		case rightAlign = "rightAlign"
		case name = "name"
	}
    
    init(id: Int, symbol: String?, currencyCode: String?, decimalSeparator: String?, numberOfDecimals: Int?, thousandsSeparator: String?, negativeParenthesesFlag: Bool?, displaySymbolFlag: Bool?, currencyIdentifier: String?, displayIdFlag: Bool?, rightAlign: Bool?, name: String?) {
        self.id = id
        self.symbol = symbol
        self.currencyCode = currencyCode
        self.decimalSeparator = decimalSeparator
        self.numberOfDecimals = numberOfDecimals
        self.thousandsSeparator = thousandsSeparator
        self.negativeParenthesesFlag = negativeParenthesesFlag
        self.displaySymbolFlag = displaySymbolFlag
        self.currencyIdentifier = currencyIdentifier
        self.displayIdFlag = displayIdFlag
        self.rightAlign = rightAlign
        self.name = name
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.symbol = try container.decodeIfPresent(String.self, forKey: .symbol)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.decimalSeparator = try container.decodeIfPresent(String.self, forKey: .decimalSeparator)
        self.numberOfDecimals = try container.decodeIfPresent(Int.self, forKey: .numberOfDecimals)
        self.thousandsSeparator = try container.decodeIfPresent(String.self, forKey: .thousandsSeparator)
        self.negativeParenthesesFlag = try container.decodeIfPresent(Bool.self, forKey: .negativeParenthesesFlag)
        self.displaySymbolFlag = try container.decodeIfPresent(Bool.self, forKey: .displaySymbolFlag)
        self.currencyIdentifier = try container.decodeIfPresent(String.self, forKey: .currencyIdentifier)
        self.displayIdFlag = try container.decodeIfPresent(Bool.self, forKey: .displayIdFlag)
        self.rightAlign = try container.decodeIfPresent(Bool.self, forKey: .rightAlign)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
    }
}
