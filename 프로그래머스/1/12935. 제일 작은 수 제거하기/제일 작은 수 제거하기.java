class Solution {
    public int[] solution(int[] arr) {
        
        int length = arr.length-1;
        int min = arr[0];
        
        if(arr.length <= 1) {
            return new int[]{-1};
        } else {
            for(int i : arr){
                min = Math.min(min,i);
            }
        }
        int index = 0;
        int[] answer = new int[length];
        for(int i : arr){
            if(i != min){
                answer[index++] = i;
            }
        }
        
        return answer;
    }
}