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
