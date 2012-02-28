{-# LANGUAGE OverloadedStrings #-}

-- | Package for theorem environments.
-- 
-- /For contributors: This module was automatically generated by HaTeX-meta./
-- /So, please, don't make any change here directly, because/
-- /this is intended to be generated automatically from/
-- "Text.LaTeX.Packages.AMSThm" /module via HaTeX-meta,/
-- /and therefore, changes must to be done in these places./

module Text.LaTeX.Packages.AMSThm.Monad
 ( -- * AMSThm package
   amsthm
   -- * AMSThm functions
 , newtheorem
 , theorem
 , proof
 , qedhere
 , TheoremStyle (..)
 , theoremstyle
   ) where

import Text.LaTeX.Base.Writer
import Control.Monad (liftM)
import Text.LaTeX.Base.Render
import Text.LaTeX.Base.Types
import qualified Text.LaTeX.Packages.AMSThm as App
import Text.LaTeX.Packages.AMSThm(TheoremStyle)

{-|
AMSThm package.
 Example:

>  usepackage [] amsthm

-}
amsthm :: PackageName
amsthm = App.amsthm

{-|
Create a new 'theorem' environment type.
   Arguments are environment name (this will be the argument
   when using the 'theorem' function) and the displayed title.
For example:

>  newtheorem "prop" "Proposition"


>  theorem "prop" "This is it."

-}
newtheorem ::   (Monad m) => String -> LaTeXT_ m -> LaTeXT_ m
newtheorem a1 a2
  = do a2 <- extractLaTeX_ a2
       textell ( App.newtheorem a1 a2)


theorem ::   (Monad m) => String -> LaTeXT_ m -> LaTeXT_ m
theorem a1 a2
  = do a2 <- extractLaTeX_ a2
       textell ( App.theorem a1 a2)

{-|
The 'proof' environment. The first optional argument
   is used to put a custom title to the proof.
-}
proof ::   (Monad m) => Maybe (LaTeXT_ m) -> LaTeXT_ m -> LaTeXT_ m
proof a1 a2
  = do a1 <- maybe (return Nothing) (liftM Just . extractLaTeX_) a1
       a2 <- extractLaTeX_ a2
       textell ( App.proof a1 a2)

-- | Insert the /QED/ symbol.

qedhere ::   (Monad m) => LaTeXT_ m
qedhere = do textell ( App.qedhere)

-- | Set the theorem style. Call this function in the preamble.

theoremstyle ::   (Monad m) => TheoremStyle -> LaTeXT_ m
theoremstyle a1 = do textell ( App.theoremstyle a1)


