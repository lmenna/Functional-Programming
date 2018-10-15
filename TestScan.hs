import Control.Parallel

main =
  print ("scanr: ", scanr (+) 0 [1..3],
    " scanl: ", scanl (+) 0 [1..3])
