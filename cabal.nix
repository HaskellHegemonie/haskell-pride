{ mkDerivation, ansi-terminal, base, lib }:
mkDerivation {
  pname = "haskell-pride";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ ansi-terminal base ];
  license = lib.licenses.gpl3Plus;
  mainProgram = "haskell-pride";
}
