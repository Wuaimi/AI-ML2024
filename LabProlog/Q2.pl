natural_number(0).
natural_number(s(X)):-natural_number(X).

minus(X, 0, X).  % ถ้า Y เป็น 0 ค่า X ไม่เปลี่ยนแปลง
minus(s(X), s(Y), Z) :- minus(X, Y, Z).  % ลด X และ Y ลงทีละขั้น

power(_, 0, s(0)).  % X^0 = 1
power(X, s(Y), Z) :- power(X, Y, Z1), multiply(X, Z1, Z).  % X^Y = X * X^(Y-1)

multiply(_, 0, 0).  % X * 0 = 0
multiply(X, s(Y), Z) :- multiply(X, Y, Z1), plus(X, Z1, Z).  % X * Y = X + (X * (Y-1))

plus(0, Y, Y).
plus(s(X), Y, s(Z)) :- plus(X, Y, Z).

