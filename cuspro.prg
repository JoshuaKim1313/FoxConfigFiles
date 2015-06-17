***************************************************
**
**  Visual Foxpro Custom Procedures 1.0
**
**
**
**
**
**
**
**
**  Data: 06.10.15
**  Written by: Joshua Kim
**
**************************************************

PROCEDURE status
	SQLD1 = "S:/SQAFW/MSTR45_W"
	SQLD2 = "S:/SQAFW/MSTRPBT"
	
	CLEAR
	? "    ********** FOXPRO ENVIRONMENT SETTINGS **********"
	?
	? "    GLOBAL SETTINGS: "
	? "    EXCLUSIVE = " + SET( "EXCLUSIVE" )
	? "    RESOURCE = " + SET( "RESOURCE")
	?
	? "    PATH SETTINGS:"
	? "    PATH = " + SET( "PATH" )
	? "    DEFAULT = " + SYS(5) + SYS(2003)
	?
	? "    DIRECTORY/DRIVE ACCESS:"
	? "    S:/ = " + pResult( DIRECTORY( "S:/" ) )
	? "    " + SQLD1 + " = " + pResult( DIRECTORY( SQLD1 ) )
	? "    " + SQLD2 + " = " + pResult( DIRECTORY( SQLD2 ) )
	?
	? "    **************** END OF SETTINGS *******************"
ENDPROC

FUNCTION pResult( bAns )
	IF( bAns = .T. )
		RETURN "YES"
	ELSE
		RETURN "NO"	
	ENDIF
ENDFUNC  
