import SwiftUI

struct ConferenceDetails: View {
  var conference: Conference;
  var body: some View {
    VStack(alignment: .leading) {
      Text(conference.name)
      Text(conference.location)
      Text(conference.textDate(date: conference.start))
      Text(conference.textDate(date: conference.end ?? Date()))
    }
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
            .navigationBarTitle(conference.name)
  }
}

class ConferenceDetails_Previews: PreviewProvider {
  static var previews: some View {
    ConferenceDetails(conference: Conference())
  }

  #if DEBUG
  @objc class func injected() {
    UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: DemoView())
  }
  #endif
}
