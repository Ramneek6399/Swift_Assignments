protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

struct IntStack: Container {
    mutating func append(_ item: Int) {
        self.push(item)
    }

    var count: Int {
        return self.count
    }

    subscript(i: Int) -> Int {
        return Item(i)
    }

    typealias Item = Int


    // original IntStack implementation
    var items: [Int] = []
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    
}
