{ pkgs ? import <nixpkgs> {} }:
   pkgs.mkShell {
     buildInputs = with pkgs; [
      pixi
     ];
     shellHook = ''
       watch_file pixi.lock
       eval "$(pixi shell-hook)"
     '';
   }
