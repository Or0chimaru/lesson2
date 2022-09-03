import Array "mo:base/Array";
import Int "mo:base/Int";

module {
    func swap(a : [var Int], i : Nat, j : Nat) : [var Int] {
        let t : Int = a[i];
        a[i] := a[j];
        a[j] := t;
        return a;
    };

    func divide(a : [var Int], p : Nat, r : Nat) : Nat {
        let x : Int = a[r - 1];
        var i : Int = p - 1;
        var j : Nat = p;

        while (j + 1 < r) {
            if (a[j] <= x) {
                i := i + 1;
                var ii : Nat = Int.abs(i);
                ignore swap(a, ii, j);
            };
            j := j + 1;
        };

        ignore swap(a, Int.abs(i + 1), r - 1);

        return Int.abs(i + 1);
    };

    public func quiksort(a : [var Int], p : Nat, r : Nat) : [var Int]{
        if (p + 1 < r) {
            let q = divide(a, p, r);
            ignore quiksort(a, p, q);
            ignore quiksort(a, q + 1, r);
        };
        return a;
    };
}