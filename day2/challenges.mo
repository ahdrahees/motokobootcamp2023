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
  
  // 2. 
  
 }
