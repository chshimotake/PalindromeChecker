public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  if(word.equals(reverse(word)))
  {
    return true;
  }else{
    return false;
  }
}
public String reverse(String str)
{
  String store="";
  for(int f=str.length()-1;f>=0;f--)
  {
    store+=str.charAt(f);
  }
  return store;
}


