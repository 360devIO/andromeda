import Foundation
import SwiftUI

struct CardView: View {
  let scrum: DailyScrum
  var body: some View {
    VStack {
      Text("Design")
      HStack {
        Label("\(scrum.attendees.count)", systemImage: "person.3")
        Spacer()
        Label("\(scrum.lengthInMinutes)", systemImage: "clock").labelStyle(.trailingIcon)
      }
    }
            .padding(20)
            .foregroundColor(scrum.theme.accentColor)
  }
}

struct CardViewPreview: PreviewProvider {
  static var scrum = DailyScrum.sampleData[0]
  static var previews: some View {
    CardView(scrum: scrum)
  }
}
