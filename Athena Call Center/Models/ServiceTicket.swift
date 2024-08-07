import Foundation

struct ServiceTicket: Decodable {
    let id : Int
    let summary : String
    let recordType : String?
    let board : Reference?
    let status : Reference?
    let workRole : Reference?
    let company : Reference?
    let site : Reference?
    let siteName : String?
    let country : Reference?
    let contactName : String?
    let contactPhoneNumber : String?
    let type : Reference?
    let priority : Reference?
    let serviceLocation : Reference?
    let source : Reference?
    let requiredDate : String?
    let severity : String?
    let impact : String?
    let externalXRef : String?
    let allowAllClientsPortalView : Bool?
    let customerUpdatedFlag : Bool?
    let automaticEmailContactFlag : Bool?
    let automaticEmailResourceFlag : Bool?
    let automaticEmailCcFlag : Bool?
    let closedDate : String?
    let closedBy : String?
    let closedFlag : Bool?
    let approved : Bool?
    let estimatedExpenseCost : Double?
    let estimatedExpenseRevenue : Double?
    let estimatedProductCost : Double?
    let estimatedProductRevenue : Double?
    let estimatedTimeCost : Double?
    let estimatedTimeRevenue : Double?
    let billingMethod : String?
    let subBillingMethod : String?
    let dateResolved : String?
    let dateResplan : String?
    let dateResponded : String?
    let resolveMinutes : Int?
    let resPlanMinutes : Int?
    let respondMinutes : Int?
    let isInSla : Bool?
    let hasChildTicket : Bool?
    let hasMergedChildTicketFlag : Bool?
    let billTime : String?
    let billExpenses : String?
    let billProducts : String?
    let location : Reference?
    let department : Reference?
    let mobileGuid : String?
    let sla : Reference?
    let slaStatus : String?
    let requestForChangeFlag : Bool?
    let currency : Currency?
    let escalationStartDateUTC : String?
    let escalationLevel : Int?
    let minutesBeforeWaiting : Int?
    let respondedSkippedMinutes : Int?
    let resplanSkippedMinutes : Int?
    let respondedHours : Double?
    let respondedBy : String?
    let resplanHours : Double?
    let resplanBy : String?
    let resolutionHours : Double?
    let resolvedBy : String?
    let minutesWaiting : Int?
    let customFields : [CustomField]?
    
    enum CodingKeys: CodingKey {
        case id
        case summary
        case recordType
        case board
        case status
        case workRole
        case company
        case site
        case siteName
        case country
        case contactName
        case contactPhoneNumber
        case type
        case priority
        case serviceLocation
        case source
        case requiredDate
        case severity
        case impact
        case externalXRef
        case allowAllClientsPortalView
        case customerUpdatedFlag
        case automaticEmailContactFlag
        case automaticEmailResourceFlag
        case automaticEmailCcFlag
        case closedDate
        case closedBy
        case closedFlag
        case approved
        case estimatedExpenseCost
        case estimatedExpenseRevenue
        case estimatedProductCost
        case estimatedProductRevenue
        case estimatedTimeCost
        case estimatedTimeRevenue
        case billingMethod
        case subBillingMethod
        case dateResolved
        case dateResplan
        case dateResponded
        case resolveMinutes
        case resPlanMinutes
        case respondMinutes
        case isInSla
        case hasChildTicket
        case hasMergedChildTicketFlag
        case billTime
        case billExpenses
        case billProducts
        case location
        case department
        case mobileGuid
        case sla
        case slaStatus
        case requestForChangeFlag
        case currency
        case escalationStartDateUTC
        case escalationLevel
        case minutesBeforeWaiting
        case respondedSkippedMinutes
        case resplanSkippedMinutes
        case respondedHours
        case respondedBy
        case resplanHours
        case resplanBy
        case resolutionHours
        case resolvedBy
        case minutesWaiting
        case customFields
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.summary = try container.decode(String.self, forKey: .summary)
        self.recordType = try container.decodeIfPresent(String.self, forKey: .recordType)
        self.board = try container.decodeIfPresent(Reference.self, forKey: .board)
        self.status = try container.decodeIfPresent(Reference.self, forKey: .status)
        self.workRole = try container.decodeIfPresent(Reference.self, forKey: .workRole)
        self.company = try container.decodeIfPresent(Reference.self, forKey: .company)
        self.site = try container.decodeIfPresent(Reference.self, forKey: .site)
        self.siteName = try container.decodeIfPresent(String.self, forKey: .siteName)
        self.country = try container.decodeIfPresent(Reference.self, forKey: .country)
        self.contactName = try container.decodeIfPresent(String.self, forKey: .contactName)
        self.contactPhoneNumber = try container.decodeIfPresent(String.self, forKey: .contactPhoneNumber)
        self.type = try container.decodeIfPresent(Reference.self, forKey: .type)
        self.priority = try container.decodeIfPresent(Reference.self, forKey: .priority)
        self.serviceLocation = try container.decodeIfPresent(Reference.self, forKey: .serviceLocation)
        self.source = try container.decodeIfPresent(Reference.self, forKey: .source)
        self.requiredDate = try container.decodeIfPresent(String.self, forKey: .requiredDate)
        self.severity = try container.decodeIfPresent(String.self, forKey: .severity)
        self.impact = try container.decodeIfPresent(String.self, forKey: .impact)
        self.externalXRef = try container.decodeIfPresent(String.self, forKey: .externalXRef)
        self.allowAllClientsPortalView = try container.decodeIfPresent(Bool.self, forKey: .allowAllClientsPortalView)
        self.customerUpdatedFlag = try container.decodeIfPresent(Bool.self, forKey: .customerUpdatedFlag)
        self.automaticEmailContactFlag = try container.decodeIfPresent(Bool.self, forKey: .automaticEmailContactFlag)
        self.automaticEmailResourceFlag = try container.decodeIfPresent(Bool.self, forKey: .automaticEmailResourceFlag)
        self.automaticEmailCcFlag = try container.decodeIfPresent(Bool.self, forKey: .automaticEmailCcFlag)
        self.closedDate = try container.decodeIfPresent(String.self, forKey: .closedDate)
        self.closedBy = try container.decodeIfPresent(String.self, forKey: .closedBy)
        self.closedFlag = try container.decodeIfPresent(Bool.self, forKey: .closedFlag)
        self.approved = try container.decodeIfPresent(Bool.self, forKey: .approved)
        self.estimatedExpenseCost = try container.decodeIfPresent(Double.self, forKey: .estimatedExpenseCost)
        self.estimatedExpenseRevenue = try container.decodeIfPresent(Double.self, forKey: .estimatedExpenseRevenue)
        self.estimatedProductCost = try container.decodeIfPresent(Double.self, forKey: .estimatedProductCost)
        self.estimatedProductRevenue = try container.decodeIfPresent(Double.self, forKey: .estimatedProductRevenue)
        self.estimatedTimeCost = try container.decodeIfPresent(Double.self, forKey: .estimatedTimeCost)
        self.estimatedTimeRevenue = try container.decodeIfPresent(Double.self, forKey: .estimatedTimeRevenue)
        self.billingMethod = try container.decodeIfPresent(String.self, forKey: .billingMethod)
        self.subBillingMethod = try container.decodeIfPresent(String.self, forKey: .subBillingMethod)
        self.dateResolved = try container.decodeIfPresent(String.self, forKey: .dateResolved)
        self.dateResplan = try container.decodeIfPresent(String.self, forKey: .dateResplan)
        self.dateResponded = try container.decodeIfPresent(String.self, forKey: .dateResponded)
        self.resolveMinutes = try container.decodeIfPresent(Int.self, forKey: .resolveMinutes)
        self.resPlanMinutes = try container.decodeIfPresent(Int.self, forKey: .resPlanMinutes)
        self.respondMinutes = try container.decodeIfPresent(Int.self, forKey: .respondMinutes)
        self.isInSla = try container.decodeIfPresent(Bool.self, forKey: .isInSla)
        self.hasChildTicket = try container.decodeIfPresent(Bool.self, forKey: .hasChildTicket)
        self.hasMergedChildTicketFlag = try container.decodeIfPresent(Bool.self, forKey: .hasMergedChildTicketFlag)
        self.billTime = try container.decodeIfPresent(String.self, forKey: .billTime)
        self.billExpenses = try container.decodeIfPresent(String.self, forKey: .billExpenses)
        self.billProducts = try container.decodeIfPresent(String.self, forKey: .billProducts)
        self.location = try container.decodeIfPresent(Reference.self, forKey: .location)
        self.department = try container.decodeIfPresent(Reference.self, forKey: .department)
        self.mobileGuid = try container.decodeIfPresent(String.self, forKey: .mobileGuid)
        self.sla = try container.decodeIfPresent(Reference.self, forKey: .sla)
        self.slaStatus = try container.decodeIfPresent(String.self, forKey: .slaStatus)
        self.requestForChangeFlag = try container.decodeIfPresent(Bool.self, forKey: .requestForChangeFlag)
        self.currency = try container.decodeIfPresent(Currency.self, forKey: .currency)
        self.escalationStartDateUTC = try container.decodeIfPresent(String.self, forKey: .escalationStartDateUTC)
        self.escalationLevel = try container.decodeIfPresent(Int.self, forKey: .escalationLevel)
        self.minutesBeforeWaiting = try container.decodeIfPresent(Int.self, forKey: .minutesBeforeWaiting)
        self.respondedSkippedMinutes = try container.decodeIfPresent(Int.self, forKey: .respondedSkippedMinutes)
        self.resplanSkippedMinutes = try container.decodeIfPresent(Int.self, forKey: .resplanSkippedMinutes)
        self.respondedHours = try container.decodeIfPresent(Double.self, forKey: .respondedHours)
        self.respondedBy = try container.decodeIfPresent(String.self, forKey: .respondedBy)
        self.resplanHours = try container.decodeIfPresent(Double.self, forKey: .resplanHours)
        self.resplanBy = try container.decodeIfPresent(String.self, forKey: .resplanBy)
        self.resolutionHours = try container.decodeIfPresent(Double.self, forKey: .resolutionHours)
        self.resolvedBy = try container.decodeIfPresent(String.self, forKey: .resolvedBy)
        self.minutesWaiting = try container.decodeIfPresent(Int.self, forKey: .minutesWaiting)
        self.customFields = try container.decodeIfPresent([CustomField].self, forKey: .customFields)
    }
    
    init(id: Int, summary: String, recordType: String?, board: Reference?, status: Reference?, workRole: Reference?, company: Reference?, site: Reference?, siteName: String?, country: Reference?, contactName: String?, contactPhoneNumber: String?, type: Reference?, priority: Reference?, serviceLocation: Reference?, source: Reference?, requiredDate: String?, severity: String?, impact: String?, externalXRef: String?, allowAllClientsPortalView: Bool?, customerUpdatedFlag: Bool?, automaticEmailContactFlag: Bool?, automaticEmailResourceFlag: Bool?, automaticEmailCcFlag: Bool?, closedDate: String?, closedBy: String?, closedFlag: Bool?, approved: Bool?, estimatedExpenseCost: Double?, estimatedExpenseRevenue: Double?, estimatedProductCost: Double?, estimatedProductRevenue: Double?, estimatedTimeCost: Double?, estimatedTimeRevenue: Double?, billingMethod: String?, subBillingMethod: String?, dateResolved: String?, dateResplan: String?, dateResponded: String?, resolveMinutes: Int?, resPlanMinutes: Int?, respondMinutes: Int?, isInSla: Bool?, hasChildTicket: Bool?, hasMergedChildTicketFlag: Bool?, billTime: String?, billExpenses: String?, billProducts: String?, location: Reference?, department: Reference?, mobileGuid: String?, sla: Reference?, slaStatus: String?, requestForChangeFlag: Bool?, currency: Currency?, escalationStartDateUTC: String?, escalationLevel: Int?, minutesBeforeWaiting: Int?, respondedSkippedMinutes: Int?, resplanSkippedMinutes: Int?, respondedHours: Double?, respondedBy: String?, resplanHours: Double?, resplanBy: String?, resolutionHours: Double?, resolvedBy: String?, minutesWaiting: Int?, customFields: [CustomField]?) {
        self.id = id
        self.summary = summary
        self.recordType = recordType
        self.board = board
        self.status = status
        self.workRole = workRole
        self.company = company
        self.site = site
        self.siteName = siteName
        self.country = country
        self.contactName = contactName
        self.contactPhoneNumber = contactPhoneNumber
        self.type = type
        self.priority = priority
        self.serviceLocation = serviceLocation
        self.source = source
        self.requiredDate = requiredDate
        self.severity = severity
        self.impact = impact
        self.externalXRef = externalXRef
        self.allowAllClientsPortalView = allowAllClientsPortalView
        self.customerUpdatedFlag = customerUpdatedFlag
        self.automaticEmailContactFlag = automaticEmailContactFlag
        self.automaticEmailResourceFlag = automaticEmailResourceFlag
        self.automaticEmailCcFlag = automaticEmailCcFlag
        self.closedDate = closedDate
        self.closedBy = closedBy
        self.closedFlag = closedFlag
        self.approved = approved
        self.estimatedExpenseCost = estimatedExpenseCost
        self.estimatedExpenseRevenue = estimatedExpenseRevenue
        self.estimatedProductCost = estimatedProductCost
        self.estimatedProductRevenue = estimatedProductRevenue
        self.estimatedTimeCost = estimatedTimeCost
        self.estimatedTimeRevenue = estimatedTimeRevenue
        self.billingMethod = billingMethod
        self.subBillingMethod = subBillingMethod
        self.dateResolved = dateResolved
        self.dateResplan = dateResplan
        self.dateResponded = dateResponded
        self.resolveMinutes = resolveMinutes
        self.resPlanMinutes = resPlanMinutes
        self.respondMinutes = respondMinutes
        self.isInSla = isInSla
        self.hasChildTicket = hasChildTicket
        self.hasMergedChildTicketFlag = hasMergedChildTicketFlag
        self.billTime = billTime
        self.billExpenses = billExpenses
        self.billProducts = billProducts
        self.location = location
        self.department = department
        self.mobileGuid = mobileGuid
        self.sla = sla
        self.slaStatus = slaStatus
        self.requestForChangeFlag = requestForChangeFlag
        self.currency = currency
        self.escalationStartDateUTC = escalationStartDateUTC
        self.escalationLevel = escalationLevel
        self.minutesBeforeWaiting = minutesBeforeWaiting
        self.respondedSkippedMinutes = respondedSkippedMinutes
        self.resplanSkippedMinutes = resplanSkippedMinutes
        self.respondedHours = respondedHours
        self.respondedBy = respondedBy
        self.resplanHours = resplanHours
        self.resplanBy = resplanBy
        self.resolutionHours = resolutionHours
        self.resolvedBy = resolvedBy
        self.minutesWaiting = minutesWaiting
        self.customFields = customFields
    }
}
