class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var index_begin = 0
        var index_final = (nums.count - 1)
        
        // sorted in ascending order, this means I can binary chop
        // binary chop is looking for the middle value in the random vector of 
        // pre-sorted ints and then chopping the half that isn't relevant
        
        while index_begin <= index_final {
            let index_middle = (index_begin + index_final) / 2
            if nums[index_middle] < target {
                index_begin = index_middle + 1
            } else if nums[index_middle] > target {
                index_final = index_middle - 1 
            } else if nums[index_middle] == target {
                return index_middle
            }
        }
        return -1
    }
}