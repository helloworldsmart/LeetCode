
class MyHashMap {
    
    private var buckets: [[(Int, Int)]]
    private let bucketSize = 1000

    init() {
        buckets = Array(repeating: [], count: bucketSize)
    }
    
    func put(_ key: Int, _ value: Int) {
        let hashValue = key % bucketSize
        for (index, kv) in buckets[hashValue].enumerated() {
            if kv.0 == key {
                buckets[hashValue][index] = (key, value)
                return 
            }
        }
        buckets[hashValue].append((key, value))
    }
    
    func get(_ key: Int) -> Int {
        let hashValue = key % bucketSize
        for kv in buckets[hashValue] {
            if kv.0 == key {
                return kv.1
            }
        }
        return -1
    }
    
    func remove(_ key: Int) {
        let hashValue = key % bucketSize
        buckets[hashValue].removeAll(where: { $0.0 == key })
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */