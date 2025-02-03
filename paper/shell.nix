let
  pkgs =
    import <nixpkgs> {};
  rust-toolchain = pkgs.symlinkJoin {
    name = "rust-toolchain";
    paths = [pkgs.rustc pkgs.cargo pkgs.rustPlatform.rustcSrc];
  };
in with pkgs;
mkShell {
  nativeBuildInputs = [ pkg-config ];
  buildInputs = [rust-toolchain evcxr openssl];
  packages = [pkg-config openssl maven jdk ];
  LD_LIBRARY_PATH = lib.makeLibraryPath [ openssl ];
}
