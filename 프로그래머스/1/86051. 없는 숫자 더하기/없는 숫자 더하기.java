class Solution {
    public int solution(int[] numbers) {
        int sum = 1+2+3+4+5+6+7+8+9;
        int numbersSum = 0;
            
        for(int i= 0; i < numbers.length; i++){
            numbersSum += numbers[i];
        }

        int answer = sum - numbersSum;
        return answer;
    }
}