class Node {
    let data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}


class MyLinkedList {
    var head: Node?

    init() {
        
    }
    
    func get(_ index: Int) -> Int {
        guard let head = head else { return -1 }
        var counter = 0
        var current: Node? = head
        while let next = current?.next, counter < index {
            counter += 1
            current = next
        }
        guard counter == index else { return -1 }
        return current?.data ?? -1
    }
    
    func addAtHead(_ val: Int) {
        let node = Node(val)
        node.next = head
        head = node
    }
    
    func addAtTail(_ val: Int) {
        let node = Node(val)
        guard let head = head else {
            self.head = node
            return
        }
        var current: Node? = head
        while let next = current?.next {
            current = next
        }
        current?.next = node
    }
    
    func addAtIndex(_ index: Int, _ val: Int) {
        let node = Node(val)
        guard index != 0 else {
            node.next = head
            head = node
            return
        }
        guard let head = head else { return }
        var current: Node? = head
        var prev: Node? = head
        var counter = 0
        while let next = current?.next, counter < index {
            counter += 1
            prev = current
            current = next
        }
        guard counter == index else {
            current?.next = node
            return
        }
        node.next = current
        prev?.next = node
    }
    
    func deleteAtIndex(_ index: Int) {
        guard let head = head else { return }
        guard index != 0 else {
            self.head = head.next
            return
        }
        var current: Node? = head
        var prev: Node? = head
        var counter = 0
        while let next = current?.next, counter < index {
            counter += 1
            prev = current
            current = next
        }
        guard counter == index else {
            return
        }
        prev?.next = current?.next
    }
}

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * let obj = MyLinkedList()
 * let ret_1: Int = obj.get(index)
 * obj.addAtHead(val)
 * obj.addAtTail(val)
 * obj.addAtIndex(index, val)
 * obj.deleteAtIndex(index)
 */