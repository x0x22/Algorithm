class Solution {
    public String solution(String phone_number) {
        int length = phone_number.length();
        String hiddenPart = "";
        
        for (int i = 0; i < length - 4; i++) {
            hiddenPart += "*";
        }
        String visiblePart = phone_number.substring(length - 4);
        String answer = hiddenPart + visiblePart;
        return answer;
    }
}