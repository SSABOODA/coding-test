// https://leetcode.com/problems/two-sum/description/

// O(n2)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                if nums[i] + nums[j] == target { return [i, j] }
            }
        }
        return []
    }
}

// O(nlogn) 시간 복잡도로 구현하기
// LeetCode 문제가 아닌 강의에서 변형한 문제임
// 배열안에 두 수를 더했을 경우, target과 같다면 true를 반환하는 문제.
func twoSum(nums: [Int], target: Int) -> Bool {
    
    let sortedArray = nums.sorted()
    
    var left = 0
    var right = sortedArray.count-1
    
    while left < right {
        
        if sortedArray[left] + sortedArray[right] > target {
            right -= 1
        } else if sortedArray[left] + sortedArray[right] < target {
            left += 1
        } else {
            return true
        }
    }
    
    return false

}