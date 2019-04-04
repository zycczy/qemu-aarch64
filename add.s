.text
.global  _start
_start:                       // Label, not really required
	SEV
	SEV
	MRS   x0, CurrentEL
	CMP   x0, #8	      // if cureent el is el2
	B.EQ  el2_init
	
_stop:   b _stop               //Infinite loop to stop execution

el2_init:
	MSR   SPsel, #1                       // We want to use SP_EL{1,2}
	MRS   x1, MIDR_EL1
	MRS   x2, MPIDR_EL1
	AND   x3, x2, #0xff00
	AND   x4, x2, #0xff
	STR   x2, [x2]
	B     _stop
