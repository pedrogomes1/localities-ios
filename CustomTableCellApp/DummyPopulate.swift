import Foundation

class DummyPopulate {
    
    class func addProperties(title: String, description: String, bedrooms: Int, bathrooms: Int) {
        let data = Property(title: title, description: description, bedrooms: bedrooms, bathrooms: bathrooms)
        MyData.propertiesArr.append(data)
    }
    
    class func populate() {
        MyData.propertiesArr = []
        
        addProperties(title: "House on the 3rd Street", description: "This is a beatiful house, well built", bedrooms: 3, bathrooms: 1)
        addProperties(title: "West View Apartment", description: "This is a beatiful house, well built", bedrooms: 1, bathrooms: 5)
        addProperties(title: "New Appartment", description: "This is a beatiful house, well built", bedrooms: 3, bathrooms: 2)
        addProperties(title: "New House", description: "This is a beatiful house, well built", bedrooms: 2, bathrooms: 4)
    }
}
