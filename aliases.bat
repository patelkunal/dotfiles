@ECHO OFF
REM doskey ls=dir /b $*
doskey ll=dir $*
doskey ls=dir $*
doskey cat=type $*
doskey ..=cd..
doskey cdh=cd %USERPROFILE%
doskey ~=cdh
doskey grep=find "$1" $2
doskey mv=ren $*
doskey rm=del $*
doskey touch=fsutil file createNew $1 0
doskey ps=PowerShell $*
doskey vsc="\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv" $*
doskey vse="\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\IDE\devenv" $*
doskey vs="\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\IDE\devenv" $*