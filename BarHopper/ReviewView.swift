import SwiftUI

struct ReviewView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var reviews: [Review]
    @State private var reviewText: String = ""
    @State private var commentText: String = ""

    var body: some View {
        VStack {
            Text("Write a Review")
                .font(.largeTitle)
                .padding()

            VStack(alignment: .leading) {
                Text("Review")
                    .font(.headline)
                TextEditor(text: $reviewText)
                    .border(Color.gray, width: 1)
                    .frame(height: 100)
                    .padding(.bottom)

                Text("Comment")
                    .font(.headline)
                TextEditor(text: $commentText)
                    .border(Color.gray, width: 1)
                    .frame(height: 100)
            }
            .padding()

            Button("Submit") {
                let newReview = Review(id: reviews.count + 1, text: reviewText, comment: commentText, rating: 5.0, cover: 10.00)
                reviews.append(newReview)

                // Close the review view
                presentationMode.wrappedValue.dismiss()
            }
            .padding()

            Spacer()
        }
        .padding()
    }
}
