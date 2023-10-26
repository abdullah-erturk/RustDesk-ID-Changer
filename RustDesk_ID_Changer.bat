
:: INFO:
:: RustDesk Github: https://github.com/rustdesk/rustdesk

:: RustDesk ID Changer Github: https://github.com/abdullah-erturk/RustDesk-ID-Changer

::===============================================================================================================
@echo off
mode con:cols=88 lines=28
title RustDesk ID Changer by mephistooo2 ^| www.TNCTR.com
net file 1>nul 2>nul && goto :Main || powershell -ex unrestricted -Command "Start-Process -Verb RunAs -FilePath '%comspec%' -ArgumentList '/c ""%~fnx0""""'"
goto :eof
::===============================================================================================================
:Main
pushd %temp% >nul 2>&1
cls
mode con:cols=90 lines=30
cls
echo.
echo ==========================================================================================
echo.
echo	  RustDesk ID Changer by mephistooo2 ^| TNCTR.com
echo.
echo	 	  1 - Set RustDesk ID with computer name : "%computername%"
echo.
echo	 	  2 - Set RustDesk ID with 9-digit random numbers
echo.
echo	 	  3 - Set the RustDesk ID to the value you specify
echo.
echo	 	  4 - Exit
echo.
echo ==========================================================================================
echo.
choice /c 1234 /cs /n /m "Make Your Choice : "
echo.
if errorlevel 4 Exit
if errorlevel 3 goto :ID_UserDefined
if errorlevel 2 goto :ID_Random
if errorlevel 1 goto :ID_Host
echo.
::===============================================================================================================
:ID_Host
echo.
@set "0=%~f0" &powershell -nop -c $f=[IO.File]::ReadAllText($env:0)-split':ID_change\:.*';iex($f[1]); X(1) >nul 2>&1
PowerShell.exe -ExecutionPolicy Bypass -File RustDesk_ID_Host.ps1
goto :done
::===============================================================================================================
:ID_Random
echo.
@set "0=%~f0" &powershell -nop -c $f=[IO.File]::ReadAllText($env:0)-split':ID_change\:.*';iex($f[1]); X(1) >nul 2>&1
PowerShell.exe -ExecutionPolicy Bypass -File RustDesk_ID_Random.ps1
goto :done
::===============================================================================================================
:ID_UserDefined
echo.
@set "0=%~f0" &powershell -nop -c $f=[IO.File]::ReadAllText($env:0)-split':ID_change\:.*';iex($f[1]); X(1) >nul 2>&1
PowerShell.exe -ExecutionPolicy Bypass -File RustDesk_ID_UserDefined.ps1
goto :done
::===============================================================================================================
:done
del RustDesk_ID_Host.ps1 >nul 2>&1
del RustDesk_ID_Random.ps1 >nul 2>&1
del RustDesk_ID_UserDefined.ps1 >nul 2>&1
echo.
echo	 PROCESS COMPLETED
echo.
choice /C:MX /N /M "Press M for MAIN MENU -- X for EXIT: "
if errorlevel 2 Exit
if errorlevel 1 goto :Main
::===============================================================================================================
:ID_change: 
$k='*)eHY0=5tL>1K.8uphov/db;^+qWZQ2&N`cwgAkOnr~]Sf$Elma6U#RXzJ9IV4,-C?%x@!(}D\j7y[{GsT3iP_|MB<F'; Add-Type -Ty @'
using System.IO;public class BAT91{public static void Dec(ref string[] f,int x,string fo,string key){unchecked{int n=0,c=255,q=0
,v=91,z=f[x].Length; byte[]b91=new byte[256]; while(c>0) b91[c--]=91; while(c<91) b91[key[c]]=(byte)c++; using (FileStream o=new
FileStream(fo,FileMode.Create)){for(int i=0;i!=z;i++){c=b91[f[x][i]]; if(c==91)continue; if(v==91){v=c;}else{v+=c*91;q|=v<<n;if(
(v&8191)>88){n+=13;}else{n+=14;}v=91;do{o.WriteByte((byte)q);q>>=8;n-=8;}while(n>7);}}if(v!=91)o.WriteByte((byte)(q|v<<n));} }}}
'@; cd -Lit($env:__CD__); function X([int]$x=1){[BAT91]::Dec([ref]$f,$x+1,$x,$k); expand -R $x -F:* .; del $x -force}

:ID_change:[ ID_change
::WRPah***$by*******]u********[et*0)**!`Ft**v5**A)!`w555********eFC2!C[e4Jrv]/kU7ka`0Kct^{H+utNDuej%e*)fs*****3j80_eYF$3H+YJqDSiD+MM
::xQJ[R|dv(xQptFzH**zze***eFC2Ru{e4Jrv]/kU7ka`0Ks2>T].YJ*R.DVwSnc[(cEx+Sm?+v3jHy+1fLHF?Q&*speFeK**Pz&Mm<HZFRmQ^zVn787eVUd&0fqoyujrqV
::v(Nj/N{HhMsft)****6LH*ee?y[{?vb[JO$.cjqcDx)SgP78hjsojYEcLON|>6@{wPf|re0h****!+KE)fjEaq()=E7pER`f,Dw$K{t#oBhUXM}vofB$vfLv}=w<f%M<v8
::hJ,NXNqE!`z9)K2)n;L&5yT,T4K8(YF9ZytNoL&F]zxu;>DX=pJs61iGS]s$d&y2}XXAX<@q|KS@R8fsf62UT}9wD);`T!%vZ);mMNPT)%u>)];7OuejO0bdP}ym#4^%W`
::o^S5\URS,q16E_&@#+;*XeYLZ9G$]G}]sd2$H&EXF[]4Zf/`wgI#Xdo@=>$T8e]u@`yi0s-nTh{bs@([A<@?xH21Z,8G1xh8?Jfc>O3@7R,h+qw9P4[0svQE(DN+r,*Z@[
::O$=8f;(Jpj.dRo`$orf#EA%K(5+V3`RO)<w3^_[wuHSeK3%%vgSY$B,k5!aN8Tlt{1W3Bbs9J~k11^PYwmfyrKdN6R,8)*Y
:ID_change:]
::===============================================================================================================