:/ SDカードのドライブ文字を取得､環境変数SDDにセット
:/ F:か H: という状況
@echo off
set SDD=
F: 2>"C:res.log"
find "見つかりません。" "C:res.log" >nul 
if %errorlevel% == 0 goto :H else (
SET SDD=F:
goto :End
)
:H
H: 2>"C:res.log"
find "見つかりません。" "C:res.log" >nul
if %errorlevel% == 0 goto :End else SET SDD=H:
:End
%HOMEDRIVE%
exit /b
