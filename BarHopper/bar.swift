import Foundation
import CoreLocation

struct Bar: Identifiable {
    let id: Int
    let name: String
    let numberOfPeople: Int
    let cover: Double
    let averageRating: Double
    let imageURL: URL
    let location: CLLocationCoordinate2D
    var reviews: [Review] // Changed 'let' to 'var'

    init(id: Int, name: String, numberOfPeople: Int, cover: Double, averageRating: Double, imageURL: URL, location: CLLocationCoordinate2D, reviews: [Review]) {
        self.id = id
        self.name = name
        self.numberOfPeople = numberOfPeople
        self.cover = cover
        self.averageRating = averageRating
        self.imageURL = imageURL
        self.location = location
        self.reviews = reviews
    }
}

