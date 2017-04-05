import Control.Monad  
import Data.Char  
import Data.List.Split

doubleString x   = x++x
splitString x y  = splitOn x y

main = forever $ do  
    putStr "Interpreter for snakeTheLanguage:"  
    l <- getLine
    let _content = l
    let _func = splitString "(" _content
    let _paraTemp = splitString ")" (last(_func))
    let _para =  splitString "," (head(_paraTemp)) 
    if _para == [""] then
        -- validation [todo]
        print _para
    else
        return()

    let _result = [_func!!0] ++ _para
    -- _result 0 -> function naam
    -- _result 1:x -> parameters
    {-|
        Define function calls that get entered on the cmd as seen below
    -}
    if _result !! 0 == "TEST" then 
        putStrLn (doubleString (_result!!1))
    else 
        putStrLn l 


