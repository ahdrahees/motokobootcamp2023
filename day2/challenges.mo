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
  
  
 }
