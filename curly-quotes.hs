curlWord (x:xs) = open x : (map close xs)
  where open  '"'  = '“'
        open  '\'' = '‘'
        open  x    = x
        close '"'  = '”'
        close '\'' = '’'
        close x    = x
curlWord x = x

main = interact $ unlines
                . map (unwords. map curlWord . words)
                . lines
