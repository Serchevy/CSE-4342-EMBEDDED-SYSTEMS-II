;******************************************************************************
;* TI ARM G3 C/C++ Codegen                                              PC v20.2.7.LTS *
;* Date/Time created: Thu Feb 15 11:21:44 2024                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../gpio.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM G3 C/C++ Codegen PC v20.2.7.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\serva\OneDrive\Documents\Embedded_2_Labs\Lab3\Debug")
;	C:\ti\ccs1240\ccs\tools\compiler\ti-cgt-arm_20.2.7.LTS\bin\armacpia.exe -@C:\\Users\\serva\\AppData\\Local\\Temp\\{CD93D0D6-E6DF-440D-89A7-621D7B98813B} 
	.sect	".text"
	.clink
	.thumbfunc enablePort
	.thumb
	.global	enablePort

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("enablePort")
	.dwattr $C$DW$1, DW_AT_low_pc(enablePort)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("enablePort")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../gpio.c",line 48,column 1,is_stmt,address enablePort,isa 1

	.dwfde $C$DW$CIE, enablePort
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("port")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: enablePort                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
enablePort:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("port")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg13 0]

        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |48| 
	.dwpsn	file "../gpio.c",line 49,column 5,is_stmt,isa 1
        B         ||$C$L7||             ; [DPU_V7M3_PIPE] |49| 
        ; BRANCH OCCURS {||$C$L7||}      ; [] |49| 
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../gpio.c",line 52,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |52| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |52| 
        ORR       A1, A1, #1            ; [DPU_V7M3_PIPE] |52| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |52| 
	.dwpsn	file "../gpio.c",line 53,column 13,is_stmt,isa 1
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |53| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |53| 
        BIC       A1, A1, #1            ; [DPU_V7M3_PIPE] |53| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |53| 
	.dwpsn	file "../gpio.c",line 54,column 13,is_stmt,isa 1
        B         ||$C$L8||             ; [DPU_V7M3_PIPE] |54| 
        ; BRANCH OCCURS {||$C$L8||}      ; [] |54| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../gpio.c",line 56,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |56| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |56| 
        ORR       A1, A1, #2            ; [DPU_V7M3_PIPE] |56| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |56| 
	.dwpsn	file "../gpio.c",line 57,column 13,is_stmt,isa 1
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |57| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |57| 
        BIC       A1, A1, #2            ; [DPU_V7M3_PIPE] |57| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |57| 
	.dwpsn	file "../gpio.c",line 58,column 13,is_stmt,isa 1
        B         ||$C$L8||             ; [DPU_V7M3_PIPE] |58| 
        ; BRANCH OCCURS {||$C$L8||}      ; [] |58| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../gpio.c",line 60,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |60| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |60| 
        ORR       A1, A1, #4            ; [DPU_V7M3_PIPE] |60| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |60| 
	.dwpsn	file "../gpio.c",line 61,column 13,is_stmt,isa 1
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |61| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |61| 
        BIC       A1, A1, #4            ; [DPU_V7M3_PIPE] |61| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |61| 
	.dwpsn	file "../gpio.c",line 62,column 13,is_stmt,isa 1
        B         ||$C$L8||             ; [DPU_V7M3_PIPE] |62| 
        ; BRANCH OCCURS {||$C$L8||}      ; [] |62| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwpsn	file "../gpio.c",line 64,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |64| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |64| 
        ORR       A1, A1, #8            ; [DPU_V7M3_PIPE] |64| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |64| 
	.dwpsn	file "../gpio.c",line 65,column 13,is_stmt,isa 1
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |65| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |65| 
        BIC       A1, A1, #8            ; [DPU_V7M3_PIPE] |65| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |65| 
	.dwpsn	file "../gpio.c",line 66,column 13,is_stmt,isa 1
        B         ||$C$L8||             ; [DPU_V7M3_PIPE] |66| 
        ; BRANCH OCCURS {||$C$L8||}      ; [] |66| 
;* --------------------------------------------------------------------------*
||$C$L5||:    
	.dwpsn	file "../gpio.c",line 68,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |68| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |68| 
        ORR       A1, A1, #16           ; [DPU_V7M3_PIPE] |68| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |68| 
	.dwpsn	file "../gpio.c",line 69,column 13,is_stmt,isa 1
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |69| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |69| 
        BIC       A1, A1, #16           ; [DPU_V7M3_PIPE] |69| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |69| 
	.dwpsn	file "../gpio.c",line 70,column 13,is_stmt,isa 1
        B         ||$C$L8||             ; [DPU_V7M3_PIPE] |70| 
        ; BRANCH OCCURS {||$C$L8||}      ; [] |70| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
	.dwpsn	file "../gpio.c",line 72,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |72| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |72| 
        ORR       A1, A1, #32           ; [DPU_V7M3_PIPE] |72| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |72| 
	.dwpsn	file "../gpio.c",line 73,column 13,is_stmt,isa 1
        LDR       A2, $C$CON2           ; [DPU_V7M3_PIPE] |73| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |73| 
        BIC       A1, A1, #32           ; [DPU_V7M3_PIPE] |73| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |73| 
	.dwpsn	file "../gpio.c",line 74,column 5,is_stmt,isa 1
        B         ||$C$L8||             ; [DPU_V7M3_PIPE] |74| 
        ; BRANCH OCCURS {||$C$L8||}      ; [] |74| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
	.dwpsn	file "../gpio.c",line 49,column 5,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |49| 
        LDR       A2, $C$CON3           ; [DPU_V7M3_PIPE] |49| 
        SUBS      A1, A1, A2            ; [DPU_V7M3_PIPE] |49| 
        BEQ       ||$C$L1||             ; [DPU_V7M3_PIPE] |49| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |49| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |49| 
        BEQ       ||$C$L2||             ; [DPU_V7M3_PIPE] |49| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |49| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |49| 
        BEQ       ||$C$L3||             ; [DPU_V7M3_PIPE] |49| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |49| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |49| 
        BEQ       ||$C$L4||             ; [DPU_V7M3_PIPE] |49| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |49| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #3801088      ; [DPU_V7M3_PIPE] |49| 
        BEQ       ||$C$L5||             ; [DPU_V7M3_PIPE] |49| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |49| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |49| 
        BEQ       ||$C$L6||             ; [DPU_V7M3_PIPE] |49| 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |49| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
	.dwpsn	file "../gpio.c",line 75,column 5,is_stmt,isa 1
        ; Begin 3 cycle delay ; [DPU_V7M3_PIPE] |75| 
        NOP       ; [DPU_V7M3_PIPE] |75| 
        NOP       ; [DPU_V7M3_PIPE] |75| 
        NOP       ; [DPU_V7M3_PIPE] |75| 
        ; End   3 cycle delay. ; [DPU_V7M3_PIPE] |75| 
	.dwpsn	file "../gpio.c",line 76,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x4c)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.clink
	.thumbfunc disablePort
	.thumb
	.global	disablePort

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("disablePort")
	.dwattr $C$DW$5, DW_AT_low_pc(disablePort)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("disablePort")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x4e)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../gpio.c",line 79,column 1,is_stmt,address disablePort,isa 1

	.dwfde $C$DW$CIE, disablePort
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("port")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: disablePort                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
disablePort:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("port")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg13 0]

        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |79| 
	.dwpsn	file "../gpio.c",line 80,column 5,is_stmt,isa 1
        B         ||$C$L15||            ; [DPU_V7M3_PIPE] |80| 
        ; BRANCH OCCURS {||$C$L15||}     ; [] |80| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
	.dwpsn	file "../gpio.c",line 83,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |83| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |83| 
        BIC       A1, A1, #1            ; [DPU_V7M3_PIPE] |83| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |83| 
	.dwpsn	file "../gpio.c",line 84,column 13,is_stmt,isa 1
        B         ||$C$L16||            ; [DPU_V7M3_PIPE] |84| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |84| 
;* --------------------------------------------------------------------------*
||$C$L10||:    
	.dwpsn	file "../gpio.c",line 86,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |86| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |86| 
        BIC       A1, A1, #2            ; [DPU_V7M3_PIPE] |86| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |86| 
	.dwpsn	file "../gpio.c",line 87,column 13,is_stmt,isa 1
        B         ||$C$L16||            ; [DPU_V7M3_PIPE] |87| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |87| 
;* --------------------------------------------------------------------------*
||$C$L11||:    
	.dwpsn	file "../gpio.c",line 89,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |89| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |89| 
        BIC       A1, A1, #4            ; [DPU_V7M3_PIPE] |89| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |89| 
	.dwpsn	file "../gpio.c",line 90,column 13,is_stmt,isa 1
        B         ||$C$L16||            ; [DPU_V7M3_PIPE] |90| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |90| 
;* --------------------------------------------------------------------------*
||$C$L12||:    
	.dwpsn	file "../gpio.c",line 92,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |92| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |92| 
        BIC       A1, A1, #8            ; [DPU_V7M3_PIPE] |92| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |92| 
	.dwpsn	file "../gpio.c",line 93,column 13,is_stmt,isa 1
        B         ||$C$L16||            ; [DPU_V7M3_PIPE] |93| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |93| 
;* --------------------------------------------------------------------------*
||$C$L13||:    
	.dwpsn	file "../gpio.c",line 95,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |95| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |95| 
        BIC       A1, A1, #16           ; [DPU_V7M3_PIPE] |95| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |95| 
	.dwpsn	file "../gpio.c",line 96,column 13,is_stmt,isa 1
        B         ||$C$L16||            ; [DPU_V7M3_PIPE] |96| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |96| 
;* --------------------------------------------------------------------------*
||$C$L14||:    
	.dwpsn	file "../gpio.c",line 98,column 13,is_stmt,isa 1
        LDR       A2, $C$CON1           ; [DPU_V7M3_PIPE] |98| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |98| 
        BIC       A1, A1, #32           ; [DPU_V7M3_PIPE] |98| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |98| 
	.dwpsn	file "../gpio.c",line 99,column 5,is_stmt,isa 1
        B         ||$C$L16||            ; [DPU_V7M3_PIPE] |99| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |99| 
;* --------------------------------------------------------------------------*
||$C$L15||:    
	.dwpsn	file "../gpio.c",line 80,column 5,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |80| 
        LDR       A2, $C$CON3           ; [DPU_V7M3_PIPE] |80| 
        SUBS      A1, A1, A2            ; [DPU_V7M3_PIPE] |80| 
        BEQ       ||$C$L9||             ; [DPU_V7M3_PIPE] |80| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |80| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |80| 
        BEQ       ||$C$L10||            ; [DPU_V7M3_PIPE] |80| 
        ; BRANCHCC OCCURS {||$C$L10||}   ; [] |80| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |80| 
        BEQ       ||$C$L11||            ; [DPU_V7M3_PIPE] |80| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |80| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |80| 
        BEQ       ||$C$L12||            ; [DPU_V7M3_PIPE] |80| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |80| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #3801088      ; [DPU_V7M3_PIPE] |80| 
        BEQ       ||$C$L13||            ; [DPU_V7M3_PIPE] |80| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |80| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |80| 
        BEQ       ||$C$L14||            ; [DPU_V7M3_PIPE] |80| 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |80| 
;* --------------------------------------------------------------------------*
||$C$L16||:    
	.dwpsn	file "../gpio.c",line 100,column 5,is_stmt,isa 1
        ; Begin 3 cycle delay ; [DPU_V7M3_PIPE] |100| 
        NOP       ; [DPU_V7M3_PIPE] |100| 
        NOP       ; [DPU_V7M3_PIPE] |100| 
        NOP       ; [DPU_V7M3_PIPE] |100| 
        ; End   3 cycle delay. ; [DPU_V7M3_PIPE] |100| 
	.dwpsn	file "../gpio.c",line 101,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x65)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text"
	.clink
	.thumbfunc selectPinPushPullOutput
	.thumb
	.global	selectPinPushPullOutput

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("selectPinPushPullOutput")
	.dwattr $C$DW$9, DW_AT_low_pc(selectPinPushPullOutput)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("selectPinPushPullOutput")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x67)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$9, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x67)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 104,column 1,is_stmt,address selectPinPushPullOutput,isa 1

	.dwfde $C$DW$CIE, selectPinPushPullOutput
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("port")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("pin")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: selectPinPushPullOutput                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
selectPinPushPullOutput:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("port")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg13 0]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("p")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg13 4]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("pin")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |104| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |104| 
	.dwpsn	file "../gpio.c",line 106,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |106| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |106| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |106| 
        ADD       A1, A1, #8704         ; [DPU_V7M3_PIPE] |106| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |106| 
	.dwpsn	file "../gpio.c",line 107,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |107| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |107| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |107| 
	.dwpsn	file "../gpio.c",line 108,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |108| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |108| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |108| 
        ADDS      A1, A1, #128          ; [DPU_V7M3_PIPE] |108| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |108| 
	.dwpsn	file "../gpio.c",line 109,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |109| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |109| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |109| 
	.dwpsn	file "../gpio.c",line 110,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |110| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |110| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |110| 
        ADD       A1, A1, #9216         ; [DPU_V7M3_PIPE] |110| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |110| 
	.dwpsn	file "../gpio.c",line 111,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |111| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |111| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |111| 
	.dwpsn	file "../gpio.c",line 112,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x70)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text"
	.clink
	.thumbfunc selectPinOpenDrainOutput
	.thumb
	.global	selectPinOpenDrainOutput

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("selectPinOpenDrainOutput")
	.dwattr $C$DW$16, DW_AT_low_pc(selectPinOpenDrainOutput)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("selectPinOpenDrainOutput")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x72)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$16, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x72)
	.dwattr $C$DW$16, DW_AT_decl_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 115,column 1,is_stmt,address selectPinOpenDrainOutput,isa 1

	.dwfde $C$DW$CIE, selectPinOpenDrainOutput
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("port")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg0]

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("pin")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: selectPinOpenDrainOutput                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
selectPinOpenDrainOutput:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("port")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg13 0]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("p")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg13 4]

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("pin")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |115| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |115| 
	.dwpsn	file "../gpio.c",line 117,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |117| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |117| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |117| 
        ADD       A1, A1, #8704         ; [DPU_V7M3_PIPE] |117| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |117| 
	.dwpsn	file "../gpio.c",line 118,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |118| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |118| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |118| 
	.dwpsn	file "../gpio.c",line 119,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |119| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |119| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |119| 
        ADDS      A1, A1, #128          ; [DPU_V7M3_PIPE] |119| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |119| 
	.dwpsn	file "../gpio.c",line 120,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |120| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |120| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |120| 
	.dwpsn	file "../gpio.c",line 121,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |121| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |121| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |121| 
        ADD       A1, A1, #9216         ; [DPU_V7M3_PIPE] |121| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |121| 
	.dwpsn	file "../gpio.c",line 122,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |122| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |122| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |122| 
	.dwpsn	file "../gpio.c",line 123,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x7b)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"
	.clink
	.thumbfunc selectPinDigitalInput
	.thumb
	.global	selectPinDigitalInput

$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("selectPinDigitalInput")
	.dwattr $C$DW$23, DW_AT_low_pc(selectPinDigitalInput)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("selectPinDigitalInput")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x7d)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$23, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$23, DW_AT_decl_column(0x06)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 126,column 1,is_stmt,address selectPinDigitalInput,isa 1

	.dwfde $C$DW$CIE, selectPinDigitalInput
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("port")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg0]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("pin")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: selectPinDigitalInput                                      *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
selectPinDigitalInput:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("port")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg13 0]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("p")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg13 4]

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("pin")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |126| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |126| 
	.dwpsn	file "../gpio.c",line 128,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |128| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |128| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |128| 
        ADDS      A1, A1, #128          ; [DPU_V7M3_PIPE] |128| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |128| 
	.dwpsn	file "../gpio.c",line 129,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |129| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |129| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |129| 
	.dwpsn	file "../gpio.c",line 130,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |130| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |130| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |130| 
        ADD       A1, A1, #9216         ; [DPU_V7M3_PIPE] |130| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |130| 
	.dwpsn	file "../gpio.c",line 131,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |131| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |131| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |131| 
	.dwpsn	file "../gpio.c",line 132,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |132| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |132| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |132| 
        ADD       A1, A1, #9600         ; [DPU_V7M3_PIPE] |132| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |132| 
	.dwpsn	file "../gpio.c",line 133,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |133| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |133| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |133| 
	.dwpsn	file "../gpio.c",line 134,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x86)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.clink
	.thumbfunc selectPinAnalogInput
	.thumb
	.global	selectPinAnalogInput

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("selectPinAnalogInput")
	.dwattr $C$DW$30, DW_AT_low_pc(selectPinAnalogInput)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("selectPinAnalogInput")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x88)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$30, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x88)
	.dwattr $C$DW$30, DW_AT_decl_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 137,column 1,is_stmt,address selectPinAnalogInput,isa 1

	.dwfde $C$DW$CIE, selectPinAnalogInput
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("port")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg0]

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("pin")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: selectPinAnalogInput                                       *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
selectPinAnalogInput:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("port")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg13 0]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("p")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg13 4]

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("pin")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |137| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |137| 
	.dwpsn	file "../gpio.c",line 139,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |139| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |139| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |139| 
        ADD       A1, A1, #9216         ; [DPU_V7M3_PIPE] |139| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |139| 
	.dwpsn	file "../gpio.c",line 140,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |140| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |140| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |140| 
	.dwpsn	file "../gpio.c",line 141,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |141| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |141| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |141| 
        ADD       A1, A1, #9600         ; [DPU_V7M3_PIPE] |141| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |141| 
	.dwpsn	file "../gpio.c",line 142,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |142| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |142| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |142| 
	.dwpsn	file "../gpio.c",line 143,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |143| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |143| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |143| 
        ADD       A1, A1, #1152         ; [DPU_V7M3_PIPE] |143| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |143| 
	.dwpsn	file "../gpio.c",line 144,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |144| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |144| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |144| 
	.dwpsn	file "../gpio.c",line 145,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x91)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text"
	.clink
	.thumbfunc setPinCommitControl
	.thumb
	.global	setPinCommitControl

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("setPinCommitControl")
	.dwattr $C$DW$37, DW_AT_low_pc(setPinCommitControl)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("setPinCommitControl")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x93)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$37, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0x93)
	.dwattr $C$DW$37, DW_AT_decl_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 148,column 1,is_stmt,address setPinCommitControl,isa 1

	.dwfde $C$DW$CIE, setPinCommitControl
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("port")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg0]

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("pin")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: setPinCommitControl                                        *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
setPinCommitControl:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("port")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg13 0]

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("p")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg13 4]

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("pin")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |148| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |148| 
	.dwpsn	file "../gpio.c",line 149,column 5,is_stmt,isa 1
        B         ||$C$L23||            ; [DPU_V7M3_PIPE] |149| 
        ; BRANCH OCCURS {||$C$L23||}     ; [] |149| 
;* --------------------------------------------------------------------------*
||$C$L17||:    
	.dwpsn	file "../gpio.c",line 152,column 13,is_stmt,isa 1
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |152| 
        LDR       A2, $C$CON4           ; [DPU_V7M3_PIPE] |152| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |152| 
	.dwpsn	file "../gpio.c",line 153,column 13,is_stmt,isa 1
        B         ||$C$L24||            ; [DPU_V7M3_PIPE] |153| 
        ; BRANCH OCCURS {||$C$L24||}     ; [] |153| 
;* --------------------------------------------------------------------------*
||$C$L18||:    
	.dwpsn	file "../gpio.c",line 155,column 13,is_stmt,isa 1
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |155| 
        LDR       A2, $C$CON6           ; [DPU_V7M3_PIPE] |155| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |155| 
	.dwpsn	file "../gpio.c",line 156,column 13,is_stmt,isa 1
        B         ||$C$L24||            ; [DPU_V7M3_PIPE] |156| 
        ; BRANCH OCCURS {||$C$L24||}     ; [] |156| 
;* --------------------------------------------------------------------------*
||$C$L19||:    
	.dwpsn	file "../gpio.c",line 158,column 13,is_stmt,isa 1
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |158| 
        LDR       A2, $C$CON7           ; [DPU_V7M3_PIPE] |158| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |158| 
	.dwpsn	file "../gpio.c",line 159,column 13,is_stmt,isa 1
        B         ||$C$L24||            ; [DPU_V7M3_PIPE] |159| 
        ; BRANCH OCCURS {||$C$L24||}     ; [] |159| 
;* --------------------------------------------------------------------------*
||$C$L20||:    
	.dwpsn	file "../gpio.c",line 161,column 13,is_stmt,isa 1
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |161| 
        LDR       A2, $C$CON8           ; [DPU_V7M3_PIPE] |161| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |161| 
	.dwpsn	file "../gpio.c",line 162,column 13,is_stmt,isa 1
        B         ||$C$L24||            ; [DPU_V7M3_PIPE] |162| 
        ; BRANCH OCCURS {||$C$L24||}     ; [] |162| 
;* --------------------------------------------------------------------------*
||$C$L21||:    
	.dwpsn	file "../gpio.c",line 164,column 13,is_stmt,isa 1
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |164| 
        LDR       A2, $C$CON9           ; [DPU_V7M3_PIPE] |164| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |164| 
	.dwpsn	file "../gpio.c",line 165,column 13,is_stmt,isa 1
        B         ||$C$L24||            ; [DPU_V7M3_PIPE] |165| 
        ; BRANCH OCCURS {||$C$L24||}     ; [] |165| 
;* --------------------------------------------------------------------------*
||$C$L22||:    
	.dwpsn	file "../gpio.c",line 167,column 13,is_stmt,isa 1
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |167| 
        LDR       A2, $C$CON10          ; [DPU_V7M3_PIPE] |167| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |167| 
	.dwpsn	file "../gpio.c",line 168,column 5,is_stmt,isa 1
        B         ||$C$L24||            ; [DPU_V7M3_PIPE] |168| 
        ; BRANCH OCCURS {||$C$L24||}     ; [] |168| 
;* --------------------------------------------------------------------------*
||$C$L23||:    
	.dwpsn	file "../gpio.c",line 149,column 5,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |149| 
        LDR       A2, $C$CON3           ; [DPU_V7M3_PIPE] |149| 
        SUBS      A1, A1, A2            ; [DPU_V7M3_PIPE] |149| 
        BEQ       ||$C$L17||            ; [DPU_V7M3_PIPE] |149| 
        ; BRANCHCC OCCURS {||$C$L17||}   ; [] |149| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |149| 
        BEQ       ||$C$L18||            ; [DPU_V7M3_PIPE] |149| 
        ; BRANCHCC OCCURS {||$C$L18||}   ; [] |149| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |149| 
        BEQ       ||$C$L19||            ; [DPU_V7M3_PIPE] |149| 
        ; BRANCHCC OCCURS {||$C$L19||}   ; [] |149| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |149| 
        BEQ       ||$C$L20||            ; [DPU_V7M3_PIPE] |149| 
        ; BRANCHCC OCCURS {||$C$L20||}   ; [] |149| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #3801088      ; [DPU_V7M3_PIPE] |149| 
        BEQ       ||$C$L21||            ; [DPU_V7M3_PIPE] |149| 
        ; BRANCHCC OCCURS {||$C$L21||}   ; [] |149| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |149| 
        BEQ       ||$C$L22||            ; [DPU_V7M3_PIPE] |149| 
        ; BRANCHCC OCCURS {||$C$L22||}   ; [] |149| 
;* --------------------------------------------------------------------------*
||$C$L24||:    
	.dwpsn	file "../gpio.c",line 170,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |170| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |170| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |170| 
        ADD       A1, A1, #9472         ; [DPU_V7M3_PIPE] |170| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |170| 
	.dwpsn	file "../gpio.c",line 171,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |171| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |171| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |171| 
	.dwpsn	file "../gpio.c",line 172,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0xac)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text"
	.clink
	.thumbfunc enablePinPullup
	.thumb
	.global	enablePinPullup

$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("enablePinPullup")
	.dwattr $C$DW$44, DW_AT_low_pc(enablePinPullup)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("enablePinPullup")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0xae)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$44, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$44, DW_AT_decl_line(0xae)
	.dwattr $C$DW$44, DW_AT_decl_column(0x06)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 175,column 1,is_stmt,address enablePinPullup,isa 1

	.dwfde $C$DW$CIE, enablePinPullup
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("port")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg0]

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("pin")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: enablePinPullup                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
enablePinPullup:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("port")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg13 0]

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("p")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg13 4]

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("pin")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |175| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |175| 
	.dwpsn	file "../gpio.c",line 177,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |177| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |177| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |177| 
        ADD       A1, A1, #8832         ; [DPU_V7M3_PIPE] |177| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |177| 
	.dwpsn	file "../gpio.c",line 178,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |178| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |178| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |178| 
	.dwpsn	file "../gpio.c",line 179,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0xb3)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits		0x400fe608,32

	.align	4
||$C$CON2||:	.bits		0x400fe06c,32

	.sect	".text"
	.clink
	.thumbfunc disablePinPullup
	.thumb
	.global	disablePinPullup

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("disablePinPullup")
	.dwattr $C$DW$51, DW_AT_low_pc(disablePinPullup)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("disablePinPullup")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0xb5)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$51, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$51, DW_AT_decl_column(0x06)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 182,column 1,is_stmt,address disablePinPullup,isa 1

	.dwfde $C$DW$CIE, disablePinPullup
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("port")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg0]

$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("pin")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: disablePinPullup                                           *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
disablePinPullup:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("port")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg13 0]

$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("p")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg13 4]

$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("pin")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |182| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |182| 
	.dwpsn	file "../gpio.c",line 184,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |184| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |184| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |184| 
        ADD       A1, A1, #8832         ; [DPU_V7M3_PIPE] |184| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |184| 
	.dwpsn	file "../gpio.c",line 185,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |185| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |185| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |185| 
	.dwpsn	file "../gpio.c",line 186,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0xba)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.clink
	.thumbfunc enablePinPulldown
	.thumb
	.global	enablePinPulldown

$C$DW$58	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$58, DW_AT_name("enablePinPulldown")
	.dwattr $C$DW$58, DW_AT_low_pc(enablePinPulldown)
	.dwattr $C$DW$58, DW_AT_high_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("enablePinPulldown")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0xbc)
	.dwattr $C$DW$58, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$58, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$58, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$58, DW_AT_decl_column(0x06)
	.dwattr $C$DW$58, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 189,column 1,is_stmt,address enablePinPulldown,isa 1

	.dwfde $C$DW$CIE, enablePinPulldown
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_name("port")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg0]

$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_name("pin")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: enablePinPulldown                                          *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
enablePinPulldown:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("port")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg13 0]

$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("p")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_breg13 4]

$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("pin")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |189| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |189| 
	.dwpsn	file "../gpio.c",line 191,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |191| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |191| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |191| 
        ADD       A1, A1, #8960         ; [DPU_V7M3_PIPE] |191| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |191| 
	.dwpsn	file "../gpio.c",line 192,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |192| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |192| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |192| 
	.dwpsn	file "../gpio.c",line 193,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$58, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$58, DW_AT_TI_end_line(0xc1)
	.dwattr $C$DW$58, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$58

	.sect	".text"
	.clink
	.thumbfunc disablePinPulldown
	.thumb
	.global	disablePinPulldown

$C$DW$65	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$65, DW_AT_name("disablePinPulldown")
	.dwattr $C$DW$65, DW_AT_low_pc(disablePinPulldown)
	.dwattr $C$DW$65, DW_AT_high_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("disablePinPulldown")
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$65, DW_AT_TI_begin_line(0xc3)
	.dwattr $C$DW$65, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$65, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$65, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$65, DW_AT_decl_column(0x06)
	.dwattr $C$DW$65, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 196,column 1,is_stmt,address disablePinPulldown,isa 1

	.dwfde $C$DW$CIE, disablePinPulldown
$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("port")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg0]

$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_name("pin")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: disablePinPulldown                                         *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
disablePinPulldown:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("port")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg13 0]

$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("p")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg13 4]

$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("pin")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |196| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |196| 
	.dwpsn	file "../gpio.c",line 198,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |198| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |198| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |198| 
        ADD       A1, A1, #8960         ; [DPU_V7M3_PIPE] |198| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |198| 
	.dwpsn	file "../gpio.c",line 199,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |199| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |199| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |199| 
	.dwpsn	file "../gpio.c",line 200,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$65, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$65, DW_AT_TI_end_line(0xc8)
	.dwattr $C$DW$65, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$65

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON3||:	.bits		0x42087f80,32

	.sect	".text"
	.clink
	.thumbfunc setPinAuxFunction
	.thumb
	.global	setPinAuxFunction

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("setPinAuxFunction")
	.dwattr $C$DW$72, DW_AT_low_pc(setPinAuxFunction)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("setPinAuxFunction")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0xca)
	.dwattr $C$DW$72, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$72, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$72, DW_AT_decl_line(0xca)
	.dwattr $C$DW$72, DW_AT_decl_column(0x06)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../gpio.c",line 203,column 1,is_stmt,address setPinAuxFunction,isa 1

	.dwfde $C$DW$CIE, setPinAuxFunction
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("port")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg0]

$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_name("pin")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg1]

$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_name("fn")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("fn")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg2]


;*****************************************************************************
;* FUNCTION NAME: setPinAuxFunction                                          *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,SP,SR                                *
;*   Regs Used         : A1,A2,A3,A4,V1,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 16 Auto + 8 Save = 24 byte                 *
;*****************************************************************************
setPinAuxFunction:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A1, A2, A3, A4, V1, LR} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
	.dwcfi	save_reg_to_mem, 3, -12
	.dwcfi	save_reg_to_mem, 2, -16
	.dwcfi	save_reg_to_mem, 1, -20
	.dwcfi	save_reg_to_mem, 0, -24
$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("port")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg13 0]

$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("fn")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("fn")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg13 4]

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("p")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_breg13 8]

$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("pin")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_breg13 12]

        STR       A3, [SP, #4]          ; [DPU_V7M3_PIPE] |203| 
        STRB      A2, [SP, #12]         ; [DPU_V7M3_PIPE] |203| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |203| 
	.dwpsn	file "../gpio.c",line 205,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |205| 
        CMP       A1, #15               ; [DPU_V7M3_PIPE] |205| 
        BHI       ||$C$L25||            ; [DPU_V7M3_PIPE] |205| 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |205| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../gpio.c",line 206,column 9,is_stmt,isa 1
        LDRB      A2, [SP, #12]         ; [DPU_V7M3_PIPE] |206| 
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |206| 
        LSLS      A2, A2, #2            ; [DPU_V7M3_PIPE] |206| 
        LSLS      A1, A1, A2            ; [DPU_V7M3_PIPE] |206| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |206| 
        B         ||$C$L32||            ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS {||$C$L32||}     ; [] 
;* --------------------------------------------------------------------------*
||$C$L25||:    
	.dwpsn	file "../gpio.c",line 208,column 9,is_stmt,isa 1
        LDRB      A3, [SP, #12]         ; [DPU_V7M3_PIPE] |208| 
        LDR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |208| 
        MOVS      A1, #15               ; [DPU_V7M3_PIPE] |208| 
        LSLS      A3, A3, #2            ; [DPU_V7M3_PIPE] |208| 
        LSLS      A1, A1, A3            ; [DPU_V7M3_PIPE] |208| 
        ANDS      A1, A1, A2            ; [DPU_V7M3_PIPE] |208| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |208| 
	.dwpsn	file "../gpio.c",line 209,column 5,is_stmt,isa 1
        B         ||$C$L32||            ; [DPU_V7M3_PIPE] |209| 
        ; BRANCH OCCURS {||$C$L32||}     ; [] |209| 
;* --------------------------------------------------------------------------*
||$C$L26||:    
	.dwpsn	file "../gpio.c",line 212,column 13,is_stmt,isa 1
        LDR       A1, $C$CON11          ; [DPU_V7M3_PIPE] |212| 
        LDRB      V1, [SP, #12]         ; [DPU_V7M3_PIPE] |212| 
        LDR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |212| 
        LDR       A3, [SP, #4]          ; [DPU_V7M3_PIPE] |212| 
        LDR       A4, $C$CON11          ; [DPU_V7M3_PIPE] |212| 
        LSLS      V1, V1, #2            ; [DPU_V7M3_PIPE] |212| 
        MOVS      A1, #15               ; [DPU_V7M3_PIPE] |212| 
        LSLS      A1, A1, V1            ; [DPU_V7M3_PIPE] |212| 
        BICS      A2, A2, A1            ; [DPU_V7M3_PIPE] |212| 
        ORRS      A3, A3, A2            ; [DPU_V7M3_PIPE] |212| 
        STR       A3, [A4, #0]          ; [DPU_V7M3_PIPE] |212| 
	.dwpsn	file "../gpio.c",line 213,column 13,is_stmt,isa 1
        B         ||$C$L33||            ; [DPU_V7M3_PIPE] |213| 
        ; BRANCH OCCURS {||$C$L33||}     ; [] |213| 
;* --------------------------------------------------------------------------*
||$C$L27||:    
	.dwpsn	file "../gpio.c",line 215,column 13,is_stmt,isa 1
        LDR       A1, $C$CON12          ; [DPU_V7M3_PIPE] |215| 
        LDRB      V1, [SP, #12]         ; [DPU_V7M3_PIPE] |215| 
        LDR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |215| 
        LDR       A3, [SP, #4]          ; [DPU_V7M3_PIPE] |215| 
        LDR       A4, $C$CON12          ; [DPU_V7M3_PIPE] |215| 
        LSLS      V1, V1, #2            ; [DPU_V7M3_PIPE] |215| 
        MOVS      A1, #15               ; [DPU_V7M3_PIPE] |215| 
        LSLS      A1, A1, V1            ; [DPU_V7M3_PIPE] |215| 
        BICS      A2, A2, A1            ; [DPU_V7M3_PIPE] |215| 
        ORRS      A3, A3, A2            ; [DPU_V7M3_PIPE] |215| 
        STR       A3, [A4, #0]          ; [DPU_V7M3_PIPE] |215| 
	.dwpsn	file "../gpio.c",line 216,column 13,is_stmt,isa 1
        B         ||$C$L33||            ; [DPU_V7M3_PIPE] |216| 
        ; BRANCH OCCURS {||$C$L33||}     ; [] |216| 
;* --------------------------------------------------------------------------*
||$C$L28||:    
	.dwpsn	file "../gpio.c",line 218,column 13,is_stmt,isa 1
        LDR       A1, $C$CON13          ; [DPU_V7M3_PIPE] |218| 
        LDRB      V1, [SP, #12]         ; [DPU_V7M3_PIPE] |218| 
        LDR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |218| 
        LDR       A3, [SP, #4]          ; [DPU_V7M3_PIPE] |218| 
        LDR       A4, $C$CON13          ; [DPU_V7M3_PIPE] |218| 
        LSLS      V1, V1, #2            ; [DPU_V7M3_PIPE] |218| 
        MOVS      A1, #15               ; [DPU_V7M3_PIPE] |218| 
        LSLS      A1, A1, V1            ; [DPU_V7M3_PIPE] |218| 
        BICS      A2, A2, A1            ; [DPU_V7M3_PIPE] |218| 
        ORRS      A3, A3, A2            ; [DPU_V7M3_PIPE] |218| 
        STR       A3, [A4, #0]          ; [DPU_V7M3_PIPE] |218| 
	.dwpsn	file "../gpio.c",line 219,column 13,is_stmt,isa 1
        B         ||$C$L33||            ; [DPU_V7M3_PIPE] |219| 
        ; BRANCH OCCURS {||$C$L33||}     ; [] |219| 
;* --------------------------------------------------------------------------*
||$C$L29||:    
	.dwpsn	file "../gpio.c",line 221,column 13,is_stmt,isa 1
        LDR       A1, $C$CON14          ; [DPU_V7M3_PIPE] |221| 
        LDRB      V1, [SP, #12]         ; [DPU_V7M3_PIPE] |221| 
        LDR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |221| 
        LDR       A3, [SP, #4]          ; [DPU_V7M3_PIPE] |221| 
        LDR       A4, $C$CON14          ; [DPU_V7M3_PIPE] |221| 
        LSLS      V1, V1, #2            ; [DPU_V7M3_PIPE] |221| 
        MOVS      A1, #15               ; [DPU_V7M3_PIPE] |221| 
        LSLS      A1, A1, V1            ; [DPU_V7M3_PIPE] |221| 
        BICS      A2, A2, A1            ; [DPU_V7M3_PIPE] |221| 
        ORRS      A3, A3, A2            ; [DPU_V7M3_PIPE] |221| 
        STR       A3, [A4, #0]          ; [DPU_V7M3_PIPE] |221| 
	.dwpsn	file "../gpio.c",line 222,column 13,is_stmt,isa 1
        B         ||$C$L33||            ; [DPU_V7M3_PIPE] |222| 
        ; BRANCH OCCURS {||$C$L33||}     ; [] |222| 
;* --------------------------------------------------------------------------*
||$C$L30||:    
	.dwpsn	file "../gpio.c",line 224,column 13,is_stmt,isa 1
        LDR       A1, $C$CON15          ; [DPU_V7M3_PIPE] |224| 
        LDRB      V1, [SP, #12]         ; [DPU_V7M3_PIPE] |224| 
        LDR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |224| 
        LDR       A3, [SP, #4]          ; [DPU_V7M3_PIPE] |224| 
        LDR       A4, $C$CON15          ; [DPU_V7M3_PIPE] |224| 
        LSLS      V1, V1, #2            ; [DPU_V7M3_PIPE] |224| 
        MOVS      A1, #15               ; [DPU_V7M3_PIPE] |224| 
        LSLS      A1, A1, V1            ; [DPU_V7M3_PIPE] |224| 
        BICS      A2, A2, A1            ; [DPU_V7M3_PIPE] |224| 
        ORRS      A3, A3, A2            ; [DPU_V7M3_PIPE] |224| 
        STR       A3, [A4, #0]          ; [DPU_V7M3_PIPE] |224| 
	.dwpsn	file "../gpio.c",line 225,column 13,is_stmt,isa 1
        B         ||$C$L33||            ; [DPU_V7M3_PIPE] |225| 
        ; BRANCH OCCURS {||$C$L33||}     ; [] |225| 
;* --------------------------------------------------------------------------*
||$C$L31||:    
	.dwpsn	file "../gpio.c",line 227,column 13,is_stmt,isa 1
        LDR       A1, $C$CON16          ; [DPU_V7M3_PIPE] |227| 
        LDRB      V1, [SP, #12]         ; [DPU_V7M3_PIPE] |227| 
        LDR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |227| 
        LDR       A3, [SP, #4]          ; [DPU_V7M3_PIPE] |227| 
        LDR       A4, $C$CON16          ; [DPU_V7M3_PIPE] |227| 
        LSLS      V1, V1, #2            ; [DPU_V7M3_PIPE] |227| 
        MOVS      A1, #15               ; [DPU_V7M3_PIPE] |227| 
        LSLS      A1, A1, V1            ; [DPU_V7M3_PIPE] |227| 
        BICS      A2, A2, A1            ; [DPU_V7M3_PIPE] |227| 
        ORRS      A3, A3, A2            ; [DPU_V7M3_PIPE] |227| 
        STR       A3, [A4, #0]          ; [DPU_V7M3_PIPE] |227| 
	.dwpsn	file "../gpio.c",line 228,column 5,is_stmt,isa 1
        B         ||$C$L33||            ; [DPU_V7M3_PIPE] |228| 
        ; BRANCH OCCURS {||$C$L33||}     ; [] |228| 
;* --------------------------------------------------------------------------*
||$C$L32||:    
	.dwpsn	file "../gpio.c",line 209,column 5,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |209| 
        LDR       A2, $C$CON17          ; [DPU_V7M3_PIPE] |209| 
        SUBS      A1, A1, A2            ; [DPU_V7M3_PIPE] |209| 
        BEQ       ||$C$L26||            ; [DPU_V7M3_PIPE] |209| 
        ; BRANCHCC OCCURS {||$C$L26||}   ; [] |209| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |209| 
        BEQ       ||$C$L27||            ; [DPU_V7M3_PIPE] |209| 
        ; BRANCHCC OCCURS {||$C$L27||}   ; [] |209| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |209| 
        BEQ       ||$C$L28||            ; [DPU_V7M3_PIPE] |209| 
        ; BRANCHCC OCCURS {||$C$L28||}   ; [] |209| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |209| 
        BEQ       ||$C$L29||            ; [DPU_V7M3_PIPE] |209| 
        ; BRANCHCC OCCURS {||$C$L29||}   ; [] |209| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #3801088      ; [DPU_V7M3_PIPE] |209| 
        BEQ       ||$C$L30||            ; [DPU_V7M3_PIPE] |209| 
        ; BRANCHCC OCCURS {||$C$L30||}   ; [] |209| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |209| 
        BEQ       ||$C$L31||            ; [DPU_V7M3_PIPE] |209| 
        ; BRANCHCC OCCURS {||$C$L31||}   ; [] |209| 
;* --------------------------------------------------------------------------*
||$C$L33||:    
	.dwpsn	file "../gpio.c",line 231,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #12]         ; [DPU_V7M3_PIPE] |231| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |231| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |231| 
        ADD       A1, A1, #1152         ; [DPU_V7M3_PIPE] |231| 
        STR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |231| 
	.dwpsn	file "../gpio.c",line 232,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |232| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |232| 
        CBZ       A1, ||$C$L34||        ; [] 
        ; BRANCHCC OCCURS {||$C$L34||}   ; [] |232| 
;* --------------------------------------------------------------------------*
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |232| 
;* --------------------------------------------------------------------------*
||$C$L34||:    
        LDR       A1, [SP, #8]          ; [DPU_V7M3_PIPE] |232| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |232| 
	.dwpsn	file "../gpio.c",line 233,column 1,is_stmt,isa 1
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return

        POP       {A1, A2, A3, A4, V1, PC} ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_reg, 2
	.dwcfi	restore_reg, 1
	.dwcfi	restore_reg, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0xe9)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text"
	.clink
	.thumbfunc selectPinInterruptRisingEdge
	.thumb
	.global	selectPinInterruptRisingEdge

$C$DW$81	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$81, DW_AT_name("selectPinInterruptRisingEdge")
	.dwattr $C$DW$81, DW_AT_low_pc(selectPinInterruptRisingEdge)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("selectPinInterruptRisingEdge")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0xeb)
	.dwattr $C$DW$81, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$81, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$81, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$81, DW_AT_decl_column(0x06)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 236,column 1,is_stmt,address selectPinInterruptRisingEdge,isa 1

	.dwfde $C$DW$CIE, selectPinInterruptRisingEdge
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("port")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg0]

$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("pin")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: selectPinInterruptRisingEdge                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
selectPinInterruptRisingEdge:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("port")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg13 0]

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("p")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg13 4]

$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("pin")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |236| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |236| 
	.dwpsn	file "../gpio.c",line 238,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |238| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |238| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |238| 
        ADD       A1, A1, #256          ; [DPU_V7M3_PIPE] |238| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |238| 
	.dwpsn	file "../gpio.c",line 239,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |239| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |239| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |239| 
	.dwpsn	file "../gpio.c",line 240,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |240| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |240| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |240| 
        ADD       A1, A1, #384          ; [DPU_V7M3_PIPE] |240| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |240| 
	.dwpsn	file "../gpio.c",line 241,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |241| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |241| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |241| 
	.dwpsn	file "../gpio.c",line 242,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |242| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |242| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |242| 
        ADD       A1, A1, #512          ; [DPU_V7M3_PIPE] |242| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |242| 
	.dwpsn	file "../gpio.c",line 243,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |243| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |243| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |243| 
	.dwpsn	file "../gpio.c",line 244,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$81, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0xf4)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text"
	.clink
	.thumbfunc selectPinInterruptFallingEdge
	.thumb
	.global	selectPinInterruptFallingEdge

$C$DW$88	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$88, DW_AT_name("selectPinInterruptFallingEdge")
	.dwattr $C$DW$88, DW_AT_low_pc(selectPinInterruptFallingEdge)
	.dwattr $C$DW$88, DW_AT_high_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("selectPinInterruptFallingEdge")
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0xf6)
	.dwattr $C$DW$88, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$88, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$88, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$88, DW_AT_decl_column(0x06)
	.dwattr $C$DW$88, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 247,column 1,is_stmt,address selectPinInterruptFallingEdge,isa 1

	.dwfde $C$DW$CIE, selectPinInterruptFallingEdge
$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_name("port")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg0]

$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("pin")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: selectPinInterruptFallingEdge                              *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
selectPinInterruptFallingEdge:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("port")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg13 0]

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("p")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg13 4]

$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("pin")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |247| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |247| 
	.dwpsn	file "../gpio.c",line 249,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |249| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |249| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |249| 
        ADD       A1, A1, #256          ; [DPU_V7M3_PIPE] |249| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |249| 
	.dwpsn	file "../gpio.c",line 250,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |250| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |250| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |250| 
	.dwpsn	file "../gpio.c",line 251,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |251| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |251| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |251| 
        ADD       A1, A1, #384          ; [DPU_V7M3_PIPE] |251| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |251| 
	.dwpsn	file "../gpio.c",line 252,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |252| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |252| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |252| 
	.dwpsn	file "../gpio.c",line 253,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |253| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |253| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |253| 
        ADD       A1, A1, #512          ; [DPU_V7M3_PIPE] |253| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |253| 
	.dwpsn	file "../gpio.c",line 254,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |254| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |254| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |254| 
	.dwpsn	file "../gpio.c",line 255,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$88, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$88, DW_AT_TI_end_line(0xff)
	.dwattr $C$DW$88, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$88

	.sect	".text"
	.clink
	.thumbfunc selectPinInterruptBothEdges
	.thumb
	.global	selectPinInterruptBothEdges

$C$DW$95	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$95, DW_AT_name("selectPinInterruptBothEdges")
	.dwattr $C$DW$95, DW_AT_low_pc(selectPinInterruptBothEdges)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("selectPinInterruptBothEdges")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x101)
	.dwattr $C$DW$95, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$95, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$95, DW_AT_decl_line(0x101)
	.dwattr $C$DW$95, DW_AT_decl_column(0x06)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 258,column 1,is_stmt,address selectPinInterruptBothEdges,isa 1

	.dwfde $C$DW$CIE, selectPinInterruptBothEdges
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_name("port")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg0]

$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("pin")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: selectPinInterruptBothEdges                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
selectPinInterruptBothEdges:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("port")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_breg13 0]

$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("p")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_breg13 4]

$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("pin")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |258| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |258| 
	.dwpsn	file "../gpio.c",line 260,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |260| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |260| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |260| 
        ADD       A1, A1, #256          ; [DPU_V7M3_PIPE] |260| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |260| 
	.dwpsn	file "../gpio.c",line 261,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |261| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |261| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |261| 
	.dwpsn	file "../gpio.c",line 262,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |262| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |262| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |262| 
        ADD       A1, A1, #384          ; [DPU_V7M3_PIPE] |262| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |262| 
	.dwpsn	file "../gpio.c",line 263,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |263| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |263| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |263| 
	.dwpsn	file "../gpio.c",line 264,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$95, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x108)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON4||:	.bits		0x40004520,32

	.align	4
||$C$CON5||:	.bits		0x4c4f434b,32

	.align	4
||$C$CON6||:	.bits		0x40005520,32

	.align	4
||$C$CON7||:	.bits		0x40006520,32

	.align	4
||$C$CON8||:	.bits		0x40007520,32

	.align	4
||$C$CON9||:	.bits		0x40024520,32

	.align	4
||$C$CON10||:	.bits		0x40025520,32

	.sect	".text"
	.clink
	.thumbfunc selectPinInterruptHighLevel
	.thumb
	.global	selectPinInterruptHighLevel

$C$DW$102	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$102, DW_AT_name("selectPinInterruptHighLevel")
	.dwattr $C$DW$102, DW_AT_low_pc(selectPinInterruptHighLevel)
	.dwattr $C$DW$102, DW_AT_high_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("selectPinInterruptHighLevel")
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x10a)
	.dwattr $C$DW$102, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$102, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$102, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$102, DW_AT_decl_column(0x06)
	.dwattr $C$DW$102, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 267,column 1,is_stmt,address selectPinInterruptHighLevel,isa 1

	.dwfde $C$DW$CIE, selectPinInterruptHighLevel
$C$DW$103	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$103, DW_AT_name("port")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg0]

$C$DW$104	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$104, DW_AT_name("pin")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: selectPinInterruptHighLevel                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
selectPinInterruptHighLevel:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("port")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_breg13 0]

$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("p")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_breg13 4]

$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("pin")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |267| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |267| 
	.dwpsn	file "../gpio.c",line 269,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |269| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |269| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |269| 
        ADD       A1, A1, #256          ; [DPU_V7M3_PIPE] |269| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |269| 
	.dwpsn	file "../gpio.c",line 270,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |270| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |270| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |270| 
	.dwpsn	file "../gpio.c",line 271,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |271| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |271| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |271| 
        ADD       A1, A1, #512          ; [DPU_V7M3_PIPE] |271| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |271| 
	.dwpsn	file "../gpio.c",line 272,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |272| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |272| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |272| 
	.dwpsn	file "../gpio.c",line 273,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$102, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x111)
	.dwattr $C$DW$102, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$102

	.sect	".text"
	.clink
	.thumbfunc selectPinInterruptLowLevel
	.thumb
	.global	selectPinInterruptLowLevel

$C$DW$109	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$109, DW_AT_name("selectPinInterruptLowLevel")
	.dwattr $C$DW$109, DW_AT_low_pc(selectPinInterruptLowLevel)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("selectPinInterruptLowLevel")
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$109, DW_AT_TI_begin_line(0x113)
	.dwattr $C$DW$109, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$109, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$109, DW_AT_decl_line(0x113)
	.dwattr $C$DW$109, DW_AT_decl_column(0x06)
	.dwattr $C$DW$109, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 276,column 1,is_stmt,address selectPinInterruptLowLevel,isa 1

	.dwfde $C$DW$CIE, selectPinInterruptLowLevel
$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_name("port")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg0]

$C$DW$111	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$111, DW_AT_name("pin")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: selectPinInterruptLowLevel                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
selectPinInterruptLowLevel:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("port")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_breg13 0]

$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("p")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_breg13 4]

$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("pin")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |276| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |276| 
	.dwpsn	file "../gpio.c",line 278,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |278| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |278| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |278| 
        ADD       A1, A1, #256          ; [DPU_V7M3_PIPE] |278| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |278| 
	.dwpsn	file "../gpio.c",line 279,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |279| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |279| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |279| 
	.dwpsn	file "../gpio.c",line 280,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |280| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |280| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |280| 
        ADD       A1, A1, #512          ; [DPU_V7M3_PIPE] |280| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |280| 
	.dwpsn	file "../gpio.c",line 281,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |281| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |281| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |281| 
	.dwpsn	file "../gpio.c",line 282,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$109, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$109

	.sect	".text"
	.clink
	.thumbfunc enablePinInterrupt
	.thumb
	.global	enablePinInterrupt

$C$DW$116	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$116, DW_AT_name("enablePinInterrupt")
	.dwattr $C$DW$116, DW_AT_low_pc(enablePinInterrupt)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("enablePinInterrupt")
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$116, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$116, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$116, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$116, DW_AT_decl_column(0x06)
	.dwattr $C$DW$116, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 285,column 1,is_stmt,address enablePinInterrupt,isa 1

	.dwfde $C$DW$CIE, enablePinInterrupt
$C$DW$117	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$117, DW_AT_name("port")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg0]

$C$DW$118	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$118, DW_AT_name("pin")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: enablePinInterrupt                                         *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
enablePinInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("port")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_breg13 0]

$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("p")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_breg13 4]

$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("pin")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |285| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |285| 
	.dwpsn	file "../gpio.c",line 287,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |287| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |287| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |287| 
        ADD       A1, A1, #640          ; [DPU_V7M3_PIPE] |287| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |287| 
	.dwpsn	file "../gpio.c",line 288,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |288| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |288| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |288| 
	.dwpsn	file "../gpio.c",line 289,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$116, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$116, DW_AT_TI_end_line(0x121)
	.dwattr $C$DW$116, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$116

	.sect	".text"
	.clink
	.thumbfunc disablePinInterrupt
	.thumb
	.global	disablePinInterrupt

$C$DW$123	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$123, DW_AT_name("disablePinInterrupt")
	.dwattr $C$DW$123, DW_AT_low_pc(disablePinInterrupt)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("disablePinInterrupt")
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x123)
	.dwattr $C$DW$123, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$123, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$123, DW_AT_decl_line(0x123)
	.dwattr $C$DW$123, DW_AT_decl_column(0x06)
	.dwattr $C$DW$123, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 292,column 1,is_stmt,address disablePinInterrupt,isa 1

	.dwfde $C$DW$CIE, disablePinInterrupt
$C$DW$124	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$124, DW_AT_name("port")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg0]

$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("pin")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: disablePinInterrupt                                        *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
disablePinInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("port")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg13 0]

$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("p")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_breg13 4]

$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("pin")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |292| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |292| 
	.dwpsn	file "../gpio.c",line 294,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |294| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |294| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |294| 
        ADD       A1, A1, #640          ; [DPU_V7M3_PIPE] |294| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |294| 
	.dwpsn	file "../gpio.c",line 295,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |295| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |295| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |295| 
	.dwpsn	file "../gpio.c",line 296,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$123, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x128)
	.dwattr $C$DW$123, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$123

	.sect	".text"
	.clink
	.thumbfunc clearPinInterrupt
	.thumb
	.global	clearPinInterrupt

$C$DW$130	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$130, DW_AT_name("clearPinInterrupt")
	.dwattr $C$DW$130, DW_AT_low_pc(clearPinInterrupt)
	.dwattr $C$DW$130, DW_AT_high_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("clearPinInterrupt")
	.dwattr $C$DW$130, DW_AT_external
	.dwattr $C$DW$130, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$130, DW_AT_TI_begin_line(0x12a)
	.dwattr $C$DW$130, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$130, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$130, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$130, DW_AT_decl_column(0x06)
	.dwattr $C$DW$130, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 299,column 1,is_stmt,address clearPinInterrupt,isa 1

	.dwfde $C$DW$CIE, clearPinInterrupt
$C$DW$131	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$131, DW_AT_name("port")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg0]

$C$DW$132	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$132, DW_AT_name("pin")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: clearPinInterrupt                                          *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
clearPinInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("port")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_breg13 0]

$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("p")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_breg13 4]

$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("pin")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |299| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |299| 
	.dwpsn	file "../gpio.c",line 301,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |301| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |301| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |301| 
        ADD       A1, A1, #1024         ; [DPU_V7M3_PIPE] |301| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |301| 
	.dwpsn	file "../gpio.c",line 302,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |302| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |302| 
        STR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |302| 
	.dwpsn	file "../gpio.c",line 303,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$130, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$130, DW_AT_TI_end_line(0x12f)
	.dwattr $C$DW$130, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$130

	.sect	".text"
	.clink
	.thumbfunc setPinValue
	.thumb
	.global	setPinValue

$C$DW$137	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$137, DW_AT_name("setPinValue")
	.dwattr $C$DW$137, DW_AT_low_pc(setPinValue)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("setPinValue")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0x131)
	.dwattr $C$DW$137, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$137, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$137, DW_AT_decl_line(0x131)
	.dwattr $C$DW$137, DW_AT_decl_column(0x06)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 306,column 1,is_stmt,address setPinValue,isa 1

	.dwfde $C$DW$CIE, setPinValue
$C$DW$138	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$138, DW_AT_name("port")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg0]

$C$DW$139	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$139, DW_AT_name("pin")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg1]

$C$DW$140	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$140, DW_AT_name("value")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("value")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg2]


;*****************************************************************************
;* FUNCTION NAME: setPinValue                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP                                            *
;*   Regs Used         : A1,A2,A3,SP,LR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
setPinValue:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("port")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_breg13 0]

$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("p")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_breg13 4]

$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("pin")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_breg13 8]

$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("value")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("value")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_breg13 9]

        STRB      A3, [SP, #9]          ; [DPU_V7M3_PIPE] |306| 
        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |306| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |306| 
	.dwpsn	file "../gpio.c",line 308,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |308| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |308| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |308| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |308| 
	.dwpsn	file "../gpio.c",line 309,column 5,is_stmt,isa 1
        LDRB      A1, [SP, #9]          ; [DPU_V7M3_PIPE] |309| 
        LDR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |309| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |309| 
	.dwpsn	file "../gpio.c",line 310,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$137, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x136)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text"
	.clink
	.thumbfunc togglePinValue
	.thumb
	.global	togglePinValue

$C$DW$146	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$146, DW_AT_name("togglePinValue")
	.dwattr $C$DW$146, DW_AT_low_pc(togglePinValue)
	.dwattr $C$DW$146, DW_AT_high_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("togglePinValue")
	.dwattr $C$DW$146, DW_AT_external
	.dwattr $C$DW$146, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$146, DW_AT_TI_begin_line(0x138)
	.dwattr $C$DW$146, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$146, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$146, DW_AT_decl_line(0x138)
	.dwattr $C$DW$146, DW_AT_decl_column(0x06)
	.dwattr $C$DW$146, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 313,column 1,is_stmt,address togglePinValue,isa 1

	.dwfde $C$DW$CIE, togglePinValue
$C$DW$147	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$147, DW_AT_name("port")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg0]

$C$DW$148	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$148, DW_AT_name("pin")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: togglePinValue                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP                                            *
;*   Regs Used         : A1,A2,SP,LR                                         *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
togglePinValue:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("port")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_breg13 0]

$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("p")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_breg13 4]

$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("pin")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |313| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |313| 
	.dwpsn	file "../gpio.c",line 315,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |315| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |315| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |315| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |315| 
	.dwpsn	file "../gpio.c",line 316,column 5,is_stmt,isa 1
        LDR       A2, [SP, #4]          ; [DPU_V7M3_PIPE] |316| 
        LDR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |316| 
        EOR       A1, A1, #1            ; [DPU_V7M3_PIPE] |316| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |316| 
	.dwpsn	file "../gpio.c",line 317,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$146, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$146, DW_AT_TI_end_line(0x13d)
	.dwattr $C$DW$146, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$146

	.sect	".text"
	.clink
	.thumbfunc getPinValue
	.thumb
	.global	getPinValue

$C$DW$153	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$153, DW_AT_name("getPinValue")
	.dwattr $C$DW$153, DW_AT_low_pc(getPinValue)
	.dwattr $C$DW$153, DW_AT_high_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("getPinValue")
	.dwattr $C$DW$153, DW_AT_external
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$153, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$153, DW_AT_TI_begin_line(0x13f)
	.dwattr $C$DW$153, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$153, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$153, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$153, DW_AT_decl_column(0x06)
	.dwattr $C$DW$153, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../gpio.c",line 320,column 1,is_stmt,address getPinValue,isa 1

	.dwfde $C$DW$CIE, getPinValue
$C$DW$154	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$154, DW_AT_name("port")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg0]

$C$DW$155	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$155, DW_AT_name("pin")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: getPinValue                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
getPinValue:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$156	.dwtag  DW_TAG_variable
	.dwattr $C$DW$156, DW_AT_name("port")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_breg13 0]

$C$DW$157	.dwtag  DW_TAG_variable
	.dwattr $C$DW$157, DW_AT_name("p")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_breg13 4]

$C$DW$158	.dwtag  DW_TAG_variable
	.dwattr $C$DW$158, DW_AT_name("pin")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_breg13 8]

        STRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |320| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |320| 
	.dwpsn	file "../gpio.c",line 322,column 5,is_stmt,isa 1
        LDRB      A2, [SP, #8]          ; [DPU_V7M3_PIPE] |322| 
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |322| 
        ADD       A1, A1, A2, LSL #2    ; [DPU_V7M3_PIPE] |322| 
        STR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |322| 
	.dwpsn	file "../gpio.c",line 323,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_V7M3_PIPE] |323| 
        LDR       A2, [A1, #0]          ; [DPU_V7M3_PIPE] |323| 
        MOVS      A1, #0                ; [DPU_V7M3_PIPE] |323| 
        CBZ       A2, ||$C$L35||        ; [] 
        ; BRANCHCC OCCURS {||$C$L35||}   ; [] |323| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |323| 
;* --------------------------------------------------------------------------*
||$C$L35||:    
	.dwpsn	file "../gpio.c",line 324,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$153, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$153, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$153

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON11||:	.bits		0x4000452c,32

	.align	4
||$C$CON12||:	.bits		0x4000552c,32

	.align	4
||$C$CON13||:	.bits		0x4000652c,32

	.align	4
||$C$CON14||:	.bits		0x4000752c,32

	.align	4
||$C$CON15||:	.bits		0x4002452c,32

	.align	4
||$C$CON16||:	.bits		0x4002552c,32

	.sect	".text"
	.clink
	.thumbfunc setPortValue
	.thumb
	.global	setPortValue

$C$DW$160	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$160, DW_AT_name("setPortValue")
	.dwattr $C$DW$160, DW_AT_low_pc(setPortValue)
	.dwattr $C$DW$160, DW_AT_high_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("setPortValue")
	.dwattr $C$DW$160, DW_AT_external
	.dwattr $C$DW$160, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$160, DW_AT_TI_begin_line(0x146)
	.dwattr $C$DW$160, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$160, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$160, DW_AT_decl_line(0x146)
	.dwattr $C$DW$160, DW_AT_decl_column(0x06)
	.dwattr $C$DW$160, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../gpio.c",line 327,column 1,is_stmt,address setPortValue,isa 1

	.dwfde $C$DW$CIE, setPortValue
$C$DW$161	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$161, DW_AT_name("port")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg0]

$C$DW$162	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$162, DW_AT_name("value")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("value")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: setPortValue                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
setPortValue:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("port")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_breg13 0]

$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("value")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("value")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_breg13 4]

        STRB      A2, [SP, #4]          ; [DPU_V7M3_PIPE] |327| 
        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |327| 
	.dwpsn	file "../gpio.c",line 328,column 5,is_stmt,isa 1
        B         ||$C$L42||            ; [DPU_V7M3_PIPE] |328| 
        ; BRANCH OCCURS {||$C$L42||}     ; [] |328| 
;* --------------------------------------------------------------------------*
||$C$L36||:    
	.dwpsn	file "../gpio.c",line 331,column 13,is_stmt,isa 1
        LDRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |331| 
        LDR       A2, $C$CON18          ; [DPU_V7M3_PIPE] |331| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |331| 
	.dwpsn	file "../gpio.c",line 332,column 13,is_stmt,isa 1
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |332| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |332| 
;* --------------------------------------------------------------------------*
||$C$L37||:    
	.dwpsn	file "../gpio.c",line 334,column 13,is_stmt,isa 1
        LDRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |334| 
        LDR       A2, $C$CON19          ; [DPU_V7M3_PIPE] |334| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |334| 
	.dwpsn	file "../gpio.c",line 335,column 13,is_stmt,isa 1
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |335| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |335| 
;* --------------------------------------------------------------------------*
||$C$L38||:    
	.dwpsn	file "../gpio.c",line 337,column 13,is_stmt,isa 1
        LDRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |337| 
        LDR       A2, $C$CON20          ; [DPU_V7M3_PIPE] |337| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |337| 
	.dwpsn	file "../gpio.c",line 338,column 13,is_stmt,isa 1
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |338| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |338| 
;* --------------------------------------------------------------------------*
||$C$L39||:    
	.dwpsn	file "../gpio.c",line 340,column 13,is_stmt,isa 1
        LDRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |340| 
        LDR       A2, $C$CON21          ; [DPU_V7M3_PIPE] |340| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |340| 
	.dwpsn	file "../gpio.c",line 341,column 13,is_stmt,isa 1
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |341| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |341| 
;* --------------------------------------------------------------------------*
||$C$L40||:    
	.dwpsn	file "../gpio.c",line 343,column 13,is_stmt,isa 1
        LDRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |343| 
        LDR       A2, $C$CON22          ; [DPU_V7M3_PIPE] |343| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |343| 
	.dwpsn	file "../gpio.c",line 344,column 13,is_stmt,isa 1
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |344| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |344| 
;* --------------------------------------------------------------------------*
||$C$L41||:    
	.dwpsn	file "../gpio.c",line 346,column 13,is_stmt,isa 1
        LDRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |346| 
        LDR       A2, $C$CON23          ; [DPU_V7M3_PIPE] |346| 
        STR       A1, [A2, #0]          ; [DPU_V7M3_PIPE] |346| 
	.dwpsn	file "../gpio.c",line 347,column 5,is_stmt,isa 1
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |347| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |347| 
;* --------------------------------------------------------------------------*
||$C$L42||:    
	.dwpsn	file "../gpio.c",line 328,column 5,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |328| 
        LDR       A2, $C$CON17          ; [DPU_V7M3_PIPE] |328| 
        SUBS      A1, A1, A2            ; [DPU_V7M3_PIPE] |328| 
        BEQ       ||$C$L36||            ; [DPU_V7M3_PIPE] |328| 
        ; BRANCHCC OCCURS {||$C$L36||}   ; [] |328| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |328| 
        BEQ       ||$C$L37||            ; [DPU_V7M3_PIPE] |328| 
        ; BRANCHCC OCCURS {||$C$L37||}   ; [] |328| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |328| 
        BEQ       ||$C$L38||            ; [DPU_V7M3_PIPE] |328| 
        ; BRANCHCC OCCURS {||$C$L38||}   ; [] |328| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |328| 
        BEQ       ||$C$L39||            ; [DPU_V7M3_PIPE] |328| 
        ; BRANCHCC OCCURS {||$C$L39||}   ; [] |328| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #3801088      ; [DPU_V7M3_PIPE] |328| 
        BEQ       ||$C$L40||            ; [DPU_V7M3_PIPE] |328| 
        ; BRANCHCC OCCURS {||$C$L40||}   ; [] |328| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |328| 
        BEQ       ||$C$L41||            ; [DPU_V7M3_PIPE] |328| 
        ; BRANCHCC OCCURS {||$C$L41||}   ; [] |328| 
;* --------------------------------------------------------------------------*
        B         ||$C$L43||            ; [DPU_V7M3_PIPE] |328| 
        ; BRANCH OCCURS {||$C$L43||}     ; [] |328| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
||$C$L43||:    
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$160, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$160, DW_AT_TI_end_line(0x15c)
	.dwattr $C$DW$160, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$160

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON17||:	.bits		0x42087f80,32

	.sect	".text"
	.clink
	.thumbfunc getPortValue
	.thumb
	.global	getPortValue

$C$DW$166	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$166, DW_AT_name("getPortValue")
	.dwattr $C$DW$166, DW_AT_low_pc(getPortValue)
	.dwattr $C$DW$166, DW_AT_high_pc(0x00)
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("getPortValue")
	.dwattr $C$DW$166, DW_AT_external
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$166, DW_AT_TI_begin_file("../gpio.c")
	.dwattr $C$DW$166, DW_AT_TI_begin_line(0x15e)
	.dwattr $C$DW$166, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$166, DW_AT_decl_file("../gpio.c")
	.dwattr $C$DW$166, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$166, DW_AT_decl_column(0x09)
	.dwattr $C$DW$166, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../gpio.c",line 351,column 1,is_stmt,address getPortValue,isa 1

	.dwfde $C$DW$CIE, getPortValue
$C$DW$167	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$167, DW_AT_name("port")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: getPortValue                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
getPortValue:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("port")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("port")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_breg13 0]

$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("value")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("value")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_breg13 4]

        STR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |351| 
	.dwpsn	file "../gpio.c",line 353,column 5,is_stmt,isa 1
        B         ||$C$L50||            ; [DPU_V7M3_PIPE] |353| 
        ; BRANCH OCCURS {||$C$L50||}     ; [] |353| 
;* --------------------------------------------------------------------------*
||$C$L44||:    
	.dwpsn	file "../gpio.c",line 356,column 13,is_stmt,isa 1
        LDR       A1, $C$CON18          ; [DPU_V7M3_PIPE] |356| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |356| 
        STRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |356| 
	.dwpsn	file "../gpio.c",line 357,column 13,is_stmt,isa 1
        B         ||$C$L51||            ; [DPU_V7M3_PIPE] |357| 
        ; BRANCH OCCURS {||$C$L51||}     ; [] |357| 
;* --------------------------------------------------------------------------*
||$C$L45||:    
	.dwpsn	file "../gpio.c",line 359,column 13,is_stmt,isa 1
        LDR       A1, $C$CON19          ; [DPU_V7M3_PIPE] |359| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |359| 
        STRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |359| 
	.dwpsn	file "../gpio.c",line 360,column 13,is_stmt,isa 1
        B         ||$C$L51||            ; [DPU_V7M3_PIPE] |360| 
        ; BRANCH OCCURS {||$C$L51||}     ; [] |360| 
;* --------------------------------------------------------------------------*
||$C$L46||:    
	.dwpsn	file "../gpio.c",line 362,column 13,is_stmt,isa 1
        LDR       A1, $C$CON20          ; [DPU_V7M3_PIPE] |362| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |362| 
        STRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |362| 
	.dwpsn	file "../gpio.c",line 363,column 13,is_stmt,isa 1
        B         ||$C$L51||            ; [DPU_V7M3_PIPE] |363| 
        ; BRANCH OCCURS {||$C$L51||}     ; [] |363| 
;* --------------------------------------------------------------------------*
||$C$L47||:    
	.dwpsn	file "../gpio.c",line 365,column 13,is_stmt,isa 1
        LDR       A1, $C$CON21          ; [DPU_V7M3_PIPE] |365| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |365| 
        STRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |365| 
	.dwpsn	file "../gpio.c",line 366,column 13,is_stmt,isa 1
        B         ||$C$L51||            ; [DPU_V7M3_PIPE] |366| 
        ; BRANCH OCCURS {||$C$L51||}     ; [] |366| 
;* --------------------------------------------------------------------------*
||$C$L48||:    
	.dwpsn	file "../gpio.c",line 368,column 13,is_stmt,isa 1
        LDR       A1, $C$CON22          ; [DPU_V7M3_PIPE] |368| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |368| 
        STRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |368| 
	.dwpsn	file "../gpio.c",line 369,column 13,is_stmt,isa 1
        B         ||$C$L51||            ; [DPU_V7M3_PIPE] |369| 
        ; BRANCH OCCURS {||$C$L51||}     ; [] |369| 
;* --------------------------------------------------------------------------*
||$C$L49||:    
	.dwpsn	file "../gpio.c",line 371,column 13,is_stmt,isa 1
        LDR       A1, $C$CON23          ; [DPU_V7M3_PIPE] |371| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |371| 
        STRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |371| 
	.dwpsn	file "../gpio.c",line 372,column 5,is_stmt,isa 1
        B         ||$C$L51||            ; [DPU_V7M3_PIPE] |372| 
        ; BRANCH OCCURS {||$C$L51||}     ; [] |372| 
;* --------------------------------------------------------------------------*
||$C$L50||:    
	.dwpsn	file "../gpio.c",line 353,column 5,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_V7M3_PIPE] |353| 
        LDR       A2, $C$CON24          ; [DPU_V7M3_PIPE] |353| 
        SUBS      A1, A1, A2            ; [DPU_V7M3_PIPE] |353| 
        BEQ       ||$C$L44||            ; [DPU_V7M3_PIPE] |353| 
        ; BRANCHCC OCCURS {||$C$L44||}   ; [] |353| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |353| 
        BEQ       ||$C$L45||            ; [DPU_V7M3_PIPE] |353| 
        ; BRANCHCC OCCURS {||$C$L45||}   ; [] |353| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |353| 
        BEQ       ||$C$L46||            ; [DPU_V7M3_PIPE] |353| 
        ; BRANCHCC OCCURS {||$C$L46||}   ; [] |353| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |353| 
        BEQ       ||$C$L47||            ; [DPU_V7M3_PIPE] |353| 
        ; BRANCHCC OCCURS {||$C$L47||}   ; [] |353| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #3801088      ; [DPU_V7M3_PIPE] |353| 
        BEQ       ||$C$L48||            ; [DPU_V7M3_PIPE] |353| 
        ; BRANCHCC OCCURS {||$C$L48||}   ; [] |353| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #131072       ; [DPU_V7M3_PIPE] |353| 
        BEQ       ||$C$L49||            ; [DPU_V7M3_PIPE] |353| 
        ; BRANCHCC OCCURS {||$C$L49||}   ; [] |353| 
;* --------------------------------------------------------------------------*
||$C$L51||:    
	.dwpsn	file "../gpio.c",line 373,column 5,is_stmt,isa 1
        LDRB      A1, [SP, #4]          ; [DPU_V7M3_PIPE] |373| 
	.dwpsn	file "../gpio.c",line 374,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$166, DW_AT_TI_end_file("../gpio.c")
	.dwattr $C$DW$166, DW_AT_TI_end_line(0x176)
	.dwattr $C$DW$166, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$166

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON18||:	.bits		0x400043fc,32

	.align	4
||$C$CON19||:	.bits		0x400053fc,32

	.align	4
||$C$CON20||:	.bits		0x400063fc,32

	.align	4
||$C$CON21||:	.bits		0x400073fc,32

	.align	4
||$C$CON22||:	.bits		0x400243fc,32

	.align	4
||$C$CON23||:	.bits		0x400253fc,32

	.align	4
||$C$CON24||:	.bits		0x42087f80,32


;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(5)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(0)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_VFP_args(3)
	.battr "TI", Tag_File, 1, Tag_FP_interface(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x10)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$171, DW_AT_name("__max_align1")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$171, DW_AT_decl_column(0x0c)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$172, DW_AT_name("__max_align2")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$172, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("__max_align_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x03)


$C$DW$T$24	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$24, DW_AT_name("_PORT")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x04)
$C$DW$173	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$173, DW_AT_name("PORTA")
	.dwattr $C$DW$173, DW_AT_const_value(0x42087f80)
	.dwattr $C$DW$173, DW_AT_decl_file("..\gpio.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$173, DW_AT_decl_column(0x05)

$C$DW$174	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$174, DW_AT_name("PORTB")
	.dwattr $C$DW$174, DW_AT_const_value(0x420a7f80)
	.dwattr $C$DW$174, DW_AT_decl_file("..\gpio.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$174, DW_AT_decl_column(0x05)

$C$DW$175	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$175, DW_AT_name("PORTC")
	.dwattr $C$DW$175, DW_AT_const_value(0x420c7f80)
	.dwattr $C$DW$175, DW_AT_decl_file("..\gpio.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$175, DW_AT_decl_column(0x05)

$C$DW$176	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$176, DW_AT_name("PORTD")
	.dwattr $C$DW$176, DW_AT_const_value(0x420e7f80)
	.dwattr $C$DW$176, DW_AT_decl_file("..\gpio.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$176, DW_AT_decl_column(0x05)

$C$DW$177	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$177, DW_AT_name("PORTE")
	.dwattr $C$DW$177, DW_AT_const_value(0x42487f80)
	.dwattr $C$DW$177, DW_AT_decl_file("..\gpio.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x20)
	.dwattr $C$DW$177, DW_AT_decl_column(0x05)

$C$DW$178	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$178, DW_AT_name("PORTF")
	.dwattr $C$DW$178, DW_AT_const_value(0x424a7f80)
	.dwattr $C$DW$178, DW_AT_decl_file("..\gpio.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x21)
	.dwattr $C$DW$178, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$24, DW_AT_decl_file("..\gpio.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$24

$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("PORT")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_decl_file("..\gpio.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x22)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x16)

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x12)

$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x19)

$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("int8_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x13)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x18)

$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x13)

$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x13)

$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x1a)

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x14)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x11)

$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x13)

$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x1a)

$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("int16_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x14)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x1a)

$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x19)

$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x14)

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x14)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x1a)

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x1a)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x15)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x0d)

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x13)

$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x0e)

$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x0e)

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x0e)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x0e)

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x0e)

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x15)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x15)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x0f)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x13)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x13)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x13)

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x13)

$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x19)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x13)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x19)

$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x13)

$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x18)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x13)

$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x1a)

$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x13)

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x13)

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x15)

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x13)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x13)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x13)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("__register_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x13)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x13)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x13)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("int32_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x14)

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x0e)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)

$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x17)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x14)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x14)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x14)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x14)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("__size_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x14)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x14)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("__time_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x19)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x14)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x14)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x14)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x1a)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x14)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x1a)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x14)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x19)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x14)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x1a)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x1a)

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x14)

$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x14)

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x16)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x14)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x14)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x14)

$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x15)

$C$DW$T$110	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$110, DW_AT_address_class(0x20)

$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x16)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("__key_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x0f)

$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x0f)

$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("_off_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x0e)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("__off_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x18)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x14)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x13)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("__id_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x13)

$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x13)

$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x19)

$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x13)

$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x1a)

$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x13)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x15)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x13)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x13)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("int64_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x1c)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x14)

$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x14)

$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x14)

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x14)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x14)

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x14)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x1a)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x14)

$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$139, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x1a)

$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x14)

$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x19)

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x16)

$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$144	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$144, DW_AT_name("__float_t")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$144, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x10)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$145	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$145, DW_AT_name("__double_t")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$145, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x11)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$33	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$33, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$33, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$147	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$147, DW_AT_address_class(0x20)

$C$DW$T$148	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$148, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$148, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$148, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$148, DW_AT_decl_column(0x16)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$149	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$149, DW_AT_address_class(0x20)

$C$DW$T$150	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$150, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x19)


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("__va_list_t")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x04)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$179, DW_AT_name("__ap")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("__ap")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$179, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$179, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

$C$DW$T$151	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$151, DW_AT_name("__va_list")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$151, DW_AT_decl_file("C:/ti/ccs1240/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x03)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 80
	.dwcfi	same_value, 81
	.dwcfi	same_value, 82
	.dwcfi	same_value, 83
	.dwcfi	same_value, 84
	.dwcfi	same_value, 85
	.dwcfi	same_value, 86
	.dwcfi	same_value, 87
	.dwcfi	same_value, 88
	.dwcfi	same_value, 89
	.dwcfi	same_value, 90
	.dwcfi	same_value, 91
	.dwcfi	same_value, 92
	.dwcfi	same_value, 93
	.dwcfi	same_value, 94
	.dwcfi	same_value, 95
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$180	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$180, DW_AT_name("A1")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg0]

$C$DW$181	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$181, DW_AT_name("A2")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg1]

$C$DW$182	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$182, DW_AT_name("A3")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg2]

$C$DW$183	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$183, DW_AT_name("A4")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg3]

$C$DW$184	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$184, DW_AT_name("V1")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg4]

$C$DW$185	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$185, DW_AT_name("V2")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg5]

$C$DW$186	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$186, DW_AT_name("V3")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg6]

$C$DW$187	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$187, DW_AT_name("V4")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg7]

$C$DW$188	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$188, DW_AT_name("V5")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg8]

$C$DW$189	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$189, DW_AT_name("V6")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg9]

$C$DW$190	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$190, DW_AT_name("V7")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg10]

$C$DW$191	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$191, DW_AT_name("V8")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg11]

$C$DW$192	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$192, DW_AT_name("V9")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg12]

$C$DW$193	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$193, DW_AT_name("SP")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg13]

$C$DW$194	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$194, DW_AT_name("LR")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg14]

$C$DW$195	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$195, DW_AT_name("PC")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg15]

$C$DW$196	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$196, DW_AT_name("SR")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg17]

$C$DW$197	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$197, DW_AT_name("AP")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg7]

$C$DW$198	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$198, DW_AT_name("D0")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x40]

$C$DW$199	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$199, DW_AT_name("D0_hi")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x41]

$C$DW$200	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$200, DW_AT_name("D1")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x42]

$C$DW$201	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$201, DW_AT_name("D1_hi")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x43]

$C$DW$202	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$202, DW_AT_name("D2")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x44]

$C$DW$203	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$203, DW_AT_name("D2_hi")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x45]

$C$DW$204	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$204, DW_AT_name("D3")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x46]

$C$DW$205	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$205, DW_AT_name("D3_hi")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x47]

$C$DW$206	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$206, DW_AT_name("D4")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x48]

$C$DW$207	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$207, DW_AT_name("D4_hi")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x49]

$C$DW$208	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$208, DW_AT_name("D5")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$209	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$209, DW_AT_name("D5_hi")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x4b]

$C$DW$210	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$210, DW_AT_name("D6")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$211	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$211, DW_AT_name("D6_hi")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$212	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$212, DW_AT_name("D7")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$213	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$213, DW_AT_name("D7_hi")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$214	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$214, DW_AT_name("D8")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x50]

$C$DW$215	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$215, DW_AT_name("D8_hi")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x51]

$C$DW$216	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$216, DW_AT_name("D9")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x52]

$C$DW$217	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$217, DW_AT_name("D9_hi")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x53]

$C$DW$218	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$218, DW_AT_name("D10")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x54]

$C$DW$219	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$219, DW_AT_name("D10_hi")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x55]

$C$DW$220	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$220, DW_AT_name("D11")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x56]

$C$DW$221	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$221, DW_AT_name("D11_hi")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x57]

$C$DW$222	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$222, DW_AT_name("D12")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x58]

$C$DW$223	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$223, DW_AT_name("D12_hi")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x59]

$C$DW$224	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$224, DW_AT_name("D13")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x5a]

$C$DW$225	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$225, DW_AT_name("D13_hi")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x5b]

$C$DW$226	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$226, DW_AT_name("D14")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x5c]

$C$DW$227	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$227, DW_AT_name("D14_hi")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x5d]

$C$DW$228	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$228, DW_AT_name("D15")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x5e]

$C$DW$229	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$229, DW_AT_name("D15_hi")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x5f]

$C$DW$230	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$230, DW_AT_name("FPEXC")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg18]

$C$DW$231	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$231, DW_AT_name("FPSCR")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU

