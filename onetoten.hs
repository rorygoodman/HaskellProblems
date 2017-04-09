--Exercise 1 Last Element of list
myLast ::[a] -> a
myLast [] = error "No last element found"
myLast (x:[]) = x  
myLast (_:xs) = myLast xs  


--Exercise 2 2nd Last Element of list
myButLast ::[a] -> a
myButLast [] = error "Empty List"
myButLast (x:[]) = error "List of length 1"
myButLast (x:y:[]) = x
myButLast (_:y:xs) = myButLast (y:xs)

--Exercise 3 get Kth element of list
elementAt ::[a] -> Int -> a
elementAt [] _ = error "List Not Long Enough"
elementAt (x:xs) 1 = x
elementAt (x:xs) k = elementAt xs (k-1)

--Exercise 4 Length of List
myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + length xs



