module MyList where

b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]

boomBangs list = [ if x < 10 then "BOOM!" else "BANG!" | x <- list, even x]

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]

multThree :: (Num a) => a -> a -> a -> a 
multThree x y z = x * y * z

applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]   
zipWith' _ [] _ = []   
zipWith' _ _ [] = []   
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

quicksort :: (Ord a) => [a] -> [a]     
quicksort [] = []     
quicksort (x:xs) =      
    let smallerSorted = quicksort (filter (<x) xs) 
        biggerSorted = quicksort (filter (>x) xs)    
    in  smallerSorted ++ [x] ++ biggerSorted

main = do
    print("My List")
    -- "My List"
    print(b ++ [[1,1,1,1]])
    -- [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3],[1,1,1,1]]
    print([6,6,6]:b)
    -- [[6,6,6],[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
    print(b !! 2)
    -- [1,2,2,3,4]
    print(4 `elem` [3,4,5,6])
    -- True
    print(10 `elem` [3,4,5,6])
    -- False
    print([1..20])
    -- [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    print(['a'..'z'])
    -- "abcdefghijklmnopqrstuvwxyz"
    print(replicate 10 "L")
    -- ["L","L","L","L","L","L","L","L","L","L"]
    print([x*2 | x <- [1..10], x*2 >= 12])
    -- [12,14,16,18,20]
    print(boomBangs [7..13])
    -- ["BOOM!","BANG!","BANG!"]
    print([ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50])
    -- [55,80,100,110]
    print(removeNonUppercase "Hahaha! Ahahaha!")
    -- "HA"
    print(removeNonUppercase "IdontLIKEFROGS")
    -- "ILIKEFROGS"
    print(zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"])
    -- [(5,"im"),(3,"a"),(2,"turtle")]
    print(zip [1..] ["apple", "orange", "cherry", "mango"])
    -- [(1,"apple"),(2,"orange"),(3,"cherry"),(4,"mango")]
    print(rightTriangles')
    -- [(6,8,10)]
    print(applyTwice (multThree 2 2) 9)
    -- 144
    print(zipWith' max [6,3,2,1] [7,3,1,5])
    -- [7,3,2,5]
    print(zipWith' max [6,3,2,1] [7,3,1])
    -- [7,3,2]
    print(quicksort [4,2,7,1,54,3,2])
    -- [1,2,3,4,7,54]