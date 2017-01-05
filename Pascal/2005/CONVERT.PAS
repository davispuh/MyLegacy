FUNCTION StripChar( s: STRING; c: CHAR ): STRING; Assembler;
ASM
      PUSH   DS
      CLD
      LDS    SI, s
      XOR    AX, AX
      LODSB
      XCHG   AX, CX
      LES    DI, @Result
      INC    DI
      JCXZ   @@3
      MOV    BL, c

@@1:  LODSB
      CMP    AL, BL
      JE     @@2
      STOSB

@@2:  LOOP   @@1

@@3:  XCHG   AX, DI
      MOV    DI, WORD PTR @Result
      SUB    AX, DI
      DEC    AX
      STOSB
      POP    DS
END;

FUNCTION StrLong( cNum: STRING ): LONGINT;
VAR
   c: INTEGER;
   i: LONGINT;
BEGIN
     VAL( cNum, i, c );
     STrtolong := i;
END;

FUNCTION LongStr( nNum: LONGINT): STRING;
VAR
   s: ^STRING;
BEGIN
ASM
  mov     sp, bp
  push    ss
  push    WORD PTR @RESULT
END;
STR( nNum:0, s^ );
END;

function RealStr(N : real; W, D : byte) : string;        { Convert Real to String }
var
  S : string;
begin
  Str(N : W : D, S);
  realstr := S;
end;
