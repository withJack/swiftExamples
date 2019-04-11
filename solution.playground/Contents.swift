import UIKit

var x :[Int] = []

for i in 1 ..< 100{
    x.append(i);
}

var d : [Double] = [0.1,1.1,2.2,3.2,4.2,5.1]

//문제 1.
var not3num = x.filter({i->Bool in i%3 != 0 })

//문제 2.
var mul = d.reduce([1.0],{acc,x -> [Double] in [acc[0]*x] }).reduce(0, {acc, double -> Int in Int(double)+acc } )

//문제 3.
var ok = x.map({i -> Bool in i % 3 == 0})

//문제 4.
var abs_big = x.sorted { s1,s2 -> Bool in abs(s1) > abs(s2)}

//문제 5.
var h_total = x.reduce(100,{acc, i -> Int in acc - i})

print(not3num);
print(mul);
print(ok);
print(abs_big);
print(h_total);

