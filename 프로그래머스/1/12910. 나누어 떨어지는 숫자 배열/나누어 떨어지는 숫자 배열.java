import java.util.*;
class Solution {
    public int[] solution(int[] arr, int divisor) {
        List<Integer> answerList = new ArrayList<>();
        
        for(int num:arr){
            if (num % divisor == 0){
                answerList.add(num);
            }
        }
        
        if(answerList.isEmpty()){
            answerList.add(-1);
        } else {
            Collections.sort(answerList);
        }
        return answerList.stream().mapToInt(i -> i).toArray();
    }
}