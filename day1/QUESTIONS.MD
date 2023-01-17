## Day 1 Motoko Bottcamp
1.How much is the current memory capacity of a canister?

Answer: The size of stable memory available to a canister is  32GiB in October 2022.

2.What is the issue with the following code sample?
```motoko
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```

Answer: Error:- `expected mutable assignment target`. The reason for this error by is using `let` we can only declare an immutable variable, if once a value assigned to an immutable variable it can not be chaged.

3. What is the issue with the following code sample?
```motoko
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```
Answer: 
There is a issue in here ```var message : Text = 0;```. Always use double qoutes`" "` when assigning a value to the variable with Text type.
  Its better not to use `query` keyword for the `change_message()` function because its already changing the state by updating `message`.
 
4. False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.
Answer: False, the query function is always need to wait to read data from canister 
`shared query function must have syntactic return type 'async <typ>'`

