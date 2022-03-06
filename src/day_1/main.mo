import Debug "mo:base/Debug";
import Array "mo:base/Array";
import Nat "mo:base/Nat";

actor {
  
  //dfx canister call day_1 add '(1,2)'
  public func add(a : Nat, b : Nat) : async Int{
    return a + b;
  };

  //dfx canister call day_1 square '(2)'
  public func square(a : Nat) : async Int{
      return a ** a;
  };

  //dfx canister call day_1 days_to_second '(7)'
  public func days_to_second(days : Nat) : async Int{
    return days * 86400;
  };

  var counter : Nat = 0;
  //dfx canister call day_1 get_counter
  public func get_counter() : async Nat {         
     return counter;
  };

  //dfx canister call day_1 increment_counter
  public func increment_counter() : async Nat {
    counter := counter + 1;
    return counter;
  };
 
  //dfx canister call day_1 clear_counter
  public func clear_counter() : async Nat {    
     counter := 0;
     return counter;
  };

  //dfx canister call day_1 divide '(1,2)'
  public func divide(a : Nat, b : Nat) : async Bool {
    var thing : Int = a % b;
    var result : Bool =  thing > 0;
    return not result;
  };

  //dfx canister call is_even '(2)'
  public func is_even(a : Nat) : async Bool {
     var thing : Nat = a % 2;
     var result : Bool = thing == 0;
     return result;
  };


  let array : [Text] = ["1", "2", "3", "4", "5"];
  public func test() : async () {
      for (value in array.vals()){
          Debug.print(debug_show(value))
      };
  };

  //Challenge 7 : Write a function sum_of_array that takes an array of natural numbers and returns the sum. This function will returns 0 if the array is empty.
  // dfx canister call day_1 sum_of_array '(vec {1;2;3})'
  public func sum_of_array(vals : [Nat]) : async Nat{    
    if(vals.size() == 0){
      return 0;
    };
    var result : Nat = 0;
    for(value in vals.vals()){
        result := result + value;
    };
    return result;
  };

  //Challenge 8 : Write a function maximum that takes an array of natural numbers and returns the maximum value in the array. This function will returns 0 if the array is empty.
  // dfx canister call day_1 maximum '(vec {1;2;3})'
  public func maximum(vals : [Nat]) : async Nat{    
    if(vals.size() == 0){
      return 0;
    };
    var thing = Array.sort(vals, Nat.compare); //default sort asc
    return thing[thing.size() - 1];
  };

  //Challenge 9 : Write a function remove_from_array that takes 2 parameters : an array of natural numbers and a natural number n and 
  //returns a new array where all occurences of n have been removed (order should remain unchanged).
  //dfx canister call day_1 remove_from_array '(vec {1;1;2;3}, 1)'
  public func remove_from_array(vals : [Nat], x : Nat) : async [Nat]{    
    if(vals.size() == 0){
      return [0];
    };
	  var array = Array.filter<Nat>(vals, func (p) { p != x });    
    //var size : Int = array.size();
    //Debug.print(debug_show(size));
    return array;  
  };


};
