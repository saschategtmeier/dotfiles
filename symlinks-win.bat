@echo off

if not exist ..\.dotfiles\ (
  echo Please execute this command from within the .dotfiles project.
  Exit /b
)

echo Starting to create symlinks...

mklink /H %USERPROFILE%\.bashrc .\.bashrc
mklink /J %USERPROFILE%\AppData\Local\nvim .\nvim
