{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_servant_auth_token_acid (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,5,4,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/vagrant/Desktop/Projects/Haskell/servant-auth-token/.stack-work/install/x86_64-linux-nix/lts-13.10/8.6.3/bin"
libdir     = "/home/vagrant/Desktop/Projects/Haskell/servant-auth-token/.stack-work/install/x86_64-linux-nix/lts-13.10/8.6.3/lib/x86_64-linux-ghc-8.6.3/servant-auth-token-acid-0.5.4.0-ISWqDrrXOr1LDqeVjYMVhJ"
dynlibdir  = "/home/vagrant/Desktop/Projects/Haskell/servant-auth-token/.stack-work/install/x86_64-linux-nix/lts-13.10/8.6.3/lib/x86_64-linux-ghc-8.6.3"
datadir    = "/home/vagrant/Desktop/Projects/Haskell/servant-auth-token/.stack-work/install/x86_64-linux-nix/lts-13.10/8.6.3/share/x86_64-linux-ghc-8.6.3/servant-auth-token-acid-0.5.4.0"
libexecdir = "/home/vagrant/Desktop/Projects/Haskell/servant-auth-token/.stack-work/install/x86_64-linux-nix/lts-13.10/8.6.3/libexec/x86_64-linux-ghc-8.6.3/servant-auth-token-acid-0.5.4.0"
sysconfdir = "/home/vagrant/Desktop/Projects/Haskell/servant-auth-token/.stack-work/install/x86_64-linux-nix/lts-13.10/8.6.3/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "servant_auth_token_acid_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "servant_auth_token_acid_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "servant_auth_token_acid_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "servant_auth_token_acid_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "servant_auth_token_acid_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "servant_auth_token_acid_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
