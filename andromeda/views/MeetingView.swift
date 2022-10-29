import SwiftUI

struct MeetingView: View {
  var body: some View {
    VStack {
      ProgressView(value: 5, total: 15)
      HStack {
        VStack(alignment: .leading) {
          Text("Seconds Elapsed")
                  .font(.caption)
          Label("300", systemImage: "hourglass.bottomhalf.fill")
        }
        Spacer()
        VStack(alignment: .trailing) {
          Text("Fuck You too").font(.caption)
          Label("600", systemImage: "hourglass.tophalf.fill")
        }
      }
              .accessibilityElement(children: .ignore)
              .accessibilityLabel("Time remaining")
              .accessibilityValue("10 minutes")
      Circle().strokeBorder(lineWidth: 24)
      CardView(scrum: DailyScrum.sampleData[0])
      HStack {
        Text("Speaker 2 of 3")
        Spacer()
        Button(action: {}) {
          Image(systemName: "forward.fill")
        }
                .accessibilityLabel("Next speaker")
      }
    }
            .padding()
  }
}

struct DemoView: View {
  var body: some View {
    NavigationView {
      List(conferenceData) { conference in
        NavigationLink(destination: ConferenceDetails(conference: conference)) {
          VStack {
            Text(conference.name).padding(20)
            Text(conference.location).padding(20)
          }
        }
      }.navigationBarTitle("Navigation Title ")
    }
  }
}

class MeetingView_Previews: PreviewProvider {
  static var previews: some View {
    DemoView()
  }

  #if DEBUG
  @objc class func injected() {
    UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: DemoView())
  }
  #endif
}
