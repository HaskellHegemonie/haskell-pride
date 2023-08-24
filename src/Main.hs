module Main where
-- import System.Environment
import System.Console.ANSI
import Data.Foldable
import Text.Printf

rainbow :: [Color]
rainbow = [Black, Red, Yellow]

main :: IO()
main = do
  traverse_ (\x -> setSGR [SetColor Background Dull x] >> (printf $ replicate 20 ' ' ++ "\n")) rainbow
  setSGR [Reset]
  return ()
