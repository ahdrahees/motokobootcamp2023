import Text "mo:base/Text";

actor ChallengesDay2{
  
  // 1. average_array
  let array : [Int] = [1,2,3,4];
  let size : Nat = array.size() ;
  var sum: Int = 0;

  public func average_array() : async Int {
    for(element in array.vals()){
      sum += element;

    };
    return (sum/size);
  };
  
  // 2. Character count
    public query func count_character(t : Text, c : Char) : async Nat{
    var count: Nat =0;
    for (letter in Text.toIter(t)){
      if(letter==c){
        count+=1;
      }
    };
    return count;
  };
  
  // 3. factorial
   public func factorial(n : Nat):async Nat{
    if(n > 0){
    return n * (await factorial(n-1));
    }else{
        return 1;
    }
  };
  
  // 4. number_of_words
    public query func number_of_words(t : Text) : async Nat {
    var count: Nat =0;
    if(t.size()!=0){
      count+=1;

    }else {
      for (letter in t.chars()){
        if (letter ==' '){
          count+=1;
        }
      }
    };
    return count;
  };

// 5. find_duplicates
public  func find_duplicates(a : [Nat]) : async [ Nat]{
    var duplicate_array : [var Nat]=[var];
    var indexCount : Nat = 0;
    
    for(firstElement in Iter.fromArray(a)){
      var count: Nat=0;
      for(checkElement in Iter.fromArray(a)){
        if(firstElement ==checkElement){
           count+=1;
        }
        
      };
      if ( count > 1 ){
        duplicate_array[indexCount] := firstElement;
      };
      indexCount += 1;
    };
  /* let array1 = Array.freeze<Nat>(duplicate_array);
    return array1; */
    return (Array.freeze<Nat>(duplicate_array));
  };
  
 }
