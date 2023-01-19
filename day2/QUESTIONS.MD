## Day 2 Motoko Bootcamp
1. Who controls the ledger canister?

 **Answer:**  Network Nervous System (NNS) controls the ledger canister.


2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?

 **Answer:**
Subnet ID: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe
Node Machines is 16

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

 **Answer:**


4. What is wrong with the following code?
```motoko
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 }
 ```
 **Answer:**
 Didn't imported Nat module from base library. ```import Nat "mo:base/Nat";```

5. What is wrong with the following code?
```motoko
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
}
```
**Answer:**
  a) `Error: immutable array expression cannot produce expected type  [var Text] ` to create mutable arrays just like variables you have to use the keyword `var` inside the element of the array. Solution is 
  ```motoko 
var languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];
```
b) ``shared function has non-shared return type [var Text] type [var Text] is or contains non-shared type var Text `` So solution is make the array in to default mutable form.
```motoko
actor {
  var languages : [ Text] = [ "English", "German", "Chinese", "Japanese", "French"];

    public func show_languages(language : Text) : async [ Text] {
    return (languages);
  };
}
```
6. What is wrong with the following code?
```motoko
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
}
```
**Answer:**
deprecated `Array.append` .converting array into buffer, then add element to the buffer, then convert the buffer into array.
```motoko
import Buffer "mo:base/Buffer";

actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    let buffer = Buffer.fromArray<Text>(languages);
    buffer.add(new_language);
    languages := Buffer.toArray(buffer);
    return (languages);
  };
}
```
