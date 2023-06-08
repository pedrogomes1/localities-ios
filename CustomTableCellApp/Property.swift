import Foundation

class Property {
    var title: String!
    var description: String!
    var bedrooms: Int!
    var bathrooms: Int!
    
    init(title: String!, description: String!, bedrooms: Int!, bathrooms: Int!) {
        self.title = title
        self.description = description
        self.bedrooms = bedrooms
        self.bathrooms = bathrooms
    }
}
