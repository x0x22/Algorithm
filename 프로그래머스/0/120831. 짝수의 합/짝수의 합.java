class Solution {
    public int solution(int n) {
        int answer = 0;
        if (0 > n || 1000 < n) {
            throw new IllegalArgumentException("유효하지 않은 값입니다.");
        } 
        for (int i = 0; i <= n; i++) {
            if( (i % 2) == 0) {
                answer += i;
            }
        }
        return answer;
    }
}