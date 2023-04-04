import SwiftUI
import CoreLocation

struct BarDetailView: View {
    @Binding var bar: Bar
    @State private var showingReviewView: Bool = false

    var body: some View {
        VStack {
            AsyncImage(url: bar.imageURL, content: { image in
                image.resizable()
            }, placeholder: {
                ProgressView()
            })
            .aspectRatio(contentMode: .fit)
            
            Text(bar.name)
                .font(.largeTitle)
                .padding()
            
            HStack {
                Text("People: \(bar.numberOfPeople)")
                Spacer()
                Text("Cover: $\(bar.cover, specifier: "%.2f")")
            }
            .padding()
            
            Text("Average Rating: \(bar.averageRating, specifier: "%.1f")")
                .padding(.bottom)
            
            NavigationLink(destination: ReviewListView(reviews: bar.reviews)) {
                Text("View Reviews")
            }
            .padding(.bottom)
            
            Button("Write a Review") {
                showingReviewView.toggle()
            }.sheet(isPresented: $showingReviewView) {
                ReviewView(reviews: $bar.reviews)
            }

            Spacer()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
}
