import Foundation

var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Int {
    get {
        let area = width * height
        
        //1 bucket = 1.5 m2
        //x bucket = 5 m2
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceilf(numberOfBuckets)
        
        return Int(roundedBuckets)
    }
    
    set {
        //1 bucket = 1.5 m2
        //4 bucket = x m2
        let areaCanCover = Float(newValue) * 1.5
        
        //print("Area that can be covered by \(newValue) buckets is \(areaCanCover) m2")
        print("This amount of paint can be cover an area of \(areaCanCover)")
    }
}

//print(bucketsOfPaint)


//opposite situation
//have buckets lying around and we want to know how many area it can cover
bucketsOfPaint = 4
