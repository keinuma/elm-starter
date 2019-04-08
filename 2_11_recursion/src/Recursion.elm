module Recursion exposing (..)

sumUntil : Int -> Int

{-
  (+) 関数で終わっているため末尾最適化ではない
-}
sumUntil n =
    if n == 1 then
        1
    else
        n + sumUntil (n - 1)

endOptimumSumUntil n =
    sumHelper 0 n

{-
    定義された関数で終わっているため、末尾最適化
-}
sumHelper sum n =
    if n == 0 then
        sum
    else
        sumHelper (sum + n) (n - 1)
