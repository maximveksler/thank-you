import Foundation

let formatter = DateFormatter()
formatter.calendar = Calendar(identifier: .iso8601)
let iso8601 = formatter.string(from: Date())
print(iso8601)
