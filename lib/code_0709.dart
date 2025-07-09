/*
* 문제
주어진 배열에서 최빈값(majority element)을 찾는 문제입니다.
최빈값은 배열의 원소 중 절반 초과(more than)의 개수를 차지하는 원소를 의미합니다.
이 문제에서 당신은 최빈값을 찾아야 하며, 최빈값이 존재하는 것이 보장됩니다.

* 조건
1. 1 <= nums.length <= 5 * 10^4
2. -10^9 <= nums[i] <= 10^9

* 예시
예제 1
	입력: nums = [3,2,3]
	출력: 3
	설명: 3이 배열에서 2번 등장하여 배열의 절반 이상을 차지합니다.

예제 2
	입력: nums = [2,2,1,1,1,2,2]
	출력: 2
	설명: 2가 배열에서 4번 등장하여 배열의 절반 이상을 차지합니다.
	
	[2,2,3,1,1,1]
*/

class Solution {
    int majorityElement(List<int> nums) {
        int candidate = nums[0];
        int count = 1;

        // 1차 투표
        for (int i = 1; i < nums.length; i++) {
            if (nums[i] == candidate) {
                count++; // 후보가 같으면 카운트 증가
            } else {
                count--; // 후보가 다르면 카운트 감소
                if (count == 0) {
                    candidate = nums[i]; // 카운트가 0이 되면 새로운 후보로 변경
                    count = 1; // 카운트 초기화
                }
            }
        }

        return candidate; // 최빈값 반환
    }
}