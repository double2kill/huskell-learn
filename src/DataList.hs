module DataList where

import Data.List

main = do
    print(partition (`elem` ['A'..'Z']) "BOBsidneyMORGANeddy")
    -- ("BOBMORGAN","sidneyeddy")
    print(partition (>3) [1,3,5,6,3,2,1,0,3,7] )
    -- ([5,6,7],[1,3,3,2,1,0,3])
    print(findIndex (==4) [5,3,2,1,6,4] )
    -- Just 5
    print(lines "first line\nsecond line\nthird line")
    -- ["first line","second line","third line"]