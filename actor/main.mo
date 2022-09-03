import Array "mo:base/Array";
import Quiksort "./module/Quiksort";
actor {
  public func qsort(a: [Int]) : async [Int] {
    let mtb_a : [var Int] = Array.thaw(a : [Int]);

    let res : [var Int] = Quiksort.quiksort(mtb_a, 0, mtb_a.size());

    let imtb_a : [Int] = Array.freeze(res);

    imtb_a;
  };
};