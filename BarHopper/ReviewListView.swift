import SwiftUI

struct ReviewListView: View {
    var reviews: [Review]

    var body: some View {
        List(reviews) { review in
            VStack(alignment: .leading) {
                Text(review.text)
                    .font(.headline)
                Text(review.comment)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                HStack {
                    Spacer()
                    Text("Rating: \(review.rating, specifier: "%.1f")")
                }
            }
            .padding(.vertical)
        }
        .navigationTitle("Reviews")
    }
}

struct ReviewListView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewListView(reviews: [
            Review(id: 1, text: "Great atmosphere!", comment: "I had a great time with friends.", rating: 4.5, cover: 5.00),
            Review(id: 2, text: "Narrow bathroom!", comment: "But the drinks were good.", rating: 3.5, cover: 10.00)
        ])
    }
}
