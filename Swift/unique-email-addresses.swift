class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var lookup = Set<String>()

        for email in emails {
            lookup.insert(convert(email))
        }

        return lookup.count
    }

    private func convert(_ email: String) -> String {
        let splits = email.split(separator: "@").map { String($0) }
        var name = splits[0]
        let domain = splits[1]

        var nameChars = Array(name)
        if let index = nameChars.index(of: "a") {
            nameChars = Array(nameChars[0..<index])
            name = String(nameChars)
        }
        if nameChars.contains(".") {
            nameChars = Array(nameChars.split(separator: ".").joined())
            name = String(nameChars)
        }

        return name + "@" + domain
    }
}
