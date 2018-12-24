class Solution {
    func subdomainVisits(_ cpdomains: [String]) -> [String] {
        var res = [String: Int]()

        for domain in cpdomains {
            let splits = domain.split(separator: " ").map { String($0) }
            let count = Int(splits[0])!
            let domain = splits[1]
            let frags = domain.split(separator: ".").map { String($0) }
            var curr = [String]()
            for i in Array(0..<frags.count).reversed() {
                curr.append(frags[i])
                let subdomain = curr.reversed().joined(separator: ".")
                res[subdomain] = (res[subdomain] ?? 0) + count
            }
         }

        return res.map { "\($0.value) \($0.key)" }
    }
}
