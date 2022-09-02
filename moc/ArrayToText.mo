import Int "mo:base/Int";

module {
    public func intArrayToText(a : [var Int]) : Text {
        var t : Text = "[";
        var i : Nat = 0;
        var e : Text = "";
        while (i < a.size()) {
            e := Int.toText(a[i]);

            if(i + 1 < a.size()) {
                t := t # e # ", ";
            } else {
                t := t # e;
            };
            
            i += 1;
        };
        t #= "]";
        return t;
    };

    public func textArrayToText(a : [var Text]) : Text {
        var t : Text = "[";
        var i : Nat = 0;
        var e : Text = "";
        while (i < a.size()) {
            e := a[i];
            if (i + 1 < a.size()) {
                t := t # e # ", ";
            } else {
                t := t # e;
            };
            i += 1;
        };
        t #= "]";
        return t;
    };
};