actor ChallengesDay1{

  // 1. multiply
  public func multiply(n: Nat, m: Nat) : async Nat {
    return n * m;
  };

  // 2. volume
  public func volume(n: Nat) : async Nat {
    return n**3;
  };

  // 3. hours_to_minutes
  public func hours_to_minutes(n: Nat) : async Nat {
    return n*60;
  };

  // 4. set_counter & get_counter
  var counter: Nat = 0;
  public func set_counter(n: Nat) : async () {
    counter := n ;
  };

  public query func get_counter() : async Nat {
    return counter;
  };

  // 5. test_divide
  public func test_divide(n: Nat, m: Nat): async Bool {
    if(n==0){
      return false;
    }else{
      return true;
    }
  };

  // 6. is_even 
  public func is_even(n: Nat): async Bool {
    if(n%2==0){
      return true;
    }else {
      return false;
    }
  };

};
