" Vim syntax file
" >Language:	MCS-51 intel Mnemonics (armA)
" >Maintainer:	Thomas Langewouters <thomas.langewouters@skynet.be>
" Inherit his script: iori yja
" Language: ARMv5-v7 Mnemonics.
" Last Change:	
" Vim URL:	http://www.vim.org/lang.html
" arm Home:	---	
" arm Version: 2.00

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

setlocal iskeyword=a-z,A-Z,48-57,.,_
setlocal isident=a-z,A-Z,48-57,.,_
syn case ignore

syn keyword cTodo		contained TODO FIXME
" a, b r0-7 done with matches
syn keyword armRegister	A B R0 R1 R2 R3 R4 R5 R6 R7 R8
syn keyword armRegister	P0 SP DPL DPH TCON TMOD TL0 TL1 TH0 TH1 P1 SCON SBUF
syn keyword armRegister	P2 IE P3 IP PSW ACC IT0 IE0 IT1 IE1 TR0 TF0 TR1 TF1
syn keyword armRegister	RI TI RB8 TB8 REN SM2 SM1 SM0 EX0 ET0 EX1 ET1 ES ET2
syn keyword armRegister	EADC EA RXD TXD INT0 INT1 T0 T1 WR RD PX0 PT0 PX1 PT1 PS 
syn keyword armRegister	P F1 OV RS0 RS1 F0 AC CY
"ARM
syn keyword armRegister	R9 R10 R11 R12 R13 R14 R15 SP sp LR lr SPSR CPSR CPSR_c CPSR_cxsf BP bp

syn keyword perRegister	DPP PCON I2CDAT I2CADD T3CON T3FD TIMECON HTHSEC SEC MIN HOUR INTVAL DPCON
syn keyword perRegister	IEIP2 PWMCON CFG832 PWM0L PWM0H PWM1L PWM1H SPH ECON EDATA1 EDATA2 EDATA3
syn keyword perRegister	EDATA4 WDCON CHIPID EADRL EADRH T2CON RCAP2L RCAP2H TL2 TH2 DMAL DMAH DMAP
syn keyword perRegister	PLLCON ADCCON2 ADCDATAL ADCDATAH PSMCON DCON I2CCON ADCCON1 ADCOFSL ADCOFSH
syn keyword perRegister	ADCGAINL ADCGAINH ADCCON3 SPIDAT SPICON DAC0L DAC0H DAC1L DAC1H DACCON T2
syn keyword perRegister	T2EX PT2 PADC PSI WDWR WDE WDS WDIR PRE0 PRE1 PRE2 PRE3 CAP2 CNT2 TR2 EXEN2 TCLK
syn keyword perRegister	RCLK EXF2 TF2 CS0 CS1 CS2 CS3 SCONV CCONV DMA ADCI D0EN D0 D1EN D1 I2CI I2CTX
syn keyword perRegister	I2CRS I2CM MDI MCO MDE MDO SPR0 SPR1 CPHA CPOL SPIM SPE WCOL ISPI 

syn keyword armInstr		ADD ADDC SUBB INC DEV MUL DIV MOV MOVC MOVX PUSH POP XCH XCHD
syn keyword armInstr		ACALL LCALL RET RETI AJMP LJMP SJMP JMP JZ JNZ CJNE DJNZ NOP ANL
syn keyword armInstr		ORL XRL CLR CPL RL RLC RR RRC SWAP SETB CPL JC JNC JB JNB JBC 
syn keyword armInstr		ADC ADD AND B BIC BKPT BL BLX BX BXJ CDP CDP2 CLZ CMN CMP CPS CPY
syn keyword armInstr		EOR LDC LDC2 LDM LDR v5TExP LDRB LDRD LDRBT LDREX LDRH LDRSB LDRSH
syn keyword armInstr		LDRT MCR MCR2 MCRR MCRR2 MLA MOV MRC MRC2 MRRC MRRC2 MRS MSR MUL MVN
syn keyword armInstr		ORR PKH v5TExP PLD QADD QADD16 QADD8 QADDSUBX QDADD QDSUB QSUB QSUB16 QSUB8
syn keyword armInstr		QSUBADDX REV RFE RSB RSC SADD SBC SEL SETEND SHADD SHSUB SMLAD SMLAL SMLALD
syn keyword armInstr		v5TExP SMLA SMLAL SMLAW SMLSD SMLSLD SMMLA SMMLS SMMUL SMUAD
syn keyword armInstr		SMULL SMUL SMULW<y> SMUSD SRS SSAT SSUB STC STC2 STM STR STRB STRBT
syn keyword armInstr		STRD STREX v5TExP STRH STRT SUB SWI SWP SWPB SXT TEQ TST UADD UHADD UMAAL
syn keyword armInstr		UMLAL UMULL UQADD UQSUB USAD USAT USUB UXT 

syn keyword armDirective	DB EQU DATA IDATA XDATA BIT CODE DS DBIT DW ORG END CSEG XSEG DSEG ISEG

syn match	armNumericOperator	"[+-/*]"
" numbers
syn match	armBinary8Number	"\(#[01]\{8\}b\)\|\(\D[01]\{8\}b\)"
syn match	armBinary16Number	"\(#[01]\{16\}b\)\|\(\D[01]\{16\}b\)"
" 00dh should not be recognised as a decimal number!!!
syn match	armDecimalNumber	"\(#0\d*d\)\|\(\D0\d*d[^h]\)"
syn match	armHexNumber		"\(#0\x*h\)\|\(\D0\x*h\)"

syn region	armComment		start=";" end="$" contains=cTodo
syn region	armString		start="\"" end="\"\|$"
syn region	armString		start="'" end="'\|$"
syn match	armLabel		"^[^$]\s*[^; \t]\+:"
syn match	armPreprocess		"^\$\w\+\((.*)\)\?"		
syn match	armRelative		"@R[0-7]\|@a\s*+\s*dptr\|@[ab]"

"syn match	armwreg		"\([\s,]\+[ab][\s,]\+\)\|\([\s,]\+[Rr][0-7][\s,]\+\)"

hi def link	armAddressSizes	type
hi def link	armNumericOperator	armOperator
hi def link	armLogicalOperator	armOperator
hi def link	armRelative		armOperator
hi def link	armRelative1		armOperator

hi def link	armBinary8Number	armNumber
hi def link	armBinary16Number	armNumber
hi def link	armHexNumber		armNumber
hi def link	armDecimalNumber	armNumber

hi def link	armRegister	type
hi def link	perRegister	type

hi def link	armPreprocess		armDirective
hi def link	armInclude		armDirective

"  link to standard syn groups so the 'colorschemes' work:
hi def link	armOperator operator
hi def link	armComment  comment
hi def link	armDirective	preproc
hi def link	armNumber   number
"constant
hi def link	armSymbol structure
hi def link	armString  String
hi def link	armSpecial 	comment
"special
hi def link	armInstr keyword
hi def link	armLabel label
hi def link	armPrefix preproc
hi def link	cTodo todo
hi def link	armwreg identifier
hi def link	armwreg1 identifier
hi def link	armwreg2 identifier
hi def link	armwreg3 identifier
hi def link	armwreg4 identifier

let b:current_syntax = "arma"
" vim: ts=8 sw=8 :