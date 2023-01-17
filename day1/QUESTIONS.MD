## Day 1 Motoko Bottcamp
1.How much is the current memory capacity of a canister?

Answer: The size of stable memory available to a canister is  32GiB in October 2022.

2.What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```

Answer: Error:- `expected mutable assignment target`. The reason for this error by is using `let` we can only declare an immutable variable, if once a value assigned to an immutable variable it can not be chaged.

3. What is the issue with the following code sample?
Answer: 
