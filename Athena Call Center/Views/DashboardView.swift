import SwiftUI
import Charts

struct Metric: Identifiable {
    var id: UUID = .init()
    var value: String
    var name: String
    var timeline: Timeline
    
    enum Timeline {
        case day, week, month, year
    }
}

struct ToyShape: Identifiable {
    var color: String
    var type: String
    var count: Double
    var id = UUID()
}

struct Product: Identifiable {
    let id = UUID()
    let title: String
    let revenue: Double
}

struct DashboardView: View {
    private let metrics: [Metric] = [
        .init(value: "24,208", name: "Created Tickets", timeline: .month),
        .init(value: "4,564", name: "Unsolved Tickets", timeline: .month),
        .init(value: "18,208", name: "Solved Tickets", timeline: .month),
        .init(value: "12:01 min", name: "Average First Time Reply", timeline: .month)
    ]
    
    private var stackedBarData: [ToyShape] = [
        .init(color: "Green", type: "Cube", count: 2),
        .init(color: "Green", type: "Sphere", count: 0),
        .init(color: "Green", type: "Pyramid", count: 1),
        .init(color: "Purple", type: "Cube", count: 1),
        .init(color: "Purple", type: "Sphere", count: 1),
        .init(color: "Purple", type: "Pyramid", count: 1),
        .init(color: "Pink", type: "Cube", count: 1),
        .init(color: "Pink", type: "Sphere", count: 2),
        .init(color: "Pink", type: "Pyramid", count: 0),
        .init(color: "Yellow", type: "Cube", count: 1),
        .init(color: "Yellow", type: "Sphere", count: 1),
        .init(color: "Yellow", type: "Pyramid", count: 2)
    ]
    
    @State private var selectedDate: Date = .now
    @State private var showDatePicker: Bool = false
    @State private var products: [Product] = [
        .init(title: "Annual", revenue: 0.7),
        .init(title: "Monthly", revenue: 0.2),
        .init(title: "Lifetime", revenue: 0.1)
    ]
    @State private var tickets: [ServiceTicket] = ServiceTicket.examples
    
    var body: some View {
        Grid(alignment: .topLeading) {
            GridRow {
                ForEach(metrics, id: \.id) { metric in
                    VStack(alignment: .leading) {
                        Text(metric.name)
                            .foregroundStyle(.secondary)
                            .font(.title3)
                        
                        Text(metric.value)
                            .font(.largeTitle)
                            .fontWeight(.medium)
                        
                        Text("Compared to last month")
                    }
                    .frame(
                        maxWidth: .infinity,
                        alignment: .topLeading
                    )
                    .padding()
                }
            }
            
            GridRow {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Average Tickets Created")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button {
                            showDatePicker.toggle()
                        } label: {
                            Text(selectedDate, format: .dateTime)
                        }
                        .popover(isPresented: $showDatePicker) {
                            DatePicker(
                                "Dates",
                                selection: $selectedDate,
                                in: ...selectedDate,
                                displayedComponents: .date
                            )
                            .labelsHidden()
                            .datePickerStyle(.graphical)
                        }
                    }
                    
                    Chart {
                        ForEach(stackedBarData) { shape in
                            BarMark(
                                x: .value("Shape Type", shape.type),
                                y: .value("Total Count", shape.count)
                            )
                            .foregroundStyle(by: .value("Shape Color", shape.color))
                        }
                    }
                }
                .gridCellColumns(3)
                .padding()
                
                VStack(alignment: .leading) {
                    Text("Average Tickets Created")
                        .font(.title2)
                    
                    Chart(products) { product in
                        SectorMark(
                            angle: .value(
                                Text(verbatim: product.title),
                                product.revenue
                            )
                        )
                        .foregroundStyle(
                            by: .value(
                                Text(verbatim: product.title),
                                product.title
                            )
                        )
                    }
                }
                .padding()
            }
            
            GridRow {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Ticket by Channels")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button {
                            showDatePicker.toggle()
                        } label: {
                            Text(selectedDate, format: .dateTime)
                        }
                        .popover(isPresented: $showDatePicker) {
                            DatePicker(
                                "Dates",
                                selection: $selectedDate,
                                in: ...selectedDate,
                                displayedComponents: .date
                            )
                            .labelsHidden()
                            .datePickerStyle(.graphical)
                        }
                    }
                    
                    Chart {
                        ForEach(tickets, id: \.id) { ticket in
                            BarMark(
                                x: .value("Shape Type", ticket.source?.name ?? ""),
                                y: .value("Total Count", tickets.count)
                            )
                            .foregroundStyle(by: .value("Shape Color", "Yellow"))
                        }
                    }
                }
                .gridCellColumns(3)
                .padding()
                
                VStack(alignment: .leading) {
                    Text("Average Tickets Created")
                        .font(.title2)
                    
                    Chart(products) { product in
                        SectorMark(
                            angle: .value(
                                Text(verbatim: product.title),
                                product.revenue
                            )
                        )
                        .foregroundStyle(
                            by: .value(
                                Text(verbatim: product.title),
                                product.title
                            )
                        )
                    }
                }
                .padding()
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .navigationTitle("Dashboard")
    }
}

#Preview {
    ContentView()
        .frame(minWidth: 1440, minHeight: 1040)
}
