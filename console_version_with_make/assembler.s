	.file	"main.cpp"
	.ignore	ld_st_style
	.ignore	strict_delay
	.text
	.global	_Z10fillMatrixv
	.type	_Z10fillMatrixv, #function
	.align	8
_Z10fillMatrixv:
	.cfi_startproc
	{
	  setwd	wsz = 0x6, nfx = 0x1, dbl = 0x0
	  disp	%ctpr3, .L1358; ipd 2
	  smulx,0	0x3, _f16s,_lts1lo 0x24, %r10
	  smulx,1	0x2, _f16s,_lts1lo 0x24, %r11
	  adds,2	0x18, 0x0, %g16
	  smulx,3	0x1, _f16s,_lts1lo 0x24, %g17
	  adds,4	0x2, 0x0, %r3
	  adds,5	0x1, 0x0, %r4
	}
	{
	  disp	%ctpr1, .L1355; ipd 2
	  smulx,0	%g16, 0x3, %r7
	  smulx,1	%g16, 0x4, %r9
	  adds,2	0x3, 0x0, %r6
	  addd,3	0x0, _f64,_lts1 0x100000002, %g18
	  smulx,4,sm	0x5, _f16s,_lts0lo 0x24, %r1
	  adds,5	0x0, 0x0, %r5
	}
	{
	  smulx,0	%g16, 0x5, %r8
	  smulx,1	%g16, 0x1, %g19
	  stw,2	0x0, [ _f64,_lts0 B +32 ], %r3
	  smulx,3	%g16, 0x2, %g16
	  stw,5	0x0, [ _f64,_lts2 A ], %r5
	}
	{
	  stw,2	0x0, [ _f64,_lts0 A +4 ], %r5
	  stw,5	0x0, [ _f64,_lts2 A +8 ], %r5
	}
	{
	  stw,2	0x0, [ _f64,_lts0 A +12 ], %r5
	  stw,5	0x0, [ _f64,_lts2 A +16 ], %r5
	}
	{
	  stw,2	0x0, [ _f64,_lts0 A +20 ], %r5
	  std,5	0x0, [ _f64,_lts2 B +24 ], %g18
	}
	{
	  addd,0	%r10, [ _f64,_lts0 B ], %g20
	  addd,1	%r11, [ _f64,_lts2 B +36 ], %g21
	  std,2	0x0, [ _f64,_lts0 B ], %g18
	  addd,3	%r10, [ _f64,_lts2 B +36 ], %g22
	  addd,4	%r11, [ _f64,_lts0 B ], %g23
	}
	{
	  addd,0	%r9, [ _f64,_lts0 A +24 ], %g25
	  addd,1	%r7, [ _f64,_lts0 A +24 ], %g26
	  addd,2	%r7, [ _f64,_lts2 A ], %g24
	  addd,3	%r9, [ _f64,_lts2 A ], %g27
	  cmpledb,4	%g22, %g23, %pred0
	}
	{
	  addd,0	%r8, [ _f64,_lts0 A ], %g22
	  addd,1	%r8, [ _f64,_lts2 A +24 ], %g23
	  stw,2	%g19, [ _f64,_lts0 A ], %r5
	  cmpledb,3	%g21, %g20, %pred1
	}
	{
	  cmpledb,0	%g25, %g24, %pred2
	  cmpledb,1	%g26, %g27, %pred3
	  std,2	0x0, [ _f64,_lts0 B +16 ], %g18
	  std,5	0x0, [ _f64,_lts2 B +8 ], %g18
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  cmpledb,0	%g26, %g22, %pred1
	  cmpledb,1	%g23, %g24, %pred4
	  stw,2	%g19, [ _f64,_lts0 A +20 ], %r4
	  cmpledb,3	%g25, %g22, %pred3
	  cmpledb,4	%g23, %g27, %pred5
	  stw,5	%g19, [ _f64,_lts2 A +16 ], %r5
	  pass	%pred3, @p0
	  pass	%pred2, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred2
	}
	{
	  stw,2	%g19, [ _f64,_lts0 A +12 ], %r4
	  stw,5	%g19, [ _f64,_lts2 A +8 ], %r5
	  pass	%pred1, @p0
	  pass	%pred4, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred1
	  pass	%pred2, @p2
	  landp	~@p4, ~@p2, @p5
	  pass	@p5, %pred2
	}
	{
	  stw,2	%g19, [ _f64,_lts0 A +4 ], %r4
	  stw,5	%g17, [ _f64,_lts2 B +32 ], %r6
	  pass	%pred0, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred0
	  pass	%pred3, @p2
	  pass	%pred5, @p3
	  landp	~@p2, ~@p3, @p5
	  pass	@p5, %pred1
	  landp	~@p5, @p4, @p6
	  pass	@p6, %pred2
	}
	{
	  stw,2	%g17, [ _f64,_lts0 B +28 ], %r3
	  stw,5	%g17, [ _f64,_lts2 B +24 ], %r6
	}
	{
	  stw,2	%g17, [ _f64,_lts0 B +20 ], %r3
	  stw,5	%g17, [ _f64,_lts2 B +16 ], %r6
	}
	{
	  stw,2	%g17, [ _f64,_lts0 B +12 ], %r3
	  stw,5	%g17, [ _f64,_lts2 B +8 ], %r6
	}
	{
	  stw,2	%g17, [ _f64,_lts0 B +4 ], %r3
	  stw,5	%g17, [ _f64,_lts2 B ], %r6
	}
	{
	  stw,2	%g16, [ _f64,_lts0 A +20 ], %r5
	  stw,5	%g16, [ _f64,_lts2 A +16 ], %r5
	}
	{
	  stw,2	%g16, [ _f64,_lts0 A +12 ], %r5
	  stw,5	%g16, [ _f64,_lts2 A +8 ], %r5
	}
	{
	  ct	%ctpr3 ? ~%pred2
	  stw,2	%g16, [ _f64,_lts0 A +4 ], %r5
	  stw,5	%g16, [ _f64,_lts2 A ], %r5
	}
	{
	  stw,2	%r10, [ _f64,_lts0 B +32 ], %r6 ? %pred2
	  stw,5	%r10, [ _f64,_lts2 B +28 ], %r3 ? %pred2
	}
	{
	  stw,2	%r10, [ _f64,_lts0 B +24 ], %r6 ? %pred2
	  stw,5	%r10, [ _f64,_lts2 B +20 ], %r3 ? %pred2
	}
	{
	  stw,2	%r10, [ _f64,_lts0 B +16 ], %r6 ? %pred2
	  stw,5	%r10, [ _f64,_lts2 B +12 ], %r3 ? %pred2
	}
	{
	  stw,2	%r10, [ _f64,_lts0 B +8 ], %r6 ? %pred2
	  stw,5	%r10, [ _f64,_lts2 B +4 ], %r3 ? %pred2
	}
	{
	  stw,2	%r10, [ _f64,_lts0 B ], %r6 ? %pred2
	  stw,5	%r11, [ _f64,_lts2 B +32 ], %r3 ? %pred2
	}
	{
	  stw,2	%r11, [ _f64,_lts0 B +28 ], %r4 ? %pred2
	  stw,5	%r11, [ _f64,_lts2 B +24 ], %r3 ? %pred2
	}
	{
	  stw,2	%r11, [ _f64,_lts0 B +20 ], %r4 ? %pred2
	  stw,5	%r11, [ _f64,_lts2 B +16 ], %r3 ? %pred2
	}
	{
	  stw,2	%r11, [ _f64,_lts0 B +12 ], %r4 ? %pred2
	  stw,5	%r11, [ _f64,_lts2 B +8 ], %r3 ? %pred2
	}
	{
	  stw,2	%r11, [ _f64,_lts0 B +4 ], %r4 ? %pred2
	  stw,5	%r11, [ _f64,_lts2 B ], %r3 ? %pred2
	}
	{
	  stw,2	%r8, [ _f64,_lts0 A +20 ], %r4 ? %pred2
	  stw,5	%r8, [ _f64,_lts2 A +16 ], %r5 ? %pred2
	}
	{
	  stw,2	%r8, [ _f64,_lts0 A +12 ], %r4 ? %pred2
	  stw,5	%r8, [ _f64,_lts2 A +8 ], %r5 ? %pred2
	}
	{
	  stw,2	%r8, [ _f64,_lts0 A +4 ], %r4 ? %pred2
	  stw,5	%r8, [ _f64,_lts2 A ], %r5 ? %pred2
	}
	{
	  stw,2	%r9, [ _f64,_lts0 A +20 ], %r5 ? %pred2
	  stw,5	%r9, [ _f64,_lts2 A +16 ], %r5 ? %pred2
	}
	{
	  stw,2	%r9, [ _f64,_lts0 A +12 ], %r5 ? %pred2
	  stw,5	%r9, [ _f64,_lts2 A +8 ], %r5 ? %pred2
	}
	{
	  stw,2	%r9, [ _f64,_lts0 A +4 ], %r5 ? %pred2
	  stw,5	%r9, [ _f64,_lts2 A ], %r5 ? %pred2
	}
	{
	  stw,2	%r7, [ _f64,_lts0 A +20 ], %r4 ? %pred2
	  stw,5	%r7, [ _f64,_lts2 A +16 ], %r5 ? %pred2
	}
	{
	  stw,2	%r7, [ _f64,_lts0 A +12 ], %r4 ? %pred2
	  stw,5	%r7, [ _f64,_lts2 A +8 ], %r5 ? %pred2
	}
	{
	  stw,2	%r7, [ _f64,_lts0 A +4 ], %r4 ? %pred2
	  stw,5	%r7, [ _f64,_lts2 A ], %r5 ? %pred2
	}
	{
	  nop 5
	  smulx,0,sm	0x4, _f16s,_lts0lo 0x24, %r2
	}
.L1355:
	{
	  return	%ctpr3; ipd 2
	  addd,0	%r1, [ _f64,_lts0 B ], %g17
	  smulx,1,sm	0x18, 0x6, %g20
	  addd,2	%r2, [ _f64,_lts2 B +36 ], %g16
	  addd,3	%r1, [ _f64,_lts2 B +36 ], %g19
	  addd,5	%r2, [ _f64,_lts0 B ], %g18
	}
	{
	  disp	%ctpr2, .L1260; ipd 2
	  cmpledb,0	%g16, %g17, %pred0
	  cmpledb,3	%g19, %g18, %pred1
	}
	{
	  nop 1
	  pass	%pred0, @p0
	  pass	%pred1, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  stw,2	%r2, [ _f64,_lts0 B ], %r3 ? ~%pred0
	  stw,5	%r2, [ _f64,_lts2 B +4 ], %r4 ? ~%pred0
	}
	{
	  ct	%ctpr2 ? %pred0
	  stw,2	%r2, [ _f64,_lts0 B +8 ], %r3 ? ~%pred0
	  stw,5	%r2, [ _f64,_lts2 B +12 ], %r4 ? ~%pred0
	}
	{
	  stw,2	%r2, [ _f64,_lts0 B +16 ], %r3 ? ~%pred0
	  stw,5	%r2, [ _f64,_lts2 B +20 ], %r4 ? ~%pred0
	}
	{
	  stw,2	%r2, [ _f64,_lts0 B +24 ], %r3 ? ~%pred0
	  stw,5	%r2, [ _f64,_lts2 B +28 ], %r4 ? ~%pred0
	}
	{
	  stw,2	%r2, [ _f64,_lts0 B +32 ], %r3 ? ~%pred0
	  stw,5	%r1, [ _f64,_lts2 B ], %r6 ? ~%pred0
	}
	{
	  stw,2	%r1, [ _f64,_lts0 B +8 ], %r6 ? ~%pred0
	  stw,5	%r1, [ _f64,_lts2 B +4 ], %r3 ? ~%pred0
	}
	{
	  stw,2	%r1, [ _f64,_lts0 B +16 ], %r6 ? ~%pred0
	  stw,5	%r1, [ _f64,_lts2 B +12 ], %r3 ? ~%pred0
	}
	{
	  stw,2	%r1, [ _f64,_lts0 B +24 ], %r6 ? ~%pred0
	  stw,5	%r1, [ _f64,_lts2 B +20 ], %r3 ? ~%pred0
	}
	{
	  stw,2	%r1, [ _f64,_lts0 B +32 ], %r6 ? ~%pred0
	  stw,5	%r1, [ _f64,_lts2 B +28 ], %r3 ? ~%pred0
	}
	{
	  stw,2	%g20, [ _f64,_lts0 A ], %r5 ? ~%pred0
	  stw,5	%g20, [ _f64,_lts2 A +8 ], %r5 ? ~%pred0
	}
	{
	  stw,2	%g20, [ _f64,_lts0 A +4 ], %r5 ? ~%pred0
	  stw,5	%g20, [ _f64,_lts2 A +16 ], %r5 ? ~%pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	  stw,2	%g20, [ _f64,_lts0 A +12 ], %r5 ? ~%pred0
	  stw,5	%g20, [ _f64,_lts2 A +20 ], %r5 ? ~%pred0
	}
.L1260:
	{
	  smulx,0	0x18, 0x6, %g16
	  stw,2	%r2, [ _f64,_lts0 B ], %r3
	  stw,5	%r2, [ _f64,_lts2 B +4 ], %r4
	}
	{
	  stw,2	%r2, [ _f64,_lts0 B +8 ], %r3
	  stw,5	%r2, [ _f64,_lts2 B +12 ], %r4
	}
	{
	  stw,2	%r2, [ _f64,_lts0 B +16 ], %r3
	  stw,5	%r2, [ _f64,_lts2 B +20 ], %r4
	}
	{
	  stw,2	%r2, [ _f64,_lts0 B +24 ], %r3
	  stw,5	%r2, [ _f64,_lts2 B +28 ], %r4
	}
	{
	  stw,2	%r2, [ _f64,_lts0 B +32 ], %r3
	  stw,5	%r1, [ _f64,_lts2 B ], %r6
	}
	{
	  stw,2	%r1, [ _f64,_lts0 B +4 ], %r3
	  stw,5	%r1, [ _f64,_lts2 B +8 ], %r6
	}
	{
	  stw,2	%r1, [ _f64,_lts0 B +12 ], %r3
	  stw,5	%r1, [ _f64,_lts2 B +16 ], %r6
	}
	{
	  stw,2	%r1, [ _f64,_lts0 B +20 ], %r3
	  stw,5	%r1, [ _f64,_lts2 B +24 ], %r6
	}
	{
	  stw,2	%r1, [ _f64,_lts0 B +28 ], %r3
	  stw,5	%r1, [ _f64,_lts2 B +32 ], %r6
	}
	{
	  stw,2	%g16, [ _f64,_lts0 A ], %r5
	  stw,5	%g16, [ _f64,_lts2 A +4 ], %r5
	}
	{
	  stw,2	%g16, [ _f64,_lts0 A +8 ], %r5
	  stw,5	%g16, [ _f64,_lts2 A +12 ], %r5
	}
	{
	  ct	%ctpr3
	  stw,2	%g16, [ _f64,_lts0 A +16 ], %r5
	  stw,5	%g16, [ _f64,_lts2 A +20 ], %r5
	}
.L1358:
	{
	  stw,2	%r11, [ _f64,_lts0 B +4 ], %r4
	  stw,5	%r11, [ _f64,_lts2 B +8 ], %r3
	}
	{
	  stw,2	%r11, [ _f64,_lts0 B +12 ], %r4
	  stw,5	%r11, [ _f64,_lts2 B +16 ], %r3
	}
	{
	  stw,2	%r11, [ _f64,_lts0 B +20 ], %r4
	  stw,5	%r11, [ _f64,_lts2 B +24 ], %r3
	}
	{
	  stw,2	%r11, [ _f64,_lts0 B +28 ], %r4
	  stw,5	%r11, [ _f64,_lts2 B +32 ], %r3
	}
	{
	  stw,2	%r11, [ _f64,_lts0 B ], %r3
	  stw,5	%r10, [ _f64,_lts2 B +28 ], %r3
	}
	{
	  stw,2	%r10, [ _f64,_lts0 B +32 ], %r6
	  stw,5	%r10, [ _f64,_lts2 B +24 ], %r6
	}
	{
	  stw,2	%r10, [ _f64,_lts0 B +20 ], %r3
	  stw,5	%r10, [ _f64,_lts2 B +16 ], %r6
	}
	{
	  stw,2	%r10, [ _f64,_lts0 B +12 ], %r3
	  stw,5	%r10, [ _f64,_lts2 B +8 ], %r6
	}
	{
	  stw,2	%r10, [ _f64,_lts0 B +4 ], %r3
	  stw,5	%r10, [ _f64,_lts2 B ], %r6
	}
	{
	  stw,2	%r7, [ _f64,_lts0 A +20 ], %r4
	  stw,5	%r7, [ _f64,_lts2 A +16 ], %r5
	}
	{
	  stw,2	%r7, [ _f64,_lts0 A +12 ], %r4
	  stw,5	%r7, [ _f64,_lts2 A +8 ], %r5
	}
	{
	  stw,2	%r7, [ _f64,_lts0 A +4 ], %r4
	  stw,5	%r7, [ _f64,_lts2 A ], %r5
	}
	{
	  stw,2	%r9, [ _f64,_lts0 A ], %r5
	  stw,5	%r9, [ _f64,_lts2 A +4 ], %r5
	}
	{
	  stw,2	%r9, [ _f64,_lts0 A +8 ], %r5
	  stw,5	%r9, [ _f64,_lts2 A +12 ], %r5
	}
	{
	  stw,2	%r9, [ _f64,_lts0 A +16 ], %r5
	  stw,5	%r9, [ _f64,_lts2 A +20 ], %r5
	}
	{
	  stw,2	%r8, [ _f64,_lts0 A ], %r5
	  stw,5	%r8, [ _f64,_lts2 A +4 ], %r4
	}
	{
	  stw,2	%r8, [ _f64,_lts0 A +8 ], %r5
	  stw,5	%r8, [ _f64,_lts2 A +12 ], %r4
	}
	{
	  stw,2	%r8, [ _f64,_lts0 A +16 ], %r5
	  stw,5	%r8, [ _f64,_lts2 A +20 ], %r4
	}
	{
	  nop 4
	  smulx,0	0x5, _f16s,_lts0lo 0x24, %r1
	  smulx,1	0x4, _f16s,_lts0lo 0x24, %r2
	}
	{
	  ct	%ctpr1
	}
	.cfi_endproc
	.size	_Z10fillMatrixv, .- _Z10fillMatrixv
	.global	_Z11solveMatrixv
	.type	_Z11solveMatrixv, #function
	.align	8
_Z11solveMatrixv:
	.cfi_startproc
	{
	  setwd	wsz = 0x20, nfx = 0x1, dbl = 0x0
	  return	%ctpr3; ipd 2
	  smulx,1	0x2, _f16s,_lts1lo 0x24, %g18
	  smulx,3	0x5, _f16s,_lts1lo 0x24, %g20
	  smulx,4	0x1, _f16s,_lts1lo 0x24, %g19
	}
	{
	  setwd	wsz = 0x3f, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x1e, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L2252; ipd 2
	  ldw,0	0x0, [ _f64,_lts2 B +32 ], %g17
	  smulx,1	0x3, _f16s,_lts1lo 0x24, %g21
	  smulx,4	0x4, _f16s,_lts1lo 0x24, %g22
	}
	{
	  ldw,2	0x0, [ _f64,_lts2 B +24 ], %g16
	}
	{
	  rwd,0	_f64,_lts0 0x122ff2200000007, %lsr
	  adds,2,sm	0x0, 0x0, %b[2]
	  ldw,3	0x0, [ _f64,_lts2 B +28 ], %r63
	}
	{
	  ldw,2	0x0, [ _f64,_lts0 B +20 ], %r61
	  ldw,3	0x0, [ _f64,_lts2 B +16 ], %r62
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 B +8 ], %r60
	  ldw,2	0x0, [ _f64,_lts2 B ], %r58
	}
	{
	  ldw,0	%g18, [ _f64,_lts0 B ], %r39
	  ldw,2	%g18, [ _f64,_lts2 B +4 ], %r44
	  ldw,3	%g19, [ _f64,_lts0 B ], %r38
	  ldw,5	%g19, [ _f64,_lts2 B +4 ], %r42
	}
	{
	  ldw,0	%g18, [ _f64,_lts0 B +8 ], %r43
	  ldw,2	%g18, [ _f64,_lts2 B +12 ], %r48
	  ldw,3	%g19, [ _f64,_lts0 B +8 ], %r41
	  ldw,5	%g19, [ _f64,_lts2 B +12 ], %r46
	}
	{
	  ldw,0	%g18, [ _f64,_lts0 B +16 ], %r47
	  ldw,2	%g18, [ _f64,_lts2 B +20 ], %r52
	  ldw,3	%g19, [ _f64,_lts0 B +16 ], %r45
	  ldw,5	%g19, [ _f64,_lts2 B +20 ], %r50
	}
	{
	  ldw,0	%g18, [ _f64,_lts0 B +24 ], %r51
	  ldw,2	%g18, [ _f64,_lts2 B +28 ], %r56
	  ldw,3	%g19, [ _f64,_lts0 B +24 ], %r49
	  ldw,5	%g19, [ _f64,_lts2 B +28 ], %r54
	}
	{
	  ldw,0	%g18, [ _f64,_lts0 B +32 ], %r55
	  ldw,2	%g19, [ _f64,_lts0 B +32 ], %r53
	  ldw,3	%g20, [ _f64,_lts2 B +8 ], %r12
	  ldw,5	%g20, [ _f64,_lts0 B +32 ], %r24
	}
	{
	  ldw,0	%g20, [ _f64,_lts0 B +4 ], %r13
	  ldw,2	%g20, [ _f64,_lts2 B +16 ], %r14
	  ldw,3	%g21, [ _f64,_lts0 B +4 ], %r21
	  ldw,5	%g21, [ _f64,_lts2 B +16 ], %r30
	}
	{
	  ldw,0	%g20, [ _f64,_lts0 B +12 ], %r15
	  ldw,2	%g20, [ _f64,_lts2 B +24 ], %r16
	  ldw,3	%g21, [ _f64,_lts0 B +12 ], %r25
	  ldw,5	%g21, [ _f64,_lts2 B +24 ], %r34
	}
	{
	  ldw,0	%g20, [ _f64,_lts0 B +20 ], %r17
	  ldw,2	%g20, [ _f64,_lts2 B +28 ], %r18
	  ldw,3	%g21, [ _f64,_lts0 B +20 ], %r29
	  ldw,5	%g21, [ _f64,_lts2 B +28 ], %r33
	}
	{
	  ldw,0	%g20, [ _f64,_lts0 B ], %r20
	  ldw,2	%g21, [ _f64,_lts2 B +8 ], %r26
	  ldw,3	%g21, [ _f64,_lts0 B ], %r40
	  ldw,5	%g22, [ _f64,_lts0 B ], %r19
	}
	{
	  ldw,0	%g21, [ _f64,_lts0 B +32 ], %r37
	  ldw,2	%g22, [ _f64,_lts0 B +32 ], %r22
	  ldw,3	%g22, [ _f64,_lts2 B +4 ], %r23
	  ldw,5	0x0, [ _f64,_lts2 B +4 ], %r57
	}
	{
	  ldw,0	%g22, [ _f64,_lts0 B +12 ], %r27
	  ldw,2	%g22, [ _f64,_lts2 B +8 ], %r28
	  ldw,3	0x0, [ _f64,_lts0 B +12 ], %r59
	}
	{
	  ldw,0	%g22, [ _f64,_lts0 B +20 ], %r31
	  ldw,2	%g22, [ _f64,_lts2 B +16 ], %r32
	}
	{
	  ldw,0	%g22, [ _f64,_lts0 B +28 ], %r35
	  ldw,2	%g22, [ _f64,_lts2 B +24 ], %r36
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C ], %r11
	  addd,1	0x0, [ _f64,_lts2 C +4 ], %r9
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +8 ], %r10
	  addd,1	0x0, [ _f64,_lts2 C +16 ], %r8
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +24 ], %r6
	  addd,1	0x0, [ _f64,_lts2 C +12 ], %r7
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +20 ], %r5
	  addd,1	0x0, [ _f64,_lts2 C +32 ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 A +20 ], %r2
	  addd,1	0x0, [ _f64,_lts2 C +28 ], %r3
	}
.L2252:
	{
	  loop_mode
	  muls,0,sm	%b[27], %r53, %b[32]
	  muls,1,sm	%b[20], %r40, %b[33]
	  muls,3,sm	%b[18], %r39, %b[34]
	  muls,4,sm	%b[21], %g17, %b[35]
	}
	{
	  loop_mode
	  muls,0,sm	%b[27], %r45, %b[38]
	  muls,1,sm	%b[21], %r62, %b[39]
	  muls,3,sm	%b[27], %r50, %b[36]
	  muls,4,sm	%b[21], %r61, %b[37]
	}
	{
	  loop_mode
	  muls,0,sm	%b[27], %r49, %b[42]
	  muls,1,sm	%b[21], %g16, %b[43]
	  muls,3,sm	%b[27], %r54, %b[40]
	  muls,4,sm	%b[21], %r63, %b[41]
	}
	{
	  loop_mode
	  muls,0,sm	%b[27], %r38, %b[48]
	  muls,1,sm	%b[21], %r58, %b[47]
	  muls,3,sm	%b[27], %r42, %b[46]
	  muls,4,sm	%b[21], %r57, %b[45]
	  ldw,5,sm	%b[5], %r4, %b[44] ? %pcnt0
	}
	{
	  loop_mode
	  muls,0,sm	%b[27], %r41, %b[49]
	  muls,1,sm	%b[21], %r60, %b[50]
	  ldw,2,sm	%b[5], %r8, %b[52] ? %pcnt0
	  muls,3,sm	%b[27], %r46, %b[21]
	  muls,4,sm	%b[21], %r59, %b[27]
	  ldw,5,sm	%b[5], %r5, %b[51] ? %pcnt0
	}
	{
	  loop_mode
	  muls,0,sm	%b[20], %r21, %b[54]
	  ldw,2,sm	%b[5], %r6, %b[56] ? %pcnt0
	  muls,3,sm	%b[18], %r44, %b[53]
	  ldw,5,sm	%b[5], %r3, %b[55] ? %pcnt0
	}
	{
	  loop_mode
	  muls,0,sm	%b[20], %r25, %b[57]
	  ldw,2,sm	%b[5], %r11, %b[60] ? %pcnt0
	  muls,3,sm	%b[18], %r48, %b[58]
	  ldw,5,sm	%b[5], %r9, %b[59] ? %pcnt0
	}
	{
	  loop_mode
	  muls,0,sm	%b[18], %r56, %b[38]
	  add_adds,1,sm	%b[52], %b[39], %b[38], %b[36]
	  ldw,2,sm	%b[5], %r10, %b[51] ? %pcnt0
	  muls,3,sm	%b[20], %r37, %b[37]
	  add_adds,4,sm	%b[51], %b[37], %b[36], %b[20]
	  ldw,5,sm	%b[5], %r7, %b[39] ? %pcnt0
	}
	{
	  loop_mode
	  muls,0,sm	%b[18], %r52, %b[40]
	  add_adds,1,sm	%b[56], %b[43], %b[42], %b[42]
	  muls,3,sm	%b[3], %r22, %b[18]
	  add_adds,4,sm	%b[55], %b[41], %b[40], %b[41]
	}
	{
	  loop_mode
	  muls,0,sm	%b[3], %r35, %b[45]
	  add_adds,1,sm	%b[60], %b[47], %b[48], %b[46]
	  muls,3,sm	%b[9], %r24, %b[43]
	  add_adds,4,sm	%b[59], %b[45], %b[46], %b[47]
	}
	{
	  loop_mode
	  muls,0,sm	%b[9], %r17, %b[21]
	  add_adds,1,sm	%b[51], %b[50], %b[49], %b[39]
	  ldw,2,sm	%b[6], [ _f64,_lts0 A +16 ], %b[1] ? %pcnt1
	  muls,3,sm	%b[3], %r31, %b[27]
	  add_adds,4,sm	%b[39], %b[27], %b[21], %b[35]
	  adds,5,sm	%b[44], %b[35], %b[44]
	}
	{
	  loop_mode
	  muls,0,sm	%b[9], %r15, %b[34]
	  add_adds,1,sm	%b[46], %b[34], %b[33], %b[32]
	  ldw,2,sm	%b[6], %r2, %b[7] ? %pcnt1
	  muls,3,sm	%b[3], %r27, %b[44]
	  add_adds,4,sm	%b[47], %b[53], %b[54], %b[33]
	  adds,5,sm	%b[44], %b[32], %b[46]
	}
	{
	  loop_mode
	  muls,0,sm	%b[9], %r13, %b[30]
	  add_adds,1,sm	%b[39], %b[31], %b[30], %b[35]
	  adds,2,sm	%b[2], 0x1, %b[0]
	  muls,3,sm	%b[3], %r23, %b[26]
	  add_adds,4,sm	%b[35], %b[58], %b[57], %b[31]
	  adds,5,sm	%b[46], %b[26], %b[39]
	}
	{
	  loop_mode
	  smulx,0,sm	0x18, %b[2], %b[4]
	  add_adds,1,sm	%b[42], %b[29], %b[28], %b[29]
	  ldw,2,sm	%b[6], [ _f64,_lts1 A +4 ], %b[25] ? %pcnt1
	  smulx,3,sm	%b[4], _f16s,_lts0lo 0x24, %b[3]
	  add_adds,4,sm	%b[41], %b[38], %b[25], %b[28]
	  adds,5,sm	%b[39], %b[37], %b[37]
	}
	{
	  loop_mode
	  muls,0,sm	%b[7], %r20, %b[8]
	  add_adds,1,sm	%b[36], %b[24], %b[23], %b[20]
	  ldw,2,sm	%b[6], [ _f64,_lts0 A +12 ], %b[18] ? %pcnt1
	  muls,3,sm	%b[1], %r19, %b[9]
	  add_adds,4,sm	%b[20], %b[40], %b[19], %b[19]
	  adds,5,sm	%b[37], %b[18], %b[23]
	}
	{
	  loop_mode
	  muls,0,sm	%b[1], %r28, %b[13]
	  add_adds,1,sm	%b[29], %b[17], %b[16], %b[22]
	  ldw,2,sm	%b[6], [ _f64,_lts0 A +8 ], %b[16] ? %pcnt1
	  muls,3,sm	%b[7], %r12, %b[12]
	  add_adds,4,sm	%b[28], %b[45], %b[22], %b[17]
	  adds,5,sm	%b[23], %b[43], %b[23]
	}
	{
	  loop_mode
	  muls,0,sm	%b[7], %r14, %g19
	  add_adds,1,sm	%b[20], %g18, %g19, %b[21]
	  ldw,2,sm	%b[6], [ _f64,_lts0 A ], %b[19] ? %pcnt1
	  muls,3,sm	%b[1], %r32, %g18
	  add_adds,4,sm	%b[19], %b[27], %b[21], %b[20]
	  stw,5	%b[5], %r4, %b[23]
	}
	{
	  loop_mode
	  muls,0,sm	%b[7], %r16, %b[14]
	  add_adds,1,sm	%b[35], %b[15], %b[14], %b[22]
	  stw,2	%b[5], %r6, %b[22]
	  muls,3,sm	%b[1], %r36, %b[15]
	  add_adds,4,sm	%b[31], %b[44], %b[34], %b[17]
	  stw,5	%b[5], %r3, %b[17]
	}
	{
	  loop_mode
	  muls,0,sm	%b[7], %r18, %b[20]
	  add_adds,1,sm	%b[32], %b[11], %b[10], %b[23]
	  stw,2	%b[5], %r8, %b[21]
	  muls,3,sm	%b[18], %r30, %b[21]
	  add_adds,4,sm	%b[33], %b[26], %b[30], %b[24]
	  stw,5	%b[5], %r5, %b[20]
	}
	{
	  loop_mode
	  muls,0,sm	%b[16], %r47, %b[22]
	  muls,1,sm	%b[18], %r29, %b[17]
	  stw,2	%b[5], %r10, %b[22]
	  muls,3,sm	%b[18], %r34, %b[26]
	  muls,4,sm	%b[16], %r51, %b[27]
	  stw,5	%b[5], %r7, %b[17]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  muls,0,sm	%b[18], %r33, %b[23]
	  muls,1,sm	%b[16], %r55, %b[24]
	  stw,2	%b[5], %r11, %b[23]
	  muls,3,sm	%b[18], %r26, %b[28]
	  muls,4,sm	%b[16], %r43, %b[29]
	  stw,5	%b[5], %r9, %b[24]
	}
	{
	  setwd	wsz = 0x20, nfx = 0x1, dbl = 0x0
	}
	{
	  ct	%ctpr3
	}
	.cfi_endproc
	.size	_Z11solveMatrixv, .- _Z11solveMatrixv
	.global	_Z20optimizedSolveMatrixv
	.type	_Z20optimizedSolveMatrixv, #function
	.align	8
_Z20optimizedSolveMatrixv:
	.cfi_startproc
	{
	  setwd	wsz = 0x20, nfx = 0x1, dbl = 0x0
	  return	%ctpr3; ipd 2
	  smulx,1	0x2, _f16s,_lts1lo 0x24, %g18
	  smulx,3	0x5, _f16s,_lts1lo 0x24, %g20
	  smulx,4	0x1, _f16s,_lts1lo 0x24, %g19
	}
	{
	  setwd	wsz = 0x3f, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x1e, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L3074; ipd 2
	  ldw,0	0x0, [ _f64,_lts2 B +32 ], %g17
	  smulx,1	0x3, _f16s,_lts1lo 0x24, %g21
	  smulx,4	0x4, _f16s,_lts1lo 0x24, %g22
	}
	{
	  ldw,2	0x0, [ _f64,_lts2 B +24 ], %g16
	}
	{
	  rwd,0	_f64,_lts0 0x122ff2200000007, %lsr
	  adds,2,sm	0x0, 0x0, %b[2]
	  ldw,3	0x0, [ _f64,_lts2 B +28 ], %r63
	}
	{
	  ldw,2	0x0, [ _f64,_lts0 B +20 ], %r61
	  ldw,3	0x0, [ _f64,_lts2 B +16 ], %r62
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 B +8 ], %r60
	  ldw,2	0x0, [ _f64,_lts2 B ], %r58
	}
	{
	  ldw,0	%g18, [ _f64,_lts0 B ], %r39
	  ldw,2	%g18, [ _f64,_lts2 B +4 ], %r43
	  ldw,3	%g19, [ _f64,_lts0 B ], %r38
	  ldw,5	%g19, [ _f64,_lts2 B +4 ], %r41
	}
	{
	  ldw,0	%g18, [ _f64,_lts0 B +8 ], %r48
	  ldw,2	%g18, [ _f64,_lts2 B +12 ], %r47
	  ldw,3	%g19, [ _f64,_lts2 B +12 ], %r45
	  ldw,5	%g19, [ _f64,_lts0 B +8 ], %r46
	}
	{
	  ldw,0	%g18, [ _f64,_lts0 B +16 ], %r52
	  ldw,2	%g18, [ _f64,_lts2 B +20 ], %r51
	  ldw,3	%g19, [ _f64,_lts2 B +20 ], %r49
	  ldw,5	%g19, [ _f64,_lts0 B +16 ], %r50
	}
	{
	  ldw,0	%g18, [ _f64,_lts0 B +24 ], %r56
	  ldw,2	%g18, [ _f64,_lts2 B +28 ], %r55
	  ldw,3	%g19, [ _f64,_lts2 B +28 ], %r53
	  ldw,5	%g19, [ _f64,_lts0 B +24 ], %r54
	}
	{
	  ldw,0	%g18, [ _f64,_lts0 B +32 ], %r44
	  ldw,2	%g19, [ _f64,_lts0 B +32 ], %r42
	  ldw,3	%g20, [ _f64,_lts2 B +4 ], %r12
	  ldw,5	%g20, [ _f64,_lts0 B +32 ], %r13
	}
	{
	  ldw,0	%g20, [ _f64,_lts0 B +12 ], %r14
	  ldw,2	%g20, [ _f64,_lts2 B +8 ], %r15
	  ldw,3	%g21, [ _f64,_lts2 B +8 ], %r25
	  ldw,5	%g21, [ _f64,_lts0 B +12 ], %r30
	}
	{
	  ldw,0	%g20, [ _f64,_lts0 B +20 ], %r16
	  ldw,2	%g20, [ _f64,_lts2 B +16 ], %r17
	  ldw,3	%g21, [ _f64,_lts2 B +16 ], %r29
	  ldw,5	%g21, [ _f64,_lts0 B +20 ], %r34
	}
	{
	  ldw,0	%g20, [ _f64,_lts0 B +24 ], %r18
	  ldw,2	%g20, [ _f64,_lts2 B ], %r20
	  ldw,3	%g21, [ _f64,_lts0 B +24 ], %r33
	  ldw,5	%g21, [ _f64,_lts2 B ], %r40
	}
	{
	  ldw,0	%g20, [ _f64,_lts0 B +28 ], %r24
	  ldw,2	%g21, [ _f64,_lts2 B +32 ], %r21
	  ldw,3	%g21, [ _f64,_lts0 B +28 ], %r37
	  ldw,5	%g22, [ _f64,_lts0 B +28 ], %r22
	}
	{
	  ldw,0	%g21, [ _f64,_lts0 B +4 ], %r26
	  ldw,2	%g22, [ _f64,_lts2 B ], %r19
	  ldw,3	%g22, [ _f64,_lts0 B +4 ], %r28
	  ldw,5	0x0, [ _f64,_lts0 B +4 ], %r57
	}
	{
	  ldw,0	%g22, [ _f64,_lts0 B +32 ], %r23
	  ldw,2	%g22, [ _f64,_lts2 B +8 ], %r27
	}
	{
	  ldw,0	%g22, [ _f64,_lts0 B +16 ], %r31
	  ldw,2	%g22, [ _f64,_lts2 B +12 ], %r32
	  ldw,3	0x0, [ _f64,_lts2 B +12 ], %r59
	}
	{
	  ldw,0	%g22, [ _f64,_lts0 B +24 ], %r35
	  ldw,2	%g22, [ _f64,_lts2 B +20 ], %r36
	}
	{
	  addd,0	0x0, [ _f64,_lts0 A +20 ], %r11
	  addd,1	0x0, [ _f64,_lts2 A +12 ], %r9
	}
	{
	  addd,0	0x0, [ _f64,_lts0 A +16 ], %r10
	  addd,1	0x0, [ _f64,_lts2 A +8 ], %r8
	}
	{
	  addd,0	0x0, [ _f64,_lts0 A ], %r6
	  addd,1	0x0, [ _f64,_lts2 A +4 ], %r7
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +4 ], %r5
	  addd,1	0x0, [ _f64,_lts2 C +20 ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +24 ], %r2
	  addd,1	0x0, [ _f64,_lts2 C +8 ], %r3
	}
.L3074:
	{
	  loop_mode
	  muls,0,sm	%b[27], %r44, %b[39]
	  muls,1,sm	%b[27], %r47, %b[40]
	  muls,3,sm	%b[27], %r52, %b[41]
	  muls,4,sm	%b[15], %r54, %b[42]
	}
	{
	  loop_mode
	  muls,0,sm	%b[15], %r53, %b[43]
	  muls,1,sm	%b[15], %r38, %b[44]
	  muls,3,sm	%b[15], %r42, %b[45]
	  muls,4,sm	%b[15], %r45, %b[46]
	}
	{
	  loop_mode
	  muls,0,sm	%b[21], %r61, %b[12]
	  muls,1,sm	%b[15], %r50, %b[47]
	  muls,3,sm	%b[21], %r57, %b[48]
	  muls,4,sm	%b[12], %r12, %b[49]
	}
	{
	  loop_mode
	  muls,0,sm	%b[18], %r28, %b[52]
	  muls,1,sm	%b[18], %r27, %b[50]
	  muls,3,sm	%b[24], %r26, %b[51]
	  muls,4,sm	%b[21], %r62, %b[18]
	}
	{
	  loop_mode
	  muls,0,sm	%b[24], %r25, %b[54]
	  muls,1,sm	%b[21], %g17, %b[24]
	  muls,3,sm	%b[27], %r43, %b[55]
	  muls,4,sm	%b[21], %r59, %b[53]
	}
	{
	  loop_mode
	  muls,0,sm	%b[27], %r48, %b[56]
	  muls,1,sm	%b[21], %r63, %b[27]
	  muls,3,sm	%b[15], %r41, %b[57]
	  muls,4,sm	%b[21], %r58, %b[58]
	}
	{
	  loop_mode
	  muls,0,sm	%b[15], %r46, %b[59]
	  muls,1,sm	%b[21], %g16, %b[49]
	  muls,3,sm	%b[21], %r60, %b[60]
	  istofd,4,sm	%b[49], %b[21]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[52], %b[18]
	  istofd,1,sm	%b[50], %b[50]
	  istofd,3,sm	%b[51], %b[51]
	  istofd,4,sm	%b[18], %b[52]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[54], %b[24]
	  istofd,1,sm	%b[24], %b[54]
	  istofd,3,sm	%b[55], %b[53]
	  istofd,4,sm	%b[53], %b[55]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[56], %b[27]
	  istofd,1,sm	%b[27], %b[57]
	  istofd,3,sm	%b[57], %b[56]
	  istofd,4,sm	%b[58], %b[58]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[59], %b[48]
	  istofd,1,sm	%b[49], %b[49]
	  istofd,3,sm	%b[48], %b[61]
	  istofd,4,sm	%b[60], %b[59]
	}
	{
	  loop_mode
	  muls,0,sm	%b[15], %r49, %b[12]
	  istofd,1,sm	%b[12], %b[15]
	  istofd,3,sm	%b[47], %b[47]
	  faddd,4,sm	0x0, %b[52], %b[52]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[45], %b[45]
	  faddd,1,sm	0x0, %b[54], %b[46]
	  istofd,3,sm	%b[46], %b[54]
	  faddd,4,sm	0x0, %b[55], %b[55]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[43], %b[43]
	  faddd,1,sm	0x0, %b[57], %b[44]
	  istofd,3,sm	%b[44], %b[57]
	  faddd,4,sm	0x0, %b[58], %b[58]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[42], %b[42]
	  faddd,1,sm	0x0, %b[49], %b[49]
	  faddd,3,sm	0x0, %b[61], %b[60]
	  faddd,4,sm	0x0, %b[59], %b[59]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[12], %b[12]
	  faddd,1,sm	0x0, %b[15], %b[15]
	  istofd,3,sm	%b[41], %b[41]
	  faddd,4,sm	%b[52], %b[47], %b[47]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[39], %b[39]
	  faddd,1,sm	%b[46], %b[45], %b[40]
	  istofd,3,sm	%b[40], %b[45]
	  faddd,4,sm	%b[55], %b[54], %b[46]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[37], %b[37]
	  faddd,1,sm	%b[44], %b[43], %b[38]
	  istofd,3,sm	%b[38], %b[43]
	  faddd,4,sm	%b[58], %b[57], %b[44]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[30], %b[30]
	  faddd,1,sm	%b[49], %b[42], %b[42]
	  faddd,3,sm	%b[60], %b[56], %b[49]
	  faddd,4,sm	%b[59], %b[48], %b[48]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[36], %b[12]
	  faddd,1,sm	%b[15], %b[12], %b[15]
	  istofd,3,sm	%b[16], %b[16]
	  faddd,4,sm	%b[47], %b[41], %b[36]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[29], %b[29]
	  faddd,1,sm	%b[40], %b[39], %b[35]
	  istofd,3,sm	%b[35], %b[39]
	  faddd,4,sm	%b[46], %b[45], %b[40]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[34], %b[28]
	  faddd,1,sm	%b[38], %b[37], %b[34]
	  istofd,3,sm	%b[28], %b[37]
	  faddd,4,sm	%b[44], %b[43], %b[38]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[33], %b[27]
	  faddd,1,sm	%b[42], %b[30], %b[30]
	  faddd,3,sm	%b[49], %b[53], %b[41]
	  faddd,4,sm	%b[48], %b[27], %b[33]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[25], %b[12]
	  faddd,1,sm	%b[15], %b[12], %b[15]
	  istofd,3,sm	%b[26], %b[16]
	  faddd,4,sm	%b[36], %b[16], %b[25]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[31], %b[26]
	  faddd,1,sm	%b[35], %b[29], %b[29]
	  istofd,3,sm	%b[32], %b[31]
	  faddd,4,sm	%b[40], %b[39], %b[32]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[22], %b[22]
	  faddd,1,sm	%b[34], %b[28], %b[23]
	  istofd,3,sm	%b[23], %b[28]
	  faddd,4,sm	%b[38], %b[37], %b[34]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[14], %b[24]
	  faddd,1,sm	%b[30], %b[27], %b[27]
	  faddd,3,sm	%b[41], %b[51], %b[14]
	  faddd,4,sm	%b[33], %b[24], %b[30]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[20], %b[9]
	  faddd,1,sm	%b[15], %b[12], %b[12]
	  istofd,3,sm	%b[9], %b[15]
	  faddd,4,sm	%b[25], %b[16], %b[16]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[8], %b[8]
	  faddd,1,sm	%b[29], %b[26], %b[19]
	  istofd,3,sm	%b[19], %b[20]
	  faddd,4,sm	%b[32], %b[31], %b[25]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[17], %b[6]
	  faddd,1,sm	%b[23], %b[22], %b[17]
	  istofd,3,sm	%b[6], %b[22]
	  faddd,4,sm	%b[34], %b[28], %b[23]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[11], %b[11]
	  faddd,1,sm	%b[27], %b[24], %b[24]
	  ldw,2,sm	%b[7], %r11, %b[10] ? %pcnt1
	  istofd,3,sm	%b[10], %b[26]
	  faddd,4,sm	%b[30], %b[50], %b[27]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[13], %b[9]
	  faddd,1,sm	%b[12], %b[9], %b[12]
	  faddd,3,sm	%b[14], %b[18], %b[14]
	  faddd,4,sm	%b[16], %b[15], %b[13]
	}
	{
	  loop_mode
	  faddd,1,sm	%b[19], %b[8], %b[8]
	  faddd,4,sm	%b[25], %b[20], %b[15]
	}
	{
	  loop_mode
	  faddd,1,sm	%b[17], %b[6], %b[4]
	  smulx,3,sm	%b[4], _f16s,_lts0lo 0x24, %b[1]
	  faddd,4,sm	%b[23], %b[22], %b[6]
	}
	{
	  loop_mode
	  smulx,0,sm	0x18, %b[2], %b[5]
	  faddd,1,sm	%b[24], %b[11], %b[17]
	  ldw,2,sm	%b[7], %r10, %b[16] ? %pcnt1
	  muls,3,sm	%b[10], %r16, %b[11]
	  faddd,4,sm	%b[27], %b[26], %b[18]
	  adds,5,sm	%b[2], 0x1, %b[0]
	}
	{
	  loop_mode
	  muls,0,sm	%b[10], %r18, %b[9]
	  faddd,1,sm	%b[12], %b[9], %b[12]
	  faddd,3,sm	%b[14], %b[21], %b[14]
	  fdtoistr,4,sm	%b[13], %b[13]
	}
	{
	  loop_mode
	  muls,0,sm	%b[10], %r15, %b[8]
	  fdtoistr,1,sm	%b[8], %b[20]
	  ldw,2,sm	%b[7], %r6, %b[19] ? %pcnt1
	  muls,3,sm	%b[10], %r24, %b[15]
	  fdtoistr,4,sm	%b[15], %b[21]
	}
	{
	  loop_mode
	  muls,0,sm	%b[10], %r20, %b[4]
	  fdtoistr,1,sm	%b[4], %b[23]
	  ldw,2,sm	%b[7], %r9, %b[22] ? %pcnt1
	  muls,3,sm	%b[10], %r13, %b[6]
	  fdtoistr,4,sm	%b[6], %b[24]
	}
	{
	  loop_mode
	  muls,0,sm	%b[10], %r14, %b[17]
	  fdtoistr,1,sm	%b[17], %b[26]
	  ldw,2,sm	%b[7], %r8, %b[25] ? %pcnt1
	  muls,3,sm	%b[16], %r36, %b[18]
	  fdtoistr,4,sm	%b[18], %b[27]
	}
	{
	  loop_mode
	  muls,0,sm	%b[10], %r17, %b[7]
	  fdtoistr,1,sm	%b[12], %b[14]
	  ldw,2,sm	%b[7], %r7, %b[13] ? %pcnt1
	  muls,3,sm	%b[16], %r35, %b[12]
	  fdtoistr,4,sm	%b[14], %b[28]
	  stw,5	%b[3], [ _f64,_lts0 C +16 ], %b[13]
	}
	{
	  loop_mode
	  muls,0,sm	%b[16], %r22, %b[20]
	  muls,1,sm	%b[16], %r19, %b[21]
	  stw,2	%b[3], [ _f64,_lts2 C +32 ], %b[20]
	  muls,3,sm	%b[16], %r23, %b[29]
	  muls,4,sm	%b[16], %r32, %b[30]
	  stw,5	%b[3], [ _f64,_lts0 C +12 ], %b[21]
	}
	{
	  loop_mode
	  muls,0,sm	%b[22], %r34, %b[23]
	  muls,1,sm	%b[16], %r31, %b[24]
	  stw,2	%b[3], [ _f64,_lts2 C +28 ], %b[23]
	  muls,3,sm	%b[22], %r33, %b[31]
	  muls,4,sm	%b[22], %r37, %b[32]
	  stw,5	%b[3], [ _f64,_lts0 C ], %b[24]
	}
	{
	  loop_mode
	  muls,0,sm	%b[22], %r40, %b[26]
	  muls,1,sm	%b[22], %r21, %b[27]
	  stw,2	%b[3], %r2, %b[26]
	  muls,3,sm	%b[22], %r30, %b[33]
	  muls,4,sm	%b[25], %r51, %b[34]
	  stw,5	%b[3], %r3, %b[27]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  muls,0,sm	%b[22], %r29, %b[14]
	  muls,1,sm	%b[25], %r56, %b[28]
	  stw,2	%b[3], %r4, %b[14]
	  muls,3,sm	%b[25], %r55, %b[35]
	  muls,4,sm	%b[25], %r39, %b[36]
	  stw,5	%b[3], %r5, %b[28]
	}
	{
	  setwd	wsz = 0x20, nfx = 0x1, dbl = 0x0
	}
	{
	  ct	%ctpr3
	}
	.cfi_endproc
	.size	_Z20optimizedSolveMatrixv, .- _Z20optimizedSolveMatrixv
	.global	main
	.type	main, #function
	.align	8
main:
	.cfi_startproc
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x34, rbs = 0x20, rcur = 0x31
	  disp	%ctpr2, _ZNSt6chrono3_V212system_clock3nowEv; ipd 2
	  getsp,0	_f32s,_lts1 0xfffffeb0, %r3
	  adds,1	0x0, 0x0, %r5
	  adds,2	0x18, 0x0, %r1
	  smulx,3,sm	0x18, 0x6, %r0
	  addd,5	0x0, 0x0, %r4
	}
	{
	  smulx,0	0x3, _f16s,_lts0lo 0x24, %b[76]
	  smulx,1	0x2, _f16s,_lts0lo 0x24, %b[77]
	  adds,2	0x2, 0x0, %b[73]
	  smulx,3,sm	0x4, _f16s,_lts0lo 0x24, %b[71]
	  smulx,4,sm	0x5, _f16s,_lts0lo 0x24, %b[72]
	  adds,5	0x1, 0x0, %b[74]
	}
	{
	  smulx,0	%r1, 0x4, %b[89]
	  smulx,1	%r1, 0x5, %b[91]
	  addd,2	%r3, _f64,_lts1 0x150, %r2
	  smulx,3	%r1, 0x3, %b[90]
	  smulx,4	0x1, _f16s,_lts0lo 0x24, %b[78]
	  adds,5	0x3, 0x0, %b[75]
	}
	{
	  smulx,0	%r1, 0x1, %b[104]
	  smulx,1	%r1, 0x2, %b[103]
	  std,2,sm	%r2, _f16s,_lts0lo 0xffc8, %r4
	  stw,5,sm	%r2, _f16s,_lts0hi 0xffd8, %r5
	}
	{
	  addd,2	0x0, _f64,_lts0 0x100000002, %b[105]
	  addd,5,sm	0x0, [ _f64,_lts2 A +168 ], %b[80]
	}
	{
	  call	%ctpr2, wbs = 0x51
	  addd,2,sm	0x0, %r3, %r1
	}
	{
	  disp	%ctpr1, .L10709; ipd 2
	  addd,0,sm	%r1, _f16s,_lts0hi 0xa8, %b[79]
	  std,2,sm	%r2, _f16s,_lts0lo 0xffe0, %r1
	  addd,3	0x0, %b[0], %b[98]
	  std,5	0x0, [ _f64,_lts1 A +16 ], %r4
	}
	{
	  disp	%ctpr3, .L10706; ipd 2
	  addd,0	%b[76], [ _f64,_lts0 B ], %b[99]
	  addd,1	%b[77], [ _f64,_lts2 B +36 ], %b[102]
	  addd,2	%b[76], [ _f64,_lts2 B +36 ], %b[100]
	  addd,3	%b[77], [ _f64,_lts0 B ], %b[101]
	  addd,4,sm	%b[71], [ _f64,_lts0 B ], %b[87]
	  addd,5,sm	%b[71], [ _f64,_lts2 B +36 ], %b[88]
	}
	{
	  addd,0	%b[89], [ _f64,_lts0 A ], %b[92]
	  addd,1	%b[91], [ _f64,_lts0 A ], %b[96]
	  addd,2	%b[89], [ _f64,_lts2 A +24 ], %b[93]
	  addd,3	%b[90], [ _f64,_lts0 A ], %b[94]
	  addd,4	%b[90], [ _f64,_lts2 A +24 ], %b[95]
	  addd,5	%b[91], [ _f64,_lts2 A +24 ], %b[97]
	}
	{
	  cmpledb,0	%b[102], %b[99], %pred1
	  cmpledb,1	%b[100], %b[101], %pred2
	  addd,2,sm	%b[72], [ _f64,_lts0 B +36 ], %b[86]
	  cmpledb,3	%b[97], %b[94], %pred3
	  addd,4,sm	%b[72], [ _f64,_lts2 B ], %b[85]
	  std,5	0x0, [ _f64,_lts2 B ], %b[105]
	}
	{
	  cmpledb,0	%b[95], %b[96], %pred4
	  cmpledb,1	%b[93], %b[94], %pred5
	  std,2	0x0, [ _f64,_lts0 A +8 ], %r4
	  cmpledb,3	%b[95], %b[92], %pred6
	  cmpledb,4	%b[93], %b[96], %pred2
	  std,5	0x0, [ _f64,_lts2 B +16 ], %b[105]
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred1
	}
	{
	  cmpledb,0	%b[97], %b[92], %pred6
	  cmpledb,1,sm	%b[88], %b[85], %pred7
	  std,2	0x0, [ _f64,_lts0 B +8 ], %b[105]
	  cmpledb,3,sm	%b[86], %b[87], %pred8
	  stw,5	0x0, [ _f64,_lts2 B +32 ], %b[73]
	  pass	%pred4, @p0
	  pass	%pred3, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred3
	  pass	%pred6, @p2
	  pass	%pred5, @p3
	  landp	~@p2, ~@p3, @p5
	  pass	@p5, %pred4
	  landp	~@p4, ~@p5, @p6
	  pass	@p6, %pred5
	}
	{
	  std,2	0x0, [ _f64,_lts0 B +24 ], %b[105]
	  std,5	0x0, [ _f64,_lts2 A ], %r4
	  pass	%pred1, @p0
	  pass	%pred5, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred1
	  pass	%pred2, @p2
	  pass	%pred6, @p3
	  landp	~@p2, ~@p3, @p5
	  pass	@p5, %pred2
	  landp	~@p5, @p4, @p6
	  pass	@p6, %pred3
	}
	{
	  stw,2	%b[78], [ _f64,_lts0 B ], %b[75]
	  stw,5	%b[78], [ _f64,_lts2 B +8 ], %b[75]
	  pass	%pred7, @p0
	  pass	%pred8, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  stw,2	%b[78], [ _f64,_lts0 B +4 ], %b[73]
	  stw,5	%b[78], [ _f64,_lts2 B +16 ], %b[75]
	}
	{
	  stw,2	%b[78], [ _f64,_lts0 B +12 ], %b[73]
	  stw,5	%b[78], [ _f64,_lts2 B +24 ], %b[75]
	}
	{
	  stw,2	%b[78], [ _f64,_lts0 B +20 ], %b[73]
	  stw,5	%b[78], [ _f64,_lts2 B +32 ], %b[75]
	}
	{
	  stw,2	%b[78], [ _f64,_lts0 B +28 ], %b[73]
	  stw,5	%b[104], [ _f64,_lts2 A ], %r5
	}
	{
	  stw,2	%b[104], [ _f64,_lts0 A +8 ], %r5
	  stw,5	%b[104], [ _f64,_lts2 A +4 ], %b[74]
	}
	{
	  stw,2	%b[104], [ _f64,_lts0 A +16 ], %r5
	  stw,5	%b[104], [ _f64,_lts2 A +12 ], %b[74]
	}
	{
	  stw,2	%b[104], [ _f64,_lts0 A +20 ], %b[74]
	  stw,5	%b[103], [ _f64,_lts2 A ], %r5
	}
	{
	  stw,2	%b[103], [ _f64,_lts0 A +8 ], %r5
	  stw,5	%b[103], [ _f64,_lts2 A +4 ], %r5
	}
	{
	  stw,2	%b[103], [ _f64,_lts0 A +16 ], %r5
	  stw,5	%b[103], [ _f64,_lts2 A +12 ], %r5
	}
	{
	  ct	%ctpr1 ? ~%pred3
	  stw,2	%b[103], [ _f64,_lts0 A +20 ], %r5
	  stw,5	%b[77], [ _f64,_lts2 B ], %b[73] ? %pred3
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +8 ], %b[73] ? %pred3
	  stw,5	%b[77], [ _f64,_lts2 B +4 ], %b[74] ? %pred3
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +16 ], %b[73] ? %pred3
	  stw,5	%b[77], [ _f64,_lts2 B +12 ], %b[74] ? %pred3
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +24 ], %b[73] ? %pred3
	  stw,5	%b[77], [ _f64,_lts2 B +20 ], %b[74] ? %pred3
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +32 ], %b[73] ? %pred3
	  stw,5	%b[77], [ _f64,_lts2 B +28 ], %b[74] ? %pred3
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +4 ], %b[73] ? %pred3
	  stw,5	%b[76], [ _f64,_lts2 B ], %b[75] ? %pred3
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +12 ], %b[73] ? %pred3
	  stw,5	%b[76], [ _f64,_lts2 B +8 ], %b[75] ? %pred3
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +20 ], %b[73] ? %pred3
	  stw,5	%b[76], [ _f64,_lts2 B +16 ], %b[75] ? %pred3
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +28 ], %b[73] ? %pred3
	  stw,5	%b[76], [ _f64,_lts2 B +24 ], %b[75] ? %pred3
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +32 ], %b[75] ? %pred3
	  stw,5	%b[90], [ _f64,_lts2 A ], %r5 ? %pred3
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A +8 ], %r5 ? %pred3
	  stw,5	%b[90], [ _f64,_lts2 A +4 ], %b[74] ? %pred3
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A +16 ], %r5 ? %pred3
	  stw,5	%b[90], [ _f64,_lts2 A +12 ], %b[74] ? %pred3
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A ], %r5 ? %pred3
	  stw,5	%b[90], [ _f64,_lts2 A +20 ], %b[74] ? %pred3
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A +8 ], %r5 ? %pred3
	  stw,5	%b[89], [ _f64,_lts2 A +4 ], %r5 ? %pred3
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A +16 ], %r5 ? %pred3
	  stw,5	%b[89], [ _f64,_lts2 A +12 ], %r5 ? %pred3
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A ], %r5 ? %pred3
	  stw,5	%b[89], [ _f64,_lts2 A +20 ], %r5 ? %pred3
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A +8 ], %r5 ? %pred3
	  stw,5	%b[91], [ _f64,_lts2 A +4 ], %b[74] ? %pred3
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A +16 ], %r5 ? %pred3
	  stw,5	%b[91], [ _f64,_lts2 A +12 ], %b[74] ? %pred3
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A +20 ], %b[74] ? %pred3
	}
.L10706:
	{
	  disp	%ctpr3, .L10611; ipd 2
	  addd,0	0x0, %r0, %b[84] ? ~%pred0
	  stw,2	%b[71], [ _f64,_lts0 B ], %b[73] ? ~%pred0
	  stw,5	%b[71], [ _f64,_lts2 B +4 ], %b[74] ? ~%pred0
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +8 ], %b[73] ? ~%pred0
	  stw,5	%b[71], [ _f64,_lts2 B +12 ], %b[74] ? ~%pred0
	}
	{
	  ct	%ctpr3 ? %pred0
	  stw,2	%b[71], [ _f64,_lts0 B +16 ], %b[73] ? ~%pred0
	  stw,5	%b[71], [ _f64,_lts2 B +20 ], %b[74] ? ~%pred0
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +24 ], %b[73] ? ~%pred0
	  stw,5	%b[71], [ _f64,_lts2 B +28 ], %b[74] ? ~%pred0
	}
	{
	  ldw,0	%r2, _f16s,_lts0lo 0xffd8, %r1, mas=0x4
	  stw,2	%b[71], [ _f64,_lts1 B +32 ], %b[73] ? ~%pred0
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B ], %b[75] ? ~%pred0
	  stw,5	%b[72], [ _f64,_lts2 B +4 ], %b[73] ? ~%pred0
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +8 ], %b[75] ? ~%pred0
	  stw,5	%b[72], [ _f64,_lts2 B +12 ], %b[73] ? ~%pred0
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +16 ], %b[75] ? ~%pred0
	  stw,5	%b[72], [ _f64,_lts2 B +20 ], %b[73] ? ~%pred0
	}
	{
	  cmpledb,0,sm	%b[79], [ _f64,_lts0 A ], %pred1
	  stw,2	%r0, [ _f64,_lts0 A ], %r1 ? ~%pred0
	  stw,5	%r0, [ _f64,_lts2 A +4 ], %r1 ? ~%pred0
	}
	{
	  stw,2	%r0, [ _f64,_lts0 A +8 ], %r1 ? ~%pred0
	  stw,5	%r0, [ _f64,_lts2 A +12 ], %r1 ? ~%pred0
	}
	{
	  stw,2	%r0, [ _f64,_lts0 A +16 ], %r1 ? ~%pred0
	  stw,5	%r0, [ _f64,_lts2 A +20 ], %r1 ? ~%pred0
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +24 ], %b[75] ? ~%pred0
	  stw,5	%b[72], [ _f64,_lts2 B +28 ], %b[73] ? ~%pred0
	}
	{
	  nop 2
	  stw,2	%b[72], [ _f64,_lts1 B +32 ], %b[75] ? ~%pred0
	  ldd,5	%r2, _f16s,_lts0lo 0xffe0, %r0, mas=0x4
	}
	{
	  cmpledb,3,sm	%b[80], %r0, %pred0
	}
.L3192:
	{
	  disp	%ctpr3, .L10506; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 A +8 ], %r0
	  ldd,2,sm	0x0, [ _f64,_lts2 A +16 ], %r1
	  pass	%pred0, @p0
	  pass	%pred1, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred1
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +24 ], %r4
	  ldd,2,sm	0x0, [ _f64,_lts2 A +32 ], %r5
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +40 ], %r6
	  ldd,2,sm	0x0, [ _f64,_lts2 A +48 ], %r7
	}
	{
	  ct	%ctpr3 ? %pred1
	  ldd,0,sm	0x0, [ _f64,_lts0 A +56 ], %r9
	  ldd,2,sm	0x0, [ _f64,_lts2 A +64 ], %r10
	}
	{
	  disp	%ctpr3, _Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 A +72 ], %r11
	  ldd,2,sm	0x0, [ _f64,_lts2 A +80 ], %r12
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +88 ], %r13
	  ldd,2,sm	0x0, [ _f64,_lts2 A +96 ], %r14
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +104 ], %r15
	  ldd,2,sm	0x0, [ _f64,_lts2 A +112 ], %r16
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +120 ], %r17
	  ldd,2,sm	0x0, [ _f64,_lts2 A +128 ], %r18
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +136 ], %r19
	  ldd,2,sm	0x0, [ _f64,_lts2 A +144 ], %r20
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +152 ], %r21
	  ldd,3,sm	0x0, [ _f64,_lts2 A ], %r22
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +160 ], %r23
	  addd,1,sm	0x0, [ _f64,_lts2 B +216 ], %b[82]
	  std,2	%r3, 0x8, %r0 ? ~%pred1
	}
	{
	  ldd,0	%r2, _f16s,_lts0lo 0xffe0, %r0, mas=0x4
	  std,2	0x10, %r3, %r1 ? ~%pred1
	}
	{
	  std,2	0x18, %r3, %r4 ? ~%pred1
	  std,5	%r3, _f16s,_lts0lo 0x20, %r5 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x28, %r6 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x30, %r7 ? ~%pred1
	}
	{
	  cmpledb,0,sm	%b[82], %r0, %pred2
	  addd,1,sm	%r0, _f16s,_lts0lo 0xd8, %b[83]
	  std,2	%r3, _f16s,_lts0hi 0x38, %r9 ? ~%pred1
	  std,5	%r3, _f16s,_lts1lo 0x40, %r10 ? ~%pred1
	}
	{
	  cmpledb,0,sm	%b[83], [ _f64,_lts1 B ], %pred3
	  std,2	%r3, _f16s,_lts0lo 0x48, %r11 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x50, %r12 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x58, %r13 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x60, %r14 ? ~%pred1
	  pass	%pred2, @p0
	  pass	%pred3, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x68, %r15 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x70, %r16 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x78, %r17 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x80, %r18 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x88, %r19 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x90, %r20 ? ~%pred1
	}
	{
	  std,2	%r3, 0x0, %r22 ? ~%pred1
	  std,5	%r3, _f16s,_lts0lo 0x98, %r21 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa0, %r23 ? ~%pred1
	}
.L10503:
	nop
.LCS.1:
	{
	  call	%ctpr3, wbs = 0x51
	}
	{
	  disp	%ctpr1, .L10377; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 B ], %r0
	  ldd,2,sm	0x0, [ _f64,_lts2 B +16 ], %r1
	}
	{
	  disp	%ctpr3, _Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 B +8 ], %r4
	  ldd,2,sm	0x0, [ _f64,_lts2 B +32 ], %r5
	}
	{
	  ct	%ctpr1 ? %pred0
	  ldd,0,sm	0x0, [ _f64,_lts0 B +24 ], %r6
	  ldd,2,sm	0x0, [ _f64,_lts2 B +48 ], %r7
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +40 ], %r9
	  ldd,2,sm	0x0, [ _f64,_lts2 B +64 ], %r10
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +56 ], %r11
	  ldd,2,sm	0x0, [ _f64,_lts2 B +80 ], %r12
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +72 ], %b[8]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +96 ], %b[9]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +88 ], %b[10]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +112 ], %b[11]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +104 ], %b[12]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +128 ], %b[13]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +120 ], %b[14]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +144 ], %b[15]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +136 ], %b[16]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +160 ], %b[17]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +152 ], %b[18]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +176 ], %b[19]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +168 ], %b[20]
	  ldd,3,sm	0x0, [ _f64,_lts2 B +192 ], %b[21]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +184 ], %b[22]
	  ldd,3,sm	0x0, [ _f64,_lts2 B +208 ], %b[23]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +200 ], %b[24]
	  std,2	%r3, 0x0, %r0 ? ~%pred0
	}
	{
	  std,2	0x10, %r3, %r1 ? ~%pred0
	  std,5	%r3, 0x8, %r4 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %r5 ? ~%pred0
	  std,5	0x18, %r3, %r6 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %r7 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x28, %r9 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x40, %r10 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x38, %r11 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x50, %r12 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x48, %b[8] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x60, %b[9] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x58, %b[10] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x70, %b[11] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x68, %b[12] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x80, %b[13] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x78, %b[14] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x90, %b[15] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x88, %b[16] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa0, %b[17] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x98, %b[18] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xb0, %b[19] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xa8, %b[20] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xc0, %b[21] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xb8, %b[22] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xd0, %b[23] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xc8, %b[24] ? ~%pred0
	}
	{
	  call	%ctpr3, wbs = 0x51 ? ~%pred0
	}
	{
	  ldw,0,sm	%b[71], [ _f64,_lts0 B ], %r0
	  addd,1	0x1f, 0x1, %b[81] ? ~%pred0
	  ldw,2,sm	%b[72], [ _f64,_lts0 B ], %r1
	  ldw,3,sm	0x0, [ _f64,_lts0 B ], %r4
	  adds,4	0x0, 0x0, %r6 ? ~%pred0
	  ldw,5,sm	%b[78], [ _f64,_lts0 B ], %r5
	}
	{
	  ldw,0,sm	%b[77], [ _f64,_lts1 B ], %r6
	  stw,2,sm	%r2, _f16s,_lts0lo 0xffc0, %r6 ? ~%pred0
	  ldw,5,sm	%b[76], [ _f64,_lts1 B ], %r7
	}
	{
	  ldw,0,sm	0x0, [ _f64,_lts0 B +16 ], %r9
	  ldw,2,sm	0x0, [ _f64,_lts2 B +12 ], %r10
	  ldw,3,sm	%b[72], [ _f64,_lts0 B +16 ], %r11
	  ldw,5,sm	%b[72], [ _f64,_lts2 B +12 ], %r12
	}
	{
	  ldw,0,sm	0x0, [ _f64,_lts0 B +8 ], %b[8]
	  adds,1,sm	0x0, %r1, %r63 ? ~%pred0
	  ldw,2,sm	0x0, [ _f64,_lts2 B +4 ], %b[9]
	  ldw,3,sm	%b[72], [ _f64,_lts0 B +8 ], %b[10]
	  ldw,5,sm	%b[72], [ _f64,_lts2 B +4 ], %b[11]
	}
	{
	  adds,0,sm	0x0, %r6, %r61 ? ~%pred0
	  stw,2,sm	%r2, _f16s,_lts0lo 0xfff0, %r0 ? ~%pred0
	  adds,3,sm	0x0, %r7, %r62 ? ~%pred0
	  stw,5,sm	%r2, _f16s,_lts0hi 0xffe8, %r4 ? ~%pred0
	}
	{
	  ldw,0,sm	0x0, [ _f64,_lts1 B +32 ], %r0
	  adds,1,sm	0x0, %r9, %r59 ? ~%pred0
	  stw,2,sm	%r2, _f16s,_lts0lo 0xfff8, %r5 ? ~%pred0
	  adds,3,sm	0x0, %r11, %r60 ? ~%pred0
	  adds,4,sm	0x0, %r12, %r55 ? ~%pred0
	  ldw,5,sm	%b[72], [ _f64,_lts1 B +32 ], %r1
	}
	{
	  ldw,0,sm	0x0, [ _f64,_lts0 B +28 ], %r4
	  adds,1,sm	0x0, %r10, %r57 ? ~%pred0
	  ldw,2,sm	0x0, [ _f64,_lts2 B +24 ], %r5
	  ldw,3,sm	%b[72], [ _f64,_lts2 B +24 ], %r6
	  adds,4,sm	0x0, %b[10], %r56 ? ~%pred0
	  ldw,5,sm	%b[72], [ _f64,_lts0 B +28 ], %r7
	}
	{
	  ldw,0,sm	0x0, [ _f64,_lts0 B +20 ], %r9
	  adds,1,sm	0x0, %b[8], %r58 ? ~%pred0
	  ldw,2,sm	%b[72], [ _f64,_lts0 B +20 ], %r10
	  ldw,3,sm	%b[76], [ _f64,_lts2 B +8 ], %r11
	  adds,4,sm	0x0, %b[9], %r53 ? ~%pred0
	  ldw,5,sm	%b[71], [ _f64,_lts2 B +8 ], %r12
	}
	{
	  ldw,0,sm	%b[76], [ _f64,_lts0 B +4 ], %b[8]
	  adds,1,sm	0x0, %b[11], %r51 ? ~%pred0
	  ldw,2,sm	%b[71], [ _f64,_lts0 B +4 ], %b[9]
	  ldw,3,sm	%b[76], [ _f64,_lts2 B +16 ], %b[10]
	  adds,4,sm	0x0, %r1, %r52 ? ~%pred0
	  ldw,5,sm	%b[71], [ _f64,_lts2 B +16 ], %b[12]
	}
	{
	  ldw,0,sm	%b[76], [ _f64,_lts0 B +12 ], %r1
	  adds,1,sm	0x0, %r0, %r54 ? ~%pred0
	  ldw,2,sm	%b[71], [ _f64,_lts0 B +12 ], %b[11]
	  ldw,3,sm	%b[76], [ _f64,_lts2 B +24 ], %b[13]
	  adds,4,sm	0x0, %r6, %r48 ? ~%pred0
	  ldw,5,sm	%b[71], [ _f64,_lts2 B +24 ], %b[14]
	}
	{
	  ldw,0,sm	%b[76], [ _f64,_lts0 B +20 ], %r0
	  adds,1,sm	0x0, %r4, %r50 ? ~%pred0
	  ldw,2,sm	%b[71], [ _f64,_lts0 B +20 ], %r6
	  ldw,3,sm	%b[76], [ _f64,_lts2 B +32 ], %b[15]
	  adds,4,sm	0x0, %r5, %r49 ? ~%pred0
	  ldw,5,sm	%b[71], [ _f64,_lts2 B +32 ], %b[16]
	}
	{
	  ldw,0,sm	%b[76], [ _f64,_lts0 B +28 ], %r4
	  adds,1,sm	0x0, %r7, %r47 ? ~%pred0
	  ldw,2,sm	%b[71], [ _f64,_lts0 B +28 ], %r5
	  ldw,3,sm	%b[78], [ _f64,_lts2 B +8 ], %b[17]
	  adds,4,sm	0x0, %r9, %r43 ? ~%pred0
	  ldw,5,sm	%b[77], [ _f64,_lts2 B +8 ], %b[18]
	}
	{
	  ldw,0,sm	%b[78], [ _f64,_lts0 B +4 ], %r7
	  adds,1,sm	0x0, %r10, %r44 ? ~%pred0
	  ldw,2,sm	%b[77], [ _f64,_lts0 B +4 ], %r9
	  ldw,3,sm	%b[78], [ _f64,_lts2 B +16 ], %b[19]
	  adds,4,sm	0x0, %r11, %r46 ? ~%pred0
	  ldw,5,sm	%b[77], [ _f64,_lts2 B +16 ], %b[20]
	}
	{
	  ldw,0,sm	%b[78], [ _f64,_lts0 B +12 ], %r10
	  adds,1,sm	0x0, %r12, %r45 ? ~%pred0
	  ldw,2,sm	%b[77], [ _f64,_lts0 B +12 ], %r11
	  ldw,3,sm	%b[78], [ _f64,_lts2 B +24 ], %b[21]
	  adds,4,sm	0x0, %b[8], %r38 ? ~%pred0
	  ldw,5,sm	%b[77], [ _f64,_lts2 B +24 ], %b[22]
	}
	{
	  ldw,0,sm	%b[78], [ _f64,_lts0 B +20 ], %r12
	  adds,1,sm	0x0, %b[9], %r37 ? ~%pred0
	  ldw,2,sm	%b[77], [ _f64,_lts0 B +20 ], %b[8]
	  ldw,3,sm	%b[78], [ _f64,_lts2 B +32 ], %b[23]
	  adds,4,sm	0x0, %b[10], %r41 ? ~%pred0
	  ldw,5,sm	%b[77], [ _f64,_lts2 B +32 ], %b[24]
	}
	{
	  ldw,0,sm	%b[78], [ _f64,_lts0 B +28 ], %b[9]
	  adds,1,sm	0x0, %b[12], %r39 ? ~%pred0
	  ldw,2,sm	%b[77], [ _f64,_lts0 B +28 ], %b[10]
	  adds,3,sm	0x0, %r1, %r42 ? ~%pred0
	  adds,4,sm	0x0, %b[11], %r40 ? ~%pred0
	  adds,5,sm	0x0, %b[13], %r33 ? ~%pred0
	}
	{
	  adds,0,sm	0x0, %b[14], %r31 ? ~%pred0
	  adds,1,sm	0x0, %r0, %r34 ? ~%pred0
	  adds,2,sm	0x0, %r6, %r32 ? ~%pred0
	  adds,3,sm	0x0, %b[15], %r36 ? ~%pred0
	  adds,4,sm	0x0, %b[16], %r35 ? ~%pred0
	  adds,5,sm	0x0, %r4, %r28 ? ~%pred0
	}
	{
	  adds,0,sm	0x0, %r5, %r25 ? ~%pred0
	  adds,1,sm	0x0, %b[17], %r29 ? ~%pred0
	  adds,2,sm	0x0, %b[18], %r26 ? ~%pred0
	  adds,3,sm	0x0, %r7, %r30 ? ~%pred0
	  adds,4,sm	0x0, %r9, %r27 ? ~%pred0
	  adds,5,sm	0x0, %b[19], %r21 ? ~%pred0
	}
	{
	  adds,0,sm	0x0, %b[20], %r19 ? ~%pred0
	  adds,1,sm	0x0, %r10, %r22 ? ~%pred0
	  adds,2,sm	0x0, %r11, %r20 ? ~%pred0
	  adds,3,sm	0x0, %b[21], %r24 ? ~%pred0
	  adds,4,sm	0x0, %b[22], %r23 ? ~%pred0
	  adds,5,sm	0x0, %r12, %r14 ? ~%pred0
	}
	{
	  adds,0,sm	0x0, %b[8], %r13 ? ~%pred0
	  adds,1,sm	0x0, %b[23], %r17 ? ~%pred0
	  adds,2,sm	0x0, %b[24], %r18 ? ~%pred0
	  adds,3,sm	0x0, %b[9], %r15 ? ~%pred0
	  adds,4,sm	0x0, %b[10], %r16 ? ~%pred0
	}
.L9648:
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x1e, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L8116; ipd 2
	  rwd,0	_f64,_lts1 0x122ff2200000007, %lsr
	}
	{
	  addd,1	0x0, [ _f64,_lts0 A +20 ], %r0
	  addd,2	0x0, [ _f64,_lts2 C +28 ], %r1
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +32 ], %r4
	  addd,1	0x0, [ _f64,_lts2 C +20 ], %r5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +24 ], %r6
	  addd,1	0x0, [ _f64,_lts2 C +12 ], %r7
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +16 ], %r9
	  addd,1	0x0, [ _f64,_lts2 C +4 ], %r10
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +8 ], %r11
	  addd,1	0x0, [ _f64,_lts2 C ], %r12
	}
	{
	  nop 2
	  ldw,0	%r2, _f16s,_lts0lo 0xffc0, %g31, mas=0x4
	}
	{
	  adds,0,sm	0x0, %g31, %b[2]
	  ldw,2	%r2, _f16s,_lts0lo 0xffe8, %g16, mas=0x4
	  ldw,3	%r2, _f16s,_lts0hi 0xfff0, %g18, mas=0x4
	  ldw,5	%r2, _f16s,_lts1lo 0xfff8, %g17, mas=0x4
	}
.L8116:
	{
	  loop_mode
	  muls,0,sm	%b[27], %r17, %b[34]
	  muls,1,sm	%b[20], %r62, %b[32]
	  muls,3,sm	%b[18], %r61, %b[33]
	  muls,4,sm	%b[21], %r54, %b[35]
	}
	{
	  loop_mode
	  muls,0,sm	%b[27], %r21, %b[37]
	  muls,1,sm	%b[21], %r59, %b[36]
	  muls,3,sm	%b[27], %r14, %b[38]
	  muls,4,sm	%b[21], %r43, %b[39]
	}
	{
	  loop_mode
	  muls,0,sm	%b[27], %r24, %b[41]
	  muls,1,sm	%b[21], %r49, %b[42]
	  muls,3,sm	%b[27], %r15, %b[43]
	  muls,4,sm	%b[21], %r50, %b[40]
	}
	{
	  loop_mode
	  muls,0,sm	%b[27], %g17, %b[45]
	  muls,1,sm	%b[21], %g16, %b[48]
	  muls,3,sm	%b[27], %r30, %b[47]
	  muls,4,sm	%b[21], %r53, %b[46]
	  ldw,5,sm	%b[5], %r4, %b[44] ? %pcnt0
	}
	{
	  loop_mode
	  muls,0,sm	%b[27], %r29, %b[50]
	  muls,1,sm	%b[21], %r58, %b[21]
	  ldw,2,sm	%b[5], %r9, %b[51] ? %pcnt0
	  muls,3,sm	%b[27], %r22, %b[27]
	  muls,4,sm	%b[21], %r57, %b[49]
	  ldw,5,sm	%b[5], %r5, %b[52] ? %pcnt0
	}
	{
	  loop_mode
	  muls,0,sm	%b[20], %r38, %b[53]
	  ldw,2,sm	%b[5], %r6, %b[56] ? %pcnt0
	  muls,3,sm	%b[18], %r27, %b[54]
	  ldw,5,sm	%b[5], %r1, %b[55] ? %pcnt0
	}
	{
	  loop_mode
	  muls,0,sm	%b[20], %r42, %b[57]
	  ldw,2,sm	%b[5], %r12, %b[60] ? %pcnt0
	  muls,3,sm	%b[18], %r20, %b[58]
	  ldw,5,sm	%b[5], %r10, %b[59] ? %pcnt0
	}
	{
	  loop_mode
	  muls,0,sm	%b[18], %r16, %b[37]
	  add_adds,1,sm	%b[51], %b[36], %b[37], %b[20]
	  ldw,2,sm	%b[5], %r11, %b[39] ? %pcnt0
	  muls,3,sm	%b[20], %r36, %b[38]
	  add_adds,4,sm	%b[52], %b[39], %b[38], %b[36]
	  ldw,5,sm	%b[5], %r7, %b[51] ? %pcnt0
	}
	{
	  loop_mode
	  muls,0,sm	%b[18], %r13, %b[40]
	  add_adds,1,sm	%b[56], %b[42], %b[41], %b[41]
	  muls,3,sm	%b[3], %r35, %b[18]
	  add_adds,4,sm	%b[55], %b[40], %b[43], %b[42]
	}
	{
	  loop_mode
	  muls,0,sm	%b[3], %r25, %b[43]
	  add_adds,1,sm	%b[60], %b[48], %b[45], %b[46]
	  muls,3,sm	%b[9], %r52, %b[45]
	  add_adds,4,sm	%b[59], %b[46], %b[47], %b[47]
	}
	{
	  loop_mode
	  muls,0,sm	%b[9], %r44, %b[27]
	  add_adds,1,sm	%b[39], %b[21], %b[50], %b[35]
	  ldw,2,sm	%b[6], [ _f64,_lts0 A +16 ], %b[1] ? %pcnt1
	  muls,3,sm	%b[3], %r32, %b[21]
	  add_adds,4,sm	%b[51], %b[49], %b[27], %b[39]
	  adds,5,sm	%b[44], %b[35], %b[44]
	}
	{
	  loop_mode
	  muls,0,sm	%b[9], %r55, %b[34]
	  add_adds,1,sm	%b[46], %b[33], %b[32], %b[32]
	  ldw,2,sm	%b[6], %r0, %b[7] ? %pcnt1
	  muls,3,sm	%b[3], %r40, %b[44]
	  add_adds,4,sm	%b[47], %b[54], %b[53], %b[33]
	  adds,5,sm	%b[44], %b[34], %b[46]
	}
	{
	  loop_mode
	  muls,0,sm	%b[9], %r51, %b[30]
	  add_adds,1,sm	%b[35], %b[31], %b[30], %b[31]
	  adds,2,sm	%b[2], 0x1, %b[0]
	  muls,3,sm	%b[3], %r37, %b[26]
	  add_adds,4,sm	%b[39], %b[58], %b[57], %b[35]
	  adds,5,sm	%b[46], %b[26], %b[39]
	}
	{
	  loop_mode
	  smulx,0,sm	0x18, %b[2], %b[4]
	  add_adds,1,sm	%b[41], %b[29], %b[28], %b[29]
	  ldw,2,sm	%b[6], [ _f64,_lts1 A +4 ], %b[25] ? %pcnt1
	  smulx,3,sm	%b[4], _f16s,_lts0lo 0x24, %b[3]
	  add_adds,4,sm	%b[42], %b[37], %b[25], %b[28]
	  adds,5,sm	%b[39], %b[38], %b[37]
	}
	{
	  loop_mode
	  muls,0,sm	%b[7], %r63, %b[8]
	  add_adds,1,sm	%b[20], %b[19], %b[23], %b[19]
	  ldw,2,sm	%b[6], [ _f64,_lts0 A +12 ], %b[18] ? %pcnt1
	  muls,3,sm	%b[1], %g18, %b[9]
	  add_adds,4,sm	%b[36], %b[40], %b[24], %b[20]
	  adds,5,sm	%b[37], %b[18], %b[23]
	}
	{
	  loop_mode
	  muls,0,sm	%b[1], %r45, %b[13]
	  add_adds,1,sm	%b[29], %b[16], %b[17], %b[17]
	  ldw,2,sm	%b[6], [ _f64,_lts0 A +8 ], %b[16] ? %pcnt1
	  muls,3,sm	%b[7], %r56, %b[12]
	  add_adds,4,sm	%b[28], %b[43], %b[22], %b[22]
	  adds,5,sm	%b[23], %b[45], %b[23]
	}
	{
	  loop_mode
	  muls,0,sm	%b[7], %r60, %g20
	  add_adds,1,sm	%b[19], %g19, %g20, %b[21]
	  ldw,2,sm	%b[6], [ _f64,_lts0 A ], %b[19] ? %pcnt1
	  muls,3,sm	%b[1], %r39, %g19
	  add_adds,4,sm	%b[20], %b[21], %b[27], %b[20]
	  stw,5	%b[5], %r4, %b[23]
	}
	{
	  loop_mode
	  muls,0,sm	%b[7], %r48, %b[15]
	  add_adds,1,sm	%b[31], %b[15], %b[14], %b[22]
	  stw,2	%b[5], %r6, %b[17]
	  muls,3,sm	%b[1], %r31, %b[14]
	  add_adds,4,sm	%b[35], %b[44], %b[34], %b[17]
	  stw,5	%b[5], %r1, %b[22]
	}
	{
	  loop_mode
	  muls,0,sm	%b[7], %r47, %b[20]
	  add_adds,1,sm	%b[32], %b[11], %b[10], %b[23]
	  stw,2	%b[5], %r9, %b[21]
	  muls,3,sm	%b[18], %r41, %b[21]
	  add_adds,4,sm	%b[33], %b[26], %b[30], %b[24]
	  stw,5	%b[5], %r5, %b[20]
	}
	{
	  loop_mode
	  muls,0,sm	%b[16], %r19, %b[17]
	  muls,1,sm	%b[18], %r34, %b[22]
	  stw,2	%b[5], %r11, %b[22]
	  muls,3,sm	%b[18], %r33, %b[26]
	  muls,4,sm	%b[16], %r23, %b[27]
	  stw,5	%b[5], %r7, %b[17]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  muls,0,sm	%b[18], %r28, %b[23]
	  muls,1,sm	%b[16], %r18, %b[24]
	  stw,2	%b[5], %r12, %b[23]
	  muls,3,sm	%b[18], %r46, %b[28]
	  muls,4,sm	%b[16], %r26, %b[29]
	  stw,5	%b[5], %r10, %b[24]
	}
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x34, rbs = 0x20, rcur = 0x31
	  disp	%ctpr1, .L9373; ipd 2
	  cmpesb,0	0x0, 0x1, %pred1
	  scld,1	0x1f, 0x1, %r35
	}
	{
	  disp	%ctpr3, .L9623; ipd 2
	  ldd,0	%r2, _f16s,_lts0lo 0xffe0, %r36, mas=0x4
	  cmpandedb,1,sm	%r3, 0x7, %pred2
	  shld,2,sm	%r35, 0x2, %r35
	  addd,3,sm	0x0, [ _f64,_lts1 C +248 ], %r37
	  addd,4	0x0, 0x0, %r34
	}
	{
	  disp	%ctpr2, .L10802; ipd 2
	  ldd,0	%r2, _f16s,_lts0lo 0xffd0, %r38, mas=0x4
	  ldd,2,sm	0x0, [ _f64,_lts1 C +56 ], %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +72 ], %r4
	  ldd,2,sm	0x0, [ _f64,_lts2 C +80 ], %r1
	}
	{
	  cmpledb,0,sm	%r37, %r36, %pred4
	  cmpledb,1,sm	%r36, [ _f64,_lts0 C ], %pred3
	  subd,2,sm	%r36, 0x4, %r37
	  ldd,3,sm	0x0, [ _f64,_lts2 C +88 ], %r6
	  ldd,5,sm	0x0, [ _f64,_lts0 C ], %r33
	}
	{
	  addd,0,sm	%r35, [ _f64,_lts1 C +4 ], %r38 ? ~%pred1
	  addd,1,sm	%r36, _f16s,_lts0lo 0xf8, %r36
	  std,2,sm	%r2, _f16s,_lts0hi 0xffb8, %r37
	}
	{
	  cmpledb,0,sm	%r36, [ _f64,_lts1 C ], %pred5
	  cmpledb,1	%r38, %r37, %pred1
	  std,2,sm	%r2, _f16s,_lts0lo 0xffd0, %r38
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +96 ], %r5
	  ldd,2,sm	0x0, [ _f64,_lts2 C +104 ], %r9
	  pass	%pred1, @p0
	  pass	%pred3, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred1
	  pass	%pred2, @p2
	  landp	~@p4, ~@p2, @p5
	  pass	@p5, %pred2
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +112 ], %r7
	  ldd,2,sm	0x0, [ _f64,_lts2 C +120 ], %r11
	  pass	%pred4, @p0
	  pass	%pred5, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +128 ], %r10
	  ldd,2,sm	0x0, [ _f64,_lts2 C +144 ], %r12
	}
	{
	  ct	%ctpr1 ? %pred1
	  ldd,0,sm	0x0, [ _f64,_lts0 C +136 ], %r13
	  ldd,2,sm	0x0, [ _f64,_lts2 C +160 ], %r14
	}
	{
	  ct	%ctpr3 ? %pred2
	  ldd,0,sm	0x0, [ _f64,_lts0 C +152 ], %r15
	  ldd,2,sm	0x0, [ _f64,_lts2 C +176 ], %r16
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +168 ], %r17
	  ldd,2,sm	0x0, [ _f64,_lts2 C +192 ], %r18
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +184 ], %r19
	  ldd,2,sm	0x0, [ _f64,_lts2 C +208 ], %r20
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +200 ], %r21
	  ldd,2,sm	0x0, [ _f64,_lts2 C +224 ], %r22
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +216 ], %r23
	  ldd,2,sm	0x0, [ _f64,_lts2 C +240 ], %r24
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +232 ], %r25
	  ldd,2,sm	0x0, [ _f64,_lts2 C +64 ], %r26
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +40 ], %r27
	  ldd,2,sm	0x0, [ _f64,_lts2 C +48 ], %r28
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +24 ], %r29
	  ldd,2,sm	0x0, [ _f64,_lts2 C +32 ], %r30
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +8 ], %r31
	  ldd,2,sm	0x0, [ _f64,_lts2 C +16 ], %r32
	}
	{
	  ct	%ctpr2 ? %pred0
	  disp	%ctpr3, _Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_; ipd 2
	  std,2	%r3, 0x0, %r33 ? ~%pred0
	  std,5	%r3, _f16s,_lts0lo 0x38, %r0 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x40, %r26 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x50, %r1 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xc8, %r21 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xd0, %r20 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xd8, %r23 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xe0, %r22 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xe8, %r25 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xf0, %r24 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xb8, %r19 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xc0, %r18 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa8, %r17 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xb0, %r16 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x98, %r15 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xa0, %r14 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x88, %r13 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x90, %r12 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x78, %r11 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x80, %r10 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x68, %r9 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x70, %r7 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x58, %r6 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x60, %r5 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x48, %r4 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x28, %r27 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %r28 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x18, %r29 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %r30 ? ~%pred0
	  std,5	%r3, 0x8, %r31 ? ~%pred0
	}
	{
	  nop 3
	  std,2	%r3, _f16s,_lts0lo 0x10, %r32 ? ~%pred0
	  ldw,5,sm	0x0, [ _f64,_lts1 C +248 ], %r0
	}
	{
	  stw,2	%r3, _f16s,_lts0lo 0xf8, %r0 ? ~%pred0
	}
.L3382:
	{
	  cmpledb,0	%b[97], %b[94], %pred1
	  cmpledb,1	%b[95], %b[96], %pred2
	  cmpledb,3	%b[93], %b[94], %pred3
	  cmpledb,4	%b[95], %b[92], %pred4
	}
	{
	  call	%ctpr3, wbs = 0x51
	  cmpledb,0	%b[100], %b[101], %pred5
	  cmpledb,1	%b[102], %b[99], %pred6
	  cmpledb,3	%b[97], %b[92], %pred4
	  cmpledb,4	%b[93], %b[96], %pred7
	  pass	%pred2, @p0
	  pass	%pred1, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred1
	  pass	%pred4, @p2
	  pass	%pred3, @p3
	  landp	~@p2, ~@p3, @p5
	  pass	@p5, %pred2
	  landp	~@p4, ~@p5, @p6
	  pass	@p6, %pred3
	}
	{
	  disp	%ctpr1, _ZNSt6chrono3_V212system_clock3nowEv; ipd 2
	  cmpledb,0,sm	%b[88], %b[85], %pred3
	  cmpledb,1,sm	%b[86], %b[87], %pred5
	  pass	%pred6, @p0
	  pass	%pred5, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred1
	  pass	%pred3, @p2
	  landp	~@p4, @p2, @p5
	  pass	@p5, %pred2
	}
	{
	  pass	%pred7, @p0
	  pass	%pred4, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred1
	  pass	%pred2, @p2
	  landp	~@p4, @p2, @p5
	  pass	@p5, %pred2
	}
	{
	  nop 2
	  pass	%pred3, @p0
	  pass	%pred5, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  call	%ctpr1, wbs = 0x51
	}
	{
	  nop 4
	  disp	%ctpr3, _ZNSt6chrono3_V212system_clock3nowEv; ipd 2
	  addd,3	0x0, %b[0], %b[93]
	}
	{
	  call	%ctpr3, wbs = 0x51
	}
	{
	  disp	%ctpr2, .L10284; ipd 2
	  std,2	0x0, [ _f64,_lts0 B ], %b[105]
	  addd,3	0x0, %b[0], %b[92]
	  std,5	0x0, [ _f64,_lts2 B +8 ], %b[105]
	}
	{
	  disp	%ctpr1, .L10281; ipd 2
	  std,2	0x0, [ _f64,_lts0 B +16 ], %b[105]
	  std,5	0x0, [ _f64,_lts2 B +24 ], %b[105]
	}
	{
	  disp	%ctpr3, .L10188; ipd 2
	  ldd,0	%r2, _f16s,_lts0lo 0xffc8, %r0, mas=0x4
	  stw,2	0x0, [ _f64,_lts1 B +32 ], %b[73]
	}
	{
	  stw,2	%b[78], [ _f64,_lts0 B +4 ], %b[73]
	  stw,5	%b[78], [ _f64,_lts2 B +12 ], %b[73]
	}
	{
	  stw,2	%b[78], [ _f64,_lts0 B +20 ], %b[73]
	  stw,5	%b[78], [ _f64,_lts2 B +24 ], %b[75]
	}
	{
	  stw,2	%b[78], [ _f64,_lts0 B +28 ], %b[73]
	  stw,5	%b[78], [ _f64,_lts2 B +32 ], %b[75]
	}
	{
	  std,2	0x0, [ _f64,_lts0 A ], %r0
	  std,5	0x0, [ _f64,_lts2 A +8 ], %r0
	}
	{
	  std,2	0x0, [ _f64,_lts0 A +16 ], %r0
	  stw,5	%b[78], [ _f64,_lts2 B +16 ], %b[75]
	}
	{
	  stw,2	%b[78], [ _f64,_lts0 B ], %b[75]
	  stw,5	%b[78], [ _f64,_lts2 B +8 ], %b[75]
	}
	{
	  ldw,0	%r2, _f16s,_lts0lo 0xffd8, %r0, mas=0x4
	  stw,2	%b[104], [ _f64,_lts1 A +4 ], %b[74]
	}
	{
	  stw,2	%b[104], [ _f64,_lts0 A +12 ], %b[74]
	  stw,5	%b[104], [ _f64,_lts2 A +20 ], %b[74]
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +20 ], %b[73] ? %pred2
	  stw,5	%b[76], [ _f64,_lts2 B +24 ], %b[75] ? %pred2
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +28 ], %b[73] ? %pred2
	  stw,5	%b[76], [ _f64,_lts2 B +32 ], %b[75] ? %pred2
	}
	{
	  stw,2	%b[104], [ _f64,_lts0 A ], %r0
	  stw,5	%b[104], [ _f64,_lts2 A +8 ], %r0
	}
	{
	  stw,2	%b[104], [ _f64,_lts0 A +16 ], %r0
	  stw,5	%b[103], [ _f64,_lts2 A +20 ], %r0
	}
	{
	  stw,2	%b[103], [ _f64,_lts0 A +16 ], %r0
	  stw,5	%b[103], [ _f64,_lts2 A +12 ], %r0
	}
	{
	  stw,2	%b[103], [ _f64,_lts0 A +8 ], %r0
	  stw,5	%b[103], [ _f64,_lts2 A +4 ], %r0
	}
	{
	  ct	%ctpr2 ? ~%pred2
	  stw,2	%b[103], [ _f64,_lts0 A ], %r0
	  stw,5	%b[91], [ _f64,_lts2 A +16 ], %r0 ? %pred2
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A +8 ], %r0 ? %pred2
	  stw,5	%b[91], [ _f64,_lts2 A ], %r0 ? %pred2
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A +20 ], %r0 ? %pred2
	  stw,5	%b[89], [ _f64,_lts2 A +16 ], %r0 ? %pred2
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A +12 ], %r0 ? %pred2
	  stw,5	%b[89], [ _f64,_lts2 A +8 ], %r0 ? %pred2
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A +4 ], %r0 ? %pred2
	  stw,5	%b[89], [ _f64,_lts2 A ], %r0 ? %pred2
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A +16 ], %r0 ? %pred2
	  stw,5	%b[90], [ _f64,_lts2 A +8 ], %r0 ? %pred2
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A ], %r0 ? %pred2
	  stw,5	%b[76], [ _f64,_lts2 B +16 ], %b[75] ? %pred2
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +12 ], %b[73] ? %pred2
	  stw,5	%b[76], [ _f64,_lts2 B +8 ], %b[75] ? %pred2
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +4 ], %b[73] ? %pred2
	  stw,5	%b[76], [ _f64,_lts2 B ], %b[75] ? %pred2
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +32 ], %b[73] ? %pred2
	  stw,5	%b[77], [ _f64,_lts2 B +28 ], %b[74] ? %pred2
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +24 ], %b[73] ? %pred2
	  stw,5	%b[77], [ _f64,_lts2 B +20 ], %b[74] ? %pred2
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +16 ], %b[73] ? %pred2
	  stw,5	%b[77], [ _f64,_lts2 B +12 ], %b[74] ? %pred2
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +8 ], %b[73] ? %pred2
	  stw,5	%b[77], [ _f64,_lts2 B +4 ], %b[74] ? %pred2
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B ], %b[73] ? %pred2
	  stw,5	%b[91], [ _f64,_lts2 A +20 ], %b[74] ? %pred2
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A +12 ], %b[74] ? %pred2
	  stw,5	%b[91], [ _f64,_lts2 A +4 ], %b[74] ? %pred2
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A +20 ], %b[74] ? %pred2
	  stw,5	%b[90], [ _f64,_lts2 A +12 ], %b[74] ? %pred2
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A +4 ], %b[74] ? %pred2
	}
.L10281:
	{
	  disp	%ctpr1, .L3513; ipd 2
	  stw,2	%b[71], [ _f64,_lts0 B ], %b[73] ? ~%pred0
	  stw,5	%b[71], [ _f64,_lts2 B +4 ], %b[74] ? ~%pred0
	}
	{
	  ct	%ctpr3 ? %pred0
	  stw,2	%b[71], [ _f64,_lts0 B +8 ], %b[73] ? ~%pred0
	  stw,5	%b[71], [ _f64,_lts2 B +12 ], %b[74] ? ~%pred0
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +16 ], %b[73] ? ~%pred0
	  stw,5	%b[71], [ _f64,_lts2 B +20 ], %b[74] ? ~%pred0
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +24 ], %b[73] ? ~%pred0
	  stw,5	%b[71], [ _f64,_lts2 B +28 ], %b[74] ? ~%pred0
	}
	{
	  ldw,0	%r2, _f16s,_lts0lo 0xffd8, %r0, mas=0x4
	  stw,2	%b[71], [ _f64,_lts1 B +32 ], %b[73] ? ~%pred0
	  ldd,5	%r2, _f16s,_lts0hi 0xffe0, %r1, mas=0x4
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B ], %b[75] ? ~%pred0
	  stw,5	%b[72], [ _f64,_lts2 B +4 ], %b[73] ? ~%pred0
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +8 ], %b[75] ? ~%pred0
	  stw,5	%b[72], [ _f64,_lts2 B +12 ], %b[73] ? ~%pred0
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +16 ], %b[75] ? ~%pred0
	  cmpledb,3,sm	%b[80], %r1, %pred1
	  stw,5	%b[72], [ _f64,_lts2 B +20 ], %b[73] ? ~%pred0
	}
	{
	  stw,2	%b[84], [ _f64,_lts0 A ], %r0 ? ~%pred0
	  stw,5	%b[84], [ _f64,_lts2 A +4 ], %r0 ? ~%pred0
	}
	{
	  stw,2	%b[84], [ _f64,_lts0 A +8 ], %r0 ? ~%pred0
	  stw,5	%b[84], [ _f64,_lts2 A +12 ], %r0 ? ~%pred0
	}
	{
	  stw,2	%b[84], [ _f64,_lts0 A +16 ], %r0 ? ~%pred0
	  stw,5	%b[84], [ _f64,_lts2 A +20 ], %r0 ? ~%pred0
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +24 ], %b[75] ? ~%pred0
	  stw,5	%b[72], [ _f64,_lts2 B +28 ], %b[73] ? ~%pred0
	}
	{
	  cmpledb,0,sm	%b[79], [ _f64,_lts2 A ], %pred0
	  stw,2	%b[72], [ _f64,_lts0 B +32 ], %b[75] ? ~%pred0
	}
.L3513:
	{
	  disp	%ctpr3, .L10083; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 A +8 ], %r0
	  ldd,2,sm	0x0, [ _f64,_lts2 A +16 ], %r1
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred1
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +24 ], %r4
	  ldd,2,sm	0x0, [ _f64,_lts2 A +32 ], %r5
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +40 ], %r6
	  ldd,2,sm	0x0, [ _f64,_lts2 A +48 ], %r7
	}
	{
	  ct	%ctpr3 ? %pred1
	  ldd,0,sm	0x0, [ _f64,_lts0 A +56 ], %r9
	  ldd,2,sm	0x0, [ _f64,_lts2 A +64 ], %r10
	}
	{
	  disp	%ctpr3, _Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 A +72 ], %r11
	  ldd,2,sm	0x0, [ _f64,_lts2 A +80 ], %r12
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +88 ], %r13
	  ldd,2,sm	0x0, [ _f64,_lts2 A +96 ], %r14
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +104 ], %r15
	  ldd,2,sm	0x0, [ _f64,_lts2 A +112 ], %r16
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +120 ], %r17
	  ldd,2,sm	0x0, [ _f64,_lts2 A +128 ], %r18
	}
	{
	  ldd,2,sm	0x0, [ _f64,_lts0 A +136 ], %r19
	  ldd,5,sm	0x0, [ _f64,_lts2 A +144 ], %r20
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts2 A ], %r22
	  ldd,2,sm	0x0, [ _f64,_lts0 A +152 ], %r21
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts1 A +160 ], %r23
	  ldd,3	%r2, _f16s,_lts0lo 0xffe0, %r24, mas=0x4
	}
	{
	  cmpledb,0,sm	%b[83], [ _f64,_lts0 B ], %pred2
	  std,2	%r3, 0x8, %r0 ? ~%pred1
	  std,5	0x10, %r3, %r1 ? ~%pred1
	}
	{
	  std,2	0x18, %r3, %r4 ? ~%pred1
	  std,5	%r3, _f16s,_lts0lo 0x20, %r5 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x28, %r6 ? ~%pred1
	  cmpledb,3,sm	%b[82], %r24, %pred3
	  std,5	%r3, _f16s,_lts0hi 0x30, %r7 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x38, %r9 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x40, %r10 ? ~%pred1
	  pass	%pred3, @p0
	  pass	%pred2, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x48, %r11 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x50, %r12 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x58, %r13 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x60, %r14 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x68, %r15 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x70, %r16 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x78, %r17 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x80, %r18 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x88, %r19 ? ~%pred1
	  std,5	%r3, _f16s,_lts0hi 0x90, %r20 ? ~%pred1
	}
	{
	  std,2	%r3, 0x0, %r22 ? ~%pred1
	  std,5	%r3, _f16s,_lts0lo 0x98, %r21 ? ~%pred1
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa0, %r23 ? ~%pred1
	}
.L10080:
	nop
	{
	  call	%ctpr3, wbs = 0x51
	}
	{
	  disp	%ctpr1, .L9954; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 B ], %r0
	  ldd,2,sm	0x0, [ _f64,_lts2 B +16 ], %r1
	}
	{
	  disp	%ctpr3, _Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 B +8 ], %r4
	  ldd,2,sm	0x0, [ _f64,_lts2 B +32 ], %r5
	}
	{
	  ct	%ctpr1 ? %pred0
	  ldd,0,sm	0x0, [ _f64,_lts0 B +24 ], %r6
	  ldd,2,sm	0x0, [ _f64,_lts2 B +48 ], %r7
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +40 ], %r9
	  ldd,2,sm	0x0, [ _f64,_lts2 B +64 ], %r10
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +56 ], %r11
	  ldd,2,sm	0x0, [ _f64,_lts2 B +80 ], %r12
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +72 ], %b[8]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +96 ], %b[9]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +88 ], %b[10]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +112 ], %b[11]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +104 ], %b[12]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +128 ], %b[13]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +120 ], %b[14]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +144 ], %b[15]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +136 ], %b[16]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +160 ], %b[17]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +152 ], %b[18]
	  ldd,2,sm	0x0, [ _f64,_lts2 B +176 ], %b[19]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +168 ], %b[20]
	  ldd,3,sm	0x0, [ _f64,_lts2 B +192 ], %b[21]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +184 ], %b[22]
	  ldd,3,sm	0x0, [ _f64,_lts2 B +208 ], %b[23]
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +200 ], %b[24]
	  std,2	%r3, 0x0, %r0 ? ~%pred0
	}
	{
	  std,2	0x10, %r3, %r1 ? ~%pred0
	  std,5	%r3, 0x8, %r4 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %r5 ? ~%pred0
	  std,5	0x18, %r3, %r6 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %r7 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x28, %r9 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x40, %r10 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x38, %r11 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x50, %r12 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x48, %b[8] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x60, %b[9] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x58, %b[10] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x70, %b[11] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x68, %b[12] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x80, %b[13] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x78, %b[14] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x90, %b[15] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x88, %b[16] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa0, %b[17] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x98, %b[18] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xb0, %b[19] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xa8, %b[20] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xc0, %b[21] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xb8, %b[22] ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xd0, %b[23] ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xc8, %b[24] ? ~%pred0
	}
	{
	  call	%ctpr3, wbs = 0x51 ? ~%pred0
	}
	{
	  ldw,0,sm	%b[71], [ _f64,_lts0 B ], %r0
	  adds,1	0x0, 0x0, %r6 ? ~%pred0
	  ldw,2,sm	%b[72], [ _f64,_lts0 B ], %r1
	  ldw,3,sm	0x0, [ _f64,_lts0 B ], %r4
	  ldw,5,sm	%b[78], [ _f64,_lts0 B ], %r5
	}
	{
	  ldw,0,sm	%b[77], [ _f64,_lts1 B ], %r6
	  stw,2,sm	%r2, _f16s,_lts0lo 0xffc0, %r6 ? ~%pred0
	  ldw,5,sm	%b[76], [ _f64,_lts1 B ], %r7
	}
	{
	  ldw,0,sm	0x0, [ _f64,_lts0 B +16 ], %r9
	  ldw,2,sm	0x0, [ _f64,_lts2 B +12 ], %r10
	  ldw,3,sm	%b[72], [ _f64,_lts2 B +12 ], %r11
	  ldw,5,sm	%b[72], [ _f64,_lts0 B +16 ], %r12
	}
	{
	  ldw,0,sm	0x0, [ _f64,_lts0 B +8 ], %b[8]
	  adds,1,sm	0x0, %r1, %r63 ? ~%pred0
	  ldw,2,sm	0x0, [ _f64,_lts2 B +4 ], %b[9]
	  ldw,3,sm	%b[72], [ _f64,_lts2 B +4 ], %b[10]
	  ldw,5,sm	%b[72], [ _f64,_lts0 B +8 ], %b[11]
	}
	{
	  adds,0,sm	0x0, %r6, %r61 ? ~%pred0
	  stw,2,sm	%r2, _f16s,_lts0lo 0xfff0, %r0 ? ~%pred0
	  adds,3,sm	0x0, %r7, %r62 ? ~%pred0
	  stw,5,sm	%r2, _f16s,_lts0hi 0xffe8, %r4 ? ~%pred0
	}
	{
	  ldw,0,sm	%b[81], [ _f64,_lts1 B ], %r0
	  adds,1,sm	0x0, %r9, %r59 ? ~%pred0
	  stw,2,sm	%r2, _f16s,_lts0lo 0xfff8, %r5 ? ~%pred0
	  adds,3,sm	0x0, %r11, %r55 ? ~%pred0
	  adds,4,sm	0x0, %r12, %r44 ? ~%pred0
	}
	{
	  ldw,0,sm	0x0, [ _f64,_lts0 B +28 ], %r1
	  adds,1,sm	0x0, %r10, %r57 ? ~%pred0
	  ldw,2,sm	0x0, [ _f64,_lts2 B +24 ], %r4
	  ldw,3,sm	%b[72], [ _f64,_lts0 B +28 ], %r5
	  adds,4,sm	0x0, %b[10], %r51 ? ~%pred0
	  ldw,5,sm	%b[72], [ _f64,_lts2 B +24 ], %r6
	}
	{
	  ldw,0,sm	0x0, [ _f64,_lts0 B +20 ], %r7
	  adds,1,sm	0x0, %b[8], %r58 ? ~%pred0
	  ldw,2,sm	%b[72], [ _f64,_lts2 B +32 ], %r9
	  ldw,3,sm	%b[72], [ _f64,_lts0 B +20 ], %r10
	  adds,4,sm	0x0, %b[9], %r53 ? ~%pred0
	  ldw,5,sm	%b[76], [ _f64,_lts2 B +32 ], %r11
	}
	{
	  ldw,0,sm	%b[76], [ _f64,_lts0 B +4 ], %r12
	  adds,1,sm	0x0, %b[11], %r56 ? ~%pred0
	  ldw,2,sm	%b[71], [ _f64,_lts0 B +4 ], %b[8]
	  ldw,3,sm	%b[71], [ _f64,_lts2 B +32 ], %b[9]
	  ldw,5,sm	%b[78], [ _f64,_lts0 B +4 ], %b[10]
	}
	{
	  ldw,0,sm	%b[76], [ _f64,_lts0 B +12 ], %b[11]
	  adds,1,sm	0x0, %r0, %r60 ? ~%pred0
	  ldw,2,sm	%b[76], [ _f64,_lts2 B +8 ], %b[12]
	  ldw,3,sm	%b[71], [ _f64,_lts0 B +12 ], %b[13]
	  adds,4,sm	0x0, %r5, %r52 ? ~%pred0
	  ldw,5,sm	%b[71], [ _f64,_lts2 B +8 ], %b[14]
	}
	{
	  ldw,0,sm	%b[76], [ _f64,_lts0 B +20 ], %r0
	  adds,1,sm	0x0, %r1, %r54 ? ~%pred0
	  ldw,2,sm	%b[76], [ _f64,_lts2 B +16 ], %r5
	  ldw,3,sm	%b[71], [ _f64,_lts0 B +20 ], %b[15]
	  adds,4,sm	0x0, %r4, %r49 ? ~%pred0
	  ldw,5,sm	%b[71], [ _f64,_lts2 B +16 ], %b[16]
	}
	{
	  ldw,0,sm	%b[76], [ _f64,_lts0 B +28 ], %r1
	  adds,1,sm	0x0, %r6, %r47 ? ~%pred0
	  ldw,2,sm	%b[76], [ _f64,_lts2 B +24 ], %r4
	  ldw,3,sm	%b[71], [ _f64,_lts0 B +28 ], %b[17]
	  adds,4,sm	0x0, %r7, %r50 ? ~%pred0
	  ldw,5,sm	%b[71], [ _f64,_lts2 B +24 ], %b[18]
	}
	{
	  ldw,0,sm	%b[78], [ _f64,_lts0 B +32 ], %r6
	  adds,1,sm	0x0, %r9, %r43 ? ~%pred0
	  ldw,2,sm	%b[77], [ _f64,_lts2 B +4 ], %r7
	  ldw,3,sm	%b[77], [ _f64,_lts0 B +32 ], %b[19]
	  adds,4,sm	0x0, %r10, %r48 ? ~%pred0
	  adds,5,sm	0x0, %r11, %r46 ? ~%pred0
	}
	{
	  ldw,0,sm	%b[78], [ _f64,_lts0 B +12 ], %r9
	  adds,1,sm	0x0, %r12, %r38 ? ~%pred0
	  ldw,2,sm	%b[78], [ _f64,_lts2 B +8 ], %r10
	  ldw,3,sm	%b[77], [ _f64,_lts0 B +12 ], %r11
	  adds,4,sm	0x0, %b[8], %r37 ? ~%pred0
	  ldw,5,sm	%b[77], [ _f64,_lts2 B +8 ], %b[20]
	}
	{
	  ldw,0,sm	%b[78], [ _f64,_lts0 B +20 ], %r12
	  adds,1,sm	0x0, %b[9], %r45 ? ~%pred0
	  ldw,2,sm	%b[78], [ _f64,_lts2 B +16 ], %b[8]
	  ldw,3,sm	%b[77], [ _f64,_lts0 B +20 ], %b[21]
	  adds,4,sm	0x0, %b[10], %r29 ? ~%pred0
	  ldw,5,sm	%b[77], [ _f64,_lts2 B +16 ], %b[22]
	}
	{
	  ldw,0,sm	%b[78], [ _f64,_lts0 B +28 ], %b[9]
	  adds,1,sm	0x0, %b[11], %r41 ? ~%pred0
	  ldw,2,sm	%b[78], [ _f64,_lts2 B +24 ], %b[10]
	  ldw,3,sm	%b[77], [ _f64,_lts0 B +28 ], %b[23]
	  adds,4,sm	0x0, %b[12], %r42 ? ~%pred0
	  ldw,5,sm	%b[77], [ _f64,_lts2 B +24 ], %b[24]
	}
	{
	  adds,0,sm	0x0, %b[13], %r39 ? ~%pred0
	  adds,1,sm	0x0, %b[14], %r40 ? ~%pred0
	  adds,2,sm	0x0, %r0, %r33 ? ~%pred0
	  adds,3,sm	0x0, %r5, %r34 ? ~%pred0
	  adds,4,sm	0x0, %b[15], %r31 ? ~%pred0
	  adds,5,sm	0x0, %b[16], %r32 ? ~%pred0
	}
	{
	  adds,0,sm	0x0, %r1, %r36 ? ~%pred0
	  adds,1,sm	0x0, %r4, %r28 ? ~%pred0
	  adds,2,sm	0x0, %b[17], %r35 ? ~%pred0
	  adds,3,sm	0x0, %b[18], %r25 ? ~%pred0
	  adds,4,sm	0x0, %r6, %r30 ? ~%pred0
	  adds,5,sm	0x0, %r7, %r26 ? ~%pred0
	}
	{
	  adds,0,sm	0x0, %b[19], %r27 ? ~%pred0
	  adds,1,sm	0x0, %r9, %r21 ? ~%pred0
	  adds,2,sm	0x0, %r10, %r22 ? ~%pred0
	  adds,3,sm	0x0, %r11, %r19 ? ~%pred0
	  adds,4,sm	0x0, %b[20], %r20 ? ~%pred0
	  adds,5,sm	0x0, %r12, %r24 ? ~%pred0
	}
	{
	  adds,0,sm	0x0, %b[8], %r14 ? ~%pred0
	  adds,1,sm	0x0, %b[21], %r23 ? ~%pred0
	  adds,2,sm	0x0, %b[22], %r13 ? ~%pred0
	  adds,3,sm	0x0, %b[9], %r17 ? ~%pred0
	  adds,4,sm	0x0, %b[10], %r15 ? ~%pred0
	  adds,5,sm	0x0, %b[23], %r18 ? ~%pred0
	}
	{
	  adds,0,sm	0x0, %b[24], %r16 ? ~%pred0
	}
.L9417:
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x1e, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L7882; ipd 2
	  rwd,0	_f64,_lts1 0x122ff2200000007, %lsr
	}
	{
	  addd,1	0x0, [ _f64,_lts0 C +24 ], %r0
	  addd,2	0x0, [ _f64,_lts2 C +8 ], %r1
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +20 ], %r4
	  addd,1	0x0, [ _f64,_lts2 C +4 ], %r5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 A ], %r6
	  addd,1	0x0, [ _f64,_lts2 A +4 ], %r7
	}
	{
	  addd,0	0x0, [ _f64,_lts0 A +8 ], %r9
	  addd,1	0x0, [ _f64,_lts2 A +12 ], %r10
	}
	{
	  addd,0	0x0, [ _f64,_lts0 A +16 ], %r11
	  addd,1	0x0, [ _f64,_lts2 A +20 ], %r12
	}
	{
	  nop 2
	  ldw,0	%r2, _f16s,_lts0lo 0xffc0, %g31, mas=0x4
	}
	{
	  adds,0,sm	0x0, %g31, %b[2]
	  ldw,2	%r2, _f16s,_lts0lo 0xffe8, %g17, mas=0x4
	  ldw,3	%r2, _f16s,_lts0hi 0xfff0, %g18, mas=0x4
	  ldw,5	%r2, _f16s,_lts1lo 0xfff8, %g16, mas=0x4
	}
.L7882:
	{
	  loop_mode
	  muls,0,sm	%b[27], %r27, %b[40]
	  muls,1,sm	%b[27], %r19, %b[39]
	  muls,3,sm	%b[27], %r13, %b[41]
	  muls,4,sm	%b[15], %r15, %b[42]
	}
	{
	  loop_mode
	  muls,0,sm	%b[15], %r17, %b[44]
	  muls,1,sm	%b[15], %g16, %b[43]
	  muls,3,sm	%b[15], %r30, %b[46]
	  muls,4,sm	%b[15], %r21, %b[45]
	}
	{
	  loop_mode
	  muls,0,sm	%b[21], %r50, %b[47]
	  muls,1,sm	%b[15], %r14, %b[12]
	  muls,3,sm	%b[21], %r53, %b[48]
	  muls,4,sm	%b[12], %r51, %b[49]
	}
	{
	  loop_mode
	  muls,0,sm	%b[18], %r37, %b[51]
	  muls,1,sm	%b[18], %r40, %b[52]
	  muls,3,sm	%b[24], %r38, %b[18]
	  muls,4,sm	%b[21], %r59, %b[50]
	}
	{
	  loop_mode
	  muls,0,sm	%b[24], %r42, %b[55]
	  muls,1,sm	%b[21], %r60, %b[54]
	  muls,3,sm	%b[27], %r26, %b[24]
	  muls,4,sm	%b[21], %r57, %b[53]
	}
	{
	  loop_mode
	  muls,0,sm	%b[27], %r20, %b[57]
	  muls,1,sm	%b[21], %r54, %b[56]
	  muls,3,sm	%b[15], %r29, %b[27]
	  muls,4,sm	%b[21], %g17, %b[58]
	}
	{
	  loop_mode
	  muls,0,sm	%b[15], %r22, %b[60]
	  muls,1,sm	%b[21], %r49, %b[49]
	  muls,3,sm	%b[21], %r58, %b[59]
	  istofd,4,sm	%b[49], %b[21]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[51], %b[18]
	  istofd,1,sm	%b[52], %b[50]
	  istofd,3,sm	%b[18], %b[51]
	  istofd,4,sm	%b[50], %b[52]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[55], %b[24]
	  istofd,1,sm	%b[54], %b[55]
	  istofd,3,sm	%b[24], %b[53]
	  istofd,4,sm	%b[53], %b[54]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[57], %b[27]
	  istofd,1,sm	%b[56], %b[57]
	  istofd,3,sm	%b[27], %b[56]
	  istofd,4,sm	%b[58], %b[58]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[60], %b[48]
	  istofd,1,sm	%b[49], %b[49]
	  istofd,3,sm	%b[48], %b[59]
	  istofd,4,sm	%b[59], %b[61]
	}
	{
	  loop_mode
	  muls,0,sm	%b[15], %r24, %b[52]
	  istofd,1,sm	%b[47], %b[47]
	  istofd,3,sm	%b[12], %b[15]
	  faddd,4,sm	0x0, %b[52], %b[12]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[46], %b[55]
	  faddd,1,sm	0x0, %b[55], %b[54]
	  istofd,3,sm	%b[45], %b[45]
	  faddd,4,sm	0x0, %b[54], %b[46]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[44], %b[57]
	  faddd,1,sm	0x0, %b[57], %b[44]
	  istofd,3,sm	%b[43], %b[43]
	  faddd,4,sm	0x0, %b[58], %b[58]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[42], %b[49]
	  faddd,1,sm	0x0, %b[49], %b[42]
	  faddd,3,sm	0x0, %b[59], %b[59]
	  faddd,4,sm	0x0, %b[61], %b[60]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[52], %b[47]
	  faddd,1,sm	0x0, %b[47], %b[41]
	  istofd,3,sm	%b[41], %b[15]
	  faddd,4,sm	%b[12], %b[15], %b[12]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[40], %b[46]
	  faddd,1,sm	%b[54], %b[55], %b[45]
	  istofd,3,sm	%b[39], %b[40]
	  faddd,4,sm	%b[46], %b[45], %b[39]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[38], %b[44]
	  faddd,1,sm	%b[44], %b[57], %b[43]
	  istofd,3,sm	%b[37], %b[37]
	  faddd,4,sm	%b[58], %b[43], %b[38]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[30], %b[48]
	  faddd,1,sm	%b[42], %b[49], %b[42]
	  faddd,3,sm	%b[59], %b[56], %b[30]
	  faddd,4,sm	%b[60], %b[48], %b[49]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[36], %b[36]
	  faddd,1,sm	%b[41], %b[47], %b[16]
	  istofd,3,sm	%b[16], %b[15]
	  faddd,4,sm	%b[12], %b[15], %b[12]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[35], %b[40]
	  faddd,1,sm	%b[45], %b[46], %b[39]
	  istofd,3,sm	%b[29], %b[35]
	  faddd,4,sm	%b[39], %b[40], %b[29]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[34], %b[38]
	  faddd,1,sm	%b[43], %b[44], %b[37]
	  istofd,3,sm	%b[28], %b[28]
	  faddd,4,sm	%b[38], %b[37], %b[34]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[33], %b[33]
	  faddd,1,sm	%b[42], %b[48], %b[30]
	  faddd,3,sm	%b[30], %b[53], %b[27]
	  faddd,4,sm	%b[49], %b[27], %b[41]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[25], %b[12]
	  faddd,1,sm	%b[16], %b[36], %b[25]
	  istofd,3,sm	%b[26], %b[16]
	  faddd,4,sm	%b[12], %b[15], %b[15]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[32], %b[31]
	  faddd,1,sm	%b[39], %b[40], %b[32]
	  istofd,3,sm	%b[31], %b[29]
	  faddd,4,sm	%b[29], %b[35], %b[26]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[23], %b[28]
	  faddd,1,sm	%b[37], %b[38], %b[34]
	  istofd,3,sm	%b[22], %b[22]
	  faddd,4,sm	%b[34], %b[28], %b[23]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[14], %b[27]
	  faddd,1,sm	%b[30], %b[33], %b[24]
	  faddd,3,sm	%b[27], %b[51], %b[14]
	  faddd,4,sm	%b[41], %b[24], %b[30]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[20], %b[9]
	  faddd,1,sm	%b[25], %b[12], %b[12]
	  istofd,3,sm	%b[9], %b[16]
	  faddd,4,sm	%b[15], %b[16], %b[15]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[8], %b[25]
	  faddd,1,sm	%b[32], %b[31], %b[20]
	  istofd,3,sm	%b[19], %b[19]
	  faddd,4,sm	%b[26], %b[29], %b[8]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[17], %b[23]
	  faddd,1,sm	%b[34], %b[28], %b[22]
	  istofd,3,sm	%b[6], %b[6]
	  faddd,4,sm	%b[23], %b[22], %b[17]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[11], %b[24]
	  faddd,1,sm	%b[24], %b[27], %b[11]
	  ldw,2,sm	%b[7], %r12, %b[10] ? %pcnt1
	  istofd,3,sm	%b[10], %b[26]
	  faddd,4,sm	%b[30], %b[50], %b[27]
	}
	{
	  loop_mode
	  istofd,0,sm	%b[13], %b[9]
	  faddd,1,sm	%b[12], %b[9], %b[14]
	  faddd,3,sm	%b[14], %b[18], %b[13]
	  faddd,4,sm	%b[15], %b[16], %b[12]
	}
	{
	  loop_mode
	  faddd,1,sm	%b[20], %b[25], %b[8]
	  faddd,4,sm	%b[8], %b[19], %b[15]
	}
	{
	  loop_mode
	  faddd,1,sm	%b[22], %b[23], %b[6]
	  smulx,3,sm	%b[4], _f16s,_lts0lo 0x24, %b[1]
	  faddd,4,sm	%b[17], %b[6], %b[4]
	}
	{
	  loop_mode
	  smulx,0,sm	0x18, %b[2], %b[5]
	  faddd,1,sm	%b[11], %b[24], %b[17]
	  ldw,2,sm	%b[7], %r11, %b[16] ? %pcnt1
	  muls,3,sm	%b[10], %r48, %b[11]
	  faddd,4,sm	%b[27], %b[26], %b[18]
	  adds,5,sm	%b[2], 0x1, %b[0]
	}
	{
	  loop_mode
	  muls,0,sm	%b[10], %r47, %b[9]
	  faddd,1,sm	%b[14], %b[9], %b[12]
	  faddd,3,sm	%b[13], %b[21], %b[14]
	  fdtoistr,4,sm	%b[12], %b[13]
	}
	{
	  loop_mode
	  muls,0,sm	%b[10], %r56, %b[8]
	  fdtoistr,1,sm	%b[8], %b[20]
	  ldw,2,sm	%b[7], %r6, %b[19] ? %pcnt1
	  muls,3,sm	%b[10], %r52, %b[15]
	  fdtoistr,4,sm	%b[15], %b[21]
	}
	{
	  loop_mode
	  muls,0,sm	%b[10], %r63, %b[4]
	  fdtoistr,1,sm	%b[6], %b[23]
	  ldw,2,sm	%b[7], %r10, %b[22] ? %pcnt1
	  muls,3,sm	%b[10], %r43, %b[6]
	  fdtoistr,4,sm	%b[4], %b[24]
	}
	{
	  loop_mode
	  muls,0,sm	%b[10], %r55, %b[17]
	  fdtoistr,1,sm	%b[17], %b[26]
	  ldw,2,sm	%b[7], %r9, %b[25] ? %pcnt1
	  muls,3,sm	%b[16], %r31, %b[18]
	  fdtoistr,4,sm	%b[18], %b[27]
	}
	{
	  loop_mode
	  muls,0,sm	%b[10], %r44, %b[7]
	  fdtoistr,1,sm	%b[12], %b[14]
	  ldw,2,sm	%b[7], %r7, %b[13] ? %pcnt1
	  muls,3,sm	%b[16], %r25, %b[12]
	  fdtoistr,4,sm	%b[14], %b[28]
	  stw,5	%b[3], [ _f64,_lts0 C +16 ], %b[13]
	}
	{
	  loop_mode
	  muls,0,sm	%b[16], %r35, %b[21]
	  muls,1,sm	%b[16], %g18, %b[20]
	  stw,2	%b[3], [ _f64,_lts2 C +32 ], %b[20]
	  muls,3,sm	%b[16], %r45, %b[30]
	  muls,4,sm	%b[16], %r39, %b[29]
	  stw,5	%b[3], [ _f64,_lts0 C +12 ], %b[21]
	}
	{
	  loop_mode
	  muls,0,sm	%b[22], %r33, %b[23]
	  muls,1,sm	%b[16], %r32, %b[24]
	  stw,2	%b[3], [ _f64,_lts2 C +28 ], %b[23]
	  muls,3,sm	%b[22], %r28, %b[31]
	  muls,4,sm	%b[22], %r36, %b[32]
	  stw,5	%b[3], [ _f64,_lts0 C ], %b[24]
	}
	{
	  loop_mode
	  muls,0,sm	%b[22], %r62, %b[26]
	  muls,1,sm	%b[22], %r46, %b[33]
	  stw,2	%b[3], %r0, %b[26]
	  muls,3,sm	%b[22], %r41, %b[27]
	  muls,4,sm	%b[25], %r23, %b[34]
	  stw,5	%b[3], %r1, %b[27]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  muls,0,sm	%b[22], %r34, %b[14]
	  muls,1,sm	%b[25], %r16, %b[28]
	  stw,2	%b[3], %r4, %b[14]
	  muls,3,sm	%b[25], %r18, %b[36]
	  muls,4,sm	%b[25], %r61, %b[35]
	  stw,5	%b[3], %r5, %b[28]
	}
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x34, rbs = 0x20, rcur = 0x31
	  disp	%ctpr2, .L9354; ipd 2
	  cmpandedb,0,sm	%r3, 0x7, %pred2
	}
	{
	  disp	%ctpr3, .L9392; ipd 2
	  ldd,0	%r2, _f16s,_lts0lo 0xffb8, %r7, mas=0x4
	  addd,1	0x0, 0x0, %r4
	  ldd,2	%r2, _f16s,_lts0hi 0xffe0, %r5, mas=0x4
	  addd,4,sm	0x0, [ _f64,_lts2 C +248 ], %r9
	  ldd,5	%r2, _f16s,_lts1lo 0xffd0, %r6, mas=0x4
	}
	{
	  nop 1
	  ldd,0,sm	0x0, [ _f64,_lts0 C ], %r1
	  ldd,2,sm	0x0, [ _f64,_lts2 C +16 ], %r0
	}
	{
	  cmpledb,0,sm	%r5, [ _f64,_lts1 C ], %pred3
	  cmpledb,1	%r6, %r7, %pred4
	  addd,2,sm	%r5, _f16s,_lts0lo 0xf8, %r6
	}
	{
	  nop 2
	  cmpledb,0,sm	%r9, %r5, %pred1
	  cmpledb,1,sm	%r6, [ _f64,_lts0 C ], %pred0
	  pass	%pred4, @p0
	  pass	%pred3, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred3
	  pass	%pred2, @p2
	  landp	~@p4, ~@p2, @p5
	  pass	@p5, %pred2
	}
	{
	  ct	%ctpr2 ? %pred3
	}
	{
	  ct	%ctpr3 ? %pred2
	}
	{
	  disp	%ctpr2, .L10947; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 C +168 ], %r4
	  ldd,2,sm	0x0, [ _f64,_lts2 C +176 ], %r5
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +184 ], %r6
	  ldd,2,sm	0x0, [ _f64,_lts2 C +192 ], %r7
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +200 ], %r9
	  ldd,2,sm	0x0, [ _f64,_lts2 C +208 ], %r10
	}
	{
	  ct	%ctpr2 ? %pred0
	  ldd,0,sm	0x0, [ _f64,_lts0 C +216 ], %r11
	  ldd,2,sm	0x0, [ _f64,_lts2 C +224 ], %r12
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +232 ], %r13
	  ldd,2,sm	0x0, [ _f64,_lts2 C +240 ], %r14
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +152 ], %r15
	  ldd,2,sm	0x0, [ _f64,_lts2 C +160 ], %r16
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +136 ], %r17
	  ldd,2,sm	0x0, [ _f64,_lts2 C +144 ], %r18
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +120 ], %r19
	  ldd,2,sm	0x0, [ _f64,_lts2 C +128 ], %r20
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +104 ], %r21
	  ldd,2,sm	0x0, [ _f64,_lts2 C +112 ], %r22
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +88 ], %r23
	  ldd,2,sm	0x0, [ _f64,_lts2 C +96 ], %r24
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +72 ], %r25
	  ldd,2,sm	0x0, [ _f64,_lts2 C +80 ], %r26
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +56 ], %r27
	  ldd,2,sm	0x0, [ _f64,_lts2 C +64 ], %r28
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +40 ], %r29
	  ldd,3,sm	0x0, [ _f64,_lts2 C +48 ], %r30
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +24 ], %r31
	  ldd,3,sm	0x0, [ _f64,_lts2 C +32 ], %r32
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +8 ], %r33
	  std,2	%r3, 0x0, %r1 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x10, %r0 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xa8, %r4 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xb0, %r5 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xb8, %r6 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xc0, %r7 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xc8, %r9 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xd0, %r10 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xd8, %r11 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xe0, %r12 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0xe8, %r13 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xf0, %r14 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x98, %r15 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa0, %r16 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x88, %r17 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x90, %r18 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x78, %r19 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x80, %r20 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x68, %r21 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x70, %r22 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x58, %r23 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x60, %r24 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x48, %r25 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x50, %r26 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x38, %r27 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x40, %r28 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x28, %r29 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %r30 ? ~%pred0
	  std,5	%r3, _f16s,_lts0hi 0x18, %r31 ? ~%pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %r32 ? ~%pred0
	  std,5	%r3, 0x8, %r33 ? ~%pred0
	}
	{
	  nop 3
	  ldw,0,sm	0x0, [ _f64,_lts0 C +248 ], %r0
	}
	{
	  stw,2	%r3, _f16s,_lts0lo 0xf8, %r0 ? ~%pred0
	}
.L3708:
	{
	  nop 4
	  disp	%ctpr2, _Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_; ipd 2
	  subd,3	%b[93], %b[98], %r0
	  adds,4	0x0, _f32s,_lts0 0x4e6e6b28, %r3
	}
	{
	  call	%ctpr2, wbs = 0x51
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSt6chrono3_V212system_clock3nowEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x51
	}
	{
	  disp	%ctpr1, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x1b, 0x0, %b[2]
	  addd,1	0x0, [ _f64,_lts0 .LC.1 ], %b[1]
	  addd,2,sm	0x0, [ _f64,_lts2 _ZSt4cout ], %b[0]
	  idtofs,3	%r0, %r0
	  addd,4	0x0, %b[0], %r4
	}
	{
	  nop 2
	  subd,3	%r4, %b[92], %r4
	}
	{
	  fdivs,5	%r0, %r3, %r0
	}
	{
	  call	%ctpr1, wbs = 0x51
	}
	{
	  nop 7
	  disp	%ctpr1, _ZNSo9_M_insertIdEERSoT_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	nop
	{
	  fstofd,3	%r0, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x51
	}
	{
	  disp	%ctpr1, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x4, 0x0, %b[2]
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.2 ], %b[1]
	  addd,4	0x0, %b[0], %r0
	}
	{
	  nop 3
	  addd,3,sm	0x0, %r0, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x51
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, %r0, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x51
	}
	{
	  nop 3
	  disp	%ctpr1, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  addd,1	0x0, [ _f64,_lts2 .LC.3 ], %b[1]
	  addd,2,sm	0x1b, 0x0, %b[2]
	  idtofs,3	%r4, %r0
	}
	{
	  fdivs,5	%r0, %r3, %r0
	}
	{
	  call	%ctpr1, wbs = 0x51
	}
	{
	  nop 7
	  disp	%ctpr1, _ZNSo9_M_insertIdEERSoT_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	nop
	{
	  fstofd,3	%r0, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x51
	}
	{
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,4	0x0, %b[0], %r1
	}
	{
	  nop 3
	  addd,0,sm	0x4, 0x0, %b[2]
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.2 ], %b[1]
	  addd,3,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x51
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x51
	}
	{
	  nop 5
	  return	%ctpr3; ipd 2
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L10947:
	{
	  disp	%ctpr1, .L3708; ipd 2
	  ldd,0	0x0, [ _f64,_lts0 C ], %r0
	  addd,1	0x0, [ _f64,_lts2 C +8 ], %r4
	  ldd,2,sm	0x0, [ _f64,_lts2 C +8 ], %r1
	  addd,3,sm	%r3, 0x0, %r5
	  addd,4,sm	%r3, 0x8, %r6
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +16 ], %r7
	  addd,1	0x0, [ _f64,_lts2 C +24 ], %r9
	}
	{
	  cmpedb,0,sm	%r5, %r4, %pred0
	  cmpedb,1,sm	%r6, %r7, %pred1
	  addd,2,sm	%r3, _f16s,_lts0lo 0x10, %r4
	  addd,3	0x0, [ _f64,_lts2 C +32 ], %r5
	  addd,4,sm	%r3, _f16s,_lts0hi 0x18, %r6
	  addd,5,sm	%r3, _f16s,_lts1lo 0x20, %r7
	}
	{
	  cmpedb,0,sm	%r4, %r9, %pred2
	  addd,1	0x0, [ _f64,_lts0 C +40 ], %r4
	  addd,2	0x0, [ _f64,_lts2 C +48 ], %r5
	  cmpedb,3,sm	%r6, %r5, %pred3
	}
	{
	  cmpedb,0,sm	%r7, %r4, %pred0
	  addd,1,sm	%r3, _f16s,_lts0lo 0x28, %r1
	  std,2	%r3, 0x0, %r0
	  merged,3,sm	%r1, %r0, %r0, %pred0
	  addd,4,sm	%r3, _f16s,_lts0hi 0x30, %r4
	  ldd,5,sm	0x0, [ _f64,_lts1 C +16 ], %r6
	}
	{
	  cmpedb,0,sm	%r1, %r5, %pred4
	  addd,1	0x0, [ _f64,_lts2 C +56 ], %r1
	  std,2	%r3, 0x8, %r0
	  ldd,5,sm	0x0, [ _f64,_lts0 C +24 ], %r7
	}
	{
	  cmpedb,0,sm	%r4, %r1, %pred5
	  addd,1	0x0, [ _f64,_lts2 C +64 ], %r1
	  addd,2,sm	%r3, _f16s,_lts0lo 0x38, %r4
	  addd,3,sm	%r3, _f16s,_lts0hi 0x40, %r5
	  addd,4,sm	%r3, _f16s,_lts1lo 0x48, %r9
	  addd,5,sm	%r3, _f16s,_lts1hi 0x50, %r10
	}
	{
	  cmpedb,0,sm	%r4, %r1, %pred1
	  addd,1	0x0, [ _f64,_lts0 C +72 ], %r1
	  addd,2	0x0, [ _f64,_lts2 C +80 ], %r4
	  merged,5,sm	%r6, %r0, %r0, %pred1
	}
	{
	  cmpedb,0,sm	%r5, %r1, %pred2
	  cmpedb,1,sm	%r9, %r4, %pred6
	  std,2	%r3, _f16s,_lts0lo 0x10, %r0
	  merged,3,sm	%r7, %r0, %r0, %pred2
	  addd,4,sm	%r3, _f16s,_lts0hi 0x58, %r1
	  ldd,5,sm	0x0, [ _f64,_lts1 C +32 ], %r6
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0x60, %r5
	  addd,1,sm	%r3, _f16s,_lts0hi 0x68, %r7
	  std,2	%r3, _f16s,_lts1lo 0x18, %r0
	  addd,3,sm	%r3, _f16s,_lts1hi 0x70, %r9
	  ldd,5,sm	0x0, [ _f64,_lts2 C +40 ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +88 ], %r11
	  addd,1	0x0, [ _f64,_lts2 C +96 ], %r12
	}
	{
	  cmpedb,0,sm	%r10, %r11, %pred3
	  cmpedb,1,sm	%r1, %r12, %pred7
	  addd,2	0x0, [ _f64,_lts0 C +104 ], %r1
	  addd,3	0x0, [ _f64,_lts2 C +112 ], %r6
	  merged,5,sm	%r6, %r0, %r0, %pred3
	}
	{
	  cmpedb,0,sm	%r5, %r1, %pred0
	  addd,1,sm	%r3, _f16s,_lts0hi 0x78, %r1
	  std,2	%r3, _f16s,_lts0lo 0x20, %r0
	  merged,3,sm	%r4, %r0, %r0, %pred0
	  cmpedb,4,sm	%r7, %r6, %pred8
	  ldd,5,sm	0x0, [ _f64,_lts1 C +48 ], %r10
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0x80, %r5
	  addd,1,sm	%r3, _f16s,_lts0hi 0x88, %r6
	  std,2	%r3, _f16s,_lts1lo 0x28, %r0
	  addd,3,sm	%r3, _f16s,_lts1hi 0x90, %r7
	  ldd,5,sm	0x0, [ _f64,_lts2 C +56 ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +120 ], %r11
	  addd,1	0x0, [ _f64,_lts2 C +128 ], %r12
	}
	{
	  cmpedb,0,sm	%r9, %r11, %pred4
	  cmpedb,1,sm	%r1, %r12, %pred9
	  addd,2	0x0, [ _f64,_lts0 C +136 ], %r1
	  addd,3	0x0, [ _f64,_lts2 C +144 ], %r9
	  merged,5,sm	%r10, %r0, %r0, %pred4
	}
	{
	  cmpedb,0,sm	%r5, %r1, %pred5
	  addd,1,sm	%r3, _f16s,_lts0hi 0x98, %r1
	  std,2	%r3, _f16s,_lts0lo 0x30, %r0
	  merged,3,sm	%r4, %r0, %r0, %pred5
	  cmpedb,4,sm	%r6, %r9, %pred10
	  ldd,5,sm	0x0, [ _f64,_lts1 C +64 ], %r10
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xa0, %r5
	  addd,1,sm	%r3, _f16s,_lts0hi 0xa8, %r6
	  std,2	%r3, _f16s,_lts1lo 0x38, %r0
	  addd,3,sm	%r3, _f16s,_lts1hi 0xb0, %r9
	  addd,4,sm	%r3, _f16s,_lts1hi 0xb0, %r11
	  ldd,5,sm	0x0, [ _f64,_lts2 C +72 ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +152 ], %r12
	  addd,1	0x0, [ _f64,_lts2 C +160 ], %r13
	}
	{
	  cmpedb,0,sm	%r7, %r12, %pred1
	  cmpedb,1,sm	%r1, %r13, %pred11
	  addd,2	0x0, [ _f64,_lts0 C +168 ], %r1
	  addd,3	0x0, [ _f64,_lts2 C +176 ], %r7
	  merged,5,sm	%r10, %r0, %r0, %pred1
	}
	{
	  cmpedb,0,sm	%r5, %r1, %pred2
	  addd,1,sm	%r3, _f16s,_lts0hi 0xb0, %r1
	  std,2	%r3, _f16s,_lts0lo 0x40, %r0
	  merged,3,sm	%r4, %r0, %r0, %pred2
	  cmpedb,4,sm	%r6, %r7, %pred12
	  ldd,5,sm	0x0, [ _f64,_lts1 C +80 ], %r10
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xb0, %r5
	  addd,1,sm	%r3, _f16s,_lts0lo 0xb0, %r6
	  std,2	%r3, _f16s,_lts0hi 0x48, %r0
	  addd,3,sm	%r3, _f16s,_lts0lo 0xb0, %r7
	  addd,4,sm	%r3, _f16s,_lts0lo 0xb0, %r12
	  ldd,5,sm	0x0, [ _f64,_lts1 C +88 ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +184 ], %r13
	  addd,1,sm	0x0, [ _f64,_lts2 C +192 ], %r14
	  addd,2	0x0, [ _f64,_lts2 C +192 ], %r15
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 C +200 ], %r10
	  addd,1,sm	0x0, [ _f64,_lts2 C +208 ], %r16
	  addd,2,sm	0x0, [ _f64,_lts0 C +200 ], %r17
	  merged,3,sm	%r10, %r0, %r0, %pred6
	  addd,4,sm	0x0, [ _f64,_lts2 C +208 ], %r18
	  addd,5	0x0, [ _f64,_lts0 C +200 ], %r19
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0hi 0xb0, %r4
	  cmpedb,1,sm	%r9, %r13, %pred3
	  std,2	%r3, _f16s,_lts0lo 0x50, %r0
	  merged,3,sm	%r4, %r0, %r0, %pred3
	  cmpedb,4,sm	%r11, %r14, %pred6
	  ldd,5,sm	0x0, [ _f64,_lts1 C +96 ], %r20
	}
	{
	  cmpedb,0,sm	%r1, %r10, %pred13
	  cmpedb,1,sm	%r5, %r16, %pred14
	  std,2	%r3, _f16s,_lts0lo 0x58, %r0
	  addd,3,sm	%r3, _f16s,_lts0hi 0xb8, %r1
	  addd,4,sm	%r3, _f16s,_lts0hi 0xb8, %r5
	  ldd,5,sm	0x0, [ _f64,_lts1 C +104 ], %r9
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 C +216 ], %r10
	  addd,1,sm	0x0, [ _f64,_lts2 C +224 ], %r11
	  addd,2,sm	0x0, [ _f64,_lts0 C +216 ], %r13
	  addd,3,sm	0x0, [ _f64,_lts2 C +224 ], %r14
	  cmpedb,4,sm	%r1, %r15, %pred15
	  addd,5,sm	0x0, [ _f64,_lts0 C +216 ], %r1
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 C +240 ], %r16
	  cmpedb,1,sm	%r6, %r10, %pred7
	  addd,2,sm	0x0, [ _f64,_lts2 C +232 ], %r15
	  addd,3,sm	0x0, [ _f64,_lts2 C +232 ], %r6
	  addd,4,sm	0x0, [ _f64,_lts0 C +240 ], %r10
	  merged,5,sm	%r20, %r0, %r0, %pred7
	}
	{
	  cmpedb,0,sm	%r7, %r11, %pred0
	  cmpedb,1,sm	%r12, %r15, %pred16
	  std,2	%r3, _f16s,_lts0lo 0x60, %r0
	  merged,3,sm	%r9, %r0, %r0, %pred0
	  addd,4,sm	%r3, _f16s,_lts0hi 0xb8, %r7
	  ldd,5,sm	0x0, [ _f64,_lts1 C +112 ], %r20
	}
	{
	  cmpedb,0,sm	%r4, %r16, %pred17
	  addd,1,sm	%r3, _f16s,_lts0lo 0xb8, %r4
	  std,2	%r3, _f16s,_lts0hi 0x68, %r0
	  addd,3,sm	%r3, _f16s,_lts0lo 0xb8, %r11
	  addd,4,sm	%r3, _f16s,_lts0lo 0xb8, %r12
	  ldd,5,sm	0x0, [ _f64,_lts1 C +120 ], %r9
	}
	{
	  cmpedb,0,sm	%r5, %r17, %pred18
	  cmpedb,1,sm	%r7, %r18, %pred19
	  addd,2,sm	%r3, _f16s,_lts0lo 0xb8, %r15
	  cmpedb,3,sm	%r11, %r14, %pred20
	  cmpedb,4,sm	%r12, %r6, %pred21
	  addd,5,sm	%r3, _f16s,_lts0hi 0xc0, %r5
	}
	{
	  cmpedb,0,sm	%r4, %r13, %pred8
	  cmpedb,1,sm	%r15, %r10, %pred22
	  addd,2,sm	0x0, [ _f64,_lts1 C +208 ], %r4
	  addd,3,sm	%r3, _f16s,_lts0lo 0xc0, %r6
	  addd,4,sm	%r3, _f16s,_lts0lo 0xc0, %r7
	  merged,5,sm	%r20, %r0, %r0, %pred8
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xc0, %r9
	  addd,1,sm	%r3, _f16s,_lts0lo 0xc0, %r11
	  std,2	%r3, _f16s,_lts0hi 0x70, %r0
	  merged,3,sm	%r9, %r0, %r0, %pred4
	  addd,4,sm	%r3, _f16s,_lts0lo 0xc0, %r12
	  ldd,5,sm	0x0, [ _f64,_lts1 C +128 ], %r10
	}
	{
	  cmpedb,0,sm	%r5, %r19, %pred4
	  cmpedb,1,sm	%r7, %r1, %pred23
	  std,2	%r3, _f16s,_lts0lo 0x78, %r0
	  cmpedb,3,sm	%r6, %r4, %pred24
	  addd,4,sm	%r3, _f16s,_lts0hi 0xc8, %r1
	  ldd,5,sm	0x0, [ _f64,_lts1 C +136 ], %r13
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 C +224 ], %r4
	  addd,1,sm	0x0, [ _f64,_lts2 C +232 ], %r5
	  addd,2,sm	0x0, [ _f64,_lts0 C +224 ], %r6
	  addd,3,sm	0x0, [ _f64,_lts2 C +232 ], %r7
	  addd,4,sm	0x0, [ _f64,_lts0 C +224 ], %r14
	  addd,5,sm	0x0, [ _f64,_lts2 C +232 ], %r15
	}
	{
	  cmpedb,0,sm	%r9, %r4, %pred9
	  cmpedb,1,sm	%r11, %r5, %pred25
	  addd,2,sm	0x0, [ _f64,_lts0 C +240 ], %r10
	  addd,3	0x0, [ _f64,_lts2 C +208 ], %r4
	  addd,4,sm	0x0, [ _f64,_lts0 C +240 ], %r5
	  merged,5,sm	%r10, %r0, %r0, %pred9
	}
	{
	  cmpedb,0,sm	%r12, %r10, %pred5
	  addd,1,sm	%r3, _f16s,_lts0lo 0xc8, %r10
	  std,2	%r3, _f16s,_lts0hi 0x80, %r0
	  merged,3,sm	%r13, %r0, %r0, %pred5
	  addd,4,sm	%r3, _f16s,_lts0lo 0xc8, %r11
	  ldd,5,sm	0x0, [ _f64,_lts1 C +144 ], %r9
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xc8, %r13
	  addd,1,sm	%r3, _f16s,_lts0lo 0xc8, %r16
	  std,2	%r3, _f16s,_lts0hi 0x88, %r0
	  cmpedb,3,sm	%r1, %r4, %pred26
	  cmpedb,4,sm	%r11, %r6, %pred27
	  ldd,5,sm	0x0, [ _f64,_lts1 C +152 ], %r12
	}
	{
	  cmpedb,0,sm	%r13, %r7, %pred28
	  cmpedb,1,sm	%r16, %r5, %pred29
	  addd,2,sm	0x0, [ _f64,_lts1 C +216 ], %r1
	  addd,3	0x0, [ _f64,_lts1 C +216 ], %r4
	  addd,4,sm	%r3, _f16s,_lts0lo 0xd0, %r5
	  addd,5,sm	%r3, _f16s,_lts0lo 0xd0, %r6
	}
	{
	  cmpedb,0,sm	%r10, %r1, %pred10
	  addd,1,sm	0x0, [ _f64,_lts1 C +240 ], %r7
	  addd,2,sm	%r3, _f16s,_lts0lo 0xd0, %r1
	  addd,3,sm	%r3, _f16s,_lts0lo 0xd0, %r9
	  cmpedb,4,sm	%r5, %r4, %pred30
	  merged,5,sm	%r9, %r0, %r0, %pred10
	}
	{
	  cmpedb,0,sm	%r6, %r14, %pred1
	  cmpedb,1,sm	%r1, %r15, %pred31
	  std,2	%r3, _f16s,_lts0lo 0x90, %r0
	  merged,3,sm	%r12, %r0, %r0, %pred1
	  addd,4,sm	%r3, _f16s,_lts0hi 0xd8, %r1
	  ldd,5,sm	0x0, [ _f64,_lts1 C +160 ], %r4
	}
	{
	  merges,0,sm	0x0, 0x1, %g16, %pred30
	  cmpedb,1,sm	%r9, %r7, %pred30
	  std,2	%r3, _f16s,_lts0lo 0x98, %r0
	  addd,3,sm	%r3, _f16s,_lts0hi 0xd8, %r6
	  addd,4,sm	%r3, _f16s,_lts0hi 0xd8, %r7
	  ldd,5,sm	0x0, [ _f64,_lts1 C +168 ], %r5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +224 ], %r9
	  addd,1,sm	0x0, [ _f64,_lts2 C +232 ], %r10
	  addd,2	0x0, [ _f64,_lts2 C +232 ], %r11
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xe0, %r12
	  addd,1,sm	0x0, [ _f64,_lts1 C +240 ], %r13
	  addd,2,sm	0x0, [ _f64,_lts1 C +240 ], %r4
	  addd,3,sm	%r3, _f16s,_lts0lo 0xe0, %r14
	  addd,4	0x0, [ _f64,_lts1 C +240 ], %r15
	  merged,5,sm	%r4, %r0, %r0, %pred11
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0hi 0xe8, %r5
	  std,2	%r3, _f16s,_lts0lo 0xa0, %r0
	  merged,3,sm	%r5, %r0, %r0, %pred2
	  ldd,5,sm	0x0, [ _f64,_lts1 C +176 ], %r16
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa8, %r0
	  ldd,5,sm	0x0, [ _f64,_lts1 C +184 ], %r17
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +192 ], %r18
	  ldd,2,sm	0x0, [ _f64,_lts2 C +200 ], %r19
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +208 ], %r20
	  ldd,2,sm	0x0, [ _f64,_lts2 C +216 ], %r21
	  merged,5,sm	%r16, %r0, %r0, %pred12
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts2 C +232 ], %r22
	  ldd,2,sm	0x0, [ _f64,_lts0 C +224 ], %r16
	  merged,5,sm	%r17, %r0, %r17, %pred3
	}
	{
	  merged,0,sm	%r18, %r0, %r18, %pred6
	  merged,1,sm	%r19, %r0, %r19, %pred13
	  ldd,2,sm	0x0, [ _f64,_lts1 C +240 ], %r23
	  std,5	%r3, _f16s,_lts0lo 0xb8, %r17
	}
	{
	  merged,0,sm	%r21, %r0, %r21, %pred7
	  merged,1,sm	%r18, %r17, %r18, %pred15
	  merged,2,sm	%r20, %r0, %r20, %pred14
	  std,5	%r3, _f16s,_lts0lo 0xb0, %r0
	}
	{
	  merged,0,sm	%r22, %r0, %r22, %pred16
	  merged,1,sm	%r19, %r17, %r19, %pred18
	  merged,2,sm	%r16, %r0, %r16, %pred0
	  cmpedb,3,sm	%r1, %r9, %pred0
	  cmpedb,4,sm	%r6, %r10, %pred2
	  std,5	%r3, _f16s,_lts0lo 0xc0, %r18
	}
	{
	  merged,0,sm	%r23, %r0, %r0, %pred17
	  merged,1,sm	%r21, %r17, %r6, %pred8
	  merged,2,sm	%r20, %r17, %r1, %pred19
	  cmpedb,3,sm	%r7, %r4, %pred3
	  cmpedb,4,sm	%r12, %r11, %pred6
	}
	{
	  merged,0,sm	%r16, %r17, %r4, %pred20
	  merged,1,sm	%r0, %r17, %r0, %pred22
	  merged,2,sm	%r22, %r17, %r7, %pred21
	  cmpedb,3,sm	%r14, %r13, %pred4
	  cmpedb,4,sm	%r5, %r15, %pred7
	  merged,5,sm	%r19, %r18, %r9, %pred4
	}
	{
	  merged,0,sm	%r1, %r18, %r1, %pred24
	  merged,1,sm	%r6, %r18, %r5, %pred23
	  merged,2,sm	%r4, %r18, %r4, %pred9
	  std,5	%r3, _f16s,_lts0lo 0xc8, %r9
	}
	{
	  merged,0,sm	%r7, %r18, %r6, %pred25
	  merged,1,sm	%r0, %r18, %r0, %pred5
	  merged,2,sm	%r1, %r9, %r1, %pred26
	}
	{
	  merged,0,sm	%r5, %r9, %r5, %pred10
	  merged,1,sm	%r4, %r9, %r4, %pred27
	  merged,2,sm	%r6, %r9, %r6, %pred28
	  std,5	%r3, _f16s,_lts0lo 0xd0, %r1
	}
	{
	  merged,0,sm	%r0, %r9, %r0, %pred29
	  cmpesb,1,sm	0x1, %g16, %pred5
	  merged,2,sm	%r4, %r1, %r4, %pred1
	}
	{
	  merged,0,sm	%r6, %r1, %r6, %pred31
	  merged,1,sm	%r0, %r1, %r0, %pred30
	}
	{
	  merged,0,sm	%r5, %r1, %r1, %pred5
	}
	{
	  merged,0,sm	%r4, %r1, %r4, %pred0
	  merged,1,sm	%r6, %r1, %r5, %pred2
	  merged,2,sm	%r0, %r1, %r0, %pred3
	  std,5	%r3, _f16s,_lts0lo 0xd8, %r1
	}
	{
	  merged,0,sm	%r5, %r4, %r1, %pred6
	  merged,1,sm	%r0, %r4, %r0, %pred4
	  std,2	%r3, _f16s,_lts0lo 0xe0, %r4
	}
	{
	  merged,0,sm	%r0, %r1, %r0, %pred7
	  std,2	%r3, _f16s,_lts0lo 0xe8, %r1
	}
	{
	  nop 3
	  std,2	%r3, _f16s,_lts0lo 0xf0, %r0
	  ldw,5	0x0, [ _f64,_lts1 C +248 ], %r0
	}
	{
	  ct	%ctpr1
	  stw,2	%r3, _f16s,_lts0lo 0xf8, %r0
	}
.L9354:
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L5658; ipd 2
	  rwd,0	_f64,_lts1 0x22ff220000003f, %lsr
	}
	{
	  nop 2
	  ldd,0	%r2, _f16s,_lts0lo 0xffc8, %r1, mas=0x4
	  addd,1	0x0, [ _f64,_lts1 C ], %r0
	  addd,2,sm	0x0, %r4, %b[2]
	  ldd,3	%r2, _f16s,_lts0hi 0xffe0, %r3, mas=0x4
	}
	{
	  nop 2
	  aaurwd,2	%r1, %aasti1
	  aaurwd,5	%r3, %aad0
	}
.L5658:
	{
	  loop_mode
	  ldw,3,sm	%b[2], %r0, %b[1], mas=0x4
	  addd,4,sm	%b[2], 0x4, %b[0]
	  ldw,5	%b[6], %r0, %b[5], mas=0x3 ? %pcnt0
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staaw,5	%b[5], %aad0[ %aasti1 ]
	  incr,5	%aaincr0
	}
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x34, rbs = 0x20, rcur = 0x31
	  disp	%ctpr1, .L3708; ipd 2
	}
	{
	  ldw,0	%r2, _f16s,_lts0lo 0xffd8, %r0, mas=0x4
	  addd,1	0x0, 0x0, %r1
	}
	{
	  nop 1
	  mmurw,2	%r1, %dam_inv
	}
	{
	  aaurw,2	%r0, %aabf0
	}
	{
	  ct	%ctpr1
	}
.L9392:
	{
	  ldisp	%ctpr2, .L11243
	  ldd,0	%r2, _f16s,_lts0lo 0xffe0, %r4, mas=0x4
	  addd,1	0x0, [ _f64,_lts1 C ], %r5
	  addd,2,sm	0x0, 0x0, %r7
	  ldd,3	%r2, _f16s,_lts0hi 0xffc8, %r1, mas=0x4
	  addd,4	0x2, 0x0, %r9
	  addd,5	0x0, [ _f64,_lts1 C ], %r10
	}
	{
	  disp	%ctpr1, .L7867; ipd 2
	  rwd,0	_f64,_lts0 0x4026200000001f, %lsr
	  addd,1,sm	%r5, 0x0, %r6
	  addd,2	0x0, [ _f64,_lts2 C +40 ], %r9
	  ldd,3,sm	%r10, 0x0, %r5
	  aaurwd,5	%r9, %aaincr1
	}
	{
	  addd,1,sm	%r6, _f16s,_lts0lo 0x30, %r6
	  addd,2	0x0, [ _f64,_lts1 C +32 ], %r10
	  addd,3	0x0, _f16s,_lts0hi 0x820, %r0
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +24 ], %r1
	  addd,1	0x0, [ _f64,_lts2 C +16 ], %r4
	  aaurwd,2	%r4, %aad1
	  aaurwd,5	%r1, %aasti1
	}
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x6, rbs = 0x20, rcur = 0x0
	  addd,0	0x0, [ _f64,_lts1 C +8 ], %r11
	}
	{
	  getfd,0,sm	%r5, %r0, %b[3]
	  addd,1,sm	0x0, %r5, %b[12]
	  aaurwq,2	%r6, %aad0
	}
	{
	  bap
	  ldd,0,sm	%r11, 0x0, %b[10]
	  ldd,2,sm	%r4, 0x0, %b[8]
	  ldd,3,sm	%r1, 0x0, %b[6]
	  ldd,5,sm	%r10, 0x0, %b[4]
	}
	{
	  nop 7
	  ldd,0,sm	%r9, 0x0, %b[2]
	}
	{
	  nop 6
	}
.L7867:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staaw,2	%b[12], %aad1[ %aasti1 ]
	  getfd,4,sm	%b[10], %r0, %b[1]
	  staaw,5	%b[3], %aad1[ %aasti1 + _f32s,_lts0 0x4 ]
	  incr,5	%aaincr1
	  movad,1	area=0, ind=0, am=1, be=0, %b[0]
	}
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x34, rbs = 0x20, rcur = 0x31
	  disp	%ctpr1, .L3708; ipd 2
	}
	{
	  adds,0	0x0, 0x0, %r1
	  ldw,2,sm	0x0, [ _f64,_lts0 C +248 ], %r0
	}
	{
	  disp	%ctpr2, disp=0x0; ipd 2
	  aaurw,2	%r1, %aabf0
	}
	{
	  nop 1
	  cmpesb,0	0x0, 0x1, %pred0
	}
	{
	  ct	%ctpr1
	  stw,2	%r3, _f16s,_lts0lo 0xf8, %r0 ? ~%pred0
	}
.L9954:
	{
	  disp	%ctpr2, _Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_; ipd 2
	  ldd,0	0x0, [ _f64,_lts0 B ], %r0
	  adds,1	0x0, 0x0, %r4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +8 ], %r1, mas=0x4
	}
	{
	  stw,2,sm	%r2, _f16s,_lts0lo 0xffc0, %r4
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +16 ], %r4, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +24 ], %r5, mas=0x4
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +32 ], %r6, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +40 ], %r7, mas=0x4
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +8 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, 0x8, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +16 ], %r4, mas=0x3
	}
	{
	  std,2	0x10, %r3, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +24 ], %r5, mas=0x3
	}
	{
	  std,2	0x18, %r3, %r5
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +32 ], %r6, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %r6
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +48 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +56 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +40 ], %r7, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x28, %r7
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +48 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +64 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +72 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +56 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x38, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +64 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x40, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +80 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +88 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +72 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x48, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +80 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x50, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +96 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +104 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +88 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x58, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +96 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x60, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +112 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +120 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +104 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x68, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +112 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x70, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +128 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +136 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +120 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x78, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +128 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x80, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +144 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +152 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +136 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x88, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +144 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x90, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +160 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +168 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +152 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x98, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +160 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa0, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +176 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +184 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +168 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa8, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +176 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xb0, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +192 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +200 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +184 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xb8, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +192 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xc0, %r0
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +200 ], %r4, mas=0x3
	}
	{
	  nop 3
	  std,2	%r3, _f16s,_lts0lo 0xc8, %r4
	  ldd,5	0x0, [ _f64,_lts1 B +208 ], %r0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xd0, %r0
	}
	{
	  call	%ctpr2, wbs = 0x51
	}
	{
	  disp	%ctpr1, .L9417; ipd 2
	  ldw,0	%b[76], [ _f64,_lts0 B ], %r62
	  ldw,2	%b[71], [ _f64,_lts0 B ], %r0
	  ldw,3	%b[72], [ _f64,_lts0 B ], %r63
	  ldw,5	%b[81], [ _f64,_lts0 B ], %r60
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 B ], %r1
	  ldw,2	%b[78], [ _f64,_lts0 B ], %r4
	  ldw,3	%b[77], [ _f64,_lts0 B ], %r61
	  ldw,5	%b[72], [ _f64,_lts2 B +4 ], %r51
	}
	{
	  ldw,0	%b[72], [ _f64,_lts0 B +32 ], %r43
	  ldw,2	0x0, [ _f64,_lts2 B +4 ], %r53
	  ldw,3	%b[76], [ _f64,_lts2 B +4 ], %r38
	  ldw,5	%b[76], [ _f64,_lts0 B +32 ], %r46
	}
	{
	  ldw,0	%b[72], [ _f64,_lts0 B +12 ], %r55
	  ldw,2	%b[72], [ _f64,_lts2 B +8 ], %r56
	  ldw,3	0x0, [ _f64,_lts0 B +12 ], %r57
	  ldw,5	0x0, [ _f64,_lts2 B +8 ], %r58
	}
	{
	  ldw,0	%b[72], [ _f64,_lts1 B +20 ], %r48
	  stw,2,sm	%r2, _f16s,_lts0lo 0xfff0, %r0
	  ldw,5	0x0, [ _f64,_lts1 B +20 ], %r50
	}
	{
	  stw,2,sm	%r2, _f16s,_lts0lo 0xffe8, %r1
	  stw,5,sm	%r2, _f16s,_lts0hi 0xfff8, %r4
	}
	{
	  ldw,0	%b[72], [ _f64,_lts0 B +16 ], %r44
	  ldw,2	0x0, [ _f64,_lts0 B +16 ], %r59
	  ldw,3	%b[72], [ _f64,_lts2 B +28 ], %r52
	  ldw,5	0x0, [ _f64,_lts2 B +28 ], %r54
	}
	{
	  ldw,0	%b[72], [ _f64,_lts0 B +24 ], %r47
	  ldw,2	0x0, [ _f64,_lts0 B +24 ], %r49
	  ldw,3	%b[71], [ _f64,_lts2 B +4 ], %r37
	  ldw,5	%b[76], [ _f64,_lts0 B +24 ], %r28
	}
	{
	  ldw,0	%b[71], [ _f64,_lts0 B +32 ], %r45
	  ldw,2	%b[76], [ _f64,_lts2 B +12 ], %r41
	  ldw,3	%b[71], [ _f64,_lts2 B +12 ], %r39
	  ldw,5	%b[78], [ _f64,_lts0 B +32 ], %r30
	}
	{
	  ldw,0	%b[76], [ _f64,_lts0 B +8 ], %r42
	  ldw,2	%b[71], [ _f64,_lts0 B +8 ], %r40
	  ldw,3	%b[76], [ _f64,_lts2 B +20 ], %r33
	  ldw,5	%b[71], [ _f64,_lts2 B +20 ], %r31
	}
	{
	  ldw,0	%b[76], [ _f64,_lts0 B +16 ], %r34
	  ldw,2	%b[71], [ _f64,_lts0 B +16 ], %r32
	  ldw,3	%b[76], [ _f64,_lts2 B +28 ], %r36
	  ldw,5	%b[71], [ _f64,_lts2 B +28 ], %r35
	}
	{
	  ldw,0	%b[71], [ _f64,_lts0 B +24 ], %r25
	  ldw,2	%b[78], [ _f64,_lts2 B +4 ], %r29
	  ldw,3	%b[77], [ _f64,_lts2 B +4 ], %r26
	  ldw,5	%b[78], [ _f64,_lts0 B +24 ], %r15
	}
	{
	  ldw,0	%b[77], [ _f64,_lts0 B +32 ], %r27
	  ldw,2	%b[78], [ _f64,_lts2 B +12 ], %r21
	  ldw,3	%b[77], [ _f64,_lts2 B +12 ], %r19
	}
	{
	  ldw,0	%b[78], [ _f64,_lts0 B +8 ], %r22
	  ldw,2	%b[77], [ _f64,_lts0 B +8 ], %r20
	  ldw,3	%b[78], [ _f64,_lts2 B +20 ], %r24
	  ldw,5	%b[77], [ _f64,_lts2 B +20 ], %r23
	}
	{
	  ldw,0	%b[78], [ _f64,_lts0 B +16 ], %r14
	  ldw,2	%b[77], [ _f64,_lts0 B +16 ], %r13
	  ldw,3	%b[78], [ _f64,_lts2 B +28 ], %r17
	  ldw,5	%b[77], [ _f64,_lts2 B +28 ], %r18
	}
	{
	  ct	%ctpr1
	  ldw,0	%b[77], [ _f64,_lts0 B +24 ], %r16
	}
.L10083:
	{
	  disp	%ctpr1, .L10080; ipd 2
	  ldd,0	0x0, [ _f64,_lts0 A ], %r0
	  ldd,3,sm	0x0, [ _f64,_lts2 A +8 ], %r1, mas=0x4
	}
	{
	  disp	%ctpr3, _Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 A +16 ], %r4, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +24 ], %r5, mas=0x4
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +32 ], %r6, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +40 ], %r7, mas=0x4
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +48 ], %r9, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +56 ], %r10, mas=0x4
	}
	{
	  cmpledb,0	%b[83], [ _f64,_lts1 B ], %pred1
	  std,2	%r3, 0x0, %r0
	  ldd,5	%r2, _f16s,_lts0lo 0xffe0, %r0, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +8 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, 0x8, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +16 ], %r4, mas=0x3
	  cmpledb,4	%b[82], %r0, %pred2
	}
	{
	  std,2	0x10, %r3, %r4
	  pass	%pred2, @p0
	  pass	%pred1, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +24 ], %r5, mas=0x3
	}
	{
	  std,2	0x18, %r3, %r5
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +32 ], %r6, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %r6
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +40 ], %r7, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x28, %r7
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +48 ], %r9, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %r9
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +64 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +72 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +56 ], %r10, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x38, %r10
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +64 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x40, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +80 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +88 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +72 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x48, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +80 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x50, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +96 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +104 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +88 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x58, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +96 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x60, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +112 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +120 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +104 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x68, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +112 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x70, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +128 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +136 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +120 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x78, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +128 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x80, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +144 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +152 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +136 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x88, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +144 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x90, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +160 ], %r0, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +152 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x98, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +160 ], %r0, mas=0x3
	}
	{
	  ct	%ctpr1
	  std,2	%r3, _f16s,_lts0lo 0xa0, %r0
	}
.L10188:
	{
	  ldw,0	%r2, _f16s,_lts0lo 0xffd8, %r0, mas=0x4
	  stw,2	%b[71], [ _f64,_lts1 B +28 ], %b[74]
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +32 ], %b[73]
	  stw,5	%b[71], [ _f64,_lts2 B +24 ], %b[73]
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +20 ], %b[74]
	  stw,5	%b[71], [ _f64,_lts2 B +16 ], %b[73]
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +12 ], %b[74]
	  stw,5	%b[71], [ _f64,_lts2 B +8 ], %b[73]
	}
	{
	  cmpledb,0	%b[79], [ _f64,_lts0 A ], %pred0
	  stw,2	%b[84], [ _f64,_lts0 A ], %r0
	  stw,5	%b[84], [ _f64,_lts2 A +4 ], %r0
	}
	{
	  stw,2	%b[84], [ _f64,_lts0 A +8 ], %r0
	  stw,5	%b[84], [ _f64,_lts2 A +12 ], %r0
	}
	{
	  stw,2	%b[84], [ _f64,_lts0 A +16 ], %r0
	  stw,5	%b[84], [ _f64,_lts2 A +20 ], %r0
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +4 ], %b[74]
	  stw,5	%b[71], [ _f64,_lts2 B ], %b[73]
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B ], %b[75]
	  stw,5	%b[72], [ _f64,_lts2 B +4 ], %b[73]
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +8 ], %b[75]
	  stw,5	%b[72], [ _f64,_lts2 B +12 ], %b[73]
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +16 ], %b[75]
	  stw,5	%b[72], [ _f64,_lts2 B +20 ], %b[73]
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +24 ], %b[75]
	  stw,5	%b[72], [ _f64,_lts2 B +28 ], %b[73]
	}
	{
	  nop 2
	  stw,2	%b[72], [ _f64,_lts1 B +32 ], %b[75]
	  ldd,5	%r2, _f16s,_lts0lo 0xffe0, %r0, mas=0x4
	}
	{
	  ct	%ctpr1
	  cmpledb,3	%b[80], %r0, %pred1
	}
.L10284:
	{
	  disp	%ctpr3, .L10188; ipd 2
	  cmpledb,0	%b[88], %b[85], %pred1
	  cmpledb,1	%b[86], %b[87], %pred2
	  stw,2	%b[77], [ _f64,_lts0 B +8 ], %b[73]
	  stw,5	%b[77], [ _f64,_lts2 B +12 ], %b[74]
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +16 ], %b[73]
	  stw,5	%b[77], [ _f64,_lts2 B +20 ], %b[74]
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +24 ], %b[73]
	  stw,5	%b[77], [ _f64,_lts2 B +28 ], %b[74]
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +32 ], %b[73]
	  stw,5	%b[77], [ _f64,_lts2 B +4 ], %b[74]
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B ], %b[73]
	  stw,5	%b[76], [ _f64,_lts2 B +20 ], %b[73]
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +24 ], %b[75]
	  stw,5	%b[76], [ _f64,_lts2 B +28 ], %b[73]
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +32 ], %b[75]
	  stw,5	%b[76], [ _f64,_lts2 B +16 ], %b[75]
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +12 ], %b[73]
	  stw,5	%b[76], [ _f64,_lts2 B +8 ], %b[75]
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +4 ], %b[73]
	  stw,5	%b[76], [ _f64,_lts2 B ], %b[75]
	}
	{
	  ldw,0	%r2, _f16s,_lts0lo 0xffd8, %r0, mas=0x4
	  stw,2	%b[90], [ _f64,_lts1 A +20 ], %b[74]
	}
	{
	  nop 2
	  stw,2	%b[90], [ _f64,_lts0 A +12 ], %b[74]
	  stw,5	%b[90], [ _f64,_lts2 A +4 ], %b[74]
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A ], %r0
	  stw,5	%b[90], [ _f64,_lts2 A +8 ], %r0
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A +16 ], %r0
	  stw,5	%b[89], [ _f64,_lts2 A ], %r0
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A +4 ], %r0
	  stw,5	%b[89], [ _f64,_lts2 A +8 ], %r0
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A +12 ], %r0
	  stw,5	%b[89], [ _f64,_lts2 A +16 ], %r0
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A +20 ], %r0
	  stw,5	%b[91], [ _f64,_lts2 A ], %r0
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A +8 ], %r0
	  stw,5	%b[91], [ _f64,_lts2 A +16 ], %r0
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A +4 ], %b[74]
	  stw,5	%b[91], [ _f64,_lts2 A +12 ], %b[74]
	}
	{
	  ct	%ctpr1
	  stw,2	%b[91], [ _f64,_lts0 A +20 ], %b[74]
	}
.L10802:
	{
	  disp	%ctpr1, .L3382; ipd 2
	  ldd,0	0x0, [ _f64,_lts0 C ], %r0
	  addd,1	0x0, [ _f64,_lts2 C +8 ], %r4
	  ldd,2,sm	0x0, [ _f64,_lts2 C +8 ], %r1
	  addd,3,sm	%r3, 0x0, %r5
	  addd,4,sm	%r3, 0x8, %r6
	}
	{
	  disp	%ctpr3, _Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_; ipd 2
	  addd,0	0x0, [ _f64,_lts0 C +16 ], %r7
	  addd,1	0x0, [ _f64,_lts2 C +24 ], %r9
	}
	{
	  cmpedb,0,sm	%r5, %r4, %pred0
	  addd,1,sm	%r3, _f16s,_lts0lo 0x10, %r4
	  addd,2	0x0, [ _f64,_lts2 C +32 ], %r5
	  addd,3,sm	%r3, _f16s,_lts0hi 0x18, %r10
	  addd,4,sm	%r3, _f16s,_lts1lo 0x20, %r11
	  addd,5,sm	%r3, _f16s,_lts1hi 0x28, %r12
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +40 ], %r13
	  addd,1	0x0, [ _f64,_lts2 C +48 ], %r14
	}
	{
	  addd,0	0x0, [ _f64,_lts2 C +56 ], %r1
	  std,2	%r3, 0x0, %r0
	  merged,3,sm	%r1, %r0, %r0, %pred0
	  ldd,5,sm	0x0, [ _f64,_lts0 C +16 ], %r15
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0x30, %r7
	  cmpedb,1,sm	%r6, %r7, %pred0
	  std,2	%r3, 0x8, %r0
	  addd,3,sm	%r3, _f16s,_lts0hi 0x38, %r16
	  addd,4,sm	%r3, _f16s,_lts1lo 0x40, %r17
	  ldd,5,sm	0x0, [ _f64,_lts2 C +24 ], %r6
	}
	{
	  cmpedb,0,sm	%r4, %r9, %pred1
	  addd,1	0x0, [ _f64,_lts0 C +64 ], %r4
	  addd,2	0x0, [ _f64,_lts2 C +72 ], %r9
	}
	{
	  cmpedb,0,sm	%r17, %r9, %pred0
	  addd,1	0x0, [ _f64,_lts2 C +80 ], %r9
	  addd,2,sm	%r3, _f16s,_lts0lo 0x48, %r15
	  addd,3,sm	%r3, _f16s,_lts0hi 0x50, %r17
	  addd,4,sm	%r3, _f16s,_lts1lo 0x58, %r18
	  merged,5,sm	%r15, %r0, %r0, %pred0
	}
	{
	  cmpedb,0,sm	%r15, %r9, %pred1
	  addd,1,sm	%r3, _f16s,_lts0lo 0x60, %r6
	  std,2	%r3, _f16s,_lts0hi 0x10, %r0
	  merged,3,sm	%r6, %r0, %r0, %pred1
	  addd,4,sm	%r3, _f16s,_lts1lo 0x68, %r9
	  ldd,5,sm	0x0, [ _f64,_lts2 C +32 ], %r19
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0x70, %r10
	  cmpedb,1,sm	%r10, %r5, %pred2
	  std,2	%r3, _f16s,_lts0hi 0x18, %r0
	  addd,3,sm	%r3, _f16s,_lts1lo 0x78, %r15
	  addd,4,sm	%r3, _f16s,_lts1hi 0x80, %r20
	  ldd,5,sm	0x0, [ _f64,_lts2 C +40 ], %r5
	}
	{
	  cmpedb,0,sm	%r11, %r13, %pred3
	  addd,1	0x0, [ _f64,_lts0 C +88 ], %r11
	  addd,2	0x0, [ _f64,_lts2 C +96 ], %r13
	}
	{
	  cmpedb,0,sm	%r17, %r11, %pred2
	  cmpedb,1,sm	%r18, %r13, %pred4
	  addd,2	0x0, [ _f64,_lts0 C +104 ], %r11
	  addd,3	0x0, [ _f64,_lts2 C +112 ], %r13
	  merged,5,sm	%r19, %r0, %r0, %pred2
	}
	{
	  cmpedb,0,sm	%r6, %r11, %pred3
	  addd,1,sm	%r3, _f16s,_lts0hi 0x88, %r5
	  std,2	%r3, _f16s,_lts0lo 0x20, %r0
	  merged,3,sm	%r5, %r0, %r0, %pred3
	  cmpedb,4,sm	%r9, %r13, %pred5
	  ldd,5,sm	0x0, [ _f64,_lts1 C +48 ], %r17
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0x90, %r9
	  cmpedb,1,sm	%r12, %r14, %pred6
	  std,2	%r3, _f16s,_lts0hi 0x28, %r0
	  addd,3,sm	%r3, _f16s,_lts1lo 0x98, %r11
	  addd,4,sm	%r3, _f16s,_lts1hi 0xa0, %r12
	  ldd,5,sm	0x0, [ _f64,_lts2 C +56 ], %r6
	}
	{
	  cmpedb,0,sm	%r7, %r1, %pred7
	  addd,1	0x0, [ _f64,_lts0 C +120 ], %r1
	  addd,2	0x0, [ _f64,_lts2 C +128 ], %r7
	}
	{
	  cmpedb,0,sm	%r10, %r1, %pred6
	  cmpedb,1,sm	%r15, %r7, %pred8
	  addd,2	0x0, [ _f64,_lts0 C +136 ], %r1
	  addd,3	0x0, [ _f64,_lts2 C +144 ], %r7
	  merged,5,sm	%r17, %r0, %r0, %pred6
	}
	{
	  cmpedb,0,sm	%r20, %r1, %pred7
	  addd,1,sm	%r3, _f16s,_lts0hi 0xa8, %r1
	  std,2	%r3, _f16s,_lts0lo 0x30, %r0
	  merged,3,sm	%r6, %r0, %r0, %pred7
	  cmpedb,4,sm	%r5, %r7, %pred9
	  ldd,5,sm	0x0, [ _f64,_lts1 C +64 ], %r10
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xb0, %r5
	  cmpedb,1,sm	%r16, %r4, %pred10
	  std,2	%r3, _f16s,_lts0hi 0x38, %r0
	  addd,3,sm	%r3, _f16s,_lts0lo 0xb0, %r6
	  addd,4,sm	%r3, _f16s,_lts0lo 0xb0, %r7
	  ldd,5,sm	0x0, [ _f64,_lts1 C +72 ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +152 ], %r13
	  addd,1	0x0, [ _f64,_lts2 C +160 ], %r14
	}
	{
	  cmpedb,0,sm	%r9, %r13, %pred10
	  cmpedb,1,sm	%r11, %r14, %pred11
	  addd,2	0x0, [ _f64,_lts0 C +168 ], %r9
	  addd,3	0x0, [ _f64,_lts2 C +176 ], %r10
	  merged,5,sm	%r10, %r0, %r0, %pred10
	}
	{
	  cmpedb,0,sm	%r12, %r9, %pred0
	  addd,1,sm	%r3, _f16s,_lts0hi 0xb0, %r1
	  std,2	%r3, _f16s,_lts0lo 0x40, %r0
	  merged,3,sm	%r4, %r0, %r0, %pred0
	  cmpedb,4,sm	%r1, %r10, %pred12
	  ldd,5,sm	0x0, [ _f64,_lts1 C +80 ], %r11
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xb0, %r9
	  addd,1,sm	%r3, _f16s,_lts0lo 0xb0, %r10
	  std,2	%r3, _f16s,_lts0hi 0x48, %r0
	  addd,3,sm	%r3, _f16s,_lts0lo 0xb0, %r12
	  addd,4,sm	%r3, _f16s,_lts0lo 0xb0, %r13
	  ldd,5,sm	0x0, [ _f64,_lts1 C +88 ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +184 ], %r14
	  addd,1,sm	0x0, [ _f64,_lts2 C +192 ], %r15
	  addd,2	0x0, [ _f64,_lts2 C +192 ], %r16
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 C +200 ], %r11
	  cmpedb,1,sm	%r5, %r14, %pred1
	  addd,2,sm	0x0, [ _f64,_lts2 C +208 ], %r17
	  merged,3,sm	%r11, %r0, %r0, %pred1
	  addd,4,sm	0x0, [ _f64,_lts0 C +200 ], %r5
	  addd,5,sm	0x0, [ _f64,_lts2 C +208 ], %r14
	}
	{
	  cmpedb,0,sm	%r6, %r15, %pred2
	  cmpedb,1,sm	%r7, %r11, %pred13
	  std,2	%r3, _f16s,_lts0lo 0x50, %r0
	  merged,3,sm	%r4, %r0, %r0, %pred2
	  addd,4,sm	%r3, _f16s,_lts0hi 0xb8, %r4
	  ldd,5,sm	0x0, [ _f64,_lts1 C +96 ], %r18
	}
	{
	  cmpedb,0,sm	%r1, %r17, %pred14
	  addd,1,sm	%r3, _f16s,_lts0lo 0xb8, %r1
	  std,2	%r3, _f16s,_lts0hi 0x58, %r0
	  addd,3,sm	%r3, _f16s,_lts0lo 0xb8, %r7
	  addd,4,sm	%r3, _f16s,_lts0lo 0xb8, %r11
	  ldd,5,sm	0x0, [ _f64,_lts1 C +104 ], %r6
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 C +216 ], %r15
	  addd,1,sm	0x0, [ _f64,_lts2 C +224 ], %r17
	  addd,2,sm	0x0, [ _f64,_lts0 C +216 ], %r19
	  addd,3,sm	0x0, [ _f64,_lts2 C +224 ], %r20
	  cmpedb,4,sm	%r4, %r16, %pred15
	  addd,5,sm	0x0, [ _f64,_lts0 C +216 ], %r4
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 C +240 ], %r18
	  cmpedb,1,sm	%r9, %r15, %pred4
	  addd,2,sm	0x0, [ _f64,_lts2 C +232 ], %r16
	  addd,3,sm	0x0, [ _f64,_lts2 C +232 ], %r9
	  addd,4,sm	0x0, [ _f64,_lts0 C +240 ], %r15
	  merged,5,sm	%r18, %r0, %r0, %pred4
	}
	{
	  cmpedb,0,sm	%r10, %r17, %pred3
	  cmpedb,1,sm	%r12, %r16, %pred16
	  std,2	%r3, _f16s,_lts0lo 0x60, %r0
	  merged,3,sm	%r6, %r0, %r0, %pred3
	  addd,4,sm	%r3, _f16s,_lts0hi 0xb8, %r6
	  ldd,5,sm	0x0, [ _f64,_lts1 C +112 ], %r21
	}
	{
	  cmpedb,0,sm	%r13, %r18, %pred17
	  addd,1,sm	%r3, _f16s,_lts0lo 0xb8, %r12
	  std,2	%r3, _f16s,_lts0hi 0x68, %r0
	  addd,3,sm	%r3, _f16s,_lts0lo 0xb8, %r13
	  cmpedb,4,sm	%r1, %r5, %pred18
	  ldd,5,sm	0x0, [ _f64,_lts1 C +120 ], %r10
	}
	{
	  cmpedb,0,sm	%r7, %r14, %pred19
	  cmpedb,1,sm	%r11, %r19, %pred20
	  addd,2	0x0, [ _f64,_lts1 C +200 ], %r1
	  cmpedb,3,sm	%r6, %r20, %pred21
	  cmpedb,4,sm	%r13, %r15, %pred22
	  addd,5,sm	%r3, _f16s,_lts0lo 0xc0, %r5
	}
	{
	  cmpedb,0,sm	%r12, %r9, %pred5
	  addd,1,sm	0x0, [ _f64,_lts1 C +208 ], %r6
	  addd,2,sm	%r3, _f16s,_lts0lo 0xc0, %r7
	  addd,3,sm	%r3, _f16s,_lts0lo 0xc0, %r9
	  addd,4,sm	%r3, _f16s,_lts0lo 0xc0, %r11
	  merged,5,sm	%r21, %r0, %r0, %pred5
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xc0, %r10
	  addd,1,sm	%r3, _f16s,_lts0lo 0xc0, %r13
	  std,2	%r3, _f16s,_lts0hi 0x70, %r0
	  merged,3,sm	%r10, %r0, %r0, %pred6
	  cmpedb,4,sm	%r5, %r1, %pred6
	  ldd,5,sm	0x0, [ _f64,_lts1 C +128 ], %r12
	}
	{
	  cmpedb,0,sm	%r7, %r6, %pred23
	  cmpedb,1,sm	%r9, %r4, %pred24
	  std,2	%r3, _f16s,_lts0lo 0x78, %r0
	  addd,3,sm	%r3, _f16s,_lts0hi 0xc8, %r4
	  addd,4,sm	%r3, _f16s,_lts0hi 0xc8, %r5
	  ldd,5,sm	0x0, [ _f64,_lts1 C +136 ], %r1
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 C +224 ], %r6
	  addd,1,sm	0x0, [ _f64,_lts2 C +232 ], %r7
	  addd,2,sm	0x0, [ _f64,_lts0 C +224 ], %r9
	  addd,3,sm	0x0, [ _f64,_lts2 C +232 ], %r14
	  addd,4,sm	0x0, [ _f64,_lts0 C +224 ], %r15
	  addd,5,sm	0x0, [ _f64,_lts2 C +232 ], %r16
	}
	{
	  cmpedb,0,sm	%r11, %r6, %pred8
	  cmpedb,1,sm	%r10, %r7, %pred25
	  addd,2,sm	0x0, [ _f64,_lts0 C +240 ], %r12
	  addd,3	0x0, [ _f64,_lts2 C +208 ], %r6
	  addd,4,sm	0x0, [ _f64,_lts0 C +240 ], %r7
	  merged,5,sm	%r12, %r0, %r0, %pred8
	}
	{
	  cmpedb,0,sm	%r13, %r12, %pred7
	  addd,1,sm	%r3, _f16s,_lts0lo 0xc8, %r1
	  std,2	%r3, _f16s,_lts0hi 0x80, %r0
	  merged,3,sm	%r1, %r0, %r0, %pred7
	  addd,4,sm	%r3, _f16s,_lts0lo 0xc8, %r11
	  ldd,5,sm	0x0, [ _f64,_lts1 C +144 ], %r10
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xc8, %r13
	  cmpedb,1,sm	%r4, %r6, %pred26
	  std,2	%r3, _f16s,_lts0hi 0x88, %r0
	  cmpedb,3,sm	%r11, %r14, %pred27
	  addd,4,sm	%r3, _f16s,_lts1lo 0xd0, %r4
	  ldd,5,sm	0x0, [ _f64,_lts2 C +152 ], %r12
	}
	{
	  cmpedb,0,sm	%r1, %r9, %pred28
	  cmpedb,1,sm	%r13, %r7, %pred29
	  addd,2,sm	0x0, [ _f64,_lts1 C +216 ], %r6
	  addd,3	0x0, [ _f64,_lts1 C +216 ], %r1
	  addd,4,sm	%r3, _f16s,_lts0lo 0xd0, %r7
	  addd,5,sm	%r3, _f16s,_lts0lo 0xd0, %r9
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xd0, %r11
	  addd,1,sm	%r3, _f16s,_lts0hi 0xd8, %r1
	  addd,2,sm	0x0, [ _f64,_lts1 C +240 ], %r10
	  cmpedb,3,sm	%r4, %r1, %pred9
	  cmpedb,4,sm	%r7, %r15, %pred30
	  merged,5,sm	%r10, %r0, %r0, %pred9
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xd8, %r7
	  addd,1,sm	%r3, _f16s,_lts0lo 0xd8, %r12
	  std,2	%r3, _f16s,_lts0hi 0x90, %r0
	  merged,3,sm	%r12, %r0, %r0, %pred10
	  addd,4,sm	%r3, _f16s,_lts1lo 0xe0, %r13
	  ldd,5,sm	0x0, [ _f64,_lts2 C +160 ], %r4
	}
	{
	  addd,0,sm	%r3, _f16s,_lts0lo 0xe0, %r15
	  addd,1,sm	%r3, _f16s,_lts1lo 0xe8, %r17
	  std,2	%r3, _f16s,_lts0hi 0x98, %r0
	  ldd,5,sm	0x0, [ _f64,_lts2 C +168 ], %r14
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +224 ], %r18
	  addd,1,sm	0x0, [ _f64,_lts2 C +232 ], %r19
	  addd,2	0x0, [ _f64,_lts2 C +232 ], %r20
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 C +240 ], %r21
	  addd,1	0x0, [ _f64,_lts0 C +240 ], %r22
	  addd,2,sm	0x0, [ _f64,_lts0 C +240 ], %r4
	  merged,5,sm	%r4, %r0, %r0, %pred11
	}
	{
	  cmpedb,0,sm	%r5, %r6, %pred0
	  cmpedb,1,sm	%r9, %r16, %pred10
	  std,2	%r3, _f16s,_lts0lo 0xa0, %r0
	  merged,3,sm	%r14, %r0, %r0, %pred0
	  cmpedb,4,sm	%r11, %r10, %pred11
	  ldd,5,sm	0x0, [ _f64,_lts1 C +176 ], %r23
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa8, %r0
	  ldd,5,sm	0x0, [ _f64,_lts1 C +184 ], %r5
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +192 ], %r6
	  ldd,2,sm	0x0, [ _f64,_lts2 C +200 ], %r9
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 C +208 ], %r10
	  ldd,2,sm	0x0, [ _f64,_lts2 C +216 ], %r11
	  merged,5,sm	%r23, %r0, %r0, %pred12
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts2 C +232 ], %r16
	  ldd,2,sm	0x0, [ _f64,_lts0 C +224 ], %r14
	  merged,5,sm	%r5, %r0, %r5, %pred1
	}
	{
	  merged,0,sm	%r6, %r0, %r6, %pred2
	  merged,1,sm	%r9, %r0, %r9, %pred13
	  ldd,2,sm	0x0, [ _f64,_lts1 C +240 ], %r23
	  std,5	%r3, _f16s,_lts0lo 0xb8, %r5
	}
	{
	  merged,0,sm	%r11, %r0, %r11, %pred4
	  merged,1,sm	%r6, %r5, %r6, %pred15
	  merged,2,sm	%r10, %r0, %r10, %pred14
	  std,5	%r3, _f16s,_lts0lo 0xb0, %r0
	}
	{
	  merged,0,sm	%r16, %r0, %r16, %pred16
	  merged,1,sm	%r9, %r5, %r9, %pred18
	  merged,2,sm	%r14, %r0, %r14, %pred3
	  cmpedb,3,sm	%r1, %r18, %pred1
	  cmpedb,4,sm	%r7, %r19, %pred2
	  std,5	%r3, _f16s,_lts0lo 0xc0, %r6
	}
	{
	  merged,0,sm	%r23, %r0, %r0, %pred17
	  merged,1,sm	%r11, %r5, %r7, %pred20
	  merged,2,sm	%r10, %r5, %r1, %pred19
	  cmpedb,3,sm	%r12, %r4, %pred3
	  cmpedb,4,sm	%r13, %r20, %pred4
	}
	{
	  merged,0,sm	%r14, %r5, %r4, %pred21
	  merged,1,sm	%r0, %r5, %r0, %pred22
	  merged,2,sm	%r16, %r5, %r10, %pred5
	  cmpedb,3,sm	%r15, %r21, %pred5
	  cmpedb,4,sm	%r17, %r22, %pred6
	  merged,5,sm	%r9, %r6, %r5, %pred6
	}
	{
	  merged,0,sm	%r1, %r6, %r1, %pred23
	  merged,1,sm	%r7, %r6, %r7, %pred24
	  merged,2,sm	%r4, %r6, %r4, %pred8
	  std,5	%r3, _f16s,_lts0lo 0xc8, %r5
	}
	{
	  merged,0,sm	%r10, %r6, %r9, %pred25
	  merged,1,sm	%r0, %r6, %r0, %pred7
	  merged,2,sm	%r1, %r5, %r1, %pred26
	}
	{
	  merged,0,sm	%r7, %r5, %r6, %pred0
	  merged,1,sm	%r4, %r5, %r4, %pred28
	  merged,2,sm	%r9, %r5, %r7, %pred27
	  std,5	%r3, _f16s,_lts0lo 0xd0, %r1
	}
	{
	  merged,0,sm	%r0, %r5, %r0, %pred29
	  merged,1,sm	%r6, %r1, %r5, %pred9
	  merged,2,sm	%r4, %r1, %r4, %pred30
	}
	{
	  merged,0,sm	%r7, %r1, %r6, %pred10
	  merged,1,sm	%r0, %r1, %r0, %pred11
	  merged,2,sm	%r4, %r5, %r1, %pred1
	  std,5	%r3, _f16s,_lts0lo 0xd8, %r5
	}
	{
	  merged,0,sm	%r6, %r5, %r4, %pred2
	  merged,1,sm	%r0, %r5, %r0, %pred3
	  std,2	%r3, _f16s,_lts0lo 0xe0, %r1
	}
	{
	  merged,0,sm	%r4, %r1, %r4, %pred4
	  merged,1,sm	%r0, %r1, %r0, %pred5
	}
	{
	  merged,0,sm	%r0, %r4, %r0, %pred6
	  std,2	%r3, _f16s,_lts0lo 0xe8, %r4
	}
	{
	  nop 3
	  std,2	%r3, _f16s,_lts0lo 0xf0, %r0
	  ldw,5	0x0, [ _f64,_lts1 C +248 ], %r0
	}
	{
	  ct	%ctpr1
	  stw,2	%r3, _f16s,_lts0lo 0xf8, %r0
	}
.L9373:
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L6277; ipd 2
	  rwd,0	_f64,_lts1 0x22ff220000003f, %lsr
	}
	{
	  nop 2
	  ldd,0	%r2, _f16s,_lts0lo 0xffc8, %r1, mas=0x4
	  addd,1	0x0, [ _f64,_lts1 C ], %r0
	  addd,2,sm	0x0, %r34, %b[2]
	  ldd,3	%r2, _f16s,_lts0hi 0xffe0, %r4, mas=0x4
	}
	{
	  nop 2
	  aaurwd,2	%r1, %aasti1
	  aaurwd,5	%r4, %aad0
	}
.L6277:
	{
	  loop_mode
	  ldw,3,sm	%b[2], %r0, %b[1], mas=0x4
	  addd,4,sm	%b[2], 0x4, %b[0]
	  ldw,5	%b[6], %r0, %b[5], mas=0x3 ? %pcnt0
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staaw,5	%b[5], %aad0[ %aasti1 ]
	  incr,5	%aaincr0
	}
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x34, rbs = 0x20, rcur = 0x31
	  disp	%ctpr1, .L3382; ipd 2
	}
	{
	  disp	%ctpr3, _Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_; ipd 2
	  ldw,0	%r2, _f16s,_lts0lo 0xffd8, %r0, mas=0x4
	  addd,1	0x0, 0x0, %r1
	}
	{
	  nop 1
	  mmurw,2	%r1, %dam_inv
	}
	{
	  aaurw,2	%r0, %aabf0
	}
	{
	  ct	%ctpr1
	}
.L9623:
	{
	  ldisp	%ctpr2, .L11264
	  ldd,0	%r2, _f16s,_lts0lo 0xffe0, %r4, mas=0x4
	  addd,1	0x0, [ _f64,_lts1 C ], %r5
	  addd,2,sm	0x0, 0x0, %r7
	  ldd,3	%r2, _f16s,_lts0hi 0xffc8, %r1, mas=0x4
	  addd,4	0x2, 0x0, %r9
	  addd,5	0x0, [ _f64,_lts1 C ], %r10
	}
	{
	  disp	%ctpr1, .L8101; ipd 2
	  rwd,0	_f64,_lts0 0x4026200000001f, %lsr
	  addd,1,sm	%r5, 0x0, %r6
	  addd,2	0x0, [ _f64,_lts2 C +40 ], %r9
	  ldd,3,sm	%r10, 0x0, %r5
	  aaurwd,5	%r9, %aaincr1
	}
	{
	  addd,1,sm	%r6, _f16s,_lts0lo 0x30, %r6
	  addd,2	0x0, [ _f64,_lts1 C +32 ], %r10
	  addd,3	0x0, _f16s,_lts0hi 0x820, %r0
	}
	{
	  addd,0	0x0, [ _f64,_lts0 C +24 ], %r1
	  addd,1	0x0, [ _f64,_lts2 C +16 ], %r4
	  aaurwd,2	%r4, %aad1
	  aaurwd,5	%r1, %aasti1
	}
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x6, rbs = 0x20, rcur = 0x0
	  addd,0	0x0, [ _f64,_lts1 C +8 ], %r11
	}
	{
	  getfd,0,sm	%r5, %r0, %b[3]
	  addd,1,sm	0x0, %r5, %b[12]
	  aaurwq,2	%r6, %aad0
	}
	{
	  bap
	  ldd,0,sm	%r11, 0x0, %b[10]
	  ldd,2,sm	%r4, 0x0, %b[8]
	  ldd,3,sm	%r1, 0x0, %b[6]
	  ldd,5,sm	%r10, 0x0, %b[4]
	}
	{
	  nop 7
	  ldd,0,sm	%r9, 0x0, %b[2]
	}
	{
	  nop 6
	}
.L8101:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staaw,2	%b[12], %aad1[ %aasti1 ]
	  getfd,4,sm	%b[10], %r0, %b[1]
	  staaw,5	%b[3], %aad1[ %aasti1 + _f32s,_lts0 0x4 ]
	  incr,5	%aaincr1
	  movad,1	area=0, ind=0, am=1, be=0, %b[0]
	}
	{
	  setwd	wsz = 0x55, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x34, rbs = 0x20, rcur = 0x31
	  disp	%ctpr1, .L3382; ipd 2
	}
	{
	  disp	%ctpr3, _Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_; ipd 2
	  adds,0	0x0, 0x0, %r1
	  ldw,2,sm	0x0, [ _f64,_lts0 C +248 ], %r0
	}
	{
	  disp	%ctpr2, disp=0x0; ipd 2
	  aaurw,2	%r1, %aabf0
	}
	{
	  nop 1
	  cmpesb,0	0x0, 0x1, %pred0
	}
	{
	  ct	%ctpr1
	  stw,2	%r3, _f16s,_lts0lo 0xf8, %r0 ? ~%pred0
	}
.L10377:
	{
	  disp	%ctpr2, _Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_; ipd 2
	  ldd,0	0x0, [ _f64,_lts0 B ], %r0
	  addd,1	0x1f, 0x1, %b[81]
	  adds,2	0x0, 0x0, %r4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +8 ], %r1, mas=0x4
	}
	{
	  stw,2,sm	%r2, _f16s,_lts0lo 0xffc0, %r4
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +16 ], %r4, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +24 ], %r5, mas=0x4
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +32 ], %r6, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +40 ], %r7, mas=0x4
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +8 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, 0x8, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +16 ], %r4, mas=0x3
	}
	{
	  std,2	0x10, %r3, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +24 ], %r5, mas=0x3
	}
	{
	  std,2	0x18, %r3, %r5
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +32 ], %r6, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %r6
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +48 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +56 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +40 ], %r7, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x28, %r7
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +48 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +64 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +72 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +56 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x38, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +64 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x40, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +80 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +88 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +72 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x48, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +80 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x50, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +96 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +104 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +88 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x58, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +96 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x60, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +112 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +120 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +104 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x68, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +112 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x70, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +128 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +136 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +120 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x78, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +128 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x80, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +144 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +152 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +136 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x88, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +144 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x90, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +160 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +168 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +152 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x98, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +160 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa0, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +176 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +184 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +168 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xa8, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +176 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xb0, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 B +192 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 B +200 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +184 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xb8, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +192 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xc0, %r0
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 B +200 ], %r4, mas=0x3
	}
	{
	  nop 3
	  std,2	%r3, _f16s,_lts0lo 0xc8, %r4
	  ldd,5	0x0, [ _f64,_lts1 B +208 ], %r0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0xd0, %r0
	}
	{
	  call	%ctpr2, wbs = 0x51
	}
	{
	  disp	%ctpr1, .L9648; ipd 2
	  ldw,0	%b[71], [ _f64,_lts0 B ], %r0
	  ldw,2	%b[72], [ _f64,_lts0 B ], %r63
	  ldw,3	0x0, [ _f64,_lts0 B ], %r1
	  ldw,5	%b[78], [ _f64,_lts0 B ], %r4
	}
	{
	  ldw,0	%b[77], [ _f64,_lts0 B ], %r61
	  ldw,2	%b[76], [ _f64,_lts0 B ], %r62
	  ldw,3	%b[72], [ _f64,_lts2 B +8 ], %r56
	  ldw,5	0x0, [ _f64,_lts2 B +8 ], %r58
	}
	{
	  ldw,0	%b[72], [ _f64,_lts0 B +4 ], %r51
	  ldw,2	0x0, [ _f64,_lts0 B +4 ], %r53
	  ldw,3	%b[72], [ _f64,_lts2 B +16 ], %r60
	  ldw,5	0x0, [ _f64,_lts2 B +16 ], %r59
	}
	{
	  ldw,0	%b[72], [ _f64,_lts0 B +12 ], %r55
	  ldw,2	0x0, [ _f64,_lts0 B +12 ], %r57
	  ldw,3	%b[72], [ _f64,_lts2 B +24 ], %r48
	  ldw,5	0x0, [ _f64,_lts2 B +24 ], %r49
	}
	{
	  stw,2,sm	%r2, _f16s,_lts0lo 0xfff0, %r0
	  stw,5,sm	%r2, _f16s,_lts0hi 0xffe8, %r1
	}
	{
	  ldw,0	%b[72], [ _f64,_lts1 B +20 ], %r44
	  stw,2,sm	%r2, _f16s,_lts0lo 0xfff8, %r4
	  ldw,5	0x0, [ _f64,_lts1 B +20 ], %r43
	}
	{
	  ldw,0	%b[72], [ _f64,_lts0 B +32 ], %r52
	  ldw,2	%b[72], [ _f64,_lts2 B +28 ], %r47
	  ldw,3	0x0, [ _f64,_lts0 B +32 ], %r54
	  ldw,5	0x0, [ _f64,_lts2 B +28 ], %r50
	}
	{
	  ldw,0	%b[76], [ _f64,_lts0 B +8 ], %r46
	  ldw,2	%b[76], [ _f64,_lts2 B +4 ], %r38
	  ldw,3	%b[71], [ _f64,_lts0 B +8 ], %r45
	  ldw,5	%b[71], [ _f64,_lts2 B +4 ], %r37
	}
	{
	  ldw,0	%b[76], [ _f64,_lts0 B +16 ], %r41
	  ldw,2	%b[76], [ _f64,_lts2 B +12 ], %r42
	  ldw,3	%b[71], [ _f64,_lts0 B +16 ], %r39
	  ldw,5	%b[71], [ _f64,_lts2 B +12 ], %r40
	}
	{
	  ldw,0	%b[76], [ _f64,_lts0 B +24 ], %r33
	  ldw,2	%b[76], [ _f64,_lts2 B +20 ], %r34
	  ldw,3	%b[71], [ _f64,_lts0 B +24 ], %r31
	  ldw,5	%b[71], [ _f64,_lts2 B +20 ], %r32
	}
	{
	  ldw,0	%b[76], [ _f64,_lts0 B +32 ], %r36
	  ldw,2	%b[76], [ _f64,_lts2 B +28 ], %r28
	  ldw,3	%b[71], [ _f64,_lts0 B +32 ], %r35
	  ldw,5	%b[71], [ _f64,_lts2 B +28 ], %r25
	}
	{
	  ldw,0	%b[78], [ _f64,_lts0 B +8 ], %r29
	  ldw,2	%b[78], [ _f64,_lts2 B +4 ], %r30
	  ldw,3	%b[77], [ _f64,_lts0 B +8 ], %r26
	  ldw,5	%b[77], [ _f64,_lts2 B +4 ], %r27
	}
	{
	  ldw,0	%b[78], [ _f64,_lts0 B +16 ], %r21
	  ldw,2	%b[78], [ _f64,_lts2 B +12 ], %r22
	  ldw,3	%b[77], [ _f64,_lts0 B +16 ], %r19
	  ldw,5	%b[77], [ _f64,_lts2 B +12 ], %r20
	}
	{
	  ldw,0	%b[78], [ _f64,_lts0 B +24 ], %r24
	  ldw,2	%b[78], [ _f64,_lts2 B +20 ], %r14
	  ldw,3	%b[77], [ _f64,_lts0 B +24 ], %r23
	  ldw,5	%b[77], [ _f64,_lts2 B +20 ], %r13
	}
	{
	  ct	%ctpr1
	  ldw,0	%b[78], [ _f64,_lts0 B +32 ], %r17
	  ldw,2	%b[78], [ _f64,_lts2 B +28 ], %r15
	  ldw,3	%b[77], [ _f64,_lts0 B +32 ], %r18
	  ldw,5	%b[77], [ _f64,_lts2 B +28 ], %r16
	}
.L10506:
	{
	  disp	%ctpr1, .L10503; ipd 2
	  ldd,0	0x0, [ _f64,_lts0 A ], %r0
	  ldd,3,sm	0x0, [ _f64,_lts2 A +8 ], %r1, mas=0x4
	}
	{
	  disp	%ctpr3, _Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_; ipd 2
	  ldd,0,sm	0x0, [ _f64,_lts0 A +16 ], %r4, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +24 ], %r5, mas=0x4
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +32 ], %r6, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +40 ], %r7, mas=0x4
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +48 ], %r9, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +56 ], %r10, mas=0x4
	}
	{
	  addd,0	0x0, [ _f64,_lts1 B +216 ], %b[82]
	  std,2	%r3, 0x0, %r0
	  ldd,5	%r2, _f16s,_lts0lo 0xffe0, %r0, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +8 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, 0x8, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts1 A +16 ], %r4, mas=0x3
	  addd,3	%r0, _f16s,_lts0lo 0xd8, %b[83]
	  cmpledb,4	%b[82], %r0, %pred1
	}
	{
	  std,2	0x10, %r3, %r4
	  cmpledb,3	%b[83], [ _f64,_lts0 B ], %pred2
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +24 ], %r5, mas=0x3
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  std,2	0x18, %r3, %r5
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +32 ], %r6, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %r6
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +40 ], %r7, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x28, %r7
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +48 ], %r9, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %r9
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +64 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +72 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +56 ], %r10, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x38, %r10
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +64 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x40, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +80 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +88 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +72 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x48, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +80 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x50, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +96 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +104 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +88 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x58, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +96 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x60, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +112 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +120 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +104 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x68, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +112 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x70, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +128 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +136 ], %r1, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +120 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x78, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +128 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x80, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +144 ], %r0, mas=0x4
	  ldd,3,sm	0x0, [ _f64,_lts2 A +152 ], %r4, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +136 ], %r1, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x88, %r1
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +144 ], %r0, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x90, %r0
	}
	{
	  ldd,0,sm	0x0, [ _f64,_lts0 A +160 ], %r0, mas=0x4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +152 ], %r4, mas=0x3
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x98, %r4
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 A +160 ], %r0, mas=0x3
	}
	{
	  ct	%ctpr1
	  std,2	%r3, _f16s,_lts0lo 0xa0, %r0
	}
.L10611:
	{
	  disp	%ctpr1, .L3192; ipd 2
	  smulx,0	0x18, 0x6, %b[84]
	  addd,1	0x0, [ _f64,_lts1 A +168 ], %b[80]
	  ldd,3	%r2, _f16s,_lts0lo 0xffe0, %r0, mas=0x4
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +12 ], %b[74]
	  stw,5	%b[71], [ _f64,_lts2 B +16 ], %b[73]
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +20 ], %b[74]
	  stw,5	%b[71], [ _f64,_lts2 B +24 ], %b[73]
	}
	{
	  stw,2	%b[71], [ _f64,_lts1 B +28 ], %b[74]
	  addd,3	%r0, _f16s,_lts0lo 0xa8, %b[79]
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +32 ], %b[73]
	  stw,5	%b[71], [ _f64,_lts2 B +8 ], %b[73]
	}
	{
	  stw,2	%b[71], [ _f64,_lts0 B +4 ], %b[74]
	  stw,5	%b[71], [ _f64,_lts2 B ], %b[73]
	}
	{
	  cmpledb,0	%b[80], %r0, %pred0
	  cmpledb,1	%b[79], [ _f64,_lts1 A ], %pred1
	  ldw,3	%r2, _f16s,_lts0lo 0xffd8, %r0, mas=0x4
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +4 ], %b[73]
	  stw,5	%b[72], [ _f64,_lts2 B +8 ], %b[75]
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +12 ], %b[73]
	  stw,5	%b[72], [ _f64,_lts2 B +16 ], %b[75]
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +20 ], %b[73]
	  stw,5	%b[72], [ _f64,_lts2 B +24 ], %b[75]
	}
	{
	  stw,2	%b[84], [ _f64,_lts0 A ], %r0
	  stw,5	%b[84], [ _f64,_lts2 A +4 ], %r0
	}
	{
	  stw,2	%b[84], [ _f64,_lts0 A +8 ], %r0
	  stw,5	%b[84], [ _f64,_lts2 A +12 ], %r0
	}
	{
	  stw,2	%b[84], [ _f64,_lts0 A +16 ], %r0
	  stw,5	%b[84], [ _f64,_lts2 A +20 ], %r0
	}
	{
	  stw,2	%b[72], [ _f64,_lts0 B +28 ], %b[73]
	  stw,5	%b[72], [ _f64,_lts2 B +32 ], %b[75]
	}
	{
	  ct	%ctpr1
	  stw,2	%b[72], [ _f64,_lts0 B ], %b[75]
	}
.L10709:
	{
	  smulx,0	0x4, _f16s,_lts0lo 0x24, %b[71]
	  smulx,1	0x5, _f16s,_lts0lo 0x24, %b[72]
	  stw,2	%b[77], [ _f64,_lts1 B +16 ], %b[73]
	  smulx,3,sm	0x18, 0x6, %r0
	  ldw,5	%r2, _f16s,_lts0hi 0xffd8, %r1, mas=0x4
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +20 ], %b[74]
	  stw,5	%b[77], [ _f64,_lts2 B +24 ], %b[73]
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +28 ], %b[74]
	  stw,5	%b[77], [ _f64,_lts2 B +32 ], %b[73]
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B +12 ], %b[74]
	  stw,5	%b[77], [ _f64,_lts2 B +8 ], %b[73]
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A +16 ], %r1
	  stw,5	%b[77], [ _f64,_lts2 B +4 ], %b[74]
	}
	{
	  stw,2	%b[77], [ _f64,_lts0 B ], %b[73]
	  stw,5	%b[76], [ _f64,_lts2 B +24 ], %b[75]
	}
	{
	  addd,0	%b[71], [ _f64,_lts0 B ], %b[87]
	  addd,1	%b[72], [ _f64,_lts2 B +36 ], %b[86]
	  stw,2	%b[76], [ _f64,_lts0 B ], %b[75]
	  addd,3	%b[71], [ _f64,_lts2 B +36 ], %b[88]
	  addd,4	%b[72], [ _f64,_lts0 B ], %b[85]
	}
	{
	  cmpledb,0	%b[86], %b[87], %pred1
	  stw,2	%b[76], [ _f64,_lts0 B +28 ], %b[73]
	  cmpledb,3	%b[88], %b[85], %pred2
	  stw,5	%b[76], [ _f64,_lts2 B +32 ], %b[75]
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +20 ], %b[73]
	  stw,5	%b[76], [ _f64,_lts2 B +16 ], %b[75]
	  pass	%pred2, @p0
	  pass	%pred1, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +12 ], %b[73]
	  stw,5	%b[76], [ _f64,_lts2 B +8 ], %b[75]
	}
	{
	  stw,2	%b[76], [ _f64,_lts0 B +4 ], %b[73]
	  stw,5	%b[90], [ _f64,_lts2 A +20 ], %b[74]
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A +12 ], %b[74]
	  stw,5	%b[90], [ _f64,_lts2 A +8 ], %r1
	}
	{
	  stw,2	%b[90], [ _f64,_lts0 A +4 ], %b[74]
	  stw,5	%b[90], [ _f64,_lts2 A ], %r1
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A ], %r1
	  stw,5	%b[89], [ _f64,_lts2 A +4 ], %r1
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A +8 ], %r1
	  stw,5	%b[89], [ _f64,_lts2 A +12 ], %r1
	}
	{
	  stw,2	%b[89], [ _f64,_lts0 A +16 ], %r1
	  stw,5	%b[89], [ _f64,_lts2 A +20 ], %r1
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A ], %r1
	  stw,5	%b[91], [ _f64,_lts2 A +8 ], %r1
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A +16 ], %r1
	  stw,5	%b[91], [ _f64,_lts2 A +4 ], %b[74]
	}
	{
	  stw,2	%b[91], [ _f64,_lts0 A +12 ], %b[74]
	  stw,5	%b[91], [ _f64,_lts2 A +20 ], %b[74]
	}
	{
	  nop 2
	  ldd,0	%r2, _f16s,_lts0lo 0xffe0, %r1, mas=0x4
	  addd,1,sm	0x0, [ _f64,_lts1 A +168 ], %b[80]
	}
	{
	  ct	%ctpr3
	  addd,0,sm	%r1, _f16s,_lts0lo 0xa8, %b[79]
	}
	.section .text.async_prefetch_code, "ax", @progbits

	.align	4096
.L11243:
	{
	  fapb	ct=1, dcd=0, fmt=4, mrng=8, d=0, incr=0, ind=0, asz=5, abs=0, disp=0
	}
.L11264:
	{
	  fapb	ct=1, dcd=0, fmt=4, mrng=8, d=0, incr=0, ind=0, asz=5, abs=0, disp=0
	}
.previous

.LCS.2:
	.cfi_endproc
	.size	main, .- main
	.section .text._Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_, "axG", @progbits, _Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_, comdat
	.weak	_Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_
	.type	_Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_, #function
	.align	8
_Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_:
	.cfi_startproc
	{
	  setwd	wsz = 0x9, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x5, rcur = 0x0
	  disp	%ctpr2, strlen; ipd 2
	  getsp,0	_f32s,_lts1 0xffffffe0, %r1
	  addd,1	0x0, 0x0, %r2
	  addd,2,sm	0x0, 0x0, %r3
	}
	{
	  cmpedb,0,sm	0x0, [ _f64,_lts2 _ZSt4cout ], %pred0
	  addd,2,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es ], %b[0]
	}
	{
	  addd,0	%r1, _f64,_lts0 0x20, %r0
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r0, %r4
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es ], %b[1]
	  addd,1,sm	0x0, [ _f64,_lts2 _ZSt4cout ], %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
.LCS.3:
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  disp	%ctpr2, .L11783; ipd 2
	  ldw,0,sm	%r4, %r3, %r5
	}
	{
	  nop 1
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	}
.L11599:
	{
	  sxt,0	0x2, %r5, %b[1]
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	  addd,3	0x0, %b[0], %r1
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r1, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  disp	%ctpr2, _ZNSolsEi; ipd 2
	  addd,0	%r4, %r3, %r1
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  nop 2
	  ldw,0	%r1, 0x4, %r5
	}
	{
	  sxt,0	0x2, %r5, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,3	0x0, %b[0], %r5
	  addd,4,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r5, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 2
	  disp	%ctpr2, _ZNSolsEi; ipd 2
	  ldw,0	%r1, 0x8, %r5
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  nop 1
	  sxt,0	0x2, %r5, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,3	0x0, %b[0], %r5
	  addd,4,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r5, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 2
	  disp	%ctpr2, _ZNSolsEi; ipd 2
	  ldw,0	%r1, 0xc, %r5
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  nop 1
	  sxt,0	0x2, %r5, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	  addd,3	0x0, %b[0], %r5
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r5, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  disp	%ctpr2, _ZNSolsEi; ipd 2
	  ldw,0	%r1, _f16s,_lts0lo 0x10, %r6
	  addd,1,sm	0x0, [ _f64,_lts1 _ZSt4cout ], %b[0]
	  addd,2,sm	%r2, 0x1, %r7
	}
	{
	  nop 1
	  cmpldb,0,sm	%r7, 0x7, %pred0
	}
	{
	  nop 1
	  sxt,0	0x2, %r6, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,3	0x0, %b[0], %r6
	  addd,4,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r6, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 2
	  disp	%ctpr1, _ZNSolsEi; ipd 2
	  ldw,0	%r1, _f16s,_lts0lo 0x14, %r6
	  addd,1,sm	0x0, [ _f64,_lts1 _ZSt4cout ], %b[0]
	}
	{
	  nop 1
	  sxt,0	0x2, %r6, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,3	0x0, %b[0], %r6
	  addd,4,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r6, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  disp	%ctpr1, .L11682; ipd 2
	  ldd,0	0x0, [ _f64,_lts0 _ZSt4cout ], %r6
	}
	{
	  nop 1
	  disp	%ctpr2, _ZNSo3putEc; ipd 2
	}
	{
	  nop 2
	  ldd,0	%r6, _f16s,_lts0lo 0xffe8, %r6
	}
	{
	  nop 2
	  ldd,0	%r6, [ _f64,_lts0 _ZSt4cout +240 ], %r1
	}
	{
	  nop 2
	  ldb,0,sm	%r1, _f16s,_lts0hi 0x43, %r8
	  cmpedb,1	%r1, 0x0, %pred1
	  ldb,2,sm	%r1, _f16s,_lts0lo 0x38, %r6
	}
	{
	  ibranch	.L11451 ? %pred1
	  cmpesb,0,sm	%r6, 0x0, %pred2
	  sxt,1,sm	0x0, %r8, %r6
	}
	{
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred1
	  pass	%pred0, @p2
	  landp	@p5, @p2, @p6
	  pass	@p6, %pred2
	}
	{
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  addd,0,sm	0x0, %r6, %b[1] ? %pred1
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0] ? %pred1
	  addd,2,sm	0x18, %r3, %r3 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred3
	}
	{
	  call	%ctpr2, wbs = 0x5 ? %pred1
	}
	{
	  nop 1
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred1
	}
	{
	  disp	%ctpr1, .L11599; ipd 2
	  ldw,0,sm	%r4, %r3, %r5
	  addd,1	0x0, %r7, %r2 ? %pred1
	}
	{
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	}
	{
	  nop 1
	  disp	%ctpr2, .L11440; ipd 2
	}
	{
	  ct	%ctpr1 ? %pred2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
.L11682:
	{
	  nop 4
	  disp	%ctpr1, _ZNKSt5ctypeIcE13_M_widen_initEv; ipd 2
	  addd,0,sm	0x0, %r1, %b[0]
	  addd,1,sm	0x18, %r3, %r3
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 2
	  ldd,0	%r1, 0x0, %r6
	  addd,1,sm	0xa, 0x0, %b[1]
	  addd,2,sm	0x0, %r1, %b[0]
	}
	{
	  nop 2
	  ldd,0	%r6, _f16s,_lts0lo 0x30, %r1
	}
	{
	  nop 7
	  movtd,0,sm	%r1, %ctpr1; ipd 2
	}
	nop
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo3putEc; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  sxt,3	0x0, %b[0], %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  disp	%ctpr1, .L11599; ipd 2
	  ldw,0,sm	%r4, %r3, %r5
	  addd,1	%r2, 0x1, %r2
	}
	{
	  nop 3
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	  cmpldb,0	%r2, 0x7, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L11440:
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L11783:
	{
	  addd,0,sm	0x0, 0x0, %r1
	}
	{
	  nop 2
	  ldw,0	%r4, %r1, %r3
	}
.L11296:
	{
	  sxt,0	0x2, %r3, %b[1]
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	  addd,3	0x0, %b[0], %r3
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r3, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  disp	%ctpr2, _ZNSolsEi; ipd 2
	  addd,0	%r4, %r1, %r3
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  nop 2
	  ldw,0	%r3, 0x4, %r5
	}
	{
	  sxt,0	0x2, %r5, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,3	0x0, %b[0], %r5
	  addd,4,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r5, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 2
	  disp	%ctpr2, _ZNSolsEi; ipd 2
	  ldw,0	%r3, 0x8, %r5
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  nop 1
	  sxt,0	0x2, %r5, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,3	0x0, %b[0], %r5
	  addd,4,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r5, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 2
	  disp	%ctpr2, _ZNSolsEi; ipd 2
	  ldw,0	%r3, 0xc, %r5
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  nop 1
	  sxt,0	0x2, %r5, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	  addd,3	0x0, %b[0], %r5
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r5, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  disp	%ctpr2, _ZNSolsEi; ipd 2
	  ldw,0	%r3, _f16s,_lts0lo 0x10, %r6
	  addd,1,sm	0x0, [ _f64,_lts1 _ZSt4cout ], %b[0]
	  addd,2,sm	%r2, 0x1, %r7
	}
	{
	  nop 1
	  cmpldb,0,sm	%r7, 0x7, %pred0
	}
	{
	  nop 1
	  sxt,0	0x2, %r6, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,3	0x0, %b[0], %r6
	  addd,4,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r6, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 2
	  disp	%ctpr1, _ZNSolsEi; ipd 2
	  ldw,0	%r3, _f16s,_lts0lo 0x14, %r6
	  addd,1,sm	0x0, [ _f64,_lts1 _ZSt4cout ], %b[0]
	}
	{
	  nop 1
	  sxt,0	0x2, %r6, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,3	0x0, %b[0], %r6
	  addd,4,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r6, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  disp	%ctpr1, .L11385; ipd 2
	  ldd,0	0x0, _f16s,_lts0lo 0xf0, %r5
	}
	{
	  nop 1
	  disp	%ctpr2, _ZNSo3putEc; ipd 2
	}
	{
	  nop 2
	  ldb,0,sm	%r5, _f16s,_lts0hi 0x43, %r8
	  cmpedb,1	%r5, 0x0, %pred1
	  ldb,2,sm	%r5, _f16s,_lts0lo 0x38, %r6
	}
	{
	  ibranch	.L11757 ? %pred1
	  cmpesb,0,sm	%r6, 0x0, %pred2
	  sxt,1,sm	0x0, %r8, %r6
	}
	{
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred1
	  pass	%pred0, @p2
	  landp	@p5, @p2, @p6
	  pass	@p6, %pred2
	}
	{
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  addd,0,sm	0x0, %r6, %b[1] ? %pred1
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0] ? %pred1
	  addd,2,sm	0x18, %r1, %r1 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred3
	}
	{
	  call	%ctpr2, wbs = 0x5 ? %pred1
	}
	{
	  nop 1
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred1
	}
	{
	  disp	%ctpr1, .L11296; ipd 2
	  ldw,0,sm	%r4, %r1, %r3
	  addd,1	0x0, %r7, %r2 ? %pred1
	}
	{
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	}
	{
	  nop 1
	  disp	%ctpr2, .L11775; ipd 2
	}
	{
	  ct	%ctpr1 ? %pred2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
.L11385:
	{
	  nop 4
	  disp	%ctpr1, _ZNKSt5ctypeIcE13_M_widen_initEv; ipd 2
	  addd,0,sm	0x0, %r5, %b[0]
	  addd,1,sm	0x18, %r1, %r1
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 2
	  ldd,0	%r5, 0x0, %r6
	  addd,1,sm	0xa, 0x0, %b[1]
	  addd,2,sm	0x0, %r5, %b[0]
	}
	{
	  nop 2
	  ldd,0	%r6, _f16s,_lts0lo 0x30, %r5
	}
	{
	  nop 7
	  movtd,0,sm	%r5, %ctpr1; ipd 2
	}
	nop
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo3putEc; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  sxt,3	0x0, %b[0], %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  disp	%ctpr1, .L11296; ipd 2
	  ldw,0,sm	%r4, %r1, %r3
	  addd,1	%r2, 0x1, %r2
	}
	{
	  nop 3
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	  cmpldb,0	%r2, 0x7, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L11775:
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L11451:
	{
	  return	%ctpr3; ipd 2
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__throw_bad_castv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  ct	%ctpr3
	}
.L11757:
	{
	  return	%ctpr3; ipd 2
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__throw_bad_castv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  ct	%ctpr3
	}
.LCS.4:
	.cfi_endproc
	.size	_Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_, .- _Z11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_
	.section .text._Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_, "axG", @progbits, _Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_, comdat
	.weak	_Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_
	.type	_Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_, #function
	.align	8
_Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_:
	.cfi_startproc
	{
	  setwd	wsz = 0x9, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x5, rcur = 0x0
	  disp	%ctpr2, strcmp; ipd 2
	  getsp,0	_f32s,_lts1 0xffffffe0, %r1
	  ldd,2	0x0, [ _f64,_lts2 _ZTISt5arrayIS_IiLm6EELm7EE +8 ], %r2
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 _ZTISt5arrayIS_IiLm9EELm6EE +8 ], %r3
	}
	{
	  addd,0	%r1, _f64,_lts0 0x20, %r0
	}
	{
	  addd,0,sm	0x0, %r2, %b[1]
	}
	{
	  addd,0,sm	0x0, %r3, %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  disp	%ctpr3, strlen; ipd 2
	  cmpesb,3	%b[0], 0x0, %pred0
	}
	{
	  disp	%ctpr1, .L11830; ipd 2
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es ], %b[0] ? %pred0
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	nop
	{
	  call	%ctpr3, wbs = 0x5 ? %pred0
	}
	{
	  disp	%ctpr2, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es ], %b[1] ? %pred0
	  addd,1,sm	0x0, [ _f64,_lts2 _ZSt4cout ], %b[0] ? %pred0
	  addd,3,sm	0x0, %b[0], %r1
	}
	{
	  nop 3
	  addd,3,sm	0x0, %r1, %b[2] ? %pred0
	}
.LCS.5:
	{
	  call	%ctpr2, wbs = 0x5 ? %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0] ? %pred0
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred0
	}
.L11856:
	{
	  nop 1
	  disp	%ctpr2, .L11859; ipd 2
	  cmpedb,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %pred0
	  addd,1,sm	0x0, %r0, %r9
	  addd,2	0x0, 0x0, %r5
	  addd,3,sm	0x0, %r0, %r8
	}
	{
	  addd,0,sm	0x0, 0x0, %r7 ? %pred0
	  addd,1,sm	0x0, 0x0, %r6 ? ~%pred0
	}
	{
	  ct	%ctpr2 ? %pred0
	}
.L12044:
	{
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	  addd,0,sm	0x0, 0x0, %r2
	  addd,1,sm	%r8, %r6, %r4
	  addd,2	0x0, 0x0, %r3
	}
	{
	  nop 2
	  ldw,0	%r4, %r2, %r1
	}
.L12052:
	{
	  sxt,0	0x2, %r1, %b[1]
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  addd,2	%r3, 0x1, %r3
	  addd,3,sm	0x4, %r2, %r2
	}
	{
	  call	%ctpr3, wbs = 0x5
	  cmpldb,0	%r3, 0x9, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_2 ], %b[0]
	  addd,3	0x0, %b[0], %r7
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r7, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  disp	%ctpr2, .L12052; ipd 2
	  ldw,0	%r4, %r2, %r1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
	{
	  disp	%ctpr2, .L12087; ipd 2
	  ldd,0	0x0, [ _f64,_lts0 _ZSt4cout ], %r2
	  addd,1,sm	%r5, 0x1, %r3
	}
	{
	  disp	%ctpr3, _ZNKSt5ctypeIcE13_M_widen_initEv; ipd 2
	  cmpbdb,0,sm	%r3, 0x6, %pred0
	}
	{
	  disp	%ctpr1, _ZNSo3putEc; ipd 2
	}
	{
	  nop 2
	  ldd,0	%r2, _f16s,_lts0lo 0xffe8, %r2
	}
	{
	  nop 2
	  ldd,0	%r2, [ _f64,_lts0 _ZSt4cout +240 ], %r1
	}
	{
	  nop 2
	  ldb,0,sm	%r1, _f16s,_lts0hi 0x43, %r4
	  cmpedb,1	%r1, 0x0, %pred1
	  ldb,2,sm	%r1, _f16s,_lts0lo 0x38, %r2
	}
	{
	  ibranch	.L12163 ? %pred1
	  cmpesb,0,sm	%r2, 0x0, %pred2
	  sxt,1,sm	0x0, %r4, %r2
	}
	{
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred1
	  pass	%pred0, @p2
	  landp	@p5, @p2, @p6
	  pass	@p6, %pred2
	}
	{
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  addd,0,sm	0x0, %r2, %b[1] ? %pred1
	  addd,1,sm	0x0, [ _f64,_lts1 _ZSt4cout ], %b[0] ? %pred1
	  addd,2,sm	%r6, _f16s,_lts0lo 0x24, %r6 ? %pred1
	}
	{
	  ct	%ctpr2 ? %pred3
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred1
	}
	{
	  nop 1
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred1
	}
	{
	  disp	%ctpr1, .L12044; ipd 2
	  addd,0	0x0, %r3, %r5 ? %pred1
	}
	{
	  disp	%ctpr2, .L12183; ipd 2
	}
	{
	  ct	%ctpr1 ? %pred2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
.L12087:
	{
	  addd,0,sm	0x0, %r1, %b[0]
	  addd,1,sm	%r6, _f16s,_lts0lo 0x24, %r6
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 2
	  ldd,0	%r1, 0x0, %r2
	  addd,1,sm	0xa, 0x0, %b[1]
	  addd,2,sm	0x0, %r1, %b[0]
	}
	{
	  nop 2
	  ldd,0	%r2, _f16s,_lts0lo 0x30, %r1
	}
	{
	  nop 7
	  movtd,0,sm	%r1, %ctpr1; ipd 2
	}
	nop
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo3putEc; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  sxt,3	0x0, %b[0], %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  disp	%ctpr1, .L12044; ipd 2
	  addd,0	%r5, 0x1, %r5
	}
	{
	  nop 3
	  cmpbdb,0	%r5, 0x6, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L12183:
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L11859:
	{
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	  addd,0,sm	0x0, 0x0, %r2
	  addd,1,sm	%r9, %r7, %r4
	  addd,2	0x0, 0x0, %r3
	}
	{
	  nop 2
	  ldw,0	%r4, %r2, %r1
	}
.L11862:
	{
	  sxt,0	0x2, %r1, %b[1]
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  addd,2	%r3, 0x1, %r3
	  addd,3,sm	0x4, %r2, %r2
	}
	{
	  call	%ctpr3, wbs = 0x5
	  cmpldb,0	%r3, 0x9, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_2 ], %b[0]
	  addd,3	0x0, %b[0], %r6
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r6, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  disp	%ctpr2, .L11862; ipd 2
	  ldw,0	%r4, %r2, %r1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
	{
	  disp	%ctpr2, .L11948; ipd 2
	  ldd,0	0x0, _f16s,_lts0lo 0xf0, %r1
	  addd,1,sm	%r5, 0x1, %r2
	}
	{
	  disp	%ctpr3, _ZNKSt5ctypeIcE13_M_widen_initEv; ipd 2
	  cmpbdb,0,sm	%r2, 0x6, %pred0
	}
	{
	  disp	%ctpr1, _ZNSo3putEc; ipd 2
	}
	{
	  nop 2
	  ldb,0,sm	%r1, _f16s,_lts0hi 0x43, %r4
	  cmpedb,1	%r1, 0x0, %pred1
	  ldb,2,sm	%r1, _f16s,_lts0lo 0x38, %r3
	}
	{
	  ibranch	.L12014 ? %pred1
	  cmpesb,0,sm	%r3, 0x0, %pred2
	  sxt,1,sm	0x0, %r4, %r3
	}
	{
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred1
	  pass	%pred0, @p2
	  landp	@p5, @p2, @p6
	  pass	@p6, %pred2
	}
	{
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  addd,0,sm	0x0, %r3, %b[1] ? %pred1
	  addd,1,sm	0x0, [ _f64,_lts1 _ZSt4cout ], %b[0] ? %pred1
	  addd,2,sm	%r7, _f16s,_lts0lo 0x24, %r7 ? %pred1
	}
	{
	  ct	%ctpr2 ? %pred3
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred1
	}
	{
	  nop 1
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred1
	}
	{
	  disp	%ctpr1, .L11859; ipd 2
	  addd,0	0x0, %r2, %r5 ? %pred1
	}
	{
	  disp	%ctpr2, .L12003; ipd 2
	}
	{
	  ct	%ctpr1 ? %pred2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
.L11948:
	{
	  addd,0,sm	0x0, %r1, %b[0]
	  addd,1,sm	%r7, _f16s,_lts0lo 0x24, %r7
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 2
	  ldd,0	%r1, 0x0, %r2
	  addd,1,sm	0xa, 0x0, %b[1]
	  addd,2,sm	0x0, %r1, %b[0]
	}
	{
	  nop 2
	  ldd,0	%r2, _f16s,_lts0lo 0x30, %r1
	}
	{
	  nop 7
	  movtd,0,sm	%r1, %ctpr1; ipd 2
	}
	nop
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo3putEc; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  sxt,3	0x0, %b[0], %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  disp	%ctpr1, .L11859; ipd 2
	  addd,0	%r5, 0x1, %r5
	}
	{
	  nop 3
	  cmpbdb,0	%r5, 0x6, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L12003:
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L11830:
	{
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_0 ], %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_0 ], %b[1]
	  addd,1,sm	0x0, [ _f64,_lts2 _ZSt4cout ], %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, .L11856; ipd 2
	}
	{
	  ct	%ctpr1
	}
.L12163:
	{
	  return	%ctpr3; ipd 2
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__throw_bad_castv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  ct	%ctpr3
	}
.L12014:
	{
	  return	%ctpr3; ipd 2
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__throw_bad_castv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  ct	%ctpr3
	}
.LCS.6:
	.cfi_endproc
	.size	_Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_, .- _Z11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_
	.section .text._Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_, "axG", @progbits, _Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_, comdat
	.weak	_Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_
	.type	_Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_, #function
	.align	8
_Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_:
	.cfi_startproc
	{
	  setwd	wsz = 0x9, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x5, rcur = 0x0
	  disp	%ctpr2, strcmp; ipd 2
	  getsp,0	_f32s,_lts1 0xffffffe0, %r1
	  ldd,2	0x0, [ _f64,_lts2 _ZTISt5arrayIS_IiLm6EELm7EE +8 ], %r3
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 _ZTISt5arrayIS_IiLm9EELm7EE +8 ], %r2
	}
	{
	  addd,0	%r1, _f64,_lts0 0x20, %r0
	}
	{
	  addd,0,sm	0x0, %r3, %b[1]
	}
	{
	  addd,0,sm	0x0, %r2, %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  disp	%ctpr3, strlen; ipd 2
	  cmpesb,3	%b[0], 0x0, %pred0
	}
	{
	  disp	%ctpr1, .L12230; ipd 2
	}
	{
	  disp	%ctpr2, strcmp; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es ], %b[0] ? %pred0
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	nop
	{
	  call	%ctpr3, wbs = 0x5 ? %pred0
	}
	{
	  disp	%ctpr2, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es ], %b[1] ? %pred0
	  addd,1,sm	0x0, [ _f64,_lts2 _ZSt4cout ], %b[0] ? %pred0
	  addd,3,sm	0x0, %b[0], %r1
	}
	{
	  nop 3
	  addd,3,sm	0x0, %r1, %b[2] ? %pred0
	}
.LCS.7:
	{
	  call	%ctpr2, wbs = 0x5 ? %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0] ? %pred0
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred0
	}
.L12300:
	{
	  nop 1
	  disp	%ctpr2, .L12303; ipd 2
	  cmpedb,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %pred0
	  addd,1,sm	0x0, %r0, %r9
	  addd,2	0x0, 0x0, %r5
	  addd,3,sm	0x0, %r0, %r8
	}
	{
	  addd,0,sm	0x0, 0x0, %r7 ? %pred0
	  addd,1,sm	0x0, 0x0, %r6 ? ~%pred0
	}
	{
	  ct	%ctpr2 ? %pred0
	}
.L12488:
	{
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	  addd,0,sm	0x0, 0x0, %r2
	  addd,1,sm	%r8, %r6, %r4
	  addd,2	0x0, 0x0, %r3
	}
	{
	  nop 2
	  ldw,0	%r4, %r2, %r1
	}
.L12496:
	{
	  sxt,0	0x2, %r1, %b[1]
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  addd,2	%r3, 0x1, %r3
	  addd,3,sm	0x4, %r2, %r2
	}
	{
	  call	%ctpr3, wbs = 0x5
	  cmpldb,0	%r3, 0x9, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_2 ], %b[0]
	  addd,3	0x0, %b[0], %r7
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r7, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  disp	%ctpr2, .L12496; ipd 2
	  ldw,0	%r4, %r2, %r1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
	{
	  disp	%ctpr2, .L12531; ipd 2
	  ldd,0	0x0, [ _f64,_lts0 _ZSt4cout ], %r2
	  addd,1,sm	%r5, 0x1, %r3
	}
	{
	  disp	%ctpr3, _ZNKSt5ctypeIcE13_M_widen_initEv; ipd 2
	  cmpbdb,0,sm	%r3, 0x7, %pred0
	}
	{
	  disp	%ctpr1, _ZNSo3putEc; ipd 2
	}
	{
	  nop 2
	  ldd,0	%r2, _f16s,_lts0lo 0xffe8, %r2
	}
	{
	  nop 2
	  ldd,0	%r2, [ _f64,_lts0 _ZSt4cout +240 ], %r1
	}
	{
	  nop 2
	  ldb,0,sm	%r1, _f16s,_lts0hi 0x43, %r4
	  cmpedb,1	%r1, 0x0, %pred1
	  ldb,2,sm	%r1, _f16s,_lts0lo 0x38, %r2
	}
	{
	  ibranch	.L12609 ? %pred1
	  cmpesb,0,sm	%r2, 0x0, %pred2
	  sxt,1,sm	0x0, %r4, %r2
	}
	{
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred1
	  pass	%pred0, @p2
	  landp	@p5, @p2, @p6
	  pass	@p6, %pred2
	}
	{
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  addd,0,sm	0x0, %r2, %b[1] ? %pred1
	  addd,1,sm	0x0, [ _f64,_lts1 _ZSt4cout ], %b[0] ? %pred1
	  addd,2,sm	%r6, _f16s,_lts0lo 0x24, %r6 ? %pred1
	}
	{
	  ct	%ctpr2 ? %pred3
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred1
	}
	{
	  nop 1
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred1
	}
	{
	  disp	%ctpr1, .L12488; ipd 2
	  addd,0	0x0, %r3, %r5 ? %pred1
	}
	{
	  disp	%ctpr2, .L12629; ipd 2
	}
	{
	  ct	%ctpr1 ? %pred2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
.L12531:
	{
	  addd,0,sm	0x0, %r1, %b[0]
	  addd,1,sm	%r6, _f16s,_lts0lo 0x24, %r6
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 2
	  ldd,0	%r1, 0x0, %r2
	  addd,1,sm	0xa, 0x0, %b[1]
	  addd,2,sm	0x0, %r1, %b[0]
	}
	{
	  nop 2
	  ldd,0	%r2, _f16s,_lts0lo 0x30, %r1
	}
	{
	  nop 7
	  movtd,0,sm	%r1, %ctpr1; ipd 2
	}
	nop
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo3putEc; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  sxt,3	0x0, %b[0], %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  disp	%ctpr1, .L12488; ipd 2
	  addd,0	%r5, 0x1, %r5
	}
	{
	  nop 3
	  cmpbdb,0	%r5, 0x7, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L12629:
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L12303:
	{
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	  addd,0,sm	0x0, 0x0, %r2
	  addd,1,sm	%r9, %r7, %r4
	  addd,2	0x0, 0x0, %r3
	}
	{
	  nop 2
	  ldw,0	%r4, %r2, %r1
	}
.L12306:
	{
	  sxt,0	0x2, %r1, %b[1]
	  addd,1,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  addd,2	%r3, 0x1, %r3
	  addd,3,sm	0x4, %r2, %r2
	}
	{
	  call	%ctpr3, wbs = 0x5
	  cmpldb,0	%r3, 0x9, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, strlen; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_2 ], %b[0]
	  addd,3	0x0, %b[0], %r6
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_2 ], %b[1]
	  addd,1,sm	0x0, %r6, %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  disp	%ctpr2, .L12306; ipd 2
	  ldw,0	%r4, %r2, %r1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr3, _ZNSolsEi; ipd 2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
	{
	  disp	%ctpr2, .L12392; ipd 2
	  ldd,0	0x0, _f16s,_lts0lo 0xf0, %r1
	  addd,1,sm	%r5, 0x1, %r2
	}
	{
	  disp	%ctpr3, _ZNKSt5ctypeIcE13_M_widen_initEv; ipd 2
	  cmpbdb,0,sm	%r2, 0x7, %pred0
	}
	{
	  disp	%ctpr1, _ZNSo3putEc; ipd 2
	}
	{
	  nop 2
	  ldb,0,sm	%r1, _f16s,_lts0hi 0x43, %r4
	  cmpedb,1	%r1, 0x0, %pred1
	  ldb,2,sm	%r1, _f16s,_lts0lo 0x38, %r3
	}
	{
	  ibranch	.L12458 ? %pred1
	  cmpesb,0,sm	%r3, 0x0, %pred2
	  sxt,1,sm	0x0, %r4, %r3
	}
	{
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred1
	  pass	%pred0, @p2
	  landp	@p5, @p2, @p6
	  pass	@p6, %pred2
	}
	{
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  addd,0,sm	0x0, %r3, %b[1] ? %pred1
	  addd,1,sm	0x0, [ _f64,_lts1 _ZSt4cout ], %b[0] ? %pred1
	  addd,2,sm	%r7, _f16s,_lts0lo 0x24, %r7 ? %pred1
	}
	{
	  ct	%ctpr2 ? %pred3
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred1
	}
	{
	  nop 1
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred1
	}
	{
	  disp	%ctpr1, .L12303; ipd 2
	  addd,0	0x0, %r2, %r5 ? %pred1
	}
	{
	  disp	%ctpr2, .L12447; ipd 2
	}
	{
	  ct	%ctpr1 ? %pred2
	}
	{
	  ct	%ctpr2 ? %pred0
	}
.L12392:
	{
	  addd,0,sm	0x0, %r1, %b[0]
	  addd,1,sm	%r7, _f16s,_lts0lo 0x24, %r7
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 2
	  ldd,0	%r1, 0x0, %r2
	  addd,1,sm	0xa, 0x0, %b[1]
	  addd,2,sm	0x0, %r1, %b[0]
	}
	{
	  nop 2
	  ldd,0	%r2, _f16s,_lts0lo 0x30, %r1
	}
	{
	  nop 7
	  movtd,0,sm	%r1, %ctpr1; ipd 2
	}
	nop
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo3putEc; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	  sxt,3	0x0, %b[0], %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZNSo5flushEv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  disp	%ctpr1, .L12303; ipd 2
	  addd,0	%r5, 0x1, %r5
	}
	{
	  nop 3
	  cmpbdb,0	%r5, 0x7, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L12447:
	{
	  nop 3
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %r1
	}
	{
	  addd,0	0x0, %r1, %r0
	}
	{
	  ct	%ctpr1
	}
.L12230:
	{
	  nop 2
	  ldd,0	0x0, [ _f64,_lts0 _ZTISt5arrayIS_IiLm9EELm6EE +8 ], %r1
	  addd,1,sm	0x0, %r2, %b[0]
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x5
	}
	{
	  disp	%ctpr3, strlen; ipd 2
	  cmpesb,3	%b[0], 0x0, %pred0
	}
	{
	  disp	%ctpr1, .L12274; ipd 2
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_0 ], %b[0] ? %pred0
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	nop
	{
	  call	%ctpr3, wbs = 0x5 ? %pred0
	}
	{
	  disp	%ctpr2, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_0 ], %b[1] ? %pred0
	  addd,1,sm	0x0, [ _f64,_lts2 _ZSt4cout ], %b[0] ? %pred0
	  addd,3,sm	0x0, %b[0], %r1
	}
	{
	  nop 3
	  addd,3,sm	0x0, %r1, %b[2] ? %pred0
	}
	{
	  call	%ctpr2, wbs = 0x5 ? %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0] ? %pred0
	}
	{
	  call	%ctpr1, wbs = 0x5 ? %pred0
	}
	{
	  nop 4
	  disp	%ctpr3, .L12300; ipd 2
	}
	{
	  ct	%ctpr3 ? %pred0
	}
.L12274:
	{
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_1 ], %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_1 ], %b[1]
	  addd,1,sm	0x0, [ _f64,_lts2 _ZSt4cout ], %b[0]
	  addd,3	0x0, %b[0], %b[2]
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr3, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZSt4cout ], %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x5
	}
	{
	  nop 4
	  disp	%ctpr1, .L12300; ipd 2
	}
	{
	  ct	%ctpr1
	}
.L12609:
	{
	  return	%ctpr3; ipd 2
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__throw_bad_castv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  ct	%ctpr3
	}
.L12458:
	{
	  return	%ctpr3; ipd 2
	}
	{
	  nop 4
	  disp	%ctpr1, _ZSt16__throw_bad_castv; ipd 2
	}
	{
	  call	%ctpr1, wbs = 0x5
	}
	{
	  ct	%ctpr3
	}
.LCS.8:
	.cfi_endproc
	.size	_Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_, .- _Z11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_
	.text
	.local	__sti___8_main_cpp_ac2eb263
	.type	__sti___8_main_cpp_ac2eb263, #function
	.align	8
__sti___8_main_cpp_ac2eb263:
	.cfi_startproc
	{
	  setwd	wsz = 0x8, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x4, rcur = 0x0
	  disp	%ctpr1, _ZNSt8ios_base4InitC1Ev; ipd 2
	  getsp,0	_f32s,_lts1 0xffffffe0, %r1
	  addd,1	0x0, [ _f64,_lts2 _ZNSt8ios_base4InitD1Ev ], %r3
	}
	{
	  nop 3
	  addd,0,sm	0x0, [ _f64,_lts0 _ZN29_INTERNAL_8_main_cpp_ac2eb263St8__ioinitE ], %b[0]
	}
.LCS.9:
	{
	  call	%ctpr1, wbs = 0x4
	}
	{
	  nop 3
	  disp	%ctpr1, __cxa_atexit; ipd 2
	  addd,0,sm	0x0, [ _f64,_lts0 _ZN29_INTERNAL_8_main_cpp_ac2eb263St8__ioinitE ], %r1
	  addd,3	0x0, [ _f64,_lts2 __dso_handle ], %r2
	}
	{
	  addd,0	0x0, %r3, %r0
	}
	{
	  ct	%ctpr1
	}
.LCS.10:
	.cfi_endproc
	.size	__sti___8_main_cpp_ac2eb263, .- __sti___8_main_cpp_ac2eb263
	.section .bss
	.global	A
	.type	A, #object
	.size	A, 0xa8
	.align	16
A:
	.skip	0xa8
	.global	B
	.type	B, #object
	.size	B, 0xd8
	.align	16
B:
	.skip	0xd8
	.global	C
	.type	C, #object
	.size	C, 0xfc
	.align	16
C:
	.skip	0xfc
	.section .rodata._ZTISt5arrayIS_IiLm6EELm7EE, "aG", @progbits, _ZTISt5arrayIS_IiLm6EELm7EE, comdat
	.weak	_ZTISt5arrayIS_IiLm6EELm7EE
	.type	_ZTISt5arrayIS_IiLm6EELm7EE, #object
	.size	_ZTISt5arrayIS_IiLm6EELm7EE, 0x10
	.align	16
_ZTISt5arrayIS_IiLm6EELm7EE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE +16
	.dword	_ZTSSt5arrayIS_IiLm6EELm7EE
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es, 0x5
	.align	8
_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es:
	.uaword	0x203d2041
	.byte	0x0
	.section .rodata._ZTISt5arrayIS_IiLm9EELm6EE, "aG", @progbits, _ZTISt5arrayIS_IiLm9EELm6EE, comdat
	.weak	_ZTISt5arrayIS_IiLm9EELm6EE
	.type	_ZTISt5arrayIS_IiLm9EELm6EE, #object
	.size	_ZTISt5arrayIS_IiLm9EELm6EE, 0x10
	.align	16
_ZTISt5arrayIS_IiLm9EELm6EE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE +16
	.dword	_ZTSSt5arrayIS_IiLm9EELm6EE
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_0, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_0, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_0
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_0, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_0, 0x5
	.align	8
_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_0:
	.uaword	0x203d2042
	.byte	0x0
	.section .rodata._ZTISt5arrayIS_IiLm9EELm7EE, "aG", @progbits, _ZTISt5arrayIS_IiLm9EELm7EE, comdat
	.weak	_ZTISt5arrayIS_IiLm9EELm7EE
	.type	_ZTISt5arrayIS_IiLm9EELm7EE, #object
	.size	_ZTISt5arrayIS_IiLm9EELm7EE, 0x10
	.align	16
_ZTISt5arrayIS_IiLm9EELm7EE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE +16
	.dword	_ZTSSt5arrayIS_IiLm9EELm7EE
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_1, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_1, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_1
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_1, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_1, 0x5
	.align	8
_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_1:
	.uaword	0x203d2043
	.byte	0x0
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2, 0x2
	.align	2
_ZZ11printMatrixISt5arrayIS0_IiLm6EELm7EEEvT_Es_2:
	.uahalf	0x9
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es, 0x5
	.align	8
_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es:
	.uaword	0x203d2041
	.byte	0x0
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_0, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_0, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_0
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_0, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_0, 0x5
	.align	8
_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_0:
	.uaword	0x203d2042
	.byte	0x0
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_1, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_1, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_1
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_1, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_1, 0x5
	.align	8
_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_1:
	.uaword	0x203d2043
	.byte	0x0
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_2, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_2, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_2
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_2, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_2, 0x2
	.align	2
_ZZ11printMatrixISt5arrayIS0_IiLm9EELm6EEEvT_Es_2:
	.uahalf	0x9
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es, 0x5
	.align	8
_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es:
	.uaword	0x203d2041
	.byte	0x0
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_0, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_0, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_0
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_0, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_0, 0x5
	.align	8
_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_0:
	.uaword	0x203d2042
	.byte	0x0
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_1, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_1, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_1
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_1, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_1, 0x5
	.align	8
_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_1:
	.uaword	0x203d2043
	.byte	0x0
	.section .rodata._ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_2, "aG", @progbits, _ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_2, comdat
	.weak	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_2
	.type	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_2, #object
	.size	_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_2, 0x2
	.align	2
_ZZ11printMatrixISt5arrayIS0_IiLm9EELm7EEEvT_Es_2:
	.uahalf	0x9
	.section .rodata._ZTISt23__codecvt_abstract_baseIDsc11__mbstate_tE, "aG", @progbits, _ZTISt23__codecvt_abstract_baseIDsc11__mbstate_tE, comdat
	.weak	_ZTISt23__codecvt_abstract_baseIDsc11__mbstate_tE
	.type	_ZTISt23__codecvt_abstract_baseIDsc11__mbstate_tE, #object
	.size	_ZTISt23__codecvt_abstract_baseIDsc11__mbstate_tE, 0x38
	.align	16
_ZTISt23__codecvt_abstract_baseIDsc11__mbstate_tE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE +16
	.dword	_ZTSSt23__codecvt_abstract_baseIDsc11__mbstate_tE
	.uadword	0x200000000
	.dword	_ZTINSt6locale5facetE
	.uadword	0x2
	.dword	_ZTISt12codecvt_base
	.uadword	0x2
	.section .rodata._ZTISt23__codecvt_abstract_baseIDic11__mbstate_tE, "aG", @progbits, _ZTISt23__codecvt_abstract_baseIDic11__mbstate_tE, comdat
	.weak	_ZTISt23__codecvt_abstract_baseIDic11__mbstate_tE
	.type	_ZTISt23__codecvt_abstract_baseIDic11__mbstate_tE, #object
	.size	_ZTISt23__codecvt_abstract_baseIDic11__mbstate_tE, 0x38
	.align	16
_ZTISt23__codecvt_abstract_baseIDic11__mbstate_tE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE +16
	.dword	_ZTSSt23__codecvt_abstract_baseIDic11__mbstate_tE
	.uadword	0x200000000
	.dword	_ZTINSt6locale5facetE
	.uadword	0x2
	.dword	_ZTISt12codecvt_base
	.uadword	0x2
	.section .rodata._ZTISt12codecvt_base, "aG", @progbits, _ZTISt12codecvt_base, comdat
	.weak	_ZTISt12codecvt_base
	.type	_ZTISt12codecvt_base, #object
	.size	_ZTISt12codecvt_base, 0x10
	.align	16
_ZTISt12codecvt_base:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE +16
	.dword	_ZTSSt12codecvt_base
	.section .rodata._ZTSSt12codecvt_base, "aG", @progbits, _ZTSSt12codecvt_base, comdat
	.weak	_ZTSSt12codecvt_base
	.type	_ZTSSt12codecvt_base, #object
	.size	_ZTSSt12codecvt_base, 0x11
	.align	16
_ZTSSt12codecvt_base:
	.uadword	0x65646f6332317453
	.uadword	0x657361625f747663
	.byte	0x0
	.section .rodata._ZTSSt23__codecvt_abstract_baseIDsc11__mbstate_tE, "aG", @progbits, _ZTSSt23__codecvt_abstract_baseIDsc11__mbstate_tE, comdat
	.weak	_ZTSSt23__codecvt_abstract_baseIDsc11__mbstate_tE
	.type	_ZTSSt23__codecvt_abstract_baseIDsc11__mbstate_tE, #object
	.size	_ZTSSt23__codecvt_abstract_baseIDsc11__mbstate_tE, 0x2e
	.align	16
_ZTSSt23__codecvt_abstract_baseIDsc11__mbstate_tE:
	.uadword	0x6f635f5f33327453
	.uadword	0x62615f7476636564
	.uadword	0x625f746361727473
	.uadword	0x3163734449657361
	.uadword	0x617473626d5f5f31
	.uaword	0x745f6574
	.uahalf	0x45
	.section .rodata._ZTSSt23__codecvt_abstract_baseIDic11__mbstate_tE, "aG", @progbits, _ZTSSt23__codecvt_abstract_baseIDic11__mbstate_tE, comdat
	.weak	_ZTSSt23__codecvt_abstract_baseIDic11__mbstate_tE
	.type	_ZTSSt23__codecvt_abstract_baseIDic11__mbstate_tE, #object
	.size	_ZTSSt23__codecvt_abstract_baseIDic11__mbstate_tE, 0x2e
	.align	16
_ZTSSt23__codecvt_abstract_baseIDic11__mbstate_tE:
	.uadword	0x6f635f5f33327453
	.uadword	0x62615f7476636564
	.uadword	0x625f746361727473
	.uadword	0x3163694449657361
	.uadword	0x617473626d5f5f31
	.uaword	0x745f6574
	.uahalf	0x45
	.section .rodata._ZTISt7codecvtIDsc11__mbstate_tE, "aG", @progbits, _ZTISt7codecvtIDsc11__mbstate_tE, comdat
	.weak	_ZTISt7codecvtIDsc11__mbstate_tE
	.type	_ZTISt7codecvtIDsc11__mbstate_tE, #object
	.size	_ZTISt7codecvtIDsc11__mbstate_tE, 0x18
	.align	16
_ZTISt7codecvtIDsc11__mbstate_tE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE +16
	.dword	_ZTSSt7codecvtIDsc11__mbstate_tE
	.dword	_ZTISt23__codecvt_abstract_baseIDsc11__mbstate_tE
	.section .rodata._ZTSSt7codecvtIDsc11__mbstate_tE, "aG", @progbits, _ZTSSt7codecvtIDsc11__mbstate_tE, comdat
	.weak	_ZTSSt7codecvtIDsc11__mbstate_tE
	.type	_ZTSSt7codecvtIDsc11__mbstate_tE, #object
	.size	_ZTSSt7codecvtIDsc11__mbstate_tE, 0x1d
	.align	16
_ZTSSt7codecvtIDsc11__mbstate_tE:
	.uadword	0x6365646f63377453
	.uadword	0x3131637344497476
	.uadword	0x74617473626d5f5f
	.uaword	0x45745f65
	.byte	0x0
	.section .rodata._ZTISt7codecvtIDic11__mbstate_tE, "aG", @progbits, _ZTISt7codecvtIDic11__mbstate_tE, comdat
	.weak	_ZTISt7codecvtIDic11__mbstate_tE
	.type	_ZTISt7codecvtIDic11__mbstate_tE, #object
	.size	_ZTISt7codecvtIDic11__mbstate_tE, 0x18
	.align	16
_ZTISt7codecvtIDic11__mbstate_tE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE +16
	.dword	_ZTSSt7codecvtIDic11__mbstate_tE
	.dword	_ZTISt23__codecvt_abstract_baseIDic11__mbstate_tE
	.section .rodata._ZTSSt7codecvtIDic11__mbstate_tE, "aG", @progbits, _ZTSSt7codecvtIDic11__mbstate_tE, comdat
	.weak	_ZTSSt7codecvtIDic11__mbstate_tE
	.type	_ZTSSt7codecvtIDic11__mbstate_tE, #object
	.size	_ZTSSt7codecvtIDic11__mbstate_tE, 0x1d
	.align	16
_ZTSSt7codecvtIDic11__mbstate_tE:
	.uadword	0x6365646f63377453
	.uadword	0x3131636944497476
	.uadword	0x74617473626d5f5f
	.uaword	0x45745f65
	.byte	0x0
	.section .rodata._ZTSSt5arrayIS_IiLm6EELm7EE, "aG", @progbits, _ZTSSt5arrayIS_IiLm6EELm7EE, comdat
	.weak	_ZTSSt5arrayIS_IiLm6EELm7EE
	.type	_ZTSSt5arrayIS_IiLm6EELm7EE, #object
	.size	_ZTSSt5arrayIS_IiLm6EELm7EE, 0x18
	.align	16
_ZTSSt5arrayIS_IiLm6EELm7EE:
	.uadword	0x7961727261357453
	.uadword	0x366d4c69495f5349
	.uadword	0x4545376d4c4545
	.section .rodata._ZTSSt5arrayIS_IiLm9EELm6EE, "aG", @progbits, _ZTSSt5arrayIS_IiLm9EELm6EE, comdat
	.weak	_ZTSSt5arrayIS_IiLm9EELm6EE
	.type	_ZTSSt5arrayIS_IiLm9EELm6EE, #object
	.size	_ZTSSt5arrayIS_IiLm9EELm6EE, 0x18
	.align	16
_ZTSSt5arrayIS_IiLm9EELm6EE:
	.uadword	0x7961727261357453
	.uadword	0x396d4c69495f5349
	.uadword	0x4545366d4c4545
	.section .rodata._ZTSSt5arrayIS_IiLm9EELm7EE, "aG", @progbits, _ZTSSt5arrayIS_IiLm9EELm7EE, comdat
	.weak	_ZTSSt5arrayIS_IiLm9EELm7EE
	.type	_ZTSSt5arrayIS_IiLm9EELm7EE, #object
	.size	_ZTSSt5arrayIS_IiLm9EELm7EE, 0x18
	.align	16
_ZTSSt5arrayIS_IiLm9EELm7EE:
	.uadword	0x7961727261357453
	.uadword	0x396d4c69495f5349
	.uadword	0x4545376d4c4545
	.section .bss
	.local	_ZN29_INTERNAL_8_main_cpp_ac2eb263St8__ioinitE
	.type	_ZN29_INTERNAL_8_main_cpp_ac2eb263St8__ioinitE, #object
	.size	_ZN29_INTERNAL_8_main_cpp_ac2eb263St8__ioinitE, 0x1
	.align	1
_ZN29_INTERNAL_8_main_cpp_ac2eb263St8__ioinitE:
	.skip	0x1
	.hidden	__dso_handle
	.section .rodata
	.align	16
.LC.1:
	.ascii	"Without opti process time: \000"
	.align	8
.LC.2:
	.ascii	"sec.\000"
	.align	16
.LC.3:
	.ascii	"Optimisation process time: \000"
	.section .ctors, "aw", @progbits
	.align	8
	.dword	__sti___8_main_cpp_ac2eb263
	.weak	elbrus_optimizing_compiler_v1.25.19_Aug_25_2021
	elbrus_optimizing_compiler_v1.25.19_Aug_25_2021 = 0x0
