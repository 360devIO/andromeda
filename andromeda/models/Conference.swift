import Foundation

class Conference: Codable, Identifiable {
  var name: String
  var location: String
  var start: Date
  var end: Date?
  var link: String

  init() {
    name = "Naisr"
    location = "Dhaka"
    start = Date()
    end = Date()
    link = "jupiter.io"
  }

  func textDate(date: Date) -> String {
    date.formatted()
  }
}
