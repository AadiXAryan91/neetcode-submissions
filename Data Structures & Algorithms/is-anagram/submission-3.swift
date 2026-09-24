class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return aadiChecksAnagram(s, t)
        // return aadiChecksAnagramv2(s, t)
        // return aadiChecksAnagramWithSort(s, t)

    }

    func aadiChecksAnagramWithSort(_ s: String,_ t: String) -> Bool {
        return s.count == t.count && s.sorted() == t.sorted()
    }

    func aadiChecksAnagram(_ s: String,_ t: String) -> Bool {
        var map: [Character: Int] = [:]

        for ch in s {
            map[ch, default: 0] += 1
        }

        for ch in t {
            if map[ch] != nil {
                map[ch]! -= 1
            } else {
                return false
            }
        }

        for ch in s {
            if map[ch] != 0 {
                return false
            }
        }

        return true
    }

    func aadiChecksAnagramv2(_ s: String,_ t: String) -> Bool {
        var map: [Character: Int] = [:]
        var map2: [Character: Int] = [:]

        if s.count != t.count {
            return false
        }

        let ArrayS = Array(s)
        let ArrayT = Array(t)

        for i in 0..<s.count {
            map[ArrayS[i], default: 0] += 1
            map2[ArrayT[i], default: 0] += 1
        }

        return map == map2
    }
}
