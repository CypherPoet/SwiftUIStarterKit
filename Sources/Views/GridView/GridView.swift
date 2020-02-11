import SwiftUI



struct GridView<Item, Content: View> {
    let items: [Item]
    let columnCount: Int
    let content: (CGFloat, Item) -> Content
    let scrollAxes: Axis.Set
    let showsScrollIndicators: Bool
    
    
    // MARK: - Init
    init(
        items: [Item] = [],
        columnCount: Int = 2,
        scrollAxes: Axis.Set = [.vertical],
        showsScrollIndicators: Bool = false,
        @ViewBuilder content: @escaping ((CGFloat, Item) -> Content)
    ) {
        self.items = items
        self.columnCount = columnCount
        self.scrollAxes = scrollAxes
        self.showsScrollIndicators = showsScrollIndicators
        self.content = content
    }
}


// MARK: - View
extension GridView: View {

    var body: some View {
        ScrollView(scrollAxes, showsIndicators: showsScrollIndicators) {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    ForEach(0 ..< self.rowCount, id: \.self) { row in
                        self.gridRow(at: row, in: geometry)
                    }
                }
            }
        }
    }
}


// MARK: - Computeds
extension GridView {
    var rowCount: Int { ((items.count - 1) / columnCount) + 1 }
}


// MARK: - Private Helpers
private extension GridView {
    
    func elementAt(row: Int, column: Int) -> Item? {
        let index = (row * columnCount) + column
        
        guard index < items.count else { return nil }
        
        return items[index]
    }
    
    
    func gridRow(at rowIndex: Int, in geometry: GeometryProxy) -> some View {
        let cellSize: CGFloat = geometry.size.width / CGFloat(columnCount)
        
        return HStack(spacing: 0) {
            ForEach(0 ..< columnCount, id: \.self) { column in
                Group {
                    if self.elementAt(row: rowIndex, column: column) != nil {
                        self.content(
                            cellSize,
                            self.elementAt(row: rowIndex, column: column)!
                        )
                    } else {
                        Spacer()
                    }
                }
                .frame(width: cellSize, height: cellSize)
            }
        }
    }
}
