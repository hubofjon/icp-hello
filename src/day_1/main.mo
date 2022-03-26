import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {
  // challenge-1
  public func add (n : Nat, m: Nat) : async Nat {
        return (n+m)
    };

  // challenge-2
  public func square (n : Nat) : async Nat {
        return (n*n)
    };  

  // challenge-3
  public func days_to_second (n : Nat) : async Nat {
        return (n*24*60*60)
    };  

  // challenge-4
  var counter : Nat =0;
  public func increment_counter (n : Nat) : async Nat {
        counter := counter + n;
        return (counter) ;
    }; 

  public func clear_counter () : async Nat {
        counter := 0;
        return (counter) ;
    };  
  // challenge 5
  public func divide (n: Nat, m: Nat) : async Bool {
        let result: Nat = n % m;
        if (result ==0){
          return(true);
        } else {
          return (false);
        }          
     };  
  // challenge-6
  public func is_even (n : Nat) : async Bool {
      if (n % 2 ==0){
        return (true)
      } else {
        return (false)
      }
    };  
  // challenge-7
  var sum_array: Nat =0 ;
  public func sum_of_array (x : [Nat]) : async Nat {
      if (x.size() ==0) {
        return (0);
      } else {
        for (value in x.vals()){
          sum_array += value;
        };
        return (sum_array);
      }

    };  
  // challenge-8
  public func maximum (x : [Nat]) : async Nat {
      if (x.size() ==0) {
        return (0);
      } else {
        return (x.maximum());
      }
    };  
  // challenge-9
  public func remove_from_array (n : Nat, x: [Nat]) : async Nat {
        return (n)
    };
  // challenge-10
  public func selection_sort ( x: [Nat]) : async Nat {
        Array.sortInPlace(x, Nat.compare)
        return (x)
    };
};
