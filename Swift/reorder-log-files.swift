class Solution {
    func reorderLogFiles(_ logs: [String]) -> [String] {
        var digitLogs  = [String]()
        var letterLogs = [String]()
        var keys = [String]()
        var letterDic = [String: String]()

        for log in logs {
            if log.last! >= "a" && log.last! <= "z" {
                var index = 0
                let length = log.count
                for char in log {
                    if char == " " {
                        let suffix = String(log.suffix(length - index - 1))
                        letterDic[suffix] = log
                        keys.append(suffix)
                        break
                    }
                    index += 1
                }
            } else {
                digitLogs.append(log)
            }
        }

        keys = keys.sorted()
        for key in keys {
            letterLogs.append(letterDic[key]!)
        }

        return letterLogs + digitLogs
    }
}
