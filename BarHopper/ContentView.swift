import SwiftUI
import Foundation
import CoreLocation

struct ContentView: View {
    @State private var bars: [Bar] = []

    var body: some View {
        NavigationView {
            List {
                ForEach(bars.indices, id: \.self) { index in
                    NavigationLink(destination: BarDetailView(bar: $bars[index])) {
                        VStack(alignment: .leading) {
                            HStack {
                                Text(bars[index].name)
                                    .font(.headline)
                                Spacer()
                                Text("Rating: \(bars[index].averageRating, specifier: "%.1f")")
                            }
                            Text(bars[index].reviews.first?.text ?? "")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("BarHopper")
            .onAppear {
                // Fetch bars here
                // For now, we'll use some dummy data
                bars = [
                    Bar(id: 1, name: "Ricks", numberOfPeople: 15, cover: 10, averageRating: 4, imageURL: URL(string: "https://example.com/bar1.jpg")!, location: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), reviews: [Review(id: 1, text: "Great atmosphere!", comment: "I had a great time with friends.", rating: 4.5, cover: 5.00)]),
                    Bar(id: 2, name: "Dublin", numberOfPeople: 44, cover: 20, averageRating: 4, imageURL: URL(string: "https://example.com/bar1.jpg")!, location: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), reviews: [Review(id: 2, text: "Narrow bathroom!", comment: "But the drinks were good.", rating: 3.5, cover: 10.00)]),
                ]
            }
        }
    }
}
