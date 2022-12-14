-----------------------------------------------------------------------------
-- Debug:	Debug functions
-- 
-- Part of `Typing Haskell in Haskell', version of November 23, 2000
-- Copyright (c) Mark P Jones and the Oregon Graduate Institute
-- of Science and Technology, 1999-2000
-- 
-- This program is distributed as Free Software under the terms
-- in the file "License" that is included in the distribution
-- of this software, copies of which may be obtained from:
--             http://www.cse.ogi.edu/~mpj/thih/
-- 
-----------------------------------------------------------------------------

module Debug where
import Debug.Trace ( trace )
import PPrint ( PPrint, pretty )

-----------------------------------------------------------------------------
-- This module contains definitions that do not appear in the
-- typeset version of the paper.

debug            :: PPrint a => String -> a -> b -> b
debug msg val res = trace (msg ++ " = " ++ pretty val ++ "\n") res

-----------------------------------------------------------------------------
