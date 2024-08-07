import SwiftUI

struct ContentView: View {
    @State private var selectedTab: StaticTab? = .dashboard
    
    var body: some View {
        NavigationSplitView {
            List(selection: $selectedTab) {
                ForEach(StaticTab.allCases, id: \.self) { tab in
                    NavigationLink(tab.rawValue, value: tab)
                }
            }
        } detail: {
            switch selectedTab {
            case .dashboard:
                DashboardView()
            case .inbox:
                EmptyView()
            case .notifications:
                EmptyView()
            case .tickets:
                EmptyView()
            case .knowledgeBase:
                EmptyView()
            case .customers:
                EmptyView()
            case .forums:
                EmptyView()
            case .reports:
                EmptyView()
            case nil:
                EmptyView()
            }
        }
    }
}

#Preview {
    ContentView()
}

private enum StaticTab: String, CaseIterable {
    case dashboard = "Dashboard"
    case inbox = "Inbox"
    case notifications = "Notifications"
    case tickets = "Tickets"
    case knowledgeBase = "Knowledge Base"
    case customers = "Customers"
    case forums = "Forums"
    case reports = "Reports"
}

