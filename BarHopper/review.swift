import Foundation

struct Review: Identifiable {
    let id: Int
    let text: String
    let comment: String
    let rating: Double
    let cover: Double

    init(id: Int, text: String, comment: String, rating: Double, cover: Double) {
        self.id = id
        self.text = text
        self.comment = comment
        self.rating = rating
        self.cover = cover
    }
}
