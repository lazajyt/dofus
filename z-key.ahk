SetTitleMatchMode, RegEx
#IfWinActive .*Dofus.*

marker = 0

^z::
if (marker = 0)
{	
	marker = 1
	Loop
	{
		if (marker =0)
		{
			break
		}
		Send {z down}
 		Sleep 100
	}
	Send {z up} 
	return
}

!z::
if (marker = 1)
{
	marker = 0
	return
}

