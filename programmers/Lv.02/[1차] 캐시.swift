// [1차] 캐시
// https://school.programmers.co.kr/learn/courses/30/lessons/17680

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    let cacheHitTiem: Int = 1
    let cacheMissTime: Int = 5
    
    var cacheArr: [String] = []
    var processingTime: Int = 0
    
    for city in cities {
        let city = city.lowercased()
        
        if cacheSize == 0 {
            processingTime += cacheMissTime
            continue
        }
        
        if cacheArr.contains(city) {
            let idx = cacheArr.firstIndex(of: city)!
            cacheArr.remove(at: idx)
            cacheArr.insert(city, at: 0)
            processingTime += cacheHitTiem
            continue
        }
        
        if (cacheArr.count >= cacheSize) {
            cacheArr.remove(at: cacheArr.endIndex-1)
        }
        cacheArr.insert(city, at: 0)
        processingTime += cacheMissTime
    }
    return processingTime
}