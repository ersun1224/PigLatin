import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}

public int findFirstVowel(String word){
	//precondition: sWord is a valid String of length greater than 0.
	//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
	for(int i = 0; i < word.length(); i++) {
		if(word.substring(i,i+1).equals("a")) {
			return i;
		} else if(word.substring(i,i+1).equals("e")) {
			return i;
		} else if(word.substring(i,i+1).equals("i")) {
			return i;
		} else if(word.substring(i,i+1).equals("o")) {
			return i;
		} else if(word.substring(i,i+1).equals("u")) {
			return i;
		} 
  }
  
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1) {
		return sWord + "ay";
	} else if(findFirstVowel(sWord) == 0) {
		return sWord + "way";
	} else if(sWord.substring(0,2).equals("qu")) {
		return sWord.substring(2) + "quay";
	} else if (findFirstVowel(sWord) > 0) {
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	} else {
		return "ERROR!";
	}
}
