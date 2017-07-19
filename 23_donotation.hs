foo :: Maybe String  
foo = Just 3   >>= (\x -> 
      Just "!" >>= (\y -> 
      Just (show x ++ y)))  

foo2 :: Maybe String
foo2 = do
    x <- Just 3
    y <- Just "!"
    Just (show x ++ y)