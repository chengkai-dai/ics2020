
ramdisk.img:     file format elf64-littleriscv


Disassembly of section .text:

00000000830000e8 <main>:
    830000e8:	fd010113          	addi	sp,sp,-48
    830000ec:	00005597          	auipc	a1,0x5
    830000f0:	45458593          	addi	a1,a1,1108 # 83005540 <_getpid_r+0xc>
    830000f4:	00d00613          	li	a2,13
    830000f8:	00100513          	li	a0,1
    830000fc:	02813023          	sd	s0,32(sp)
    83000100:	01213823          	sd	s2,16(sp)
    83000104:	02113423          	sd	ra,40(sp)
    83000108:	00913c23          	sd	s1,24(sp)
    8300010c:	00002437          	lui	s0,0x2
    83000110:	00002097          	auipc	ra,0x2
    83000114:	bb0080e7          	jalr	-1104(ra) # 83001cc0 <write>
    83000118:	00200593          	li	a1,2
    8300011c:	00012623          	sw	zero,12(sp)
    83000120:	71040413          	addi	s0,s0,1808 # 2710 <main-0x82ffd9d8>
    83000124:	00005917          	auipc	s2,0x5
    83000128:	42c90913          	addi	s2,s2,1068 # 83005550 <_getpid_r+0x1c>
    8300012c:	00c12783          	lw	a5,12(sp)
    83000130:	0017879b          	addiw	a5,a5,1
    83000134:	00f12623          	sw	a5,12(sp)
    83000138:	00c12783          	lw	a5,12(sp)
    8300013c:	0007879b          	sext.w	a5,a5
    83000140:	fe8796e3          	bne	a5,s0,8300012c <main+0x44>
    83000144:	00090513          	mv	a0,s2
    83000148:	0015849b          	addiw	s1,a1,1
    8300014c:	00000097          	auipc	ra,0x0
    83000150:	058080e7          	jalr	88(ra) # 830001a4 <printf>
    83000154:	00048593          	mv	a1,s1
    83000158:	00012623          	sw	zero,12(sp)
    8300015c:	fd1ff06f          	j	8300012c <main+0x44>

0000000083000160 <_printf_r>:
    83000160:	fb010113          	addi	sp,sp,-80
    83000164:	02c13023          	sd	a2,32(sp)
    83000168:	02d13423          	sd	a3,40(sp)
    8300016c:	02e13823          	sd	a4,48(sp)
    83000170:	02f13c23          	sd	a5,56(sp)
    83000174:	05013023          	sd	a6,64(sp)
    83000178:	05113423          	sd	a7,72(sp)
    8300017c:	00058613          	mv	a2,a1
    83000180:	01053583          	ld	a1,16(a0)
    83000184:	02010693          	addi	a3,sp,32
    83000188:	00113c23          	sd	ra,24(sp)
    8300018c:	00d13423          	sd	a3,8(sp)
    83000190:	00000097          	auipc	ra,0x0
    83000194:	068080e7          	jalr	104(ra) # 830001f8 <_vfprintf_r>
    83000198:	01813083          	ld	ra,24(sp)
    8300019c:	05010113          	addi	sp,sp,80
    830001a0:	00008067          	ret

00000000830001a4 <printf>:
    830001a4:	fa010113          	addi	sp,sp,-96
    830001a8:	02c13823          	sd	a2,48(sp)
    830001ac:	02d13c23          	sd	a3,56(sp)
    830001b0:	00007317          	auipc	t1,0x7
    830001b4:	77833303          	ld	t1,1912(t1) # 83007928 <_impure_ptr>
    830001b8:	02b13423          	sd	a1,40(sp)
    830001bc:	04e13023          	sd	a4,64(sp)
    830001c0:	04f13423          	sd	a5,72(sp)
    830001c4:	05013823          	sd	a6,80(sp)
    830001c8:	05113c23          	sd	a7,88(sp)
    830001cc:	01033583          	ld	a1,16(t1)
    830001d0:	02810693          	addi	a3,sp,40
    830001d4:	00050613          	mv	a2,a0
    830001d8:	00030513          	mv	a0,t1
    830001dc:	00113c23          	sd	ra,24(sp)
    830001e0:	00d13423          	sd	a3,8(sp)
    830001e4:	00000097          	auipc	ra,0x0
    830001e8:	014080e7          	jalr	20(ra) # 830001f8 <_vfprintf_r>
    830001ec:	01813083          	ld	ra,24(sp)
    830001f0:	06010113          	addi	sp,sp,96
    830001f4:	00008067          	ret

00000000830001f8 <_vfprintf_r>:
    830001f8:	f3010113          	addi	sp,sp,-208
    830001fc:	0a913c23          	sd	s1,184(sp)
    83000200:	0b213823          	sd	s2,176(sp)
    83000204:	0b313423          	sd	s3,168(sp)
    83000208:	09613823          	sd	s6,144(sp)
    8300020c:	0c113423          	sd	ra,200(sp)
    83000210:	0c813023          	sd	s0,192(sp)
    83000214:	0b413023          	sd	s4,160(sp)
    83000218:	09513c23          	sd	s5,152(sp)
    8300021c:	09713423          	sd	s7,136(sp)
    83000220:	09813023          	sd	s8,128(sp)
    83000224:	07913c23          	sd	s9,120(sp)
    83000228:	07a13823          	sd	s10,112(sp)
    8300022c:	07b13423          	sd	s11,104(sp)
    83000230:	00050993          	mv	s3,a0
    83000234:	00058913          	mv	s2,a1
    83000238:	00060493          	mv	s1,a2
    8300023c:	00068b13          	mv	s6,a3
    83000240:	00050663          	beqz	a0,8300024c <_vfprintf_r+0x54>
    83000244:	05052783          	lw	a5,80(a0)
    83000248:	22078e63          	beqz	a5,83000484 <_vfprintf_r+0x28c>
    8300024c:	01095783          	lhu	a5,16(s2)
    83000250:	0087f793          	andi	a5,a5,8
    83000254:	20078063          	beqz	a5,83000454 <_vfprintf_r+0x25c>
    83000258:	01893783          	ld	a5,24(s2)
    8300025c:	1e078c63          	beqz	a5,83000454 <_vfprintf_r+0x25c>
    83000260:	ffff87b7          	lui	a5,0xffff8
    83000264:	8307c793          	xori	a5,a5,-2000
    83000268:	00013423          	sd	zero,8(sp)
    8300026c:	00013023          	sd	zero,0(sp)
    83000270:	00f11f23          	sh	a5,30(sp)
    83000274:	0004c783          	lbu	a5,0(s1)
    83000278:	18078863          	beqz	a5,83000408 <_vfprintf_r+0x210>
    8300027c:	00048413          	mv	s0,s1
    83000280:	02500713          	li	a4,37
    83000284:	1ee78863          	beq	a5,a4,83000474 <_vfprintf_r+0x27c>
    83000288:	00144783          	lbu	a5,1(s0)
    8300028c:	00140413          	addi	s0,s0,1
    83000290:	fe079ae3          	bnez	a5,83000284 <_vfprintf_r+0x8c>
    83000294:	40940a3b          	subw	s4,s0,s1
    83000298:	160a0863          	beqz	s4,83000408 <_vfprintf_r+0x210>
    8300029c:	000a0693          	mv	a3,s4
    830002a0:	00048613          	mv	a2,s1
    830002a4:	00090593          	mv	a1,s2
    830002a8:	00098513          	mv	a0,s3
    830002ac:	00001097          	auipc	ra,0x1
    830002b0:	d40080e7          	jalr	-704(ra) # 83000fec <__sfputs_r>
    830002b4:	fff00793          	li	a5,-1
    830002b8:	14f50863          	beq	a0,a5,83000408 <_vfprintf_r+0x210>
    830002bc:	00013703          	ld	a4,0(sp)
    830002c0:	00044783          	lbu	a5,0(s0)
    830002c4:	0147073b          	addw	a4,a4,s4
    830002c8:	00e13023          	sd	a4,0(sp)
    830002cc:	12078e63          	beqz	a5,83000408 <_vfprintf_r+0x210>
    830002d0:	00140493          	addi	s1,s0,1
    830002d4:	020107a3          	sb	zero,47(sp)
    830002d8:	00000813          	li	a6,0
    830002dc:	00000893          	li	a7,0
    830002e0:	fff00d93          	li	s11,-1
    830002e4:	00000a13          	li	s4,0
    830002e8:	00000c13          	li	s8,0
    830002ec:	05800593          	li	a1,88
    830002f0:	00900513          	li	a0,9
    830002f4:	02a00313          	li	t1,42
    830002f8:	0004c683          	lbu	a3,0(s1)
    830002fc:	00148493          	addi	s1,s1,1
    83000300:	fe06879b          	addiw	a5,a3,-32
    83000304:	0007861b          	sext.w	a2,a5
    83000308:	04c5ee63          	bltu	a1,a2,83000364 <_vfprintf_r+0x16c>
    8300030c:	02079793          	slli	a5,a5,0x20
    83000310:	00005717          	auipc	a4,0x5
    83000314:	2a870713          	addi	a4,a4,680 # 830055b8 <_getpid_r+0x84>
    83000318:	01e7d793          	srli	a5,a5,0x1e
    8300031c:	00e787b3          	add	a5,a5,a4
    83000320:	0007a783          	lw	a5,0(a5) # ffffffffffff8000 <__BSS_END__+0xffffffff7cff0668>
    83000324:	00e787b3          	add	a5,a5,a4
    83000328:	00078067          	jr	a5
    8300032c:	00000a13          	li	s4,0
    83000330:	0004c603          	lbu	a2,0(s1)
    83000334:	002a179b          	slliw	a5,s4,0x2
    83000338:	01478a3b          	addw	s4,a5,s4
    8300033c:	fd06869b          	addiw	a3,a3,-48
    83000340:	001a1a1b          	slliw	s4,s4,0x1
    83000344:	fd06079b          	addiw	a5,a2,-48
    83000348:	01468a3b          	addw	s4,a3,s4
    8300034c:	00148493          	addi	s1,s1,1
    83000350:	0006069b          	sext.w	a3,a2
    83000354:	fcf57ee3          	bgeu	a0,a5,83000330 <_vfprintf_r+0x138>
    83000358:	fe06879b          	addiw	a5,a3,-32
    8300035c:	0007861b          	sext.w	a2,a5
    83000360:	fac5f6e3          	bgeu	a1,a2,8300030c <_vfprintf_r+0x114>
    83000364:	0a068263          	beqz	a3,83000408 <_vfprintf_r+0x210>
    83000368:	02d10c23          	sb	a3,56(sp)
    8300036c:	020107a3          	sb	zero,47(sp)
    83000370:	00100b93          	li	s7,1
    83000374:	00100c93          	li	s9,1
    83000378:	03810413          	addi	s0,sp,56
    8300037c:	000c0a93          	mv	s5,s8
    83000380:	00000d93          	li	s11,0
    83000384:	002af793          	andi	a5,s5,2
    83000388:	0007871b          	sext.w	a4,a5
    8300038c:	00e13823          	sd	a4,16(sp)
    83000390:	00078463          	beqz	a5,83000398 <_vfprintf_r+0x1a0>
    83000394:	002b8b9b          	addiw	s7,s7,2
    83000398:	084afc13          	andi	s8,s5,132
    8300039c:	000c1663          	bnez	s8,830003a8 <_vfprintf_r+0x1b0>
    830003a0:	417a0d3b          	subw	s10,s4,s7
    830003a4:	61a04e63          	bgtz	s10,830009c0 <_vfprintf_r+0x7c8>
    830003a8:	02f14783          	lbu	a5,47(sp)
    830003ac:	58079e63          	bnez	a5,83000948 <_vfprintf_r+0x750>
    830003b0:	01013783          	ld	a5,16(sp)
    830003b4:	5a079e63          	bnez	a5,83000970 <_vfprintf_r+0x778>
    830003b8:	08000793          	li	a5,128
    830003bc:	54fc0063          	beq	s8,a5,830008fc <_vfprintf_r+0x704>
    830003c0:	419d8dbb          	subw	s11,s11,s9
    830003c4:	4bb05263          	blez	s11,83000868 <_vfprintf_r+0x670>
    830003c8:	01000713          	li	a4,16
    830003cc:	47b75c63          	bge	a4,s11,83000844 <_vfprintf_r+0x64c>
    830003d0:	00005d17          	auipc	s10,0x5
    830003d4:	360d0d13          	addi	s10,s10,864 # 83005730 <zeroes.4454>
    830003d8:	fff00c13          	li	s8,-1
    830003dc:	0100006f          	j	830003ec <_vfprintf_r+0x1f4>
    830003e0:	ff0d8d9b          	addiw	s11,s11,-16
    830003e4:	01000713          	li	a4,16
    830003e8:	45b75e63          	bge	a4,s11,83000844 <_vfprintf_r+0x64c>
    830003ec:	01000693          	li	a3,16
    830003f0:	000d0613          	mv	a2,s10
    830003f4:	00090593          	mv	a1,s2
    830003f8:	00098513          	mv	a0,s3
    830003fc:	00001097          	auipc	ra,0x1
    83000400:	bf0080e7          	jalr	-1040(ra) # 83000fec <__sfputs_r>
    83000404:	fd851ee3          	bne	a0,s8,830003e0 <_vfprintf_r+0x1e8>
    83000408:	01095783          	lhu	a5,16(s2)
    8300040c:	0407f793          	andi	a5,a5,64
    83000410:	04079c63          	bnez	a5,83000468 <_vfprintf_r+0x270>
    83000414:	0c813083          	ld	ra,200(sp)
    83000418:	0c013403          	ld	s0,192(sp)
    8300041c:	00013503          	ld	a0,0(sp)
    83000420:	0b813483          	ld	s1,184(sp)
    83000424:	0b013903          	ld	s2,176(sp)
    83000428:	0a813983          	ld	s3,168(sp)
    8300042c:	0a013a03          	ld	s4,160(sp)
    83000430:	09813a83          	ld	s5,152(sp)
    83000434:	09013b03          	ld	s6,144(sp)
    83000438:	08813b83          	ld	s7,136(sp)
    8300043c:	08013c03          	ld	s8,128(sp)
    83000440:	07813c83          	ld	s9,120(sp)
    83000444:	07013d03          	ld	s10,112(sp)
    83000448:	06813d83          	ld	s11,104(sp)
    8300044c:	0d010113          	addi	sp,sp,208
    83000450:	00008067          	ret
    83000454:	00090593          	mv	a1,s2
    83000458:	00098513          	mv	a0,s3
    8300045c:	00003097          	auipc	ra,0x3
    83000460:	cd0080e7          	jalr	-816(ra) # 8300312c <__swsetup_r>
    83000464:	de050ee3          	beqz	a0,83000260 <_vfprintf_r+0x68>
    83000468:	fff00793          	li	a5,-1
    8300046c:	00f13023          	sd	a5,0(sp)
    83000470:	fa5ff06f          	j	83000414 <_vfprintf_r+0x21c>
    83000474:	40940a3b          	subw	s4,s0,s1
    83000478:	e20a12e3          	bnez	s4,8300029c <_vfprintf_r+0xa4>
    8300047c:	00044783          	lbu	a5,0(s0)
    83000480:	e4dff06f          	j	830002cc <_vfprintf_r+0xd4>
    83000484:	00001097          	auipc	ra,0x1
    83000488:	b14080e7          	jalr	-1260(ra) # 83000f98 <__sinit>
    8300048c:	dc1ff06f          	j	8300024c <_vfprintf_r+0x54>
    83000490:	010c6c13          	ori	s8,s8,16
    83000494:	000c0c1b          	sext.w	s8,s8
    83000498:	e61ff06f          	j	830002f8 <_vfprintf_r+0x100>
    8300049c:	000b2a03          	lw	s4,0(s6)
    830004a0:	008b0b13          	addi	s6,s6,8
    830004a4:	e40a5ae3          	bgez	s4,830002f8 <_vfprintf_r+0x100>
    830004a8:	41400a3b          	negw	s4,s4
    830004ac:	004c6c13          	ori	s8,s8,4
    830004b0:	000c0c1b          	sext.w	s8,s8
    830004b4:	e45ff06f          	j	830002f8 <_vfprintf_r+0x100>
    830004b8:	72081663          	bnez	a6,83000be4 <_vfprintf_r+0x9ec>
    830004bc:	010c7793          	andi	a5,s8,16
    830004c0:	008b0613          	addi	a2,s6,8
    830004c4:	22079e63          	bnez	a5,83000700 <_vfprintf_r+0x508>
    830004c8:	040c7693          	andi	a3,s8,64
    830004cc:	000b2783          	lw	a5,0(s6)
    830004d0:	64068c63          	beqz	a3,83000b28 <_vfprintf_r+0x930>
    830004d4:	0107979b          	slliw	a5,a5,0x10
    830004d8:	4107d79b          	sraiw	a5,a5,0x10
    830004dc:	00078693          	mv	a3,a5
    830004e0:	00060b13          	mv	s6,a2
    830004e4:	2206c663          	bltz	a3,83000710 <_vfprintf_r+0x518>
    830004e8:	fff00693          	li	a3,-1
    830004ec:	66dd8e63          	beq	s11,a3,83000b68 <_vfprintf_r+0x970>
    830004f0:	f7fc7c13          	andi	s8,s8,-129
    830004f4:	02f14583          	lbu	a1,47(sp)
    830004f8:	000c0c1b          	sext.w	s8,s8
    830004fc:	4a079263          	bnez	a5,830009a0 <_vfprintf_r+0x7a8>
    83000500:	4a0d9463          	bnez	s11,830009a8 <_vfprintf_r+0x7b0>
    83000504:	00000c93          	li	s9,0
    83000508:	000c0a93          	mv	s5,s8
    8300050c:	06010413          	addi	s0,sp,96
    83000510:	000d8793          	mv	a5,s11
    83000514:	019dd463          	bge	s11,s9,8300051c <_vfprintf_r+0x324>
    83000518:	000c8793          	mv	a5,s9
    8300051c:	00078b9b          	sext.w	s7,a5
    83000520:	e60582e3          	beqz	a1,83000384 <_vfprintf_r+0x18c>
    83000524:	00178b9b          	addiw	s7,a5,1
    83000528:	e5dff06f          	j	83000384 <_vfprintf_r+0x18c>
    8300052c:	010c6c13          	ori	s8,s8,16
    83000530:	000c0c1b          	sext.w	s8,s8
    83000534:	008b0613          	addi	a2,s6,8
    83000538:	000b3783          	ld	a5,0(s6)
    8300053c:	00000693          	li	a3,0
    83000540:	00060b13          	mv	s6,a2
    83000544:	020107a3          	sb	zero,47(sp)
    83000548:	fff00613          	li	a2,-1
    8300054c:	00000593          	li	a1,0
    83000550:	1ccd8e63          	beq	s11,a2,8300072c <_vfprintf_r+0x534>
    83000554:	f7fc7a93          	andi	s5,s8,-129
    83000558:	000a8a9b          	sext.w	s5,s5
    8300055c:	42079c63          	bnez	a5,83000994 <_vfprintf_r+0x79c>
    83000560:	340d9a63          	bnez	s11,830008b4 <_vfprintf_r+0x6bc>
    83000564:	50069e63          	bnez	a3,83000a80 <_vfprintf_r+0x888>
    83000568:	001c7c93          	andi	s9,s8,1
    8300056c:	06010413          	addi	s0,sp,96
    83000570:	fa0c80e3          	beqz	s9,83000510 <_vfprintf_r+0x318>
    83000574:	03000793          	li	a5,48
    83000578:	04f10fa3          	sb	a5,95(sp)
    8300057c:	05f10413          	addi	s0,sp,95
    83000580:	f91ff06f          	j	83000510 <_vfprintf_r+0x318>
    83000584:	010c6c13          	ori	s8,s8,16
    83000588:	000c0c1b          	sext.w	s8,s8
    8300058c:	008b0613          	addi	a2,s6,8
    83000590:	000b3783          	ld	a5,0(s6)
    83000594:	00100693          	li	a3,1
    83000598:	00060b13          	mv	s6,a2
    8300059c:	fa9ff06f          	j	83000544 <_vfprintf_r+0x34c>
    830005a0:	62081e63          	bnez	a6,83000bdc <_vfprintf_r+0x9e4>
    830005a4:	010c7793          	andi	a5,s8,16
    830005a8:	008b0613          	addi	a2,s6,8
    830005ac:	f80796e3          	bnez	a5,83000538 <_vfprintf_r+0x340>
    830005b0:	040c7693          	andi	a3,s8,64
    830005b4:	000b2783          	lw	a5,0(s6)
    830005b8:	54068e63          	beqz	a3,83000b14 <_vfprintf_r+0x91c>
    830005bc:	03079793          	slli	a5,a5,0x30
    830005c0:	0307d793          	srli	a5,a5,0x30
    830005c4:	00060b13          	mv	s6,a2
    830005c8:	00000693          	li	a3,0
    830005cc:	f79ff06f          	j	83000544 <_vfprintf_r+0x34c>
    830005d0:	01e15703          	lhu	a4,30(sp)
    830005d4:	002c6c13          	ori	s8,s8,2
    830005d8:	000b3783          	ld	a5,0(s6)
    830005dc:	02e11823          	sh	a4,48(sp)
    830005e0:	00005717          	auipc	a4,0x5
    830005e4:	fb870713          	addi	a4,a4,-72 # 83005598 <_getpid_r+0x64>
    830005e8:	000c0c1b          	sext.w	s8,s8
    830005ec:	008b0b13          	addi	s6,s6,8
    830005f0:	00e13423          	sd	a4,8(sp)
    830005f4:	00200693          	li	a3,2
    830005f8:	f4dff06f          	j	83000544 <_vfprintf_r+0x34c>
    830005fc:	60081463          	bnez	a6,83000c04 <_vfprintf_r+0xa0c>
    83000600:	00005797          	auipc	a5,0x5
    83000604:	f8078793          	addi	a5,a5,-128 # 83005580 <_getpid_r+0x4c>
    83000608:	00f13423          	sd	a5,8(sp)
    8300060c:	010c7793          	andi	a5,s8,16
    83000610:	008b0613          	addi	a2,s6,8
    83000614:	06078863          	beqz	a5,83000684 <_vfprintf_r+0x48c>
    83000618:	000b3783          	ld	a5,0(s6)
    8300061c:	001c7593          	andi	a1,s8,1
    83000620:	3e058463          	beqz	a1,83000a08 <_vfprintf_r+0x810>
    83000624:	3e078263          	beqz	a5,83000a08 <_vfprintf_r+0x810>
    83000628:	002c6c13          	ori	s8,s8,2
    8300062c:	03000593          	li	a1,48
    83000630:	02d108a3          	sb	a3,49(sp)
    83000634:	02b10823          	sb	a1,48(sp)
    83000638:	000c0c1b          	sext.w	s8,s8
    8300063c:	00060b13          	mv	s6,a2
    83000640:	00200693          	li	a3,2
    83000644:	f01ff06f          	j	83000544 <_vfprintf_r+0x34c>
    83000648:	000b2783          	lw	a5,0(s6)
    8300064c:	020107a3          	sb	zero,47(sp)
    83000650:	008b0b13          	addi	s6,s6,8
    83000654:	02f10c23          	sb	a5,56(sp)
    83000658:	00100b93          	li	s7,1
    8300065c:	00100c93          	li	s9,1
    83000660:	03810413          	addi	s0,sp,56
    83000664:	d19ff06f          	j	8300037c <_vfprintf_r+0x184>
    83000668:	58081a63          	bnez	a6,83000bfc <_vfprintf_r+0xa04>
    8300066c:	00005797          	auipc	a5,0x5
    83000670:	f2c78793          	addi	a5,a5,-212 # 83005598 <_getpid_r+0x64>
    83000674:	00f13423          	sd	a5,8(sp)
    83000678:	010c7793          	andi	a5,s8,16
    8300067c:	008b0613          	addi	a2,s6,8
    83000680:	f8079ce3          	bnez	a5,83000618 <_vfprintf_r+0x420>
    83000684:	040c7593          	andi	a1,s8,64
    83000688:	000b2783          	lw	a5,0(s6)
    8300068c:	4a058463          	beqz	a1,83000b34 <_vfprintf_r+0x93c>
    83000690:	03079793          	slli	a5,a5,0x30
    83000694:	0307d793          	srli	a5,a5,0x30
    83000698:	f85ff06f          	j	8300061c <_vfprintf_r+0x424>
    8300069c:	040c6c13          	ori	s8,s8,64
    830006a0:	000c0c1b          	sext.w	s8,s8
    830006a4:	c55ff06f          	j	830002f8 <_vfprintf_r+0x100>
    830006a8:	54081663          	bnez	a6,83000bf4 <_vfprintf_r+0x9fc>
    830006ac:	010c7793          	andi	a5,s8,16
    830006b0:	000b3703          	ld	a4,0(s6)
    830006b4:	008b0b13          	addi	s6,s6,8
    830006b8:	48078e63          	beqz	a5,83000b54 <_vfprintf_r+0x95c>
    830006bc:	00013783          	ld	a5,0(sp)
    830006c0:	00f73023          	sd	a5,0(a4)
    830006c4:	bb1ff06f          	j	83000274 <_vfprintf_r+0x7c>
    830006c8:	c20898e3          	bnez	a7,830002f8 <_vfprintf_r+0x100>
    830006cc:	00100813          	li	a6,1
    830006d0:	02000893          	li	a7,32
    830006d4:	c25ff06f          	j	830002f8 <_vfprintf_r+0x100>
    830006d8:	001c6c13          	ori	s8,s8,1
    830006dc:	000c0c1b          	sext.w	s8,s8
    830006e0:	c19ff06f          	j	830002f8 <_vfprintf_r+0x100>
    830006e4:	080c6c13          	ori	s8,s8,128
    830006e8:	000c0c1b          	sext.w	s8,s8
    830006ec:	c0dff06f          	j	830002f8 <_vfprintf_r+0x100>
    830006f0:	4e081e63          	bnez	a6,83000bec <_vfprintf_r+0x9f4>
    830006f4:	010c6c13          	ori	s8,s8,16
    830006f8:	000c0c1b          	sext.w	s8,s8
    830006fc:	008b0613          	addi	a2,s6,8
    83000700:	000b3683          	ld	a3,0(s6)
    83000704:	00060b13          	mv	s6,a2
    83000708:	00068793          	mv	a5,a3
    8300070c:	dc06dee3          	bgez	a3,830004e8 <_vfprintf_r+0x2f0>
    83000710:	02d00693          	li	a3,45
    83000714:	02d107a3          	sb	a3,47(sp)
    83000718:	fff00613          	li	a2,-1
    8300071c:	40f007b3          	neg	a5,a5
    83000720:	02d00593          	li	a1,45
    83000724:	00100693          	li	a3,1
    83000728:	e2cd96e3          	bne	s11,a2,83000554 <_vfprintf_r+0x35c>
    8300072c:	00100613          	li	a2,1
    83000730:	26c68863          	beq	a3,a2,830009a0 <_vfprintf_r+0x7a8>
    83000734:	00200613          	li	a2,2
    83000738:	18c68863          	beq	a3,a2,830008c8 <_vfprintf_r+0x6d0>
    8300073c:	06010413          	addi	s0,sp,96
    83000740:	0077f693          	andi	a3,a5,7
    83000744:	03068693          	addi	a3,a3,48
    83000748:	fed40fa3          	sb	a3,-1(s0)
    8300074c:	0037d793          	srli	a5,a5,0x3
    83000750:	00040613          	mv	a2,s0
    83000754:	fff40413          	addi	s0,s0,-1
    83000758:	fe0794e3          	bnez	a5,83000740 <_vfprintf_r+0x548>
    8300075c:	001c7793          	andi	a5,s8,1
    83000760:	18078663          	beqz	a5,830008ec <_vfprintf_r+0x6f4>
    83000764:	03000793          	li	a5,48
    83000768:	18f68263          	beq	a3,a5,830008ec <_vfprintf_r+0x6f4>
    8300076c:	ffe60613          	addi	a2,a2,-2
    83000770:	fef40fa3          	sb	a5,-1(s0)
    83000774:	06010793          	addi	a5,sp,96
    83000778:	40c78cbb          	subw	s9,a5,a2
    8300077c:	000c0a93          	mv	s5,s8
    83000780:	00060413          	mv	s0,a2
    83000784:	d8dff06f          	j	83000510 <_vfprintf_r+0x318>
    83000788:	0004c683          	lbu	a3,0(s1)
    8300078c:	00148493          	addi	s1,s1,1
    83000790:	46668e63          	beq	a3,t1,83000c0c <_vfprintf_r+0xa14>
    83000794:	fd068e1b          	addiw	t3,a3,-48
    83000798:	00000d93          	li	s11,0
    8300079c:	b7c562e3          	bltu	a0,t3,83000300 <_vfprintf_r+0x108>
    830007a0:	0004c683          	lbu	a3,0(s1)
    830007a4:	002d979b          	slliw	a5,s11,0x2
    830007a8:	01b787bb          	addw	a5,a5,s11
    830007ac:	0017979b          	slliw	a5,a5,0x1
    830007b0:	01c78dbb          	addw	s11,a5,t3
    830007b4:	fd068e1b          	addiw	t3,a3,-48
    830007b8:	00148493          	addi	s1,s1,1
    830007bc:	ffc572e3          	bgeu	a0,t3,830007a0 <_vfprintf_r+0x5a8>
    830007c0:	b41ff06f          	j	83000300 <_vfprintf_r+0x108>
    830007c4:	000b3403          	ld	s0,0(s6)
    830007c8:	020107a3          	sb	zero,47(sp)
    830007cc:	008b0b13          	addi	s6,s6,8
    830007d0:	3a040063          	beqz	s0,83000b70 <_vfprintf_r+0x978>
    830007d4:	fff00793          	li	a5,-1
    830007d8:	3afd8a63          	beq	s11,a5,83000b8c <_vfprintf_r+0x994>
    830007dc:	00000593          	li	a1,0
    830007e0:	000d8613          	mv	a2,s11
    830007e4:	00040513          	mv	a0,s0
    830007e8:	00002097          	auipc	ra,0x2
    830007ec:	dbc080e7          	jalr	-580(ra) # 830025a4 <memchr>
    830007f0:	02f14583          	lbu	a1,47(sp)
    830007f4:	3c050863          	beqz	a0,83000bc4 <_vfprintf_r+0x9cc>
    830007f8:	40850cbb          	subw	s9,a0,s0
    830007fc:	000c0a93          	mv	s5,s8
    83000800:	00000d93          	li	s11,0
    83000804:	d0dff06f          	j	83000510 <_vfprintf_r+0x318>
    83000808:	3c081663          	bnez	a6,83000bd4 <_vfprintf_r+0x9dc>
    8300080c:	010c7793          	andi	a5,s8,16
    83000810:	008b0613          	addi	a2,s6,8
    83000814:	d6079ee3          	bnez	a5,83000590 <_vfprintf_r+0x398>
    83000818:	040c7693          	andi	a3,s8,64
    8300081c:	000b2783          	lw	a5,0(s6)
    83000820:	32068063          	beqz	a3,83000b40 <_vfprintf_r+0x948>
    83000824:	03079793          	slli	a5,a5,0x30
    83000828:	0307d793          	srli	a5,a5,0x30
    8300082c:	00060b13          	mv	s6,a2
    83000830:	00100693          	li	a3,1
    83000834:	d11ff06f          	j	83000544 <_vfprintf_r+0x34c>
    83000838:	00100813          	li	a6,1
    8300083c:	02b00893          	li	a7,43
    83000840:	ab9ff06f          	j	830002f8 <_vfprintf_r+0x100>
    83000844:	000d8693          	mv	a3,s11
    83000848:	00005617          	auipc	a2,0x5
    8300084c:	ee860613          	addi	a2,a2,-280 # 83005730 <zeroes.4454>
    83000850:	00090593          	mv	a1,s2
    83000854:	00098513          	mv	a0,s3
    83000858:	00000097          	auipc	ra,0x0
    8300085c:	794080e7          	jalr	1940(ra) # 83000fec <__sfputs_r>
    83000860:	fff00793          	li	a5,-1
    83000864:	baf502e3          	beq	a0,a5,83000408 <_vfprintf_r+0x210>
    83000868:	000c8693          	mv	a3,s9
    8300086c:	00040613          	mv	a2,s0
    83000870:	00090593          	mv	a1,s2
    83000874:	00098513          	mv	a0,s3
    83000878:	00000097          	auipc	ra,0x0
    8300087c:	774080e7          	jalr	1908(ra) # 83000fec <__sfputs_r>
    83000880:	fff00793          	li	a5,-1
    83000884:	b8f502e3          	beq	a0,a5,83000408 <_vfprintf_r+0x210>
    83000888:	004afa93          	andi	s5,s5,4
    8300088c:	000a8663          	beqz	s5,83000898 <_vfprintf_r+0x6a0>
    83000890:	417a043b          	subw	s0,s4,s7
    83000894:	18804063          	bgtz	s0,83000a14 <_vfprintf_r+0x81c>
    83000898:	000a0793          	mv	a5,s4
    8300089c:	017a5463          	bge	s4,s7,830008a4 <_vfprintf_r+0x6ac>
    830008a0:	000b8793          	mv	a5,s7
    830008a4:	00013703          	ld	a4,0(sp)
    830008a8:	00e787bb          	addw	a5,a5,a4
    830008ac:	00f13023          	sd	a5,0(sp)
    830008b0:	9c5ff06f          	j	83000274 <_vfprintf_r+0x7c>
    830008b4:	00100613          	li	a2,1
    830008b8:	30c68263          	beq	a3,a2,83000bbc <_vfprintf_r+0x9c4>
    830008bc:	00200613          	li	a2,2
    830008c0:	000a8c13          	mv	s8,s5
    830008c4:	e6c69ce3          	bne	a3,a2,8300073c <_vfprintf_r+0x544>
    830008c8:	06010413          	addi	s0,sp,96
    830008cc:	00813703          	ld	a4,8(sp)
    830008d0:	00f7f693          	andi	a3,a5,15
    830008d4:	fff40413          	addi	s0,s0,-1
    830008d8:	00d706b3          	add	a3,a4,a3
    830008dc:	0006c683          	lbu	a3,0(a3)
    830008e0:	0047d793          	srli	a5,a5,0x4
    830008e4:	00d40023          	sb	a3,0(s0)
    830008e8:	fe0792e3          	bnez	a5,830008cc <_vfprintf_r+0x6d4>
    830008ec:	06010793          	addi	a5,sp,96
    830008f0:	40878cbb          	subw	s9,a5,s0
    830008f4:	000c0a93          	mv	s5,s8
    830008f8:	c19ff06f          	j	83000510 <_vfprintf_r+0x318>
    830008fc:	417a0d3b          	subw	s10,s4,s7
    83000900:	ada050e3          	blez	s10,830003c0 <_vfprintf_r+0x1c8>
    83000904:	01000693          	li	a3,16
    83000908:	19a6d263          	bge	a3,s10,83000a8c <_vfprintf_r+0x894>
    8300090c:	00005c17          	auipc	s8,0x5
    83000910:	e24c0c13          	addi	s8,s8,-476 # 83005730 <zeroes.4454>
    83000914:	0100006f          	j	83000924 <_vfprintf_r+0x72c>
    83000918:	ff0d0d1b          	addiw	s10,s10,-16
    8300091c:	01000693          	li	a3,16
    83000920:	17a6d663          	bge	a3,s10,83000a8c <_vfprintf_r+0x894>
    83000924:	01000693          	li	a3,16
    83000928:	000c0613          	mv	a2,s8
    8300092c:	00090593          	mv	a1,s2
    83000930:	00098513          	mv	a0,s3
    83000934:	00000097          	auipc	ra,0x0
    83000938:	6b8080e7          	jalr	1720(ra) # 83000fec <__sfputs_r>
    8300093c:	fff00793          	li	a5,-1
    83000940:	fcf51ce3          	bne	a0,a5,83000918 <_vfprintf_r+0x720>
    83000944:	ac5ff06f          	j	83000408 <_vfprintf_r+0x210>
    83000948:	00100693          	li	a3,1
    8300094c:	02f10613          	addi	a2,sp,47
    83000950:	00090593          	mv	a1,s2
    83000954:	00098513          	mv	a0,s3
    83000958:	00000097          	auipc	ra,0x0
    8300095c:	694080e7          	jalr	1684(ra) # 83000fec <__sfputs_r>
    83000960:	fff00793          	li	a5,-1
    83000964:	aaf502e3          	beq	a0,a5,83000408 <_vfprintf_r+0x210>
    83000968:	01013783          	ld	a5,16(sp)
    8300096c:	a40786e3          	beqz	a5,830003b8 <_vfprintf_r+0x1c0>
    83000970:	00200693          	li	a3,2
    83000974:	03010613          	addi	a2,sp,48
    83000978:	00090593          	mv	a1,s2
    8300097c:	00098513          	mv	a0,s3
    83000980:	00000097          	auipc	ra,0x0
    83000984:	66c080e7          	jalr	1644(ra) # 83000fec <__sfputs_r>
    83000988:	fff00793          	li	a5,-1
    8300098c:	a2f516e3          	bne	a0,a5,830003b8 <_vfprintf_r+0x1c0>
    83000990:	a79ff06f          	j	83000408 <_vfprintf_r+0x210>
    83000994:	00100613          	li	a2,1
    83000998:	000a8c13          	mv	s8,s5
    8300099c:	d8c69ce3          	bne	a3,a2,83000734 <_vfprintf_r+0x53c>
    830009a0:	00900693          	li	a3,9
    830009a4:	12f6ec63          	bltu	a3,a5,83000adc <_vfprintf_r+0x8e4>
    830009a8:	0307879b          	addiw	a5,a5,48
    830009ac:	04f10fa3          	sb	a5,95(sp)
    830009b0:	000c0a93          	mv	s5,s8
    830009b4:	00100c93          	li	s9,1
    830009b8:	05f10413          	addi	s0,sp,95
    830009bc:	b55ff06f          	j	83000510 <_vfprintf_r+0x318>
    830009c0:	01000693          	li	a3,16
    830009c4:	09a6da63          	bge	a3,s10,83000a58 <_vfprintf_r+0x860>
    830009c8:	00005617          	auipc	a2,0x5
    830009cc:	d5860613          	addi	a2,a2,-680 # 83005720 <blanks.4453>
    830009d0:	0180006f          	j	830009e8 <_vfprintf_r+0x7f0>
    830009d4:	ff0d0d1b          	addiw	s10,s10,-16
    830009d8:	01000693          	li	a3,16
    830009dc:	00005617          	auipc	a2,0x5
    830009e0:	d4460613          	addi	a2,a2,-700 # 83005720 <blanks.4453>
    830009e4:	07a6da63          	bge	a3,s10,83000a58 <_vfprintf_r+0x860>
    830009e8:	01000693          	li	a3,16
    830009ec:	00090593          	mv	a1,s2
    830009f0:	00098513          	mv	a0,s3
    830009f4:	00000097          	auipc	ra,0x0
    830009f8:	5f8080e7          	jalr	1528(ra) # 83000fec <__sfputs_r>
    830009fc:	fff00793          	li	a5,-1
    83000a00:	fcf51ae3          	bne	a0,a5,830009d4 <_vfprintf_r+0x7dc>
    83000a04:	a05ff06f          	j	83000408 <_vfprintf_r+0x210>
    83000a08:	00060b13          	mv	s6,a2
    83000a0c:	00200693          	li	a3,2
    83000a10:	b35ff06f          	j	83000544 <_vfprintf_r+0x34c>
    83000a14:	01000793          	li	a5,16
    83000a18:	0887de63          	bge	a5,s0,83000ab4 <_vfprintf_r+0x8bc>
    83000a1c:	00005c17          	auipc	s8,0x5
    83000a20:	d04c0c13          	addi	s8,s8,-764 # 83005720 <blanks.4453>
    83000a24:	fff00a93          	li	s5,-1
    83000a28:	0100006f          	j	83000a38 <_vfprintf_r+0x840>
    83000a2c:	ff04041b          	addiw	s0,s0,-16
    83000a30:	01000793          	li	a5,16
    83000a34:	0887d063          	bge	a5,s0,83000ab4 <_vfprintf_r+0x8bc>
    83000a38:	01000693          	li	a3,16
    83000a3c:	000c0613          	mv	a2,s8
    83000a40:	00090593          	mv	a1,s2
    83000a44:	00098513          	mv	a0,s3
    83000a48:	00000097          	auipc	ra,0x0
    83000a4c:	5a4080e7          	jalr	1444(ra) # 83000fec <__sfputs_r>
    83000a50:	fd551ee3          	bne	a0,s5,83000a2c <_vfprintf_r+0x834>
    83000a54:	9b5ff06f          	j	83000408 <_vfprintf_r+0x210>
    83000a58:	000d0693          	mv	a3,s10
    83000a5c:	00005617          	auipc	a2,0x5
    83000a60:	cc460613          	addi	a2,a2,-828 # 83005720 <blanks.4453>
    83000a64:	00090593          	mv	a1,s2
    83000a68:	00098513          	mv	a0,s3
    83000a6c:	00000097          	auipc	ra,0x0
    83000a70:	580080e7          	jalr	1408(ra) # 83000fec <__sfputs_r>
    83000a74:	fff00793          	li	a5,-1
    83000a78:	92f518e3          	bne	a0,a5,830003a8 <_vfprintf_r+0x1b0>
    83000a7c:	98dff06f          	j	83000408 <_vfprintf_r+0x210>
    83000a80:	00000c93          	li	s9,0
    83000a84:	06010413          	addi	s0,sp,96
    83000a88:	a89ff06f          	j	83000510 <_vfprintf_r+0x318>
    83000a8c:	000d0693          	mv	a3,s10
    83000a90:	00005617          	auipc	a2,0x5
    83000a94:	ca060613          	addi	a2,a2,-864 # 83005730 <zeroes.4454>
    83000a98:	00090593          	mv	a1,s2
    83000a9c:	00098513          	mv	a0,s3
    83000aa0:	00000097          	auipc	ra,0x0
    83000aa4:	54c080e7          	jalr	1356(ra) # 83000fec <__sfputs_r>
    83000aa8:	fff00793          	li	a5,-1
    83000aac:	90f51ae3          	bne	a0,a5,830003c0 <_vfprintf_r+0x1c8>
    83000ab0:	959ff06f          	j	83000408 <_vfprintf_r+0x210>
    83000ab4:	00040693          	mv	a3,s0
    83000ab8:	00005617          	auipc	a2,0x5
    83000abc:	c6860613          	addi	a2,a2,-920 # 83005720 <blanks.4453>
    83000ac0:	00090593          	mv	a1,s2
    83000ac4:	00098513          	mv	a0,s3
    83000ac8:	00000097          	auipc	ra,0x0
    83000acc:	524080e7          	jalr	1316(ra) # 83000fec <__sfputs_r>
    83000ad0:	fff00793          	li	a5,-1
    83000ad4:	dcf512e3          	bne	a0,a5,83000898 <_vfprintf_r+0x6a0>
    83000ad8:	931ff06f          	j	83000408 <_vfprintf_r+0x210>
    83000adc:	06010413          	addi	s0,sp,96
    83000ae0:	00a00613          	li	a2,10
    83000ae4:	00900813          	li	a6,9
    83000ae8:	02c7f6b3          	remu	a3,a5,a2
    83000aec:	fff40413          	addi	s0,s0,-1
    83000af0:	00078513          	mv	a0,a5
    83000af4:	0306869b          	addiw	a3,a3,48
    83000af8:	00d40023          	sb	a3,0(s0)
    83000afc:	02c7d7b3          	divu	a5,a5,a2
    83000b00:	fea864e3          	bltu	a6,a0,83000ae8 <_vfprintf_r+0x8f0>
    83000b04:	06010793          	addi	a5,sp,96
    83000b08:	40878cbb          	subw	s9,a5,s0
    83000b0c:	000c0a93          	mv	s5,s8
    83000b10:	a01ff06f          	j	83000510 <_vfprintf_r+0x318>
    83000b14:	02079793          	slli	a5,a5,0x20
    83000b18:	0207d793          	srli	a5,a5,0x20
    83000b1c:	00060b13          	mv	s6,a2
    83000b20:	00000693          	li	a3,0
    83000b24:	a21ff06f          	j	83000544 <_vfprintf_r+0x34c>
    83000b28:	00078693          	mv	a3,a5
    83000b2c:	00060b13          	mv	s6,a2
    83000b30:	9b5ff06f          	j	830004e4 <_vfprintf_r+0x2ec>
    83000b34:	02079793          	slli	a5,a5,0x20
    83000b38:	0207d793          	srli	a5,a5,0x20
    83000b3c:	ae1ff06f          	j	8300061c <_vfprintf_r+0x424>
    83000b40:	02079793          	slli	a5,a5,0x20
    83000b44:	0207d793          	srli	a5,a5,0x20
    83000b48:	00060b13          	mv	s6,a2
    83000b4c:	00100693          	li	a3,1
    83000b50:	9f5ff06f          	j	83000544 <_vfprintf_r+0x34c>
    83000b54:	040c7c13          	andi	s8,s8,64
    83000b58:	00013783          	ld	a5,0(sp)
    83000b5c:	040c0863          	beqz	s8,83000bac <_vfprintf_r+0x9b4>
    83000b60:	00f71023          	sh	a5,0(a4)
    83000b64:	f10ff06f          	j	83000274 <_vfprintf_r+0x7c>
    83000b68:	02f14583          	lbu	a1,47(sp)
    83000b6c:	e35ff06f          	j	830009a0 <_vfprintf_r+0x7a8>
    83000b70:	00600793          	li	a5,6
    83000b74:	000d8c9b          	sext.w	s9,s11
    83000b78:	03b7ee63          	bltu	a5,s11,83000bb4 <_vfprintf_r+0x9bc>
    83000b7c:	000c8b93          	mv	s7,s9
    83000b80:	00005417          	auipc	s0,0x5
    83000b84:	a3040413          	addi	s0,s0,-1488 # 830055b0 <_getpid_r+0x7c>
    83000b88:	ff4ff06f          	j	8300037c <_vfprintf_r+0x184>
    83000b8c:	00040513          	mv	a0,s0
    83000b90:	00002097          	auipc	ra,0x2
    83000b94:	af4080e7          	jalr	-1292(ra) # 83002684 <strlen>
    83000b98:	02f14583          	lbu	a1,47(sp)
    83000b9c:	00050c9b          	sext.w	s9,a0
    83000ba0:	000c0a93          	mv	s5,s8
    83000ba4:	00000d93          	li	s11,0
    83000ba8:	969ff06f          	j	83000510 <_vfprintf_r+0x318>
    83000bac:	00f72023          	sw	a5,0(a4)
    83000bb0:	ec4ff06f          	j	83000274 <_vfprintf_r+0x7c>
    83000bb4:	00600c93          	li	s9,6
    83000bb8:	fc5ff06f          	j	83000b7c <_vfprintf_r+0x984>
    83000bbc:	000a8c13          	mv	s8,s5
    83000bc0:	de9ff06f          	j	830009a8 <_vfprintf_r+0x7b0>
    83000bc4:	000d8c93          	mv	s9,s11
    83000bc8:	000c0a93          	mv	s5,s8
    83000bcc:	00000d93          	li	s11,0
    83000bd0:	941ff06f          	j	83000510 <_vfprintf_r+0x318>
    83000bd4:	031107a3          	sb	a7,47(sp)
    83000bd8:	c35ff06f          	j	8300080c <_vfprintf_r+0x614>
    83000bdc:	031107a3          	sb	a7,47(sp)
    83000be0:	9c5ff06f          	j	830005a4 <_vfprintf_r+0x3ac>
    83000be4:	031107a3          	sb	a7,47(sp)
    83000be8:	8d5ff06f          	j	830004bc <_vfprintf_r+0x2c4>
    83000bec:	031107a3          	sb	a7,47(sp)
    83000bf0:	b05ff06f          	j	830006f4 <_vfprintf_r+0x4fc>
    83000bf4:	031107a3          	sb	a7,47(sp)
    83000bf8:	ab5ff06f          	j	830006ac <_vfprintf_r+0x4b4>
    83000bfc:	031107a3          	sb	a7,47(sp)
    83000c00:	a6dff06f          	j	8300066c <_vfprintf_r+0x474>
    83000c04:	031107a3          	sb	a7,47(sp)
    83000c08:	9f9ff06f          	j	83000600 <_vfprintf_r+0x408>
    83000c0c:	000b2703          	lw	a4,0(s6)
    83000c10:	008b0b13          	addi	s6,s6,8
    83000c14:	00070793          	mv	a5,a4
    83000c18:	00074663          	bltz	a4,83000c24 <_vfprintf_r+0xa2c>
    83000c1c:	00078d9b          	sext.w	s11,a5
    83000c20:	ed8ff06f          	j	830002f8 <_vfprintf_r+0x100>
    83000c24:	fff00793          	li	a5,-1
    83000c28:	00078d9b          	sext.w	s11,a5
    83000c2c:	eccff06f          	j	830002f8 <_vfprintf_r+0x100>

0000000083000c30 <vfprintf>:
    83000c30:	00060693          	mv	a3,a2
    83000c34:	00058613          	mv	a2,a1
    83000c38:	00050593          	mv	a1,a0
    83000c3c:	00007517          	auipc	a0,0x7
    83000c40:	cec53503          	ld	a0,-788(a0) # 83007928 <_impure_ptr>
    83000c44:	fffff317          	auipc	t1,0xfffff
    83000c48:	5b430067          	jr	1460(t1) # 830001f8 <_vfprintf_r>

0000000083000c4c <__fp_lock>:
    83000c4c:	00000513          	li	a0,0
    83000c50:	00008067          	ret

0000000083000c54 <_cleanup_r>:
    83000c54:	00002597          	auipc	a1,0x2
    83000c58:	7b458593          	addi	a1,a1,1972 # 83003408 <_fclose_r>
    83000c5c:	00002317          	auipc	t1,0x2
    83000c60:	14430067          	jr	324(t1) # 83002da0 <_fwalk_reent>

0000000083000c64 <__sinit.part.0>:
    83000c64:	fc010113          	addi	sp,sp,-64
    83000c68:	02113c23          	sd	ra,56(sp)
    83000c6c:	02813823          	sd	s0,48(sp)
    83000c70:	02913423          	sd	s1,40(sp)
    83000c74:	03213023          	sd	s2,32(sp)
    83000c78:	01313c23          	sd	s3,24(sp)
    83000c7c:	01413823          	sd	s4,16(sp)
    83000c80:	01513423          	sd	s5,8(sp)
    83000c84:	01613023          	sd	s6,0(sp)
    83000c88:	00853403          	ld	s0,8(a0)
    83000c8c:	00000717          	auipc	a4,0x0
    83000c90:	fc870713          	addi	a4,a4,-56 # 83000c54 <_cleanup_r>
    83000c94:	04e53c23          	sd	a4,88(a0)
    83000c98:	53850793          	addi	a5,a0,1336
    83000c9c:	00300713          	li	a4,3
    83000ca0:	52e52423          	sw	a4,1320(a0)
    83000ca4:	52f53823          	sd	a5,1328(a0)
    83000ca8:	52053023          	sd	zero,1312(a0)
    83000cac:	00400793          	li	a5,4
    83000cb0:	00050913          	mv	s2,a0
    83000cb4:	00f42823          	sw	a5,16(s0)
    83000cb8:	00800613          	li	a2,8
    83000cbc:	00000593          	li	a1,0
    83000cc0:	0a042623          	sw	zero,172(s0)
    83000cc4:	00043023          	sd	zero,0(s0)
    83000cc8:	00043423          	sd	zero,8(s0)
    83000ccc:	00043c23          	sd	zero,24(s0)
    83000cd0:	02042023          	sw	zero,32(s0)
    83000cd4:	02042423          	sw	zero,40(s0)
    83000cd8:	0a440513          	addi	a0,s0,164
    83000cdc:	00002097          	auipc	ra,0x2
    83000ce0:	a30080e7          	jalr	-1488(ra) # 8300270c <memset>
    83000ce4:	01093483          	ld	s1,16(s2)
    83000ce8:	00002b17          	auipc	s6,0x2
    83000cec:	5b0b0b13          	addi	s6,s6,1456 # 83003298 <__sread>
    83000cf0:	00002a97          	auipc	s5,0x2
    83000cf4:	610a8a93          	addi	s5,s5,1552 # 83003300 <__swrite>
    83000cf8:	00002a17          	auipc	s4,0x2
    83000cfc:	698a0a13          	addi	s4,s4,1688 # 83003390 <__sseek>
    83000d00:	00002997          	auipc	s3,0x2
    83000d04:	6fc98993          	addi	s3,s3,1788 # 830033fc <__sclose>
    83000d08:	000107b7          	lui	a5,0x10
    83000d0c:	03643c23          	sd	s6,56(s0)
    83000d10:	05543023          	sd	s5,64(s0)
    83000d14:	05443423          	sd	s4,72(s0)
    83000d18:	05343823          	sd	s3,80(s0)
    83000d1c:	02843823          	sd	s0,48(s0)
    83000d20:	0097879b          	addiw	a5,a5,9
    83000d24:	00f4a823          	sw	a5,16(s1)
    83000d28:	00800613          	li	a2,8
    83000d2c:	00000593          	li	a1,0
    83000d30:	0a04a623          	sw	zero,172(s1)
    83000d34:	0004b023          	sd	zero,0(s1)
    83000d38:	0004b423          	sd	zero,8(s1)
    83000d3c:	0004bc23          	sd	zero,24(s1)
    83000d40:	0204a023          	sw	zero,32(s1)
    83000d44:	0204a423          	sw	zero,40(s1)
    83000d48:	0a448513          	addi	a0,s1,164
    83000d4c:	00002097          	auipc	ra,0x2
    83000d50:	9c0080e7          	jalr	-1600(ra) # 8300270c <memset>
    83000d54:	01893403          	ld	s0,24(s2)
    83000d58:	000207b7          	lui	a5,0x20
    83000d5c:	0364bc23          	sd	s6,56(s1)
    83000d60:	0554b023          	sd	s5,64(s1)
    83000d64:	0544b423          	sd	s4,72(s1)
    83000d68:	0534b823          	sd	s3,80(s1)
    83000d6c:	0294b823          	sd	s1,48(s1)
    83000d70:	0127879b          	addiw	a5,a5,18
    83000d74:	00f42823          	sw	a5,16(s0)
    83000d78:	0a042623          	sw	zero,172(s0)
    83000d7c:	00043023          	sd	zero,0(s0)
    83000d80:	00043423          	sd	zero,8(s0)
    83000d84:	00043c23          	sd	zero,24(s0)
    83000d88:	02042023          	sw	zero,32(s0)
    83000d8c:	02042423          	sw	zero,40(s0)
    83000d90:	0a440513          	addi	a0,s0,164
    83000d94:	00800613          	li	a2,8
    83000d98:	00000593          	li	a1,0
    83000d9c:	00002097          	auipc	ra,0x2
    83000da0:	970080e7          	jalr	-1680(ra) # 8300270c <memset>
    83000da4:	03813083          	ld	ra,56(sp)
    83000da8:	03643c23          	sd	s6,56(s0)
    83000dac:	05543023          	sd	s5,64(s0)
    83000db0:	05443423          	sd	s4,72(s0)
    83000db4:	05343823          	sd	s3,80(s0)
    83000db8:	02843823          	sd	s0,48(s0)
    83000dbc:	03013403          	ld	s0,48(sp)
    83000dc0:	00100793          	li	a5,1
    83000dc4:	04f92823          	sw	a5,80(s2)
    83000dc8:	02813483          	ld	s1,40(sp)
    83000dcc:	02013903          	ld	s2,32(sp)
    83000dd0:	01813983          	ld	s3,24(sp)
    83000dd4:	01013a03          	ld	s4,16(sp)
    83000dd8:	00813a83          	ld	s5,8(sp)
    83000ddc:	00013b03          	ld	s6,0(sp)
    83000de0:	04010113          	addi	sp,sp,64
    83000de4:	00008067          	ret

0000000083000de8 <__fp_unlock>:
    83000de8:	00000513          	li	a0,0
    83000dec:	00008067          	ret

0000000083000df0 <__sfmoreglue>:
    83000df0:	fe010113          	addi	sp,sp,-32
    83000df4:	00913423          	sd	s1,8(sp)
    83000df8:	0b000613          	li	a2,176
    83000dfc:	fff5849b          	addiw	s1,a1,-1
    83000e00:	02c484b3          	mul	s1,s1,a2
    83000e04:	01213023          	sd	s2,0(sp)
    83000e08:	00058913          	mv	s2,a1
    83000e0c:	00813823          	sd	s0,16(sp)
    83000e10:	00113c23          	sd	ra,24(sp)
    83000e14:	0c848593          	addi	a1,s1,200
    83000e18:	00001097          	auipc	ra,0x1
    83000e1c:	f2c080e7          	jalr	-212(ra) # 83001d44 <_malloc_r>
    83000e20:	00050413          	mv	s0,a0
    83000e24:	02050263          	beqz	a0,83000e48 <__sfmoreglue+0x58>
    83000e28:	01850513          	addi	a0,a0,24
    83000e2c:	00043023          	sd	zero,0(s0)
    83000e30:	01242423          	sw	s2,8(s0)
    83000e34:	00a43823          	sd	a0,16(s0)
    83000e38:	0b048613          	addi	a2,s1,176
    83000e3c:	00000593          	li	a1,0
    83000e40:	00002097          	auipc	ra,0x2
    83000e44:	8cc080e7          	jalr	-1844(ra) # 8300270c <memset>
    83000e48:	01813083          	ld	ra,24(sp)
    83000e4c:	00040513          	mv	a0,s0
    83000e50:	01013403          	ld	s0,16(sp)
    83000e54:	00813483          	ld	s1,8(sp)
    83000e58:	00013903          	ld	s2,0(sp)
    83000e5c:	02010113          	addi	sp,sp,32
    83000e60:	00008067          	ret

0000000083000e64 <__sfp>:
    83000e64:	fd010113          	addi	sp,sp,-48
    83000e68:	00913c23          	sd	s1,24(sp)
    83000e6c:	00007497          	auipc	s1,0x7
    83000e70:	a5c4b483          	ld	s1,-1444(s1) # 830078c8 <_global_impure_ptr>
    83000e74:	0504a783          	lw	a5,80(s1)
    83000e78:	01213823          	sd	s2,16(sp)
    83000e7c:	02113423          	sd	ra,40(sp)
    83000e80:	02813023          	sd	s0,32(sp)
    83000e84:	01313423          	sd	s3,8(sp)
    83000e88:	00050913          	mv	s2,a0
    83000e8c:	0a078e63          	beqz	a5,83000f48 <__sfp+0xe4>
    83000e90:	52048493          	addi	s1,s1,1312
    83000e94:	0b000993          	li	s3,176
    83000e98:	0084a783          	lw	a5,8(s1)
    83000e9c:	0104b403          	ld	s0,16(s1)
    83000ea0:	08f05c63          	blez	a5,83000f38 <__sfp+0xd4>
    83000ea4:	fff7879b          	addiw	a5,a5,-1
    83000ea8:	02079793          	slli	a5,a5,0x20
    83000eac:	0207d793          	srli	a5,a5,0x20
    83000eb0:	00178793          	addi	a5,a5,1 # 20001 <main-0x82fe00e7>
    83000eb4:	033787b3          	mul	a5,a5,s3
    83000eb8:	00f407b3          	add	a5,s0,a5
    83000ebc:	00c0006f          	j	83000ec8 <__sfp+0x64>
    83000ec0:	0b040413          	addi	s0,s0,176
    83000ec4:	06878a63          	beq	a5,s0,83000f38 <__sfp+0xd4>
    83000ec8:	01041703          	lh	a4,16(s0)
    83000ecc:	fe071ae3          	bnez	a4,83000ec0 <__sfp+0x5c>
    83000ed0:	ffff07b7          	lui	a5,0xffff0
    83000ed4:	0017879b          	addiw	a5,a5,1
    83000ed8:	0a042623          	sw	zero,172(s0)
    83000edc:	00043023          	sd	zero,0(s0)
    83000ee0:	00043423          	sd	zero,8(s0)
    83000ee4:	00f42823          	sw	a5,16(s0)
    83000ee8:	00043c23          	sd	zero,24(s0)
    83000eec:	02042023          	sw	zero,32(s0)
    83000ef0:	02042423          	sw	zero,40(s0)
    83000ef4:	00800613          	li	a2,8
    83000ef8:	00000593          	li	a1,0
    83000efc:	0a440513          	addi	a0,s0,164
    83000f00:	00002097          	auipc	ra,0x2
    83000f04:	80c080e7          	jalr	-2036(ra) # 8300270c <memset>
    83000f08:	04043c23          	sd	zero,88(s0)
    83000f0c:	06042023          	sw	zero,96(s0)
    83000f10:	06043c23          	sd	zero,120(s0)
    83000f14:	08042023          	sw	zero,128(s0)
    83000f18:	02813083          	ld	ra,40(sp)
    83000f1c:	00040513          	mv	a0,s0
    83000f20:	02013403          	ld	s0,32(sp)
    83000f24:	01813483          	ld	s1,24(sp)
    83000f28:	01013903          	ld	s2,16(sp)
    83000f2c:	00813983          	ld	s3,8(sp)
    83000f30:	03010113          	addi	sp,sp,48
    83000f34:	00008067          	ret
    83000f38:	0004b403          	ld	s0,0(s1)
    83000f3c:	00040e63          	beqz	s0,83000f58 <__sfp+0xf4>
    83000f40:	00040493          	mv	s1,s0
    83000f44:	f55ff06f          	j	83000e98 <__sfp+0x34>
    83000f48:	00048513          	mv	a0,s1
    83000f4c:	00000097          	auipc	ra,0x0
    83000f50:	d18080e7          	jalr	-744(ra) # 83000c64 <__sinit.part.0>
    83000f54:	f3dff06f          	j	83000e90 <__sfp+0x2c>
    83000f58:	00400593          	li	a1,4
    83000f5c:	00090513          	mv	a0,s2
    83000f60:	00000097          	auipc	ra,0x0
    83000f64:	e90080e7          	jalr	-368(ra) # 83000df0 <__sfmoreglue>
    83000f68:	00a4b023          	sd	a0,0(s1)
    83000f6c:	00050413          	mv	s0,a0
    83000f70:	fc0518e3          	bnez	a0,83000f40 <__sfp+0xdc>
    83000f74:	00c00793          	li	a5,12
    83000f78:	00f92023          	sw	a5,0(s2)
    83000f7c:	f9dff06f          	j	83000f18 <__sfp+0xb4>

0000000083000f80 <_cleanup>:
    83000f80:	00002597          	auipc	a1,0x2
    83000f84:	48858593          	addi	a1,a1,1160 # 83003408 <_fclose_r>
    83000f88:	00007517          	auipc	a0,0x7
    83000f8c:	94053503          	ld	a0,-1728(a0) # 830078c8 <_global_impure_ptr>
    83000f90:	00002317          	auipc	t1,0x2
    83000f94:	e1030067          	jr	-496(t1) # 83002da0 <_fwalk_reent>

0000000083000f98 <__sinit>:
    83000f98:	05052783          	lw	a5,80(a0)
    83000f9c:	00078463          	beqz	a5,83000fa4 <__sinit+0xc>
    83000fa0:	00008067          	ret
    83000fa4:	00000317          	auipc	t1,0x0
    83000fa8:	cc030067          	jr	-832(t1) # 83000c64 <__sinit.part.0>

0000000083000fac <__sfp_lock_acquire>:
    83000fac:	00008067          	ret

0000000083000fb0 <__sfp_lock_release>:
    83000fb0:	00008067          	ret

0000000083000fb4 <__sinit_lock_acquire>:
    83000fb4:	00008067          	ret

0000000083000fb8 <__sinit_lock_release>:
    83000fb8:	00008067          	ret

0000000083000fbc <__fp_lock_all>:
    83000fbc:	00000597          	auipc	a1,0x0
    83000fc0:	c9058593          	addi	a1,a1,-880 # 83000c4c <__fp_lock>
    83000fc4:	00007517          	auipc	a0,0x7
    83000fc8:	96453503          	ld	a0,-1692(a0) # 83007928 <_impure_ptr>
    83000fcc:	00002317          	auipc	t1,0x2
    83000fd0:	d1030067          	jr	-752(t1) # 83002cdc <_fwalk>

0000000083000fd4 <__fp_unlock_all>:
    83000fd4:	00000597          	auipc	a1,0x0
    83000fd8:	e1458593          	addi	a1,a1,-492 # 83000de8 <__fp_unlock>
    83000fdc:	00007517          	auipc	a0,0x7
    83000fe0:	94c53503          	ld	a0,-1716(a0) # 83007928 <_impure_ptr>
    83000fe4:	00002317          	auipc	t1,0x2
    83000fe8:	cf830067          	jr	-776(t1) # 83002cdc <_fwalk>

0000000083000fec <__sfputs_r>:
    83000fec:	08068e63          	beqz	a3,83001088 <__sfputs_r+0x9c>
    83000ff0:	fd010113          	addi	sp,sp,-48
    83000ff4:	02813023          	sd	s0,32(sp)
    83000ff8:	00913c23          	sd	s1,24(sp)
    83000ffc:	01213823          	sd	s2,16(sp)
    83001000:	01313423          	sd	s3,8(sp)
    83001004:	01413023          	sd	s4,0(sp)
    83001008:	02113423          	sd	ra,40(sp)
    8300100c:	00050913          	mv	s2,a0
    83001010:	00058993          	mv	s3,a1
    83001014:	00060413          	mv	s0,a2
    83001018:	00d604b3          	add	s1,a2,a3
    8300101c:	fff00a13          	li	s4,-1
    83001020:	0080006f          	j	83001028 <__sfputs_r+0x3c>
    83001024:	04940063          	beq	s0,s1,83001064 <__sfputs_r+0x78>
    83001028:	00044583          	lbu	a1,0(s0)
    8300102c:	00098613          	mv	a2,s3
    83001030:	00090513          	mv	a0,s2
    83001034:	00002097          	auipc	ra,0x2
    83001038:	514080e7          	jalr	1300(ra) # 83003548 <_fputc_r>
    8300103c:	00140413          	addi	s0,s0,1
    83001040:	ff4512e3          	bne	a0,s4,83001024 <__sfputs_r+0x38>
    83001044:	02813083          	ld	ra,40(sp)
    83001048:	02013403          	ld	s0,32(sp)
    8300104c:	01813483          	ld	s1,24(sp)
    83001050:	01013903          	ld	s2,16(sp)
    83001054:	00813983          	ld	s3,8(sp)
    83001058:	00013a03          	ld	s4,0(sp)
    8300105c:	03010113          	addi	sp,sp,48
    83001060:	00008067          	ret
    83001064:	02813083          	ld	ra,40(sp)
    83001068:	02013403          	ld	s0,32(sp)
    8300106c:	01813483          	ld	s1,24(sp)
    83001070:	01013903          	ld	s2,16(sp)
    83001074:	00813983          	ld	s3,8(sp)
    83001078:	00013a03          	ld	s4,0(sp)
    8300107c:	00000513          	li	a0,0
    83001080:	03010113          	addi	sp,sp,48
    83001084:	00008067          	ret
    83001088:	00000513          	li	a0,0
    8300108c:	00008067          	ret

0000000083001090 <__sprint_r>:
    83001090:	01063783          	ld	a5,16(a2)
    83001094:	ff010113          	addi	sp,sp,-16
    83001098:	00813023          	sd	s0,0(sp)
    8300109c:	00113423          	sd	ra,8(sp)
    830010a0:	00060413          	mv	s0,a2
    830010a4:	00079e63          	bnez	a5,830010c0 <__sprint_r+0x30>
    830010a8:	00813083          	ld	ra,8(sp)
    830010ac:	00013403          	ld	s0,0(sp)
    830010b0:	00062423          	sw	zero,8(a2)
    830010b4:	00000513          	li	a0,0
    830010b8:	01010113          	addi	sp,sp,16
    830010bc:	00008067          	ret
    830010c0:	00001097          	auipc	ra,0x1
    830010c4:	73c080e7          	jalr	1852(ra) # 830027fc <__sfvwrite_r>
    830010c8:	00813083          	ld	ra,8(sp)
    830010cc:	00043823          	sd	zero,16(s0)
    830010d0:	00042423          	sw	zero,8(s0)
    830010d4:	00013403          	ld	s0,0(sp)
    830010d8:	01010113          	addi	sp,sp,16
    830010dc:	00008067          	ret

00000000830010e0 <_vfiprintf_r>:
    830010e0:	f2010113          	addi	sp,sp,-224
    830010e4:	0c813823          	sd	s0,208(sp)
    830010e8:	0c913423          	sd	s1,200(sp)
    830010ec:	0b513423          	sd	s5,168(sp)
    830010f0:	0c113c23          	sd	ra,216(sp)
    830010f4:	0d213023          	sd	s2,192(sp)
    830010f8:	0b313c23          	sd	s3,184(sp)
    830010fc:	0b413823          	sd	s4,176(sp)
    83001100:	0b613023          	sd	s6,160(sp)
    83001104:	09713c23          	sd	s7,152(sp)
    83001108:	09813823          	sd	s8,144(sp)
    8300110c:	09913423          	sd	s9,136(sp)
    83001110:	09a13023          	sd	s10,128(sp)
    83001114:	07b13c23          	sd	s11,120(sp)
    83001118:	00d13823          	sd	a3,16(sp)
    8300111c:	02013c23          	sd	zero,56(sp)
    83001120:	00050493          	mv	s1,a0
    83001124:	00058413          	mv	s0,a1
    83001128:	00060a93          	mv	s5,a2
    8300112c:	00050663          	beqz	a0,83001138 <_vfiprintf_r+0x58>
    83001130:	05052783          	lw	a5,80(a0)
    83001134:	24078e63          	beqz	a5,83001390 <_vfiprintf_r+0x2b0>
    83001138:	01045783          	lhu	a5,16(s0)
    8300113c:	0087f793          	andi	a5,a5,8
    83001140:	0a078e63          	beqz	a5,830011fc <_vfiprintf_r+0x11c>
    83001144:	01843783          	ld	a5,24(s0)
    83001148:	0a078a63          	beqz	a5,830011fc <_vfiprintf_r+0x11c>
    8300114c:	02013423          	sd	zero,40(sp)
    83001150:	02013023          	sd	zero,32(sp)
    83001154:	000ac583          	lbu	a1,0(s5)
    83001158:	04058c63          	beqz	a1,830011b0 <_vfiprintf_r+0xd0>
    8300115c:	000a8913          	mv	s2,s5
    83001160:	00058793          	mv	a5,a1
    83001164:	02500713          	li	a4,37
    83001168:	0ae78a63          	beq	a5,a4,8300121c <_vfiprintf_r+0x13c>
    8300116c:	00194783          	lbu	a5,1(s2)
    83001170:	00190913          	addi	s2,s2,1
    83001174:	fe079ae3          	bnez	a5,83001168 <_vfiprintf_r+0x88>
    83001178:	415909bb          	subw	s3,s2,s5
    8300117c:	02098a63          	beqz	s3,830011b0 <_vfiprintf_r+0xd0>
    83001180:	001a8b13          	addi	s6,s5,1
    83001184:	fff00a13          	li	s4,-1
    83001188:	0140006f          	j	8300119c <_vfiprintf_r+0xbc>
    8300118c:	415b07b3          	sub	a5,s6,s5
    83001190:	001b0b13          	addi	s6,s6,1
    83001194:	1f37f463          	bgeu	a5,s3,8300137c <_vfiprintf_r+0x29c>
    83001198:	fffb4583          	lbu	a1,-1(s6)
    8300119c:	00040613          	mv	a2,s0
    830011a0:	00048513          	mv	a0,s1
    830011a4:	00002097          	auipc	ra,0x2
    830011a8:	3a4080e7          	jalr	932(ra) # 83003548 <_fputc_r>
    830011ac:	ff4510e3          	bne	a0,s4,8300118c <_vfiprintf_r+0xac>
    830011b0:	01045783          	lhu	a5,16(s0)
    830011b4:	0407f793          	andi	a5,a5,64
    830011b8:	04079c63          	bnez	a5,83001210 <_vfiprintf_r+0x130>
    830011bc:	0d813083          	ld	ra,216(sp)
    830011c0:	0d013403          	ld	s0,208(sp)
    830011c4:	02013503          	ld	a0,32(sp)
    830011c8:	0c813483          	ld	s1,200(sp)
    830011cc:	0c013903          	ld	s2,192(sp)
    830011d0:	0b813983          	ld	s3,184(sp)
    830011d4:	0b013a03          	ld	s4,176(sp)
    830011d8:	0a813a83          	ld	s5,168(sp)
    830011dc:	0a013b03          	ld	s6,160(sp)
    830011e0:	09813b83          	ld	s7,152(sp)
    830011e4:	09013c03          	ld	s8,144(sp)
    830011e8:	08813c83          	ld	s9,136(sp)
    830011ec:	08013d03          	ld	s10,128(sp)
    830011f0:	07813d83          	ld	s11,120(sp)
    830011f4:	0e010113          	addi	sp,sp,224
    830011f8:	00008067          	ret
    830011fc:	00040593          	mv	a1,s0
    83001200:	00048513          	mv	a0,s1
    83001204:	00002097          	auipc	ra,0x2
    83001208:	f28080e7          	jalr	-216(ra) # 8300312c <__swsetup_r>
    8300120c:	f40500e3          	beqz	a0,8300114c <_vfiprintf_r+0x6c>
    83001210:	fff00793          	li	a5,-1
    83001214:	02f13023          	sd	a5,32(sp)
    83001218:	fa5ff06f          	j	830011bc <_vfiprintf_r+0xdc>
    8300121c:	415909bb          	subw	s3,s2,s5
    83001220:	f60990e3          	bnez	s3,83001180 <_vfiprintf_r+0xa0>
    83001224:	00094783          	lbu	a5,0(s2)
    83001228:	f80784e3          	beqz	a5,830011b0 <_vfiprintf_r+0xd0>
    8300122c:	00190a93          	addi	s5,s2,1
    83001230:	00000d13          	li	s10,0
    83001234:	fff00a13          	li	s4,-1
    83001238:	00000d93          	li	s11,0
    8300123c:	00000b93          	li	s7,0
    83001240:	05800593          	li	a1,88
    83001244:	02a00513          	li	a0,42
    83001248:	000ac703          	lbu	a4,0(s5)
    8300124c:	001a8a93          	addi	s5,s5,1
    83001250:	fe07079b          	addiw	a5,a4,-32
    83001254:	0007869b          	sext.w	a3,a5
    83001258:	06d5e063          	bltu	a1,a3,830012b8 <_vfiprintf_r+0x1d8>
    8300125c:	02079793          	slli	a5,a5,0x20
    83001260:	00004697          	auipc	a3,0x4
    83001264:	4e068693          	addi	a3,a3,1248 # 83005740 <zeroes.4454+0x10>
    83001268:	01e7d793          	srli	a5,a5,0x1e
    8300126c:	00d787b3          	add	a5,a5,a3
    83001270:	0007a783          	lw	a5,0(a5) # ffffffffffff0000 <__BSS_END__+0xffffffff7cfe8668>
    83001274:	00d787b3          	add	a5,a5,a3
    83001278:	00078067          	jr	a5
    8300127c:	00000d93          	li	s11,0
    83001280:	000ac683          	lbu	a3,0(s5)
    83001284:	002d979b          	slliw	a5,s11,0x2
    83001288:	01b78dbb          	addw	s11,a5,s11
    8300128c:	fd07071b          	addiw	a4,a4,-48
    83001290:	001d9d9b          	slliw	s11,s11,0x1
    83001294:	fd06879b          	addiw	a5,a3,-48
    83001298:	01b70dbb          	addw	s11,a4,s11
    8300129c:	0006871b          	sext.w	a4,a3
    830012a0:	00900693          	li	a3,9
    830012a4:	001a8a93          	addi	s5,s5,1
    830012a8:	fcf6fce3          	bgeu	a3,a5,83001280 <_vfiprintf_r+0x1a0>
    830012ac:	fe07079b          	addiw	a5,a4,-32
    830012b0:	0007869b          	sext.w	a3,a5
    830012b4:	fad5f4e3          	bgeu	a1,a3,8300125c <_vfiprintf_r+0x17c>
    830012b8:	ee070ce3          	beqz	a4,830011b0 <_vfiprintf_r+0xd0>
    830012bc:	04e10423          	sb	a4,72(sp)
    830012c0:	00000d13          	li	s10,0
    830012c4:	00100793          	li	a5,1
    830012c8:	00f13c23          	sd	a5,24(sp)
    830012cc:	00000a13          	li	s4,0
    830012d0:	04810913          	addi	s2,sp,72
    830012d4:	00f13023          	sd	a5,0(sp)
    830012d8:	002bf793          	andi	a5,s7,2
    830012dc:	0007871b          	sext.w	a4,a5
    830012e0:	00e13423          	sd	a4,8(sp)
    830012e4:	00078863          	beqz	a5,830012f4 <_vfiprintf_r+0x214>
    830012e8:	00013783          	ld	a5,0(sp)
    830012ec:	0027879b          	addiw	a5,a5,2
    830012f0:	00f13023          	sd	a5,0(sp)
    830012f4:	084bf793          	andi	a5,s7,132
    830012f8:	02f13823          	sd	a5,48(sp)
    830012fc:	00079863          	bnez	a5,8300130c <_vfiprintf_r+0x22c>
    83001300:	00013783          	ld	a5,0(sp)
    83001304:	40fd8cbb          	subw	s9,s11,a5
    83001308:	0d904263          	bgtz	s9,830013cc <_vfiprintf_r+0x2ec>
    8300130c:	540d1a63          	bnez	s10,83001860 <_vfiprintf_r+0x780>
    83001310:	00813783          	ld	a5,8(sp)
    83001314:	56079863          	bnez	a5,83001884 <_vfiprintf_r+0x7a4>
    83001318:	03013703          	ld	a4,48(sp)
    8300131c:	08000793          	li	a5,128
    83001320:	5af70263          	beq	a4,a5,830018c4 <_vfiprintf_r+0x7e4>
    83001324:	01813783          	ld	a5,24(sp)
    83001328:	40fa0a3b          	subw	s4,s4,a5
    8300132c:	65405063          	blez	s4,8300196c <_vfiprintf_r+0x88c>
    83001330:	01000793          	li	a5,16
    83001334:	4f47d463          	bge	a5,s4,8300181c <_vfiprintf_r+0x73c>
    83001338:	00004997          	auipc	s3,0x4
    8300133c:	59098993          	addi	s3,s3,1424 # 830058c8 <zeroes.4462+0x10>
    83001340:	fff00b13          	li	s6,-1
    83001344:	01000c93          	li	s9,16
    83001348:	00004d17          	auipc	s10,0x4
    8300134c:	571d0d13          	addi	s10,s10,1393 # 830058b9 <zeroes.4462+0x1>
    83001350:	03000593          	li	a1,48
    83001354:	0100006f          	j	83001364 <_vfiprintf_r+0x284>
    83001358:	4ba98e63          	beq	s3,s10,83001814 <_vfiprintf_r+0x734>
    8300135c:	000d4583          	lbu	a1,0(s10)
    83001360:	001d0d13          	addi	s10,s10,1
    83001364:	00040613          	mv	a2,s0
    83001368:	00048513          	mv	a0,s1
    8300136c:	00002097          	auipc	ra,0x2
    83001370:	1dc080e7          	jalr	476(ra) # 83003548 <_fputc_r>
    83001374:	ff6512e3          	bne	a0,s6,83001358 <_vfiprintf_r+0x278>
    83001378:	e39ff06f          	j	830011b0 <_vfiprintf_r+0xd0>
    8300137c:	02013703          	ld	a4,32(sp)
    83001380:	00094783          	lbu	a5,0(s2)
    83001384:	0137073b          	addw	a4,a4,s3
    83001388:	02e13023          	sd	a4,32(sp)
    8300138c:	e9dff06f          	j	83001228 <_vfiprintf_r+0x148>
    83001390:	00000097          	auipc	ra,0x0
    83001394:	c08080e7          	jalr	-1016(ra) # 83000f98 <__sinit>
    83001398:	da1ff06f          	j	83001138 <_vfiprintf_r+0x58>
    8300139c:	010beb93          	ori	s7,s7,16
    830013a0:	000b8b9b          	sext.w	s7,s7
    830013a4:	ea5ff06f          	j	83001248 <_vfiprintf_r+0x168>
    830013a8:	01013783          	ld	a5,16(sp)
    830013ac:	0007ad83          	lw	s11,0(a5)
    830013b0:	00878793          	addi	a5,a5,8
    830013b4:	00f13823          	sd	a5,16(sp)
    830013b8:	e80dd8e3          	bgez	s11,83001248 <_vfiprintf_r+0x168>
    830013bc:	41b00dbb          	negw	s11,s11
    830013c0:	004beb93          	ori	s7,s7,4
    830013c4:	000b8b9b          	sext.w	s7,s7
    830013c8:	e81ff06f          	j	83001248 <_vfiprintf_r+0x168>
    830013cc:	01000793          	li	a5,16
    830013d0:	5597dc63          	bge	a5,s9,83001928 <_vfiprintf_r+0x848>
    830013d4:	00004997          	auipc	s3,0x4
    830013d8:	4e498993          	addi	s3,s3,1252 # 830058b8 <zeroes.4462>
    830013dc:	fff00b13          	li	s6,-1
    830013e0:	00004c17          	auipc	s8,0x4
    830013e4:	4c9c0c13          	addi	s8,s8,1225 # 830058a9 <blanks.4461+0x1>
    830013e8:	02000593          	li	a1,32
    830013ec:	0100006f          	j	830013fc <_vfiprintf_r+0x31c>
    830013f0:	53898663          	beq	s3,s8,8300191c <_vfiprintf_r+0x83c>
    830013f4:	000c4583          	lbu	a1,0(s8)
    830013f8:	001c0c13          	addi	s8,s8,1
    830013fc:	00040613          	mv	a2,s0
    83001400:	00048513          	mv	a0,s1
    83001404:	00002097          	auipc	ra,0x2
    83001408:	144080e7          	jalr	324(ra) # 83003548 <_fputc_r>
    8300140c:	ff6512e3          	bne	a0,s6,830013f0 <_vfiprintf_r+0x310>
    83001410:	da1ff06f          	j	830011b0 <_vfiprintf_r+0xd0>
    83001414:	01013703          	ld	a4,16(sp)
    83001418:	010bf793          	andi	a5,s7,16
    8300141c:	00870613          	addi	a2,a4,8
    83001420:	040790e3          	bnez	a5,83001c60 <_vfiprintf_r+0xb80>
    83001424:	01013783          	ld	a5,16(sp)
    83001428:	040bf713          	andi	a4,s7,64
    8300142c:	0007a783          	lw	a5,0(a5)
    83001430:	78070263          	beqz	a4,83001bb4 <_vfiprintf_r+0xad4>
    83001434:	0107979b          	slliw	a5,a5,0x10
    83001438:	4107d79b          	sraiw	a5,a5,0x10
    8300143c:	00078693          	mv	a3,a5
    83001440:	00c13823          	sd	a2,16(sp)
    83001444:	000b8713          	mv	a4,s7
    83001448:	2a06c863          	bltz	a3,830016f8 <_vfiprintf_r+0x618>
    8300144c:	fff00613          	li	a2,-1
    83001450:	00100693          	li	a3,1
    83001454:	14ca0463          	beq	s4,a2,8300159c <_vfiprintf_r+0x4bc>
    83001458:	f7f77b93          	andi	s7,a4,-129
    8300145c:	000b8b9b          	sext.w	s7,s7
    83001460:	36079863          	bnez	a5,830017d0 <_vfiprintf_r+0x6f0>
    83001464:	760a1663          	bnez	s4,83001bd0 <_vfiprintf_r+0xaf0>
    83001468:	70069063          	bnez	a3,83001b68 <_vfiprintf_r+0xa88>
    8300146c:	00177793          	andi	a5,a4,1
    83001470:	00f13c23          	sd	a5,24(sp)
    83001474:	07010913          	addi	s2,sp,112
    83001478:	00078863          	beqz	a5,83001488 <_vfiprintf_r+0x3a8>
    8300147c:	03000793          	li	a5,48
    83001480:	06f107a3          	sb	a5,111(sp)
    83001484:	06f10913          	addi	s2,sp,111
    83001488:	01813703          	ld	a4,24(sp)
    8300148c:	00070793          	mv	a5,a4
    83001490:	01475463          	bge	a4,s4,83001498 <_vfiprintf_r+0x3b8>
    83001494:	000a0793          	mv	a5,s4
    83001498:	0007871b          	sext.w	a4,a5
    8300149c:	00e13023          	sd	a4,0(sp)
    830014a0:	5a0d0463          	beqz	s10,83001a48 <_vfiprintf_r+0x968>
    830014a4:	0017879b          	addiw	a5,a5,1
    830014a8:	00f13023          	sd	a5,0(sp)
    830014ac:	e2dff06f          	j	830012d8 <_vfiprintf_r+0x1f8>
    830014b0:	000ac703          	lbu	a4,0(s5)
    830014b4:	001a8a93          	addi	s5,s5,1
    830014b8:	7ca70263          	beq	a4,a0,83001c7c <_vfiprintf_r+0xb9c>
    830014bc:	fd07069b          	addiw	a3,a4,-48
    830014c0:	00900793          	li	a5,9
    830014c4:	00000a13          	li	s4,0
    830014c8:	d8d7e4e3          	bltu	a5,a3,83001250 <_vfiprintf_r+0x170>
    830014cc:	000ac703          	lbu	a4,0(s5)
    830014d0:	002a179b          	slliw	a5,s4,0x2
    830014d4:	01478a3b          	addw	s4,a5,s4
    830014d8:	001a1a1b          	slliw	s4,s4,0x1
    830014dc:	00da0a3b          	addw	s4,s4,a3
    830014e0:	00900793          	li	a5,9
    830014e4:	fd07069b          	addiw	a3,a4,-48
    830014e8:	001a8a93          	addi	s5,s5,1
    830014ec:	fed7f0e3          	bgeu	a5,a3,830014cc <_vfiprintf_r+0x3ec>
    830014f0:	d61ff06f          	j	83001250 <_vfiprintf_r+0x170>
    830014f4:	01013783          	ld	a5,16(sp)
    830014f8:	010be713          	ori	a4,s7,16
    830014fc:	0007071b          	sext.w	a4,a4
    83001500:	00878693          	addi	a3,a5,8
    83001504:	01013783          	ld	a5,16(sp)
    83001508:	00d13823          	sd	a3,16(sp)
    8300150c:	0007b783          	ld	a5,0(a5)
    83001510:	fff00613          	li	a2,-1
    83001514:	00000d13          	li	s10,0
    83001518:	00000693          	li	a3,0
    8300151c:	00070b93          	mv	s7,a4
    83001520:	f2ca1ce3          	bne	s4,a2,83001458 <_vfiprintf_r+0x378>
    83001524:	07010913          	addi	s2,sp,112
    83001528:	0077f713          	andi	a4,a5,7
    8300152c:	03070713          	addi	a4,a4,48
    83001530:	fee90fa3          	sb	a4,-1(s2)
    83001534:	0037d793          	srli	a5,a5,0x3
    83001538:	00090693          	mv	a3,s2
    8300153c:	fff90913          	addi	s2,s2,-1
    83001540:	fe0794e3          	bnez	a5,83001528 <_vfiprintf_r+0x448>
    83001544:	001bf793          	andi	a5,s7,1
    83001548:	2a078e63          	beqz	a5,83001804 <_vfiprintf_r+0x724>
    8300154c:	03000793          	li	a5,48
    83001550:	2af70a63          	beq	a4,a5,83001804 <_vfiprintf_r+0x724>
    83001554:	ffe68693          	addi	a3,a3,-2
    83001558:	fef90fa3          	sb	a5,-1(s2)
    8300155c:	07010793          	addi	a5,sp,112
    83001560:	40d787bb          	subw	a5,a5,a3
    83001564:	00f13c23          	sd	a5,24(sp)
    83001568:	00068913          	mv	s2,a3
    8300156c:	f1dff06f          	j	83001488 <_vfiprintf_r+0x3a8>
    83001570:	01013783          	ld	a5,16(sp)
    83001574:	010be713          	ori	a4,s7,16
    83001578:	0007071b          	sext.w	a4,a4
    8300157c:	00878693          	addi	a3,a5,8
    83001580:	01013783          	ld	a5,16(sp)
    83001584:	fff00613          	li	a2,-1
    83001588:	00d13823          	sd	a3,16(sp)
    8300158c:	0007b783          	ld	a5,0(a5)
    83001590:	00000d13          	li	s10,0
    83001594:	00100693          	li	a3,1
    83001598:	ecca10e3          	bne	s4,a2,83001458 <_vfiprintf_r+0x378>
    8300159c:	00900693          	li	a3,9
    830015a0:	58f6e663          	bltu	a3,a5,83001b2c <_vfiprintf_r+0xa4c>
    830015a4:	0307879b          	addiw	a5,a5,48
    830015a8:	06f107a3          	sb	a5,111(sp)
    830015ac:	00100793          	li	a5,1
    830015b0:	00070b93          	mv	s7,a4
    830015b4:	00f13c23          	sd	a5,24(sp)
    830015b8:	06f10913          	addi	s2,sp,111
    830015bc:	ecdff06f          	j	83001488 <_vfiprintf_r+0x3a8>
    830015c0:	01013703          	ld	a4,16(sp)
    830015c4:	010bf793          	andi	a5,s7,16
    830015c8:	00870693          	addi	a3,a4,8
    830015cc:	68079e63          	bnez	a5,83001c68 <_vfiprintf_r+0xb88>
    830015d0:	01013783          	ld	a5,16(sp)
    830015d4:	040bf713          	andi	a4,s7,64
    830015d8:	0007a783          	lw	a5,0(a5)
    830015dc:	5a070663          	beqz	a4,83001b88 <_vfiprintf_r+0xaa8>
    830015e0:	03079793          	slli	a5,a5,0x30
    830015e4:	0307d793          	srli	a5,a5,0x30
    830015e8:	00d13823          	sd	a3,16(sp)
    830015ec:	000b8713          	mv	a4,s7
    830015f0:	f21ff06f          	j	83001510 <_vfiprintf_r+0x430>
    830015f4:	01013683          	ld	a3,16(sp)
    830015f8:	002be713          	ori	a4,s7,2
    830015fc:	0007071b          	sext.w	a4,a4
    83001600:	0006b783          	ld	a5,0(a3)
    83001604:	00868693          	addi	a3,a3,8
    83001608:	00d13823          	sd	a3,16(sp)
    8300160c:	07800693          	li	a3,120
    83001610:	02d13c23          	sd	a3,56(sp)
    83001614:	00004697          	auipc	a3,0x4
    83001618:	f8468693          	addi	a3,a3,-124 # 83005598 <_getpid_r+0x64>
    8300161c:	02d13423          	sd	a3,40(sp)
    83001620:	fff00693          	li	a3,-1
    83001624:	4cda0a63          	beq	s4,a3,83001af8 <_vfiprintf_r+0xa18>
    83001628:	00000d13          	li	s10,0
    8300162c:	00200693          	li	a3,2
    83001630:	e29ff06f          	j	83001458 <_vfiprintf_r+0x378>
    83001634:	01013783          	ld	a5,16(sp)
    83001638:	0007b903          	ld	s2,0(a5)
    8300163c:	00878993          	addi	s3,a5,8
    83001640:	5a090063          	beqz	s2,83001be0 <_vfiprintf_r+0xb00>
    83001644:	fff00793          	li	a5,-1
    83001648:	5efa0e63          	beq	s4,a5,83001c44 <_vfiprintf_r+0xb64>
    8300164c:	000a0613          	mv	a2,s4
    83001650:	00000593          	li	a1,0
    83001654:	00090513          	mv	a0,s2
    83001658:	00001097          	auipc	ra,0x1
    8300165c:	f4c080e7          	jalr	-180(ra) # 830025a4 <memchr>
    83001660:	5c050663          	beqz	a0,83001c2c <_vfiprintf_r+0xb4c>
    83001664:	4125073b          	subw	a4,a0,s2
    83001668:	fff74793          	not	a5,a4
    8300166c:	43f7d793          	srai	a5,a5,0x3f
    83001670:	00f777b3          	and	a5,a4,a5
    83001674:	0007879b          	sext.w	a5,a5
    83001678:	00e13c23          	sd	a4,24(sp)
    8300167c:	00f13023          	sd	a5,0(sp)
    83001680:	01313823          	sd	s3,16(sp)
    83001684:	00000d13          	li	s10,0
    83001688:	00000a13          	li	s4,0
    8300168c:	c4dff06f          	j	830012d8 <_vfiprintf_r+0x1f8>
    83001690:	01013703          	ld	a4,16(sp)
    83001694:	010bf793          	andi	a5,s7,16
    83001698:	00870693          	addi	a3,a4,8
    8300169c:	5a079e63          	bnez	a5,83001c58 <_vfiprintf_r+0xb78>
    830016a0:	01013783          	ld	a5,16(sp)
    830016a4:	040bf713          	andi	a4,s7,64
    830016a8:	0007a783          	lw	a5,0(a5)
    830016ac:	4e070863          	beqz	a4,83001b9c <_vfiprintf_r+0xabc>
    830016b0:	03079793          	slli	a5,a5,0x30
    830016b4:	0307d793          	srli	a5,a5,0x30
    830016b8:	00d13823          	sd	a3,16(sp)
    830016bc:	000b8713          	mv	a4,s7
    830016c0:	00000d13          	li	s10,0
    830016c4:	d89ff06f          	j	8300144c <_vfiprintf_r+0x36c>
    830016c8:	080beb93          	ori	s7,s7,128
    830016cc:	000b8b9b          	sext.w	s7,s7
    830016d0:	b79ff06f          	j	83001248 <_vfiprintf_r+0x168>
    830016d4:	01013783          	ld	a5,16(sp)
    830016d8:	010be713          	ori	a4,s7,16
    830016dc:	0007071b          	sext.w	a4,a4
    830016e0:	00878613          	addi	a2,a5,8
    830016e4:	01013783          	ld	a5,16(sp)
    830016e8:	00c13823          	sd	a2,16(sp)
    830016ec:	0007b683          	ld	a3,0(a5)
    830016f0:	00068793          	mv	a5,a3
    830016f4:	d406dce3          	bgez	a3,8300144c <_vfiprintf_r+0x36c>
    830016f8:	40f007b3          	neg	a5,a5
    830016fc:	00070b93          	mv	s7,a4
    83001700:	02d00d13          	li	s10,45
    83001704:	00100693          	li	a3,1
    83001708:	0b80006f          	j	830017c0 <_vfiprintf_r+0x6e0>
    8300170c:	01013683          	ld	a3,16(sp)
    83001710:	010bf793          	andi	a5,s7,16
    83001714:	0006b703          	ld	a4,0(a3)
    83001718:	00868693          	addi	a3,a3,8
    8300171c:	00d13823          	sd	a3,16(sp)
    83001720:	44078a63          	beqz	a5,83001b74 <_vfiprintf_r+0xa94>
    83001724:	02013783          	ld	a5,32(sp)
    83001728:	00f73023          	sd	a5,0(a4)
    8300172c:	a29ff06f          	j	83001154 <_vfiprintf_r+0x74>
    83001730:	b00d1ce3          	bnez	s10,83001248 <_vfiprintf_r+0x168>
    83001734:	02000d13          	li	s10,32
    83001738:	b11ff06f          	j	83001248 <_vfiprintf_r+0x168>
    8300173c:	001beb93          	ori	s7,s7,1
    83001740:	000b8b9b          	sext.w	s7,s7
    83001744:	b05ff06f          	j	83001248 <_vfiprintf_r+0x168>
    83001748:	01013703          	ld	a4,16(sp)
    8300174c:	00000d13          	li	s10,0
    83001750:	00072783          	lw	a5,0(a4)
    83001754:	00870713          	addi	a4,a4,8
    83001758:	00e13823          	sd	a4,16(sp)
    8300175c:	04f10423          	sb	a5,72(sp)
    83001760:	b65ff06f          	j	830012c4 <_vfiprintf_r+0x1e4>
    83001764:	040beb93          	ori	s7,s7,64
    83001768:	000b8b9b          	sext.w	s7,s7
    8300176c:	addff06f          	j	83001248 <_vfiprintf_r+0x168>
    83001770:	02b00d13          	li	s10,43
    83001774:	ad5ff06f          	j	83001248 <_vfiprintf_r+0x168>
    83001778:	00004797          	auipc	a5,0x4
    8300177c:	e2078793          	addi	a5,a5,-480 # 83005598 <_getpid_r+0x64>
    83001780:	02f13423          	sd	a5,40(sp)
    83001784:	01013603          	ld	a2,16(sp)
    83001788:	010bf793          	andi	a5,s7,16
    8300178c:	00860693          	addi	a3,a2,8
    83001790:	36078a63          	beqz	a5,83001b04 <_vfiprintf_r+0xa24>
    83001794:	00063783          	ld	a5,0(a2)
    83001798:	001bf613          	andi	a2,s7,1
    8300179c:	34060663          	beqz	a2,83001ae8 <_vfiprintf_r+0xa08>
    830017a0:	28078263          	beqz	a5,83001a24 <_vfiprintf_r+0x944>
    830017a4:	002beb93          	ori	s7,s7,2
    830017a8:	0ff77713          	andi	a4,a4,255
    830017ac:	00d13823          	sd	a3,16(sp)
    830017b0:	02e13c23          	sd	a4,56(sp)
    830017b4:	000b8b9b          	sext.w	s7,s7
    830017b8:	00000d13          	li	s10,0
    830017bc:	00200693          	li	a3,2
    830017c0:	fff00713          	li	a4,-1
    830017c4:	00ea0663          	beq	s4,a4,830017d0 <_vfiprintf_r+0x6f0>
    830017c8:	f7fbfb93          	andi	s7,s7,-129
    830017cc:	000b8b9b          	sext.w	s7,s7
    830017d0:	00100713          	li	a4,1
    830017d4:	34e68663          	beq	a3,a4,83001b20 <_vfiprintf_r+0xa40>
    830017d8:	00200713          	li	a4,2
    830017dc:	d4e694e3          	bne	a3,a4,83001524 <_vfiprintf_r+0x444>
    830017e0:	07010913          	addi	s2,sp,112
    830017e4:	02813683          	ld	a3,40(sp)
    830017e8:	00f7f713          	andi	a4,a5,15
    830017ec:	fff90913          	addi	s2,s2,-1
    830017f0:	00e68733          	add	a4,a3,a4
    830017f4:	00074703          	lbu	a4,0(a4)
    830017f8:	0047d793          	srli	a5,a5,0x4
    830017fc:	00e90023          	sb	a4,0(s2)
    83001800:	fe0792e3          	bnez	a5,830017e4 <_vfiprintf_r+0x704>
    83001804:	07010793          	addi	a5,sp,112
    83001808:	412787bb          	subw	a5,a5,s2
    8300180c:	00f13c23          	sd	a5,24(sp)
    83001810:	c79ff06f          	j	83001488 <_vfiprintf_r+0x3a8>
    83001814:	ff0a0a1b          	addiw	s4,s4,-16
    83001818:	b34cc8e3          	blt	s9,s4,83001348 <_vfiprintf_r+0x268>
    8300181c:	00004997          	auipc	s3,0x4
    83001820:	09c98993          	addi	s3,s3,156 # 830058b8 <zeroes.4462>
    83001824:	01498a33          	add	s4,s3,s4
    83001828:	00004b17          	auipc	s6,0x4
    8300182c:	091b0b13          	addi	s6,s6,145 # 830058b9 <zeroes.4462+0x1>
    83001830:	03000593          	li	a1,48
    83001834:	fff00993          	li	s3,-1
    83001838:	0100006f          	j	83001848 <_vfiprintf_r+0x768>
    8300183c:	134b0863          	beq	s6,s4,8300196c <_vfiprintf_r+0x88c>
    83001840:	000b4583          	lbu	a1,0(s6)
    83001844:	001b0b13          	addi	s6,s6,1
    83001848:	00040613          	mv	a2,s0
    8300184c:	00048513          	mv	a0,s1
    83001850:	00002097          	auipc	ra,0x2
    83001854:	cf8080e7          	jalr	-776(ra) # 83003548 <_fputc_r>
    83001858:	ff3512e3          	bne	a0,s3,8300183c <_vfiprintf_r+0x75c>
    8300185c:	955ff06f          	j	830011b0 <_vfiprintf_r+0xd0>
    83001860:	00040613          	mv	a2,s0
    83001864:	000d0593          	mv	a1,s10
    83001868:	00048513          	mv	a0,s1
    8300186c:	00002097          	auipc	ra,0x2
    83001870:	cdc080e7          	jalr	-804(ra) # 83003548 <_fputc_r>
    83001874:	fff00793          	li	a5,-1
    83001878:	92f50ce3          	beq	a0,a5,830011b0 <_vfiprintf_r+0xd0>
    8300187c:	00813783          	ld	a5,8(sp)
    83001880:	a8078ce3          	beqz	a5,83001318 <_vfiprintf_r+0x238>
    83001884:	00040613          	mv	a2,s0
    83001888:	03000593          	li	a1,48
    8300188c:	00048513          	mv	a0,s1
    83001890:	00002097          	auipc	ra,0x2
    83001894:	cb8080e7          	jalr	-840(ra) # 83003548 <_fputc_r>
    83001898:	fff00993          	li	s3,-1
    8300189c:	91350ae3          	beq	a0,s3,830011b0 <_vfiprintf_r+0xd0>
    830018a0:	03813583          	ld	a1,56(sp)
    830018a4:	00040613          	mv	a2,s0
    830018a8:	00048513          	mv	a0,s1
    830018ac:	00002097          	auipc	ra,0x2
    830018b0:	c9c080e7          	jalr	-868(ra) # 83003548 <_fputc_r>
    830018b4:	8f350ee3          	beq	a0,s3,830011b0 <_vfiprintf_r+0xd0>
    830018b8:	03013703          	ld	a4,48(sp)
    830018bc:	08000793          	li	a5,128
    830018c0:	a6f712e3          	bne	a4,a5,83001324 <_vfiprintf_r+0x244>
    830018c4:	00013783          	ld	a5,0(sp)
    830018c8:	40fd8cbb          	subw	s9,s11,a5
    830018cc:	a5905ce3          	blez	s9,83001324 <_vfiprintf_r+0x244>
    830018d0:	01000793          	li	a5,16
    830018d4:	1197d663          	bge	a5,s9,830019e0 <_vfiprintf_r+0x900>
    830018d8:	00004997          	auipc	s3,0x4
    830018dc:	ff098993          	addi	s3,s3,-16 # 830058c8 <zeroes.4462+0x10>
    830018e0:	fff00b13          	li	s6,-1
    830018e4:	01000c13          	li	s8,16
    830018e8:	00004d17          	auipc	s10,0x4
    830018ec:	fd1d0d13          	addi	s10,s10,-47 # 830058b9 <zeroes.4462+0x1>
    830018f0:	03000593          	li	a1,48
    830018f4:	0100006f          	j	83001904 <_vfiprintf_r+0x824>
    830018f8:	0fa98063          	beq	s3,s10,830019d8 <_vfiprintf_r+0x8f8>
    830018fc:	000d4583          	lbu	a1,0(s10)
    83001900:	001d0d13          	addi	s10,s10,1
    83001904:	00040613          	mv	a2,s0
    83001908:	00048513          	mv	a0,s1
    8300190c:	00002097          	auipc	ra,0x2
    83001910:	c3c080e7          	jalr	-964(ra) # 83003548 <_fputc_r>
    83001914:	ff6512e3          	bne	a0,s6,830018f8 <_vfiprintf_r+0x818>
    83001918:	899ff06f          	j	830011b0 <_vfiprintf_r+0xd0>
    8300191c:	ff0c8c9b          	addiw	s9,s9,-16
    83001920:	01000793          	li	a5,16
    83001924:	ab97cee3          	blt	a5,s9,830013e0 <_vfiprintf_r+0x300>
    83001928:	00004797          	auipc	a5,0x4
    8300192c:	f8078793          	addi	a5,a5,-128 # 830058a8 <blanks.4461>
    83001930:	00004b17          	auipc	s6,0x4
    83001934:	f79b0b13          	addi	s6,s6,-135 # 830058a9 <blanks.4461+0x1>
    83001938:	01978cb3          	add	s9,a5,s9
    8300193c:	02000593          	li	a1,32
    83001940:	fff00993          	li	s3,-1
    83001944:	0100006f          	j	83001954 <_vfiprintf_r+0x874>
    83001948:	9d9b02e3          	beq	s6,s9,8300130c <_vfiprintf_r+0x22c>
    8300194c:	000b4583          	lbu	a1,0(s6)
    83001950:	001b0b13          	addi	s6,s6,1
    83001954:	00040613          	mv	a2,s0
    83001958:	00048513          	mv	a0,s1
    8300195c:	00002097          	auipc	ra,0x2
    83001960:	bec080e7          	jalr	-1044(ra) # 83003548 <_fputc_r>
    83001964:	ff3512e3          	bne	a0,s3,83001948 <_vfiprintf_r+0x868>
    83001968:	849ff06f          	j	830011b0 <_vfiprintf_r+0xd0>
    8300196c:	01813783          	ld	a5,24(sp)
    83001970:	02078a63          	beqz	a5,830019a4 <_vfiprintf_r+0x8c4>
    83001974:	00f90c33          	add	s8,s2,a5
    83001978:	fff00993          	li	s3,-1
    8300197c:	00c0006f          	j	83001988 <_vfiprintf_r+0x8a8>
    83001980:	00190913          	addi	s2,s2,1
    83001984:	032c0063          	beq	s8,s2,830019a4 <_vfiprintf_r+0x8c4>
    83001988:	00094583          	lbu	a1,0(s2)
    8300198c:	00040613          	mv	a2,s0
    83001990:	00048513          	mv	a0,s1
    83001994:	00002097          	auipc	ra,0x2
    83001998:	bb4080e7          	jalr	-1100(ra) # 83003548 <_fputc_r>
    8300199c:	ff3512e3          	bne	a0,s3,83001980 <_vfiprintf_r+0x8a0>
    830019a0:	811ff06f          	j	830011b0 <_vfiprintf_r+0xd0>
    830019a4:	004bfb93          	andi	s7,s7,4
    830019a8:	000b8863          	beqz	s7,830019b8 <_vfiprintf_r+0x8d8>
    830019ac:	00013783          	ld	a5,0(sp)
    830019b0:	40fd8a3b          	subw	s4,s11,a5
    830019b4:	09404e63          	bgtz	s4,83001a50 <_vfiprintf_r+0x970>
    830019b8:	00013703          	ld	a4,0(sp)
    830019bc:	000d8793          	mv	a5,s11
    830019c0:	00edd463          	bge	s11,a4,830019c8 <_vfiprintf_r+0x8e8>
    830019c4:	00070793          	mv	a5,a4
    830019c8:	02013703          	ld	a4,32(sp)
    830019cc:	00e787bb          	addw	a5,a5,a4
    830019d0:	02f13023          	sd	a5,32(sp)
    830019d4:	f80ff06f          	j	83001154 <_vfiprintf_r+0x74>
    830019d8:	ff0c8c9b          	addiw	s9,s9,-16
    830019dc:	f19c46e3          	blt	s8,s9,830018e8 <_vfiprintf_r+0x808>
    830019e0:	00004997          	auipc	s3,0x4
    830019e4:	ed898993          	addi	s3,s3,-296 # 830058b8 <zeroes.4462>
    830019e8:	00004d17          	auipc	s10,0x4
    830019ec:	ed1d0d13          	addi	s10,s10,-303 # 830058b9 <zeroes.4462+0x1>
    830019f0:	019989b3          	add	s3,s3,s9
    830019f4:	03000593          	li	a1,48
    830019f8:	fff00b13          	li	s6,-1
    830019fc:	0100006f          	j	83001a0c <_vfiprintf_r+0x92c>
    83001a00:	93a982e3          	beq	s3,s10,83001324 <_vfiprintf_r+0x244>
    83001a04:	000d4583          	lbu	a1,0(s10)
    83001a08:	001d0d13          	addi	s10,s10,1
    83001a0c:	00040613          	mv	a2,s0
    83001a10:	00048513          	mv	a0,s1
    83001a14:	00002097          	auipc	ra,0x2
    83001a18:	b34080e7          	jalr	-1228(ra) # 83003548 <_fputc_r>
    83001a1c:	ff6512e3          	bne	a0,s6,83001a00 <_vfiprintf_r+0x920>
    83001a20:	f90ff06f          	j	830011b0 <_vfiprintf_r+0xd0>
    83001a24:	fff00713          	li	a4,-1
    83001a28:	24ea0463          	beq	s4,a4,83001c70 <_vfiprintf_r+0xb90>
    83001a2c:	f7fbfb93          	andi	s7,s7,-129
    83001a30:	000b8b9b          	sext.w	s7,s7
    83001a34:	220a1e63          	bnez	s4,83001c70 <_vfiprintf_r+0xb90>
    83001a38:	00013c23          	sd	zero,24(sp)
    83001a3c:	00d13823          	sd	a3,16(sp)
    83001a40:	00013023          	sd	zero,0(sp)
    83001a44:	07010913          	addi	s2,sp,112
    83001a48:	00000d13          	li	s10,0
    83001a4c:	88dff06f          	j	830012d8 <_vfiprintf_r+0x1f8>
    83001a50:	01000793          	li	a5,16
    83001a54:	0547d863          	bge	a5,s4,83001aa4 <_vfiprintf_r+0x9c4>
    83001a58:	00004997          	auipc	s3,0x4
    83001a5c:	e6098993          	addi	s3,s3,-416 # 830058b8 <zeroes.4462>
    83001a60:	fff00913          	li	s2,-1
    83001a64:	01000b13          	li	s6,16
    83001a68:	00004b97          	auipc	s7,0x4
    83001a6c:	e41b8b93          	addi	s7,s7,-447 # 830058a9 <blanks.4461+0x1>
    83001a70:	02000593          	li	a1,32
    83001a74:	0100006f          	j	83001a84 <_vfiprintf_r+0x9a4>
    83001a78:	03798263          	beq	s3,s7,83001a9c <_vfiprintf_r+0x9bc>
    83001a7c:	000bc583          	lbu	a1,0(s7)
    83001a80:	001b8b93          	addi	s7,s7,1
    83001a84:	00040613          	mv	a2,s0
    83001a88:	00048513          	mv	a0,s1
    83001a8c:	00002097          	auipc	ra,0x2
    83001a90:	abc080e7          	jalr	-1348(ra) # 83003548 <_fputc_r>
    83001a94:	ff2512e3          	bne	a0,s2,83001a78 <_vfiprintf_r+0x998>
    83001a98:	f18ff06f          	j	830011b0 <_vfiprintf_r+0xd0>
    83001a9c:	ff0a0a1b          	addiw	s4,s4,-16
    83001aa0:	fd4b44e3          	blt	s6,s4,83001a68 <_vfiprintf_r+0x988>
    83001aa4:	00004797          	auipc	a5,0x4
    83001aa8:	e0478793          	addi	a5,a5,-508 # 830058a8 <blanks.4461>
    83001aac:	00004997          	auipc	s3,0x4
    83001ab0:	dfd98993          	addi	s3,s3,-515 # 830058a9 <blanks.4461+0x1>
    83001ab4:	01478a33          	add	s4,a5,s4
    83001ab8:	02000593          	li	a1,32
    83001abc:	fff00913          	li	s2,-1
    83001ac0:	0100006f          	j	83001ad0 <_vfiprintf_r+0x9f0>
    83001ac4:	ef3a0ae3          	beq	s4,s3,830019b8 <_vfiprintf_r+0x8d8>
    83001ac8:	0009c583          	lbu	a1,0(s3)
    83001acc:	00198993          	addi	s3,s3,1
    83001ad0:	00040613          	mv	a2,s0
    83001ad4:	00048513          	mv	a0,s1
    83001ad8:	00002097          	auipc	ra,0x2
    83001adc:	a70080e7          	jalr	-1424(ra) # 83003548 <_fputc_r>
    83001ae0:	ff2512e3          	bne	a0,s2,83001ac4 <_vfiprintf_r+0x9e4>
    83001ae4:	eccff06f          	j	830011b0 <_vfiprintf_r+0xd0>
    83001ae8:	00d13823          	sd	a3,16(sp)
    83001aec:	fff00693          	li	a3,-1
    83001af0:	000b8713          	mv	a4,s7
    83001af4:	b2da1ae3          	bne	s4,a3,83001628 <_vfiprintf_r+0x548>
    83001af8:	00070b93          	mv	s7,a4
    83001afc:	00000d13          	li	s10,0
    83001b00:	ce1ff06f          	j	830017e0 <_vfiprintf_r+0x700>
    83001b04:	01013783          	ld	a5,16(sp)
    83001b08:	040bf613          	andi	a2,s7,64
    83001b0c:	0007a783          	lw	a5,0(a5)
    83001b10:	0a060a63          	beqz	a2,83001bc4 <_vfiprintf_r+0xae4>
    83001b14:	03079793          	slli	a5,a5,0x30
    83001b18:	0307d793          	srli	a5,a5,0x30
    83001b1c:	c7dff06f          	j	83001798 <_vfiprintf_r+0x6b8>
    83001b20:	00900693          	li	a3,9
    83001b24:	000b8713          	mv	a4,s7
    83001b28:	a6f6fee3          	bgeu	a3,a5,830015a4 <_vfiprintf_r+0x4c4>
    83001b2c:	07010913          	addi	s2,sp,112
    83001b30:	00a00613          	li	a2,10
    83001b34:	02c7f6b3          	remu	a3,a5,a2
    83001b38:	fff90913          	addi	s2,s2,-1
    83001b3c:	00078593          	mv	a1,a5
    83001b40:	0306869b          	addiw	a3,a3,48
    83001b44:	00d90023          	sb	a3,0(s2)
    83001b48:	00900693          	li	a3,9
    83001b4c:	02c7d7b3          	divu	a5,a5,a2
    83001b50:	feb6e2e3          	bltu	a3,a1,83001b34 <_vfiprintf_r+0xa54>
    83001b54:	07010793          	addi	a5,sp,112
    83001b58:	412787bb          	subw	a5,a5,s2
    83001b5c:	00f13c23          	sd	a5,24(sp)
    83001b60:	00070b93          	mv	s7,a4
    83001b64:	925ff06f          	j	83001488 <_vfiprintf_r+0x3a8>
    83001b68:	00013c23          	sd	zero,24(sp)
    83001b6c:	07010913          	addi	s2,sp,112
    83001b70:	919ff06f          	j	83001488 <_vfiprintf_r+0x3a8>
    83001b74:	040bfb93          	andi	s7,s7,64
    83001b78:	02013783          	ld	a5,32(sp)
    83001b7c:	080b8863          	beqz	s7,83001c0c <_vfiprintf_r+0xb2c>
    83001b80:	00f71023          	sh	a5,0(a4)
    83001b84:	dd0ff06f          	j	83001154 <_vfiprintf_r+0x74>
    83001b88:	02079793          	slli	a5,a5,0x20
    83001b8c:	0207d793          	srli	a5,a5,0x20
    83001b90:	00d13823          	sd	a3,16(sp)
    83001b94:	000b8713          	mv	a4,s7
    83001b98:	979ff06f          	j	83001510 <_vfiprintf_r+0x430>
    83001b9c:	02079793          	slli	a5,a5,0x20
    83001ba0:	0207d793          	srli	a5,a5,0x20
    83001ba4:	00d13823          	sd	a3,16(sp)
    83001ba8:	000b8713          	mv	a4,s7
    83001bac:	00000d13          	li	s10,0
    83001bb0:	89dff06f          	j	8300144c <_vfiprintf_r+0x36c>
    83001bb4:	00078693          	mv	a3,a5
    83001bb8:	00c13823          	sd	a2,16(sp)
    83001bbc:	000b8713          	mv	a4,s7
    83001bc0:	889ff06f          	j	83001448 <_vfiprintf_r+0x368>
    83001bc4:	02079793          	slli	a5,a5,0x20
    83001bc8:	0207d793          	srli	a5,a5,0x20
    83001bcc:	bcdff06f          	j	83001798 <_vfiprintf_r+0x6b8>
    83001bd0:	00100713          	li	a4,1
    83001bd4:	c0e692e3          	bne	a3,a4,830017d8 <_vfiprintf_r+0x6f8>
    83001bd8:	000b8713          	mv	a4,s7
    83001bdc:	9c9ff06f          	j	830015a4 <_vfiprintf_r+0x4c4>
    83001be0:	00600713          	li	a4,6
    83001be4:	000a079b          	sext.w	a5,s4
    83001be8:	03476e63          	bltu	a4,s4,83001c24 <_vfiprintf_r+0xb44>
    83001bec:	00f13023          	sd	a5,0(sp)
    83001bf0:	01313823          	sd	s3,16(sp)
    83001bf4:	00f13c23          	sd	a5,24(sp)
    83001bf8:	00000d13          	li	s10,0
    83001bfc:	00000a13          	li	s4,0
    83001c00:	00004917          	auipc	s2,0x4
    83001c04:	9b090913          	addi	s2,s2,-1616 # 830055b0 <_getpid_r+0x7c>
    83001c08:	ed0ff06f          	j	830012d8 <_vfiprintf_r+0x1f8>
    83001c0c:	00f72023          	sw	a5,0(a4)
    83001c10:	d44ff06f          	j	83001154 <_vfiprintf_r+0x74>
    83001c14:	00004797          	auipc	a5,0x4
    83001c18:	96c78793          	addi	a5,a5,-1684 # 83005580 <_getpid_r+0x4c>
    83001c1c:	02f13423          	sd	a5,40(sp)
    83001c20:	b65ff06f          	j	83001784 <_vfiprintf_r+0x6a4>
    83001c24:	00600793          	li	a5,6
    83001c28:	fc5ff06f          	j	83001bec <_vfiprintf_r+0xb0c>
    83001c2c:	01413c23          	sd	s4,24(sp)
    83001c30:	01413023          	sd	s4,0(sp)
    83001c34:	01313823          	sd	s3,16(sp)
    83001c38:	00000d13          	li	s10,0
    83001c3c:	00000a13          	li	s4,0
    83001c40:	e98ff06f          	j	830012d8 <_vfiprintf_r+0x1f8>
    83001c44:	00090513          	mv	a0,s2
    83001c48:	00001097          	auipc	ra,0x1
    83001c4c:	a3c080e7          	jalr	-1476(ra) # 83002684 <strlen>
    83001c50:	0005071b          	sext.w	a4,a0
    83001c54:	a15ff06f          	j	83001668 <_vfiprintf_r+0x588>
    83001c58:	000b8713          	mv	a4,s7
    83001c5c:	925ff06f          	j	83001580 <_vfiprintf_r+0x4a0>
    83001c60:	000b8713          	mv	a4,s7
    83001c64:	a81ff06f          	j	830016e4 <_vfiprintf_r+0x604>
    83001c68:	000b8713          	mv	a4,s7
    83001c6c:	899ff06f          	j	83001504 <_vfiprintf_r+0x424>
    83001c70:	00d13823          	sd	a3,16(sp)
    83001c74:	00000d13          	li	s10,0
    83001c78:	b69ff06f          	j	830017e0 <_vfiprintf_r+0x700>
    83001c7c:	01013703          	ld	a4,16(sp)
    83001c80:	00072783          	lw	a5,0(a4)
    83001c84:	00870713          	addi	a4,a4,8
    83001c88:	00078a1b          	sext.w	s4,a5
    83001c8c:	0007c663          	bltz	a5,83001c98 <_vfiprintf_r+0xbb8>
    83001c90:	00e13823          	sd	a4,16(sp)
    83001c94:	db4ff06f          	j	83001248 <_vfiprintf_r+0x168>
    83001c98:	fff00a13          	li	s4,-1
    83001c9c:	00e13823          	sd	a4,16(sp)
    83001ca0:	da8ff06f          	j	83001248 <_vfiprintf_r+0x168>

0000000083001ca4 <vfiprintf>:
    83001ca4:	00060693          	mv	a3,a2
    83001ca8:	00058613          	mv	a2,a1
    83001cac:	00050593          	mv	a1,a0
    83001cb0:	00006517          	auipc	a0,0x6
    83001cb4:	c7853503          	ld	a0,-904(a0) # 83007928 <_impure_ptr>
    83001cb8:	fffff317          	auipc	t1,0xfffff
    83001cbc:	42830067          	jr	1064(t1) # 830010e0 <_vfiprintf_r>

0000000083001cc0 <write>:
    83001cc0:	00060693          	mv	a3,a2
    83001cc4:	00058613          	mv	a2,a1
    83001cc8:	00050593          	mv	a1,a0
    83001ccc:	00006517          	auipc	a0,0x6
    83001cd0:	c5c53503          	ld	a0,-932(a0) # 83007928 <_impure_ptr>
    83001cd4:	00000317          	auipc	t1,0x0
    83001cd8:	00830067          	jr	8(t1) # 83001cdc <_write_r>

0000000083001cdc <_write_r>:
    83001cdc:	ff010113          	addi	sp,sp,-16
    83001ce0:	00058713          	mv	a4,a1
    83001ce4:	00813023          	sd	s0,0(sp)
    83001ce8:	00060593          	mv	a1,a2
    83001cec:	00050413          	mv	s0,a0
    83001cf0:	00068613          	mv	a2,a3
    83001cf4:	00070513          	mv	a0,a4
    83001cf8:	00006797          	auipc	a5,0x6
    83001cfc:	c807ac23          	sw	zero,-872(a5) # 83007990 <errno>
    83001d00:	00113423          	sd	ra,8(sp)
    83001d04:	00003097          	auipc	ra,0x3
    83001d08:	ea0080e7          	jalr	-352(ra) # 83004ba4 <_write>
    83001d0c:	fff00793          	li	a5,-1
    83001d10:	00f50a63          	beq	a0,a5,83001d24 <_write_r+0x48>
    83001d14:	00813083          	ld	ra,8(sp)
    83001d18:	00013403          	ld	s0,0(sp)
    83001d1c:	01010113          	addi	sp,sp,16
    83001d20:	00008067          	ret
    83001d24:	00006797          	auipc	a5,0x6
    83001d28:	c6c7a783          	lw	a5,-916(a5) # 83007990 <errno>
    83001d2c:	fe0784e3          	beqz	a5,83001d14 <_write_r+0x38>
    83001d30:	00813083          	ld	ra,8(sp)
    83001d34:	00f42023          	sw	a5,0(s0)
    83001d38:	00013403          	ld	s0,0(sp)
    83001d3c:	01010113          	addi	sp,sp,16
    83001d40:	00008067          	ret

0000000083001d44 <_malloc_r>:
    83001d44:	fa010113          	addi	sp,sp,-96
    83001d48:	04913423          	sd	s1,72(sp)
    83001d4c:	05213023          	sd	s2,64(sp)
    83001d50:	04113c23          	sd	ra,88(sp)
    83001d54:	04813823          	sd	s0,80(sp)
    83001d58:	03313c23          	sd	s3,56(sp)
    83001d5c:	03413823          	sd	s4,48(sp)
    83001d60:	03513423          	sd	s5,40(sp)
    83001d64:	03613023          	sd	s6,32(sp)
    83001d68:	01713c23          	sd	s7,24(sp)
    83001d6c:	01813823          	sd	s8,16(sp)
    83001d70:	01913423          	sd	s9,8(sp)
    83001d74:	01758493          	addi	s1,a1,23
    83001d78:	02e00793          	li	a5,46
    83001d7c:	00050913          	mv	s2,a0
    83001d80:	0697ea63          	bltu	a5,s1,83001df4 <_malloc_r+0xb0>
    83001d84:	02000793          	li	a5,32
    83001d88:	28b7ea63          	bltu	a5,a1,8300201c <_malloc_r+0x2d8>
    83001d8c:	00002097          	auipc	ra,0x2
    83001d90:	020080e7          	jalr	32(ra) # 83003dac <__malloc_lock>
    83001d94:	02000493          	li	s1,32
    83001d98:	00400613          	li	a2,4
    83001d9c:	05000793          	li	a5,80
    83001da0:	00005997          	auipc	s3,0x5
    83001da4:	30898993          	addi	s3,s3,776 # 830070a8 <__malloc_av_>
    83001da8:	00f987b3          	add	a5,s3,a5
    83001dac:	0087b403          	ld	s0,8(a5)
    83001db0:	ff078713          	addi	a4,a5,-16
    83001db4:	2ae40463          	beq	s0,a4,8300205c <_malloc_r+0x318>
    83001db8:	00843783          	ld	a5,8(s0)
    83001dbc:	01843683          	ld	a3,24(s0)
    83001dc0:	01043603          	ld	a2,16(s0)
    83001dc4:	ffc7f793          	andi	a5,a5,-4
    83001dc8:	00f407b3          	add	a5,s0,a5
    83001dcc:	0087b703          	ld	a4,8(a5)
    83001dd0:	00d63c23          	sd	a3,24(a2)
    83001dd4:	00c6b823          	sd	a2,16(a3)
    83001dd8:	00176713          	ori	a4,a4,1
    83001ddc:	00090513          	mv	a0,s2
    83001de0:	00e7b423          	sd	a4,8(a5)
    83001de4:	00002097          	auipc	ra,0x2
    83001de8:	fcc080e7          	jalr	-52(ra) # 83003db0 <__malloc_unlock>
    83001dec:	01040513          	addi	a0,s0,16
    83001df0:	2380006f          	j	83002028 <_malloc_r+0x2e4>
    83001df4:	800007b7          	lui	a5,0x80000
    83001df8:	ff04f493          	andi	s1,s1,-16
    83001dfc:	fff7c793          	not	a5,a5
    83001e00:	2097ee63          	bltu	a5,s1,8300201c <_malloc_r+0x2d8>
    83001e04:	20b4ec63          	bltu	s1,a1,8300201c <_malloc_r+0x2d8>
    83001e08:	00002097          	auipc	ra,0x2
    83001e0c:	fa4080e7          	jalr	-92(ra) # 83003dac <__malloc_lock>
    83001e10:	1f700793          	li	a5,503
    83001e14:	5097fe63          	bgeu	a5,s1,83002330 <_malloc_r+0x5ec>
    83001e18:	0094d793          	srli	a5,s1,0x9
    83001e1c:	36078c63          	beqz	a5,83002194 <_malloc_r+0x450>
    83001e20:	00400713          	li	a4,4
    83001e24:	44f76063          	bltu	a4,a5,83002264 <_malloc_r+0x520>
    83001e28:	0064d793          	srli	a5,s1,0x6
    83001e2c:	0397861b          	addiw	a2,a5,57
    83001e30:	0016169b          	slliw	a3,a2,0x1
    83001e34:	0387851b          	addiw	a0,a5,56
    83001e38:	00369693          	slli	a3,a3,0x3
    83001e3c:	00005997          	auipc	s3,0x5
    83001e40:	26c98993          	addi	s3,s3,620 # 830070a8 <__malloc_av_>
    83001e44:	00d986b3          	add	a3,s3,a3
    83001e48:	0086b403          	ld	s0,8(a3)
    83001e4c:	ff068693          	addi	a3,a3,-16
    83001e50:	20868c63          	beq	a3,s0,83002068 <_malloc_r+0x324>
    83001e54:	01f00593          	li	a1,31
    83001e58:	0100006f          	j	83001e68 <_malloc_r+0x124>
    83001e5c:	38075c63          	bgez	a4,830021f4 <_malloc_r+0x4b0>
    83001e60:	01843403          	ld	s0,24(s0)
    83001e64:	20868263          	beq	a3,s0,83002068 <_malloc_r+0x324>
    83001e68:	00843783          	ld	a5,8(s0)
    83001e6c:	ffc7f793          	andi	a5,a5,-4
    83001e70:	40978733          	sub	a4,a5,s1
    83001e74:	fee5d4e3          	bge	a1,a4,83001e5c <_malloc_r+0x118>
    83001e78:	0209b403          	ld	s0,32(s3)
    83001e7c:	00005897          	auipc	a7,0x5
    83001e80:	23c88893          	addi	a7,a7,572 # 830070b8 <__malloc_av_+0x10>
    83001e84:	00050613          	mv	a2,a0
    83001e88:	1f141863          	bne	s0,a7,83002078 <_malloc_r+0x334>
    83001e8c:	0089b783          	ld	a5,8(s3)
    83001e90:	4026571b          	sraiw	a4,a2,0x2
    83001e94:	00100593          	li	a1,1
    83001e98:	00e595b3          	sll	a1,a1,a4
    83001e9c:	24b7fc63          	bgeu	a5,a1,830020f4 <_malloc_r+0x3b0>
    83001ea0:	0109b403          	ld	s0,16(s3)
    83001ea4:	00843a03          	ld	s4,8(s0)
    83001ea8:	ffca7a93          	andi	s5,s4,-4
    83001eac:	009ae863          	bltu	s5,s1,83001ebc <_malloc_r+0x178>
    83001eb0:	409a87b3          	sub	a5,s5,s1
    83001eb4:	01f00713          	li	a4,31
    83001eb8:	30f74863          	blt	a4,a5,830021c8 <_malloc_r+0x484>
    83001ebc:	00006c97          	auipc	s9,0x6
    83001ec0:	a74c8c93          	addi	s9,s9,-1420 # 83007930 <__malloc_sbrk_base>
    83001ec4:	000cb703          	ld	a4,0(s9)
    83001ec8:	00006a17          	auipc	s4,0x6
    83001ecc:	a90a3a03          	ld	s4,-1392(s4) # 83007958 <__malloc_top_pad>
    83001ed0:	fff00793          	li	a5,-1
    83001ed4:	01540bb3          	add	s7,s0,s5
    83001ed8:	01448a33          	add	s4,s1,s4
    83001edc:	52f70063          	beq	a4,a5,830023fc <_malloc_r+0x6b8>
    83001ee0:	000017b7          	lui	a5,0x1
    83001ee4:	01f78793          	addi	a5,a5,31 # 101f <main-0x82fff0c9>
    83001ee8:	00fa0a33          	add	s4,s4,a5
    83001eec:	fffff7b7          	lui	a5,0xfffff
    83001ef0:	00fa7a33          	and	s4,s4,a5
    83001ef4:	000a0593          	mv	a1,s4
    83001ef8:	00090513          	mv	a0,s2
    83001efc:	00001097          	auipc	ra,0x1
    83001f00:	720080e7          	jalr	1824(ra) # 8300361c <_sbrk_r>
    83001f04:	fff00793          	li	a5,-1
    83001f08:	00050b13          	mv	s6,a0
    83001f0c:	44f50c63          	beq	a0,a5,83002364 <_malloc_r+0x620>
    83001f10:	45756863          	bltu	a0,s7,83002360 <_malloc_r+0x61c>
    83001f14:	00006c17          	auipc	s8,0x6
    83001f18:	a54c0c13          	addi	s8,s8,-1452 # 83007968 <__malloc_current_mallinfo>
    83001f1c:	000c2703          	lw	a4,0(s8)
    83001f20:	014707bb          	addw	a5,a4,s4
    83001f24:	00fc2023          	sw	a5,0(s8)
    83001f28:	00078693          	mv	a3,a5
    83001f2c:	58ab8463          	beq	s7,a0,830024b4 <_malloc_r+0x770>
    83001f30:	000cb703          	ld	a4,0(s9)
    83001f34:	fff00793          	li	a5,-1
    83001f38:	58f70c63          	beq	a4,a5,830024d0 <_malloc_r+0x78c>
    83001f3c:	417b07b3          	sub	a5,s6,s7
    83001f40:	00d787bb          	addw	a5,a5,a3
    83001f44:	00fc2023          	sw	a5,0(s8)
    83001f48:	00fb7b93          	andi	s7,s6,15
    83001f4c:	4c0b8a63          	beqz	s7,83002420 <_malloc_r+0x6dc>
    83001f50:	00001737          	lui	a4,0x1
    83001f54:	417b0b33          	sub	s6,s6,s7
    83001f58:	01070793          	addi	a5,a4,16 # 1010 <main-0x82fff0d8>
    83001f5c:	010b0b13          	addi	s6,s6,16
    83001f60:	417787b3          	sub	a5,a5,s7
    83001f64:	014b0cb3          	add	s9,s6,s4
    83001f68:	41978a33          	sub	s4,a5,s9
    83001f6c:	fff70713          	addi	a4,a4,-1
    83001f70:	00ea7a33          	and	s4,s4,a4
    83001f74:	000a0593          	mv	a1,s4
    83001f78:	00090513          	mv	a0,s2
    83001f7c:	00001097          	auipc	ra,0x1
    83001f80:	6a0080e7          	jalr	1696(ra) # 8300361c <_sbrk_r>
    83001f84:	fff00793          	li	a5,-1
    83001f88:	5af50263          	beq	a0,a5,8300252c <_malloc_r+0x7e8>
    83001f8c:	41650533          	sub	a0,a0,s6
    83001f90:	000a071b          	sext.w	a4,s4
    83001f94:	01450a33          	add	s4,a0,s4
    83001f98:	000c2783          	lw	a5,0(s8)
    83001f9c:	0169b823          	sd	s6,16(s3)
    83001fa0:	001a6a13          	ori	s4,s4,1
    83001fa4:	00e787bb          	addw	a5,a5,a4
    83001fa8:	00fc2023          	sw	a5,0(s8)
    83001fac:	014b3423          	sd	s4,8(s6)
    83001fb0:	53340463          	beq	s0,s3,830024d8 <_malloc_r+0x794>
    83001fb4:	01f00613          	li	a2,31
    83001fb8:	53567463          	bgeu	a2,s5,830024e0 <_malloc_r+0x79c>
    83001fbc:	00843683          	ld	a3,8(s0)
    83001fc0:	fe8a8713          	addi	a4,s5,-24
    83001fc4:	ff077713          	andi	a4,a4,-16
    83001fc8:	0016f693          	andi	a3,a3,1
    83001fcc:	00e6e6b3          	or	a3,a3,a4
    83001fd0:	00d43423          	sd	a3,8(s0)
    83001fd4:	00900593          	li	a1,9
    83001fd8:	00e406b3          	add	a3,s0,a4
    83001fdc:	00b6b423          	sd	a1,8(a3)
    83001fe0:	00b6b823          	sd	a1,16(a3)
    83001fe4:	54e66e63          	bltu	a2,a4,83002540 <_malloc_r+0x7fc>
    83001fe8:	008b3a03          	ld	s4,8(s6)
    83001fec:	000b0413          	mv	s0,s6
    83001ff0:	00006717          	auipc	a4,0x6
    83001ff4:	96070713          	addi	a4,a4,-1696 # 83007950 <__malloc_max_sbrked_mem>
    83001ff8:	00073683          	ld	a3,0(a4)
    83001ffc:	00f6f463          	bgeu	a3,a5,83002004 <_malloc_r+0x2c0>
    83002000:	00f73023          	sd	a5,0(a4)
    83002004:	00006717          	auipc	a4,0x6
    83002008:	94470713          	addi	a4,a4,-1724 # 83007948 <__malloc_max_total_mem>
    8300200c:	00073683          	ld	a3,0(a4)
    83002010:	34f6fe63          	bgeu	a3,a5,8300236c <_malloc_r+0x628>
    83002014:	00f73023          	sd	a5,0(a4)
    83002018:	3540006f          	j	8300236c <_malloc_r+0x628>
    8300201c:	00c00793          	li	a5,12
    83002020:	00f92023          	sw	a5,0(s2)
    83002024:	00000513          	li	a0,0
    83002028:	05813083          	ld	ra,88(sp)
    8300202c:	05013403          	ld	s0,80(sp)
    83002030:	04813483          	ld	s1,72(sp)
    83002034:	04013903          	ld	s2,64(sp)
    83002038:	03813983          	ld	s3,56(sp)
    8300203c:	03013a03          	ld	s4,48(sp)
    83002040:	02813a83          	ld	s5,40(sp)
    83002044:	02013b03          	ld	s6,32(sp)
    83002048:	01813b83          	ld	s7,24(sp)
    8300204c:	01013c03          	ld	s8,16(sp)
    83002050:	00813c83          	ld	s9,8(sp)
    83002054:	06010113          	addi	sp,sp,96
    83002058:	00008067          	ret
    8300205c:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xffffffff7cff7680>
    83002060:	0026061b          	addiw	a2,a2,2
    83002064:	d4879ae3          	bne	a5,s0,83001db8 <_malloc_r+0x74>
    83002068:	0209b403          	ld	s0,32(s3)
    8300206c:	00005897          	auipc	a7,0x5
    83002070:	04c88893          	addi	a7,a7,76 # 830070b8 <__malloc_av_+0x10>
    83002074:	e1140ce3          	beq	s0,a7,83001e8c <_malloc_r+0x148>
    83002078:	00843783          	ld	a5,8(s0)
    8300207c:	01f00693          	li	a3,31
    83002080:	ffc7f793          	andi	a5,a5,-4
    83002084:	40978733          	sub	a4,a5,s1
    83002088:	26e6c463          	blt	a3,a4,830022f0 <_malloc_r+0x5ac>
    8300208c:	0319b423          	sd	a7,40(s3)
    83002090:	0319b023          	sd	a7,32(s3)
    83002094:	10075863          	bgez	a4,830021a4 <_malloc_r+0x460>
    83002098:	1ff00713          	li	a4,511
    8300209c:	16f76263          	bltu	a4,a5,83002200 <_malloc_r+0x4bc>
    830020a0:	0037d793          	srli	a5,a5,0x3
    830020a4:	0017871b          	addiw	a4,a5,1
    830020a8:	0017171b          	slliw	a4,a4,0x1
    830020ac:	00371713          	slli	a4,a4,0x3
    830020b0:	0089b503          	ld	a0,8(s3)
    830020b4:	00e98733          	add	a4,s3,a4
    830020b8:	00073583          	ld	a1,0(a4)
    830020bc:	4027d69b          	sraiw	a3,a5,0x2
    830020c0:	00100793          	li	a5,1
    830020c4:	00d797b3          	sll	a5,a5,a3
    830020c8:	00a7e7b3          	or	a5,a5,a0
    830020cc:	ff070693          	addi	a3,a4,-16
    830020d0:	00d43c23          	sd	a3,24(s0)
    830020d4:	00b43823          	sd	a1,16(s0)
    830020d8:	00f9b423          	sd	a5,8(s3)
    830020dc:	00873023          	sd	s0,0(a4)
    830020e0:	0085bc23          	sd	s0,24(a1)
    830020e4:	4026571b          	sraiw	a4,a2,0x2
    830020e8:	00100593          	li	a1,1
    830020ec:	00e595b3          	sll	a1,a1,a4
    830020f0:	dab7e8e3          	bltu	a5,a1,83001ea0 <_malloc_r+0x15c>
    830020f4:	00f5f733          	and	a4,a1,a5
    830020f8:	02071463          	bnez	a4,83002120 <_malloc_r+0x3dc>
    830020fc:	00159593          	slli	a1,a1,0x1
    83002100:	ffc67613          	andi	a2,a2,-4
    83002104:	00f5f733          	and	a4,a1,a5
    83002108:	0046061b          	addiw	a2,a2,4
    8300210c:	00071a63          	bnez	a4,83002120 <_malloc_r+0x3dc>
    83002110:	00159593          	slli	a1,a1,0x1
    83002114:	00f5f733          	and	a4,a1,a5
    83002118:	0046061b          	addiw	a2,a2,4
    8300211c:	fe070ae3          	beqz	a4,83002110 <_malloc_r+0x3cc>
    83002120:	01f00813          	li	a6,31
    83002124:	0016031b          	addiw	t1,a2,1
    83002128:	0013131b          	slliw	t1,t1,0x1
    8300212c:	00331313          	slli	t1,t1,0x3
    83002130:	ff030313          	addi	t1,t1,-16
    83002134:	00698333          	add	t1,s3,t1
    83002138:	00030513          	mv	a0,t1
    8300213c:	01853783          	ld	a5,24(a0)
    83002140:	00060e13          	mv	t3,a2
    83002144:	14f50463          	beq	a0,a5,8300228c <_malloc_r+0x548>
    83002148:	0087b703          	ld	a4,8(a5)
    8300214c:	00078413          	mv	s0,a5
    83002150:	0187b783          	ld	a5,24(a5)
    83002154:	ffc77713          	andi	a4,a4,-4
    83002158:	409706b3          	sub	a3,a4,s1
    8300215c:	14d84463          	blt	a6,a3,830022a4 <_malloc_r+0x560>
    83002160:	fe06c2e3          	bltz	a3,83002144 <_malloc_r+0x400>
    83002164:	00e40733          	add	a4,s0,a4
    83002168:	00873683          	ld	a3,8(a4)
    8300216c:	01043603          	ld	a2,16(s0)
    83002170:	00090513          	mv	a0,s2
    83002174:	0016e693          	ori	a3,a3,1
    83002178:	00d73423          	sd	a3,8(a4)
    8300217c:	00f63c23          	sd	a5,24(a2)
    83002180:	00c7b823          	sd	a2,16(a5)
    83002184:	00002097          	auipc	ra,0x2
    83002188:	c2c080e7          	jalr	-980(ra) # 83003db0 <__malloc_unlock>
    8300218c:	01040513          	addi	a0,s0,16
    83002190:	e99ff06f          	j	83002028 <_malloc_r+0x2e4>
    83002194:	40000693          	li	a3,1024
    83002198:	04000613          	li	a2,64
    8300219c:	03f00513          	li	a0,63
    830021a0:	c9dff06f          	j	83001e3c <_malloc_r+0xf8>
    830021a4:	00f407b3          	add	a5,s0,a5
    830021a8:	0087b703          	ld	a4,8(a5)
    830021ac:	00090513          	mv	a0,s2
    830021b0:	00176713          	ori	a4,a4,1
    830021b4:	00e7b423          	sd	a4,8(a5)
    830021b8:	00002097          	auipc	ra,0x2
    830021bc:	bf8080e7          	jalr	-1032(ra) # 83003db0 <__malloc_unlock>
    830021c0:	01040513          	addi	a0,s0,16
    830021c4:	e65ff06f          	j	83002028 <_malloc_r+0x2e4>
    830021c8:	0014e713          	ori	a4,s1,1
    830021cc:	00e43423          	sd	a4,8(s0)
    830021d0:	009404b3          	add	s1,s0,s1
    830021d4:	0099b823          	sd	s1,16(s3)
    830021d8:	0017e793          	ori	a5,a5,1
    830021dc:	00090513          	mv	a0,s2
    830021e0:	00f4b423          	sd	a5,8(s1)
    830021e4:	00002097          	auipc	ra,0x2
    830021e8:	bcc080e7          	jalr	-1076(ra) # 83003db0 <__malloc_unlock>
    830021ec:	01040513          	addi	a0,s0,16
    830021f0:	e39ff06f          	j	83002028 <_malloc_r+0x2e4>
    830021f4:	01843683          	ld	a3,24(s0)
    830021f8:	01043603          	ld	a2,16(s0)
    830021fc:	bcdff06f          	j	83001dc8 <_malloc_r+0x84>
    83002200:	0097d713          	srli	a4,a5,0x9
    83002204:	00400693          	li	a3,4
    83002208:	14e6f063          	bgeu	a3,a4,83002348 <_malloc_r+0x604>
    8300220c:	01400693          	li	a3,20
    83002210:	24e6e663          	bltu	a3,a4,8300245c <_malloc_r+0x718>
    83002214:	05c7059b          	addiw	a1,a4,92
    83002218:	0015959b          	slliw	a1,a1,0x1
    8300221c:	05b7069b          	addiw	a3,a4,91
    83002220:	00359593          	slli	a1,a1,0x3
    83002224:	00b985b3          	add	a1,s3,a1
    83002228:	0005b703          	ld	a4,0(a1)
    8300222c:	ff058593          	addi	a1,a1,-16
    83002230:	1ce58a63          	beq	a1,a4,83002404 <_malloc_r+0x6c0>
    83002234:	00873683          	ld	a3,8(a4)
    83002238:	ffc6f693          	andi	a3,a3,-4
    8300223c:	00d7f663          	bgeu	a5,a3,83002248 <_malloc_r+0x504>
    83002240:	01073703          	ld	a4,16(a4)
    83002244:	fee598e3          	bne	a1,a4,83002234 <_malloc_r+0x4f0>
    83002248:	01873583          	ld	a1,24(a4)
    8300224c:	0089b783          	ld	a5,8(s3)
    83002250:	00b43c23          	sd	a1,24(s0)
    83002254:	00e43823          	sd	a4,16(s0)
    83002258:	0085b823          	sd	s0,16(a1)
    8300225c:	00873c23          	sd	s0,24(a4)
    83002260:	e85ff06f          	j	830020e4 <_malloc_r+0x3a0>
    83002264:	01400713          	li	a4,20
    83002268:	12f77663          	bgeu	a4,a5,83002394 <_malloc_r+0x650>
    8300226c:	05400713          	li	a4,84
    83002270:	20f76663          	bltu	a4,a5,8300247c <_malloc_r+0x738>
    83002274:	00c4d793          	srli	a5,s1,0xc
    83002278:	06f7861b          	addiw	a2,a5,111
    8300227c:	0016169b          	slliw	a3,a2,0x1
    83002280:	06e7851b          	addiw	a0,a5,110
    83002284:	00369693          	slli	a3,a3,0x3
    83002288:	bb5ff06f          	j	83001e3c <_malloc_r+0xf8>
    8300228c:	001e0e1b          	addiw	t3,t3,1
    83002290:	003e7793          	andi	a5,t3,3
    83002294:	01050513          	addi	a0,a0,16
    83002298:	10078e63          	beqz	a5,830023b4 <_malloc_r+0x670>
    8300229c:	01853783          	ld	a5,24(a0)
    830022a0:	ea5ff06f          	j	83002144 <_malloc_r+0x400>
    830022a4:	01043603          	ld	a2,16(s0)
    830022a8:	0014e593          	ori	a1,s1,1
    830022ac:	00b43423          	sd	a1,8(s0)
    830022b0:	00f63c23          	sd	a5,24(a2)
    830022b4:	00c7b823          	sd	a2,16(a5)
    830022b8:	009404b3          	add	s1,s0,s1
    830022bc:	0299b423          	sd	s1,40(s3)
    830022c0:	0299b023          	sd	s1,32(s3)
    830022c4:	0016e793          	ori	a5,a3,1
    830022c8:	0114bc23          	sd	a7,24(s1)
    830022cc:	0114b823          	sd	a7,16(s1)
    830022d0:	00f4b423          	sd	a5,8(s1)
    830022d4:	00e40733          	add	a4,s0,a4
    830022d8:	00090513          	mv	a0,s2
    830022dc:	00d73023          	sd	a3,0(a4)
    830022e0:	00002097          	auipc	ra,0x2
    830022e4:	ad0080e7          	jalr	-1328(ra) # 83003db0 <__malloc_unlock>
    830022e8:	01040513          	addi	a0,s0,16
    830022ec:	d3dff06f          	j	83002028 <_malloc_r+0x2e4>
    830022f0:	0014e693          	ori	a3,s1,1
    830022f4:	00d43423          	sd	a3,8(s0)
    830022f8:	009404b3          	add	s1,s0,s1
    830022fc:	0299b423          	sd	s1,40(s3)
    83002300:	0299b023          	sd	s1,32(s3)
    83002304:	00176693          	ori	a3,a4,1
    83002308:	0114bc23          	sd	a7,24(s1)
    8300230c:	0114b823          	sd	a7,16(s1)
    83002310:	00d4b423          	sd	a3,8(s1)
    83002314:	00f407b3          	add	a5,s0,a5
    83002318:	00090513          	mv	a0,s2
    8300231c:	00e7b023          	sd	a4,0(a5)
    83002320:	00002097          	auipc	ra,0x2
    83002324:	a90080e7          	jalr	-1392(ra) # 83003db0 <__malloc_unlock>
    83002328:	01040513          	addi	a0,s0,16
    8300232c:	cfdff06f          	j	83002028 <_malloc_r+0x2e4>
    83002330:	0034d613          	srli	a2,s1,0x3
    83002334:	0016079b          	addiw	a5,a2,1
    83002338:	0017979b          	slliw	a5,a5,0x1
    8300233c:	0006061b          	sext.w	a2,a2
    83002340:	00379793          	slli	a5,a5,0x3
    83002344:	a5dff06f          	j	83001da0 <_malloc_r+0x5c>
    83002348:	0067d713          	srli	a4,a5,0x6
    8300234c:	0397059b          	addiw	a1,a4,57
    83002350:	0015959b          	slliw	a1,a1,0x1
    83002354:	0387069b          	addiw	a3,a4,56
    83002358:	00359593          	slli	a1,a1,0x3
    8300235c:	ec9ff06f          	j	83002224 <_malloc_r+0x4e0>
    83002360:	13340e63          	beq	s0,s3,8300249c <_malloc_r+0x758>
    83002364:	0109b403          	ld	s0,16(s3)
    83002368:	00843a03          	ld	s4,8(s0)
    8300236c:	ffca7a13          	andi	s4,s4,-4
    83002370:	409a07b3          	sub	a5,s4,s1
    83002374:	009a6663          	bltu	s4,s1,83002380 <_malloc_r+0x63c>
    83002378:	01f00713          	li	a4,31
    8300237c:	e4f746e3          	blt	a4,a5,830021c8 <_malloc_r+0x484>
    83002380:	00090513          	mv	a0,s2
    83002384:	00002097          	auipc	ra,0x2
    83002388:	a2c080e7          	jalr	-1492(ra) # 83003db0 <__malloc_unlock>
    8300238c:	00000513          	li	a0,0
    83002390:	c99ff06f          	j	83002028 <_malloc_r+0x2e4>
    83002394:	05c7861b          	addiw	a2,a5,92
    83002398:	0016169b          	slliw	a3,a2,0x1
    8300239c:	05b7851b          	addiw	a0,a5,91
    830023a0:	00369693          	slli	a3,a3,0x3
    830023a4:	a99ff06f          	j	83001e3c <_malloc_r+0xf8>
    830023a8:	01033783          	ld	a5,16(t1)
    830023ac:	fff6061b          	addiw	a2,a2,-1
    830023b0:	1e679663          	bne	a5,t1,8300259c <_malloc_r+0x858>
    830023b4:	00367793          	andi	a5,a2,3
    830023b8:	ff030313          	addi	t1,t1,-16
    830023bc:	fe0796e3          	bnez	a5,830023a8 <_malloc_r+0x664>
    830023c0:	0089b703          	ld	a4,8(s3)
    830023c4:	fff5c793          	not	a5,a1
    830023c8:	00e7f7b3          	and	a5,a5,a4
    830023cc:	00f9b423          	sd	a5,8(s3)
    830023d0:	00159593          	slli	a1,a1,0x1
    830023d4:	acb7e6e3          	bltu	a5,a1,83001ea0 <_malloc_r+0x15c>
    830023d8:	ac0584e3          	beqz	a1,83001ea0 <_malloc_r+0x15c>
    830023dc:	00f5f733          	and	a4,a1,a5
    830023e0:	00071a63          	bnez	a4,830023f4 <_malloc_r+0x6b0>
    830023e4:	00159593          	slli	a1,a1,0x1
    830023e8:	00f5f733          	and	a4,a1,a5
    830023ec:	004e0e1b          	addiw	t3,t3,4
    830023f0:	fe070ae3          	beqz	a4,830023e4 <_malloc_r+0x6a0>
    830023f4:	000e0613          	mv	a2,t3
    830023f8:	d2dff06f          	j	83002124 <_malloc_r+0x3e0>
    830023fc:	020a0a13          	addi	s4,s4,32
    83002400:	af5ff06f          	j	83001ef4 <_malloc_r+0x1b0>
    83002404:	0089b503          	ld	a0,8(s3)
    83002408:	4026d69b          	sraiw	a3,a3,0x2
    8300240c:	00100793          	li	a5,1
    83002410:	00d797b3          	sll	a5,a5,a3
    83002414:	00a7e7b3          	or	a5,a5,a0
    83002418:	00f9b423          	sd	a5,8(s3)
    8300241c:	e35ff06f          	j	83002250 <_malloc_r+0x50c>
    83002420:	014b0bb3          	add	s7,s6,s4
    83002424:	41700bb3          	neg	s7,s7
    83002428:	034b9b93          	slli	s7,s7,0x34
    8300242c:	034bdb93          	srli	s7,s7,0x34
    83002430:	000b8593          	mv	a1,s7
    83002434:	00090513          	mv	a0,s2
    83002438:	00001097          	auipc	ra,0x1
    8300243c:	1e4080e7          	jalr	484(ra) # 8300361c <_sbrk_r>
    83002440:	fff00793          	li	a5,-1
    83002444:	00000713          	li	a4,0
    83002448:	b4f508e3          	beq	a0,a5,83001f98 <_malloc_r+0x254>
    8300244c:	41650533          	sub	a0,a0,s6
    83002450:	000b871b          	sext.w	a4,s7
    83002454:	01750a33          	add	s4,a0,s7
    83002458:	b41ff06f          	j	83001f98 <_malloc_r+0x254>
    8300245c:	05400693          	li	a3,84
    83002460:	08e6e663          	bltu	a3,a4,830024ec <_malloc_r+0x7a8>
    83002464:	00c7d713          	srli	a4,a5,0xc
    83002468:	06f7059b          	addiw	a1,a4,111
    8300246c:	0015959b          	slliw	a1,a1,0x1
    83002470:	06e7069b          	addiw	a3,a4,110
    83002474:	00359593          	slli	a1,a1,0x3
    83002478:	dadff06f          	j	83002224 <_malloc_r+0x4e0>
    8300247c:	15400713          	li	a4,340
    83002480:	08f76663          	bltu	a4,a5,8300250c <_malloc_r+0x7c8>
    83002484:	00f4d793          	srli	a5,s1,0xf
    83002488:	0787861b          	addiw	a2,a5,120
    8300248c:	0016169b          	slliw	a3,a2,0x1
    83002490:	0777851b          	addiw	a0,a5,119
    83002494:	00369693          	slli	a3,a3,0x3
    83002498:	9a5ff06f          	j	83001e3c <_malloc_r+0xf8>
    8300249c:	00005c17          	auipc	s8,0x5
    830024a0:	4ccc0c13          	addi	s8,s8,1228 # 83007968 <__malloc_current_mallinfo>
    830024a4:	000c2783          	lw	a5,0(s8)
    830024a8:	014786bb          	addw	a3,a5,s4
    830024ac:	00dc2023          	sw	a3,0(s8)
    830024b0:	a81ff06f          	j	83001f30 <_malloc_r+0x1ec>
    830024b4:	034b9713          	slli	a4,s7,0x34
    830024b8:	a6071ce3          	bnez	a4,83001f30 <_malloc_r+0x1ec>
    830024bc:	0109b403          	ld	s0,16(s3)
    830024c0:	014a8a33          	add	s4,s5,s4
    830024c4:	001a6a13          	ori	s4,s4,1
    830024c8:	01443423          	sd	s4,8(s0)
    830024cc:	b25ff06f          	j	83001ff0 <_malloc_r+0x2ac>
    830024d0:	016cb023          	sd	s6,0(s9)
    830024d4:	a75ff06f          	j	83001f48 <_malloc_r+0x204>
    830024d8:	000b0413          	mv	s0,s6
    830024dc:	b15ff06f          	j	83001ff0 <_malloc_r+0x2ac>
    830024e0:	00100793          	li	a5,1
    830024e4:	00fb3423          	sd	a5,8(s6)
    830024e8:	e99ff06f          	j	83002380 <_malloc_r+0x63c>
    830024ec:	15400693          	li	a3,340
    830024f0:	06e6e863          	bltu	a3,a4,83002560 <_malloc_r+0x81c>
    830024f4:	00f7d713          	srli	a4,a5,0xf
    830024f8:	0787059b          	addiw	a1,a4,120
    830024fc:	0015959b          	slliw	a1,a1,0x1
    83002500:	0777069b          	addiw	a3,a4,119
    83002504:	00359593          	slli	a1,a1,0x3
    83002508:	d1dff06f          	j	83002224 <_malloc_r+0x4e0>
    8300250c:	55400713          	li	a4,1364
    83002510:	06f76863          	bltu	a4,a5,83002580 <_malloc_r+0x83c>
    83002514:	0124d793          	srli	a5,s1,0x12
    83002518:	07d7861b          	addiw	a2,a5,125
    8300251c:	0016169b          	slliw	a3,a2,0x1
    83002520:	07c7851b          	addiw	a0,a5,124
    83002524:	00369693          	slli	a3,a3,0x3
    83002528:	915ff06f          	j	83001e3c <_malloc_r+0xf8>
    8300252c:	ff0b8b93          	addi	s7,s7,-16
    83002530:	017c8a33          	add	s4,s9,s7
    83002534:	416a0a33          	sub	s4,s4,s6
    83002538:	00000713          	li	a4,0
    8300253c:	a5dff06f          	j	83001f98 <_malloc_r+0x254>
    83002540:	01040593          	addi	a1,s0,16
    83002544:	00090513          	mv	a0,s2
    83002548:	00001097          	auipc	ra,0x1
    8300254c:	520080e7          	jalr	1312(ra) # 83003a68 <_free_r>
    83002550:	0109b403          	ld	s0,16(s3)
    83002554:	000c2783          	lw	a5,0(s8)
    83002558:	00843a03          	ld	s4,8(s0)
    8300255c:	a95ff06f          	j	83001ff0 <_malloc_r+0x2ac>
    83002560:	55400693          	li	a3,1364
    83002564:	02e6e663          	bltu	a3,a4,83002590 <_malloc_r+0x84c>
    83002568:	0127d713          	srli	a4,a5,0x12
    8300256c:	07d7059b          	addiw	a1,a4,125
    83002570:	0015959b          	slliw	a1,a1,0x1
    83002574:	07c7069b          	addiw	a3,a4,124
    83002578:	00359593          	slli	a1,a1,0x3
    8300257c:	ca9ff06f          	j	83002224 <_malloc_r+0x4e0>
    83002580:	7f000693          	li	a3,2032
    83002584:	07f00613          	li	a2,127
    83002588:	07e00513          	li	a0,126
    8300258c:	8b1ff06f          	j	83001e3c <_malloc_r+0xf8>
    83002590:	7f000593          	li	a1,2032
    83002594:	07e00693          	li	a3,126
    83002598:	c8dff06f          	j	83002224 <_malloc_r+0x4e0>
    8300259c:	0089b783          	ld	a5,8(s3)
    830025a0:	e31ff06f          	j	830023d0 <_malloc_r+0x68c>

00000000830025a4 <memchr>:
    830025a4:	00757793          	andi	a5,a0,7
    830025a8:	0ff5f693          	andi	a3,a1,255
    830025ac:	02078a63          	beqz	a5,830025e0 <memchr+0x3c>
    830025b0:	fff60793          	addi	a5,a2,-1
    830025b4:	02060e63          	beqz	a2,830025f0 <memchr+0x4c>
    830025b8:	fff00613          	li	a2,-1
    830025bc:	0180006f          	j	830025d4 <memchr+0x30>
    830025c0:	00150513          	addi	a0,a0,1
    830025c4:	00757713          	andi	a4,a0,7
    830025c8:	00070e63          	beqz	a4,830025e4 <memchr+0x40>
    830025cc:	fff78793          	addi	a5,a5,-1
    830025d0:	02c78063          	beq	a5,a2,830025f0 <memchr+0x4c>
    830025d4:	00054703          	lbu	a4,0(a0)
    830025d8:	fed714e3          	bne	a4,a3,830025c0 <memchr+0x1c>
    830025dc:	00008067          	ret
    830025e0:	00060793          	mv	a5,a2
    830025e4:	00700713          	li	a4,7
    830025e8:	02f76663          	bltu	a4,a5,83002614 <memchr+0x70>
    830025ec:	00079663          	bnez	a5,830025f8 <memchr+0x54>
    830025f0:	00000513          	li	a0,0
    830025f4:	00008067          	ret
    830025f8:	00f507b3          	add	a5,a0,a5
    830025fc:	00c0006f          	j	83002608 <memchr+0x64>
    83002600:	00150513          	addi	a0,a0,1
    83002604:	fea786e3          	beq	a5,a0,830025f0 <memchr+0x4c>
    83002608:	00054703          	lbu	a4,0(a0)
    8300260c:	fed71ae3          	bne	a4,a3,83002600 <memchr+0x5c>
    83002610:	00008067          	ret
    83002614:	00010637          	lui	a2,0x10
    83002618:	0085971b          	slliw	a4,a1,0x8
    8300261c:	fff60613          	addi	a2,a2,-1 # ffff <main-0x82ff00e9>
    83002620:	00c77733          	and	a4,a4,a2
    83002624:	0ff5f593          	andi	a1,a1,255
    83002628:	00b765b3          	or	a1,a4,a1
    8300262c:	0005859b          	sext.w	a1,a1
    83002630:	01059713          	slli	a4,a1,0x10
    83002634:	00b76733          	or	a4,a4,a1
    83002638:	02071593          	slli	a1,a4,0x20
    8300263c:	00e5e5b3          	or	a1,a1,a4
    83002640:	00005897          	auipc	a7,0x5
    83002644:	2788b883          	ld	a7,632(a7) # 830078b8 <__SDATA_BEGIN__>
    83002648:	00005817          	auipc	a6,0x5
    8300264c:	27883803          	ld	a6,632(a6) # 830078c0 <__SDATA_BEGIN__+0x8>
    83002650:	00700313          	li	t1,7
    83002654:	00053703          	ld	a4,0(a0)
    83002658:	00e5c733          	xor	a4,a1,a4
    8300265c:	01170633          	add	a2,a4,a7
    83002660:	fff74713          	not	a4,a4
    83002664:	00e67733          	and	a4,a2,a4
    83002668:	01077733          	and	a4,a4,a6
    8300266c:	f80716e3          	bnez	a4,830025f8 <memchr+0x54>
    83002670:	ff878793          	addi	a5,a5,-8
    83002674:	00850513          	addi	a0,a0,8
    83002678:	fcf36ee3          	bltu	t1,a5,83002654 <memchr+0xb0>
    8300267c:	f6079ee3          	bnez	a5,830025f8 <memchr+0x54>
    83002680:	f71ff06f          	j	830025f0 <memchr+0x4c>

0000000083002684 <strlen>:
    83002684:	00757793          	andi	a5,a0,7
    83002688:	02078463          	beqz	a5,830026b0 <strlen+0x2c>
    8300268c:	00050793          	mv	a5,a0
    83002690:	0100006f          	j	830026a0 <strlen+0x1c>
    83002694:	00178793          	addi	a5,a5,1
    83002698:	0077f713          	andi	a4,a5,7
    8300269c:	00070c63          	beqz	a4,830026b4 <strlen+0x30>
    830026a0:	0007c703          	lbu	a4,0(a5)
    830026a4:	fe0718e3          	bnez	a4,83002694 <strlen+0x10>
    830026a8:	40a78533          	sub	a0,a5,a0
    830026ac:	00008067          	ret
    830026b0:	00050793          	mv	a5,a0
    830026b4:	0007b683          	ld	a3,0(a5)
    830026b8:	00005597          	auipc	a1,0x5
    830026bc:	2005b583          	ld	a1,512(a1) # 830078b8 <__SDATA_BEGIN__>
    830026c0:	00005617          	auipc	a2,0x5
    830026c4:	20063603          	ld	a2,512(a2) # 830078c0 <__SDATA_BEGIN__+0x8>
    830026c8:	00c0006f          	j	830026d4 <strlen+0x50>
    830026cc:	0087b683          	ld	a3,8(a5)
    830026d0:	00878793          	addi	a5,a5,8
    830026d4:	00b68733          	add	a4,a3,a1
    830026d8:	fff6c693          	not	a3,a3
    830026dc:	00d77733          	and	a4,a4,a3
    830026e0:	00c77733          	and	a4,a4,a2
    830026e4:	fe0704e3          	beqz	a4,830026cc <strlen+0x48>
    830026e8:	0007c703          	lbu	a4,0(a5)
    830026ec:	fa070ee3          	beqz	a4,830026a8 <strlen+0x24>
    830026f0:	0017c703          	lbu	a4,1(a5)
    830026f4:	00178793          	addi	a5,a5,1
    830026f8:	fa0708e3          	beqz	a4,830026a8 <strlen+0x24>
    830026fc:	0017c703          	lbu	a4,1(a5)
    83002700:	00178793          	addi	a5,a5,1
    83002704:	fe0716e3          	bnez	a4,830026f0 <strlen+0x6c>
    83002708:	fa1ff06f          	j	830026a8 <strlen+0x24>

000000008300270c <memset>:
    8300270c:	00757793          	andi	a5,a0,7
    83002710:	0c078a63          	beqz	a5,830027e4 <memset+0xd8>
    83002714:	fff60713          	addi	a4,a2,-1
    83002718:	0ff5f813          	andi	a6,a1,255
    8300271c:	00050793          	mv	a5,a0
    83002720:	fff00893          	li	a7,-1
    83002724:	00061863          	bnez	a2,83002734 <memset+0x28>
    83002728:	0c80006f          	j	830027f0 <memset+0xe4>
    8300272c:	fff70713          	addi	a4,a4,-1
    83002730:	0b170863          	beq	a4,a7,830027e0 <memset+0xd4>
    83002734:	00178793          	addi	a5,a5,1
    83002738:	0077f693          	andi	a3,a5,7
    8300273c:	ff078fa3          	sb	a6,-1(a5)
    83002740:	fe0696e3          	bnez	a3,8300272c <memset+0x20>
    83002744:	00700693          	li	a3,7
    83002748:	08e6f063          	bgeu	a3,a4,830027c8 <memset+0xbc>
    8300274c:	0ff5f693          	andi	a3,a1,255
    83002750:	00869613          	slli	a2,a3,0x8
    83002754:	00d66633          	or	a2,a2,a3
    83002758:	01061693          	slli	a3,a2,0x10
    8300275c:	00c6e633          	or	a2,a3,a2
    83002760:	02061693          	slli	a3,a2,0x20
    83002764:	01f00813          	li	a6,31
    83002768:	00c6e6b3          	or	a3,a3,a2
    8300276c:	08e87463          	bgeu	a6,a4,830027f4 <memset+0xe8>
    83002770:	fe070613          	addi	a2,a4,-32
    83002774:	fe067613          	andi	a2,a2,-32
    83002778:	02060613          	addi	a2,a2,32
    8300277c:	00c78633          	add	a2,a5,a2
    83002780:	00d7b023          	sd	a3,0(a5)
    83002784:	00d7b423          	sd	a3,8(a5)
    83002788:	00d7b823          	sd	a3,16(a5)
    8300278c:	00d7bc23          	sd	a3,24(a5)
    83002790:	02078793          	addi	a5,a5,32
    83002794:	fef616e3          	bne	a2,a5,83002780 <memset+0x74>
    83002798:	01f77613          	andi	a2,a4,31
    8300279c:	01877813          	andi	a6,a4,24
    830027a0:	00060713          	mv	a4,a2
    830027a4:	02080263          	beqz	a6,830027c8 <memset+0xbc>
    830027a8:	ff860713          	addi	a4,a2,-8
    830027ac:	ff877713          	andi	a4,a4,-8
    830027b0:	00870713          	addi	a4,a4,8
    830027b4:	00e78733          	add	a4,a5,a4
    830027b8:	00878793          	addi	a5,a5,8
    830027bc:	fed7bc23          	sd	a3,-8(a5)
    830027c0:	fef71ce3          	bne	a4,a5,830027b8 <memset+0xac>
    830027c4:	00767713          	andi	a4,a2,7
    830027c8:	00070c63          	beqz	a4,830027e0 <memset+0xd4>
    830027cc:	0ff5f693          	andi	a3,a1,255
    830027d0:	00e78733          	add	a4,a5,a4
    830027d4:	00178793          	addi	a5,a5,1
    830027d8:	fed78fa3          	sb	a3,-1(a5)
    830027dc:	fef71ce3          	bne	a4,a5,830027d4 <memset+0xc8>
    830027e0:	00008067          	ret
    830027e4:	00050793          	mv	a5,a0
    830027e8:	00060713          	mv	a4,a2
    830027ec:	f59ff06f          	j	83002744 <memset+0x38>
    830027f0:	00008067          	ret
    830027f4:	00070613          	mv	a2,a4
    830027f8:	fb1ff06f          	j	830027a8 <memset+0x9c>

00000000830027fc <__sfvwrite_r>:
    830027fc:	01063783          	ld	a5,16(a2)
    83002800:	28078e63          	beqz	a5,83002a9c <__sfvwrite_r+0x2a0>
    83002804:	0105d783          	lhu	a5,16(a1)
    83002808:	fa010113          	addi	sp,sp,-96
    8300280c:	04813823          	sd	s0,80(sp)
    83002810:	03413823          	sd	s4,48(sp)
    83002814:	03513423          	sd	s5,40(sp)
    83002818:	04113c23          	sd	ra,88(sp)
    8300281c:	04913423          	sd	s1,72(sp)
    83002820:	05213023          	sd	s2,64(sp)
    83002824:	03313c23          	sd	s3,56(sp)
    83002828:	03613023          	sd	s6,32(sp)
    8300282c:	01713c23          	sd	s7,24(sp)
    83002830:	01813823          	sd	s8,16(sp)
    83002834:	01913423          	sd	s9,8(sp)
    83002838:	01a13023          	sd	s10,0(sp)
    8300283c:	0087f713          	andi	a4,a5,8
    83002840:	00060a13          	mv	s4,a2
    83002844:	00050a93          	mv	s5,a0
    83002848:	00058413          	mv	s0,a1
    8300284c:	08070863          	beqz	a4,830028dc <__sfvwrite_r+0xe0>
    83002850:	0185b703          	ld	a4,24(a1)
    83002854:	08070463          	beqz	a4,830028dc <__sfvwrite_r+0xe0>
    83002858:	0027f713          	andi	a4,a5,2
    8300285c:	000a3903          	ld	s2,0(s4)
    83002860:	0a070063          	beqz	a4,83002900 <__sfvwrite_r+0x104>
    83002864:	04043783          	ld	a5,64(s0)
    83002868:	03043583          	ld	a1,48(s0)
    8300286c:	80000b37          	lui	s6,0x80000
    83002870:	00000993          	li	s3,0
    83002874:	00000493          	li	s1,0
    83002878:	c00b4b13          	xori	s6,s6,-1024
    8300287c:	00098613          	mv	a2,s3
    83002880:	000a8513          	mv	a0,s5
    83002884:	04048463          	beqz	s1,830028cc <__sfvwrite_r+0xd0>
    83002888:	00048693          	mv	a3,s1
    8300288c:	009b7463          	bgeu	s6,s1,83002894 <__sfvwrite_r+0x98>
    83002890:	000b0693          	mv	a3,s6
    83002894:	0006869b          	sext.w	a3,a3
    83002898:	000780e7          	jalr	a5
    8300289c:	1ea05663          	blez	a0,83002a88 <__sfvwrite_r+0x28c>
    830028a0:	010a3783          	ld	a5,16(s4)
    830028a4:	00a989b3          	add	s3,s3,a0
    830028a8:	40a484b3          	sub	s1,s1,a0
    830028ac:	40a78533          	sub	a0,a5,a0
    830028b0:	00aa3823          	sd	a0,16(s4)
    830028b4:	18050263          	beqz	a0,83002a38 <__sfvwrite_r+0x23c>
    830028b8:	04043783          	ld	a5,64(s0)
    830028bc:	03043583          	ld	a1,48(s0)
    830028c0:	00098613          	mv	a2,s3
    830028c4:	000a8513          	mv	a0,s5
    830028c8:	fc0490e3          	bnez	s1,83002888 <__sfvwrite_r+0x8c>
    830028cc:	00093983          	ld	s3,0(s2)
    830028d0:	00893483          	ld	s1,8(s2)
    830028d4:	01090913          	addi	s2,s2,16
    830028d8:	fa5ff06f          	j	8300287c <__sfvwrite_r+0x80>
    830028dc:	00040593          	mv	a1,s0
    830028e0:	000a8513          	mv	a0,s5
    830028e4:	00001097          	auipc	ra,0x1
    830028e8:	848080e7          	jalr	-1976(ra) # 8300312c <__swsetup_r>
    830028ec:	3e051463          	bnez	a0,83002cd4 <__sfvwrite_r+0x4d8>
    830028f0:	01045783          	lhu	a5,16(s0)
    830028f4:	000a3903          	ld	s2,0(s4)
    830028f8:	0027f713          	andi	a4,a5,2
    830028fc:	f60714e3          	bnez	a4,83002864 <__sfvwrite_r+0x68>
    83002900:	0017f713          	andi	a4,a5,1
    83002904:	0a071463          	bnez	a4,830029ac <__sfvwrite_r+0x1b0>
    83002908:	00c42483          	lw	s1,12(s0)
    8300290c:	00043503          	ld	a0,0(s0)
    83002910:	80000b37          	lui	s6,0x80000
    83002914:	ffeb4b93          	xori	s7,s6,-2
    83002918:	00000c13          	li	s8,0
    8300291c:	00000993          	li	s3,0
    83002920:	fffb4b13          	not	s6,s6
    83002924:	00048c93          	mv	s9,s1
    83002928:	06098a63          	beqz	s3,8300299c <__sfvwrite_r+0x1a0>
    8300292c:	2007f713          	andi	a4,a5,512
    83002930:	1e070263          	beqz	a4,83002b14 <__sfvwrite_r+0x318>
    83002934:	00048d13          	mv	s10,s1
    83002938:	2699fa63          	bgeu	s3,s1,83002bac <__sfvwrite_r+0x3b0>
    8300293c:	00098c93          	mv	s9,s3
    83002940:	00098d13          	mv	s10,s3
    83002944:	000d0613          	mv	a2,s10
    83002948:	000c0593          	mv	a1,s8
    8300294c:	00002097          	auipc	ra,0x2
    83002950:	b04080e7          	jalr	-1276(ra) # 83004450 <memmove>
    83002954:	00c42703          	lw	a4,12(s0)
    83002958:	00043783          	ld	a5,0(s0)
    8300295c:	00098493          	mv	s1,s3
    83002960:	41970cbb          	subw	s9,a4,s9
    83002964:	01a787b3          	add	a5,a5,s10
    83002968:	01942623          	sw	s9,12(s0)
    8300296c:	00f43023          	sd	a5,0(s0)
    83002970:	00000993          	li	s3,0
    83002974:	010a3603          	ld	a2,16(s4)
    83002978:	009c0c33          	add	s8,s8,s1
    8300297c:	409604b3          	sub	s1,a2,s1
    83002980:	009a3823          	sd	s1,16(s4)
    83002984:	0a048a63          	beqz	s1,83002a38 <__sfvwrite_r+0x23c>
    83002988:	00c42483          	lw	s1,12(s0)
    8300298c:	00043503          	ld	a0,0(s0)
    83002990:	01045783          	lhu	a5,16(s0)
    83002994:	00048c93          	mv	s9,s1
    83002998:	f8099ae3          	bnez	s3,8300292c <__sfvwrite_r+0x130>
    8300299c:	00093c03          	ld	s8,0(s2)
    830029a0:	00893983          	ld	s3,8(s2)
    830029a4:	01090913          	addi	s2,s2,16
    830029a8:	f7dff06f          	j	83002924 <__sfvwrite_r+0x128>
    830029ac:	00000993          	li	s3,0
    830029b0:	00000513          	li	a0,0
    830029b4:	00000c93          	li	s9,0
    830029b8:	00000c13          	li	s8,0
    830029bc:	0e0c0463          	beqz	s8,83002aa4 <__sfvwrite_r+0x2a8>
    830029c0:	0e050a63          	beqz	a0,83002ab4 <__sfvwrite_r+0x2b8>
    830029c4:	00098b93          	mv	s7,s3
    830029c8:	013c7463          	bgeu	s8,s3,830029d0 <__sfvwrite_r+0x1d4>
    830029cc:	000c0b93          	mv	s7,s8
    830029d0:	00043503          	ld	a0,0(s0)
    830029d4:	01843783          	ld	a5,24(s0)
    830029d8:	02042683          	lw	a3,32(s0)
    830029dc:	000b8493          	mv	s1,s7
    830029e0:	00a7f863          	bgeu	a5,a0,830029f0 <__sfvwrite_r+0x1f4>
    830029e4:	00c42783          	lw	a5,12(s0)
    830029e8:	00d78b3b          	addw	s6,a5,a3
    830029ec:	0f7b4663          	blt	s6,s7,83002ad8 <__sfvwrite_r+0x2dc>
    830029f0:	26dbc063          	blt	s7,a3,83002c50 <__sfvwrite_r+0x454>
    830029f4:	04043783          	ld	a5,64(s0)
    830029f8:	03043583          	ld	a1,48(s0)
    830029fc:	000c8613          	mv	a2,s9
    83002a00:	000a8513          	mv	a0,s5
    83002a04:	000780e7          	jalr	a5
    83002a08:	00050493          	mv	s1,a0
    83002a0c:	06a05e63          	blez	a0,83002a88 <__sfvwrite_r+0x28c>
    83002a10:	0005079b          	sext.w	a5,a0
    83002a14:	40f989bb          	subw	s3,s3,a5
    83002a18:	00100513          	li	a0,1
    83002a1c:	04098c63          	beqz	s3,83002a74 <__sfvwrite_r+0x278>
    83002a20:	010a3783          	ld	a5,16(s4)
    83002a24:	009c8cb3          	add	s9,s9,s1
    83002a28:	409c0c33          	sub	s8,s8,s1
    83002a2c:	409784b3          	sub	s1,a5,s1
    83002a30:	009a3823          	sd	s1,16(s4)
    83002a34:	f80494e3          	bnez	s1,830029bc <__sfvwrite_r+0x1c0>
    83002a38:	00000513          	li	a0,0
    83002a3c:	05813083          	ld	ra,88(sp)
    83002a40:	05013403          	ld	s0,80(sp)
    83002a44:	04813483          	ld	s1,72(sp)
    83002a48:	04013903          	ld	s2,64(sp)
    83002a4c:	03813983          	ld	s3,56(sp)
    83002a50:	03013a03          	ld	s4,48(sp)
    83002a54:	02813a83          	ld	s5,40(sp)
    83002a58:	02013b03          	ld	s6,32(sp)
    83002a5c:	01813b83          	ld	s7,24(sp)
    83002a60:	01013c03          	ld	s8,16(sp)
    83002a64:	00813c83          	ld	s9,8(sp)
    83002a68:	00013d03          	ld	s10,0(sp)
    83002a6c:	06010113          	addi	sp,sp,96
    83002a70:	00008067          	ret
    83002a74:	00040593          	mv	a1,s0
    83002a78:	000a8513          	mv	a0,s5
    83002a7c:	00000097          	auipc	ra,0x0
    83002a80:	618080e7          	jalr	1560(ra) # 83003094 <_fflush_r>
    83002a84:	f8050ee3          	beqz	a0,83002a20 <__sfvwrite_r+0x224>
    83002a88:	01041783          	lh	a5,16(s0)
    83002a8c:	0407e793          	ori	a5,a5,64
    83002a90:	00f41823          	sh	a5,16(s0)
    83002a94:	fff00513          	li	a0,-1
    83002a98:	fa5ff06f          	j	83002a3c <__sfvwrite_r+0x240>
    83002a9c:	00000513          	li	a0,0
    83002aa0:	00008067          	ret
    83002aa4:	00893c03          	ld	s8,8(s2)
    83002aa8:	00093c83          	ld	s9,0(s2)
    83002aac:	01090913          	addi	s2,s2,16
    83002ab0:	fe0c0ae3          	beqz	s8,83002aa4 <__sfvwrite_r+0x2a8>
    83002ab4:	000c0613          	mv	a2,s8
    83002ab8:	00a00593          	li	a1,10
    83002abc:	000c8513          	mv	a0,s9
    83002ac0:	00000097          	auipc	ra,0x0
    83002ac4:	ae4080e7          	jalr	-1308(ra) # 830025a4 <memchr>
    83002ac8:	1e050a63          	beqz	a0,83002cbc <__sfvwrite_r+0x4c0>
    83002acc:	00150513          	addi	a0,a0,1
    83002ad0:	419509bb          	subw	s3,a0,s9
    83002ad4:	ef1ff06f          	j	830029c4 <__sfvwrite_r+0x1c8>
    83002ad8:	000c8593          	mv	a1,s9
    83002adc:	000b0613          	mv	a2,s6
    83002ae0:	00002097          	auipc	ra,0x2
    83002ae4:	970080e7          	jalr	-1680(ra) # 83004450 <memmove>
    83002ae8:	00043783          	ld	a5,0(s0)
    83002aec:	00040593          	mv	a1,s0
    83002af0:	000a8513          	mv	a0,s5
    83002af4:	016787b3          	add	a5,a5,s6
    83002af8:	00f43023          	sd	a5,0(s0)
    83002afc:	00000097          	auipc	ra,0x0
    83002b00:	598080e7          	jalr	1432(ra) # 83003094 <_fflush_r>
    83002b04:	f80512e3          	bnez	a0,83002a88 <__sfvwrite_r+0x28c>
    83002b08:	000b0793          	mv	a5,s6
    83002b0c:	000b0493          	mv	s1,s6
    83002b10:	f05ff06f          	j	83002a14 <__sfvwrite_r+0x218>
    83002b14:	01843783          	ld	a5,24(s0)
    83002b18:	04a7e263          	bltu	a5,a0,83002b5c <__sfvwrite_r+0x360>
    83002b1c:	02042783          	lw	a5,32(s0)
    83002b20:	02f9ee63          	bltu	s3,a5,83002b5c <__sfvwrite_r+0x360>
    83002b24:	00098693          	mv	a3,s3
    83002b28:	013bf463          	bgeu	s7,s3,83002b30 <__sfvwrite_r+0x334>
    83002b2c:	000b0693          	mv	a3,s6
    83002b30:	02f6c6bb          	divw	a3,a3,a5
    83002b34:	04043703          	ld	a4,64(s0)
    83002b38:	03043583          	ld	a1,48(s0)
    83002b3c:	000c0613          	mv	a2,s8
    83002b40:	000a8513          	mv	a0,s5
    83002b44:	02f686bb          	mulw	a3,a3,a5
    83002b48:	000700e7          	jalr	a4
    83002b4c:	00050493          	mv	s1,a0
    83002b50:	f2a05ce3          	blez	a0,83002a88 <__sfvwrite_r+0x28c>
    83002b54:	409989b3          	sub	s3,s3,s1
    83002b58:	e1dff06f          	j	83002974 <__sfvwrite_r+0x178>
    83002b5c:	0099f463          	bgeu	s3,s1,83002b64 <__sfvwrite_r+0x368>
    83002b60:	00098493          	mv	s1,s3
    83002b64:	00048613          	mv	a2,s1
    83002b68:	000c0593          	mv	a1,s8
    83002b6c:	00002097          	auipc	ra,0x2
    83002b70:	8e4080e7          	jalr	-1820(ra) # 83004450 <memmove>
    83002b74:	00c42783          	lw	a5,12(s0)
    83002b78:	00043703          	ld	a4,0(s0)
    83002b7c:	409786bb          	subw	a3,a5,s1
    83002b80:	00970733          	add	a4,a4,s1
    83002b84:	00d42623          	sw	a3,12(s0)
    83002b88:	00e43023          	sd	a4,0(s0)
    83002b8c:	fc0694e3          	bnez	a3,83002b54 <__sfvwrite_r+0x358>
    83002b90:	00040593          	mv	a1,s0
    83002b94:	000a8513          	mv	a0,s5
    83002b98:	00000097          	auipc	ra,0x0
    83002b9c:	4fc080e7          	jalr	1276(ra) # 83003094 <_fflush_r>
    83002ba0:	ee0514e3          	bnez	a0,83002a88 <__sfvwrite_r+0x28c>
    83002ba4:	409989b3          	sub	s3,s3,s1
    83002ba8:	dcdff06f          	j	83002974 <__sfvwrite_r+0x178>
    83002bac:	4807f713          	andi	a4,a5,1152
    83002bb0:	d8070ae3          	beqz	a4,83002944 <__sfvwrite_r+0x148>
    83002bb4:	02042483          	lw	s1,32(s0)
    83002bb8:	01843583          	ld	a1,24(s0)
    83002bbc:	00198713          	addi	a4,s3,1
    83002bc0:	0014969b          	slliw	a3,s1,0x1
    83002bc4:	009686bb          	addw	a3,a3,s1
    83002bc8:	40b50533          	sub	a0,a0,a1
    83002bcc:	01f6d49b          	srliw	s1,a3,0x1f
    83002bd0:	00050d1b          	sext.w	s10,a0
    83002bd4:	00d484bb          	addw	s1,s1,a3
    83002bd8:	4014d49b          	sraiw	s1,s1,0x1
    83002bdc:	01a70733          	add	a4,a4,s10
    83002be0:	00e4f663          	bgeu	s1,a4,83002bec <__sfvwrite_r+0x3f0>
    83002be4:	0019849b          	addiw	s1,s3,1
    83002be8:	00a484bb          	addw	s1,s1,a0
    83002bec:	4007f793          	andi	a5,a5,1024
    83002bf0:	08078863          	beqz	a5,83002c80 <__sfvwrite_r+0x484>
    83002bf4:	00048593          	mv	a1,s1
    83002bf8:	000a8513          	mv	a0,s5
    83002bfc:	fffff097          	auipc	ra,0xfffff
    83002c00:	148080e7          	jalr	328(ra) # 83001d44 <_malloc_r>
    83002c04:	00050c93          	mv	s9,a0
    83002c08:	0a050e63          	beqz	a0,83002cc4 <__sfvwrite_r+0x4c8>
    83002c0c:	01843583          	ld	a1,24(s0)
    83002c10:	000d0613          	mv	a2,s10
    83002c14:	00001097          	auipc	ra,0x1
    83002c18:	748080e7          	jalr	1864(ra) # 8300435c <memcpy>
    83002c1c:	01045783          	lhu	a5,16(s0)
    83002c20:	b7f7f793          	andi	a5,a5,-1153
    83002c24:	0807e793          	ori	a5,a5,128
    83002c28:	00f41823          	sh	a5,16(s0)
    83002c2c:	01ac8533          	add	a0,s9,s10
    83002c30:	41a487bb          	subw	a5,s1,s10
    83002c34:	01943c23          	sd	s9,24(s0)
    83002c38:	00a43023          	sd	a0,0(s0)
    83002c3c:	02942023          	sw	s1,32(s0)
    83002c40:	00098c93          	mv	s9,s3
    83002c44:	00f42623          	sw	a5,12(s0)
    83002c48:	00098d13          	mv	s10,s3
    83002c4c:	cf9ff06f          	j	83002944 <__sfvwrite_r+0x148>
    83002c50:	000b8613          	mv	a2,s7
    83002c54:	000c8593          	mv	a1,s9
    83002c58:	00001097          	auipc	ra,0x1
    83002c5c:	7f8080e7          	jalr	2040(ra) # 83004450 <memmove>
    83002c60:	00c42703          	lw	a4,12(s0)
    83002c64:	00043603          	ld	a2,0(s0)
    83002c68:	000b879b          	sext.w	a5,s7
    83002c6c:	4177073b          	subw	a4,a4,s7
    83002c70:	01760633          	add	a2,a2,s7
    83002c74:	00e42623          	sw	a4,12(s0)
    83002c78:	00c43023          	sd	a2,0(s0)
    83002c7c:	d99ff06f          	j	83002a14 <__sfvwrite_r+0x218>
    83002c80:	00048613          	mv	a2,s1
    83002c84:	000a8513          	mv	a0,s5
    83002c88:	00001097          	auipc	ra,0x1
    83002c8c:	12c080e7          	jalr	300(ra) # 83003db4 <_realloc_r>
    83002c90:	00050c93          	mv	s9,a0
    83002c94:	f8051ce3          	bnez	a0,83002c2c <__sfvwrite_r+0x430>
    83002c98:	01843583          	ld	a1,24(s0)
    83002c9c:	000a8513          	mv	a0,s5
    83002ca0:	00001097          	auipc	ra,0x1
    83002ca4:	dc8080e7          	jalr	-568(ra) # 83003a68 <_free_r>
    83002ca8:	01041783          	lh	a5,16(s0)
    83002cac:	00c00713          	li	a4,12
    83002cb0:	00eaa023          	sw	a4,0(s5)
    83002cb4:	f7f7f793          	andi	a5,a5,-129
    83002cb8:	dd5ff06f          	j	83002a8c <__sfvwrite_r+0x290>
    83002cbc:	001c099b          	addiw	s3,s8,1
    83002cc0:	d05ff06f          	j	830029c4 <__sfvwrite_r+0x1c8>
    83002cc4:	00c00713          	li	a4,12
    83002cc8:	01041783          	lh	a5,16(s0)
    83002ccc:	00eaa023          	sw	a4,0(s5)
    83002cd0:	dbdff06f          	j	83002a8c <__sfvwrite_r+0x290>
    83002cd4:	fff00513          	li	a0,-1
    83002cd8:	d65ff06f          	j	83002a3c <__sfvwrite_r+0x240>

0000000083002cdc <_fwalk>:
    83002cdc:	fb010113          	addi	sp,sp,-80
    83002ce0:	03213823          	sd	s2,48(sp)
    83002ce4:	03313423          	sd	s3,40(sp)
    83002ce8:	03413023          	sd	s4,32(sp)
    83002cec:	01513c23          	sd	s5,24(sp)
    83002cf0:	01613823          	sd	s6,16(sp)
    83002cf4:	01713423          	sd	s7,8(sp)
    83002cf8:	04113423          	sd	ra,72(sp)
    83002cfc:	04813023          	sd	s0,64(sp)
    83002d00:	02913c23          	sd	s1,56(sp)
    83002d04:	00058a13          	mv	s4,a1
    83002d08:	52050913          	addi	s2,a0,1312
    83002d0c:	00000b13          	li	s6,0
    83002d10:	0b000a93          	li	s5,176
    83002d14:	00100b93          	li	s7,1
    83002d18:	fff00993          	li	s3,-1
    83002d1c:	00892783          	lw	a5,8(s2)
    83002d20:	01093403          	ld	s0,16(s2)
    83002d24:	04f05263          	blez	a5,83002d68 <_fwalk+0x8c>
    83002d28:	fff7849b          	addiw	s1,a5,-1
    83002d2c:	02049493          	slli	s1,s1,0x20
    83002d30:	0204d493          	srli	s1,s1,0x20
    83002d34:	00148493          	addi	s1,s1,1
    83002d38:	035484b3          	mul	s1,s1,s5
    83002d3c:	009404b3          	add	s1,s0,s1
    83002d40:	01045783          	lhu	a5,16(s0)
    83002d44:	00fbfe63          	bgeu	s7,a5,83002d60 <_fwalk+0x84>
    83002d48:	01241783          	lh	a5,18(s0)
    83002d4c:	00040513          	mv	a0,s0
    83002d50:	01378863          	beq	a5,s3,83002d60 <_fwalk+0x84>
    83002d54:	000a00e7          	jalr	s4
    83002d58:	01656b33          	or	s6,a0,s6
    83002d5c:	000b0b1b          	sext.w	s6,s6
    83002d60:	0b040413          	addi	s0,s0,176
    83002d64:	fc849ee3          	bne	s1,s0,83002d40 <_fwalk+0x64>
    83002d68:	00093903          	ld	s2,0(s2)
    83002d6c:	fa0918e3          	bnez	s2,83002d1c <_fwalk+0x40>
    83002d70:	04813083          	ld	ra,72(sp)
    83002d74:	04013403          	ld	s0,64(sp)
    83002d78:	03813483          	ld	s1,56(sp)
    83002d7c:	03013903          	ld	s2,48(sp)
    83002d80:	02813983          	ld	s3,40(sp)
    83002d84:	02013a03          	ld	s4,32(sp)
    83002d88:	01813a83          	ld	s5,24(sp)
    83002d8c:	00813b83          	ld	s7,8(sp)
    83002d90:	000b0513          	mv	a0,s6
    83002d94:	01013b03          	ld	s6,16(sp)
    83002d98:	05010113          	addi	sp,sp,80
    83002d9c:	00008067          	ret

0000000083002da0 <_fwalk_reent>:
    83002da0:	fb010113          	addi	sp,sp,-80
    83002da4:	03213823          	sd	s2,48(sp)
    83002da8:	03313423          	sd	s3,40(sp)
    83002dac:	03413023          	sd	s4,32(sp)
    83002db0:	01513c23          	sd	s5,24(sp)
    83002db4:	01613823          	sd	s6,16(sp)
    83002db8:	01713423          	sd	s7,8(sp)
    83002dbc:	01813023          	sd	s8,0(sp)
    83002dc0:	04113423          	sd	ra,72(sp)
    83002dc4:	04813023          	sd	s0,64(sp)
    83002dc8:	02913c23          	sd	s1,56(sp)
    83002dcc:	00050c13          	mv	s8,a0
    83002dd0:	00058a13          	mv	s4,a1
    83002dd4:	52050913          	addi	s2,a0,1312
    83002dd8:	00000b13          	li	s6,0
    83002ddc:	0b000a93          	li	s5,176
    83002de0:	00100b93          	li	s7,1
    83002de4:	fff00993          	li	s3,-1
    83002de8:	00892783          	lw	a5,8(s2)
    83002dec:	01093403          	ld	s0,16(s2)
    83002df0:	04f05463          	blez	a5,83002e38 <_fwalk_reent+0x98>
    83002df4:	fff7849b          	addiw	s1,a5,-1
    83002df8:	02049493          	slli	s1,s1,0x20
    83002dfc:	0204d493          	srli	s1,s1,0x20
    83002e00:	00148493          	addi	s1,s1,1
    83002e04:	035484b3          	mul	s1,s1,s5
    83002e08:	009404b3          	add	s1,s0,s1
    83002e0c:	01045783          	lhu	a5,16(s0)
    83002e10:	02fbf063          	bgeu	s7,a5,83002e30 <_fwalk_reent+0x90>
    83002e14:	01241783          	lh	a5,18(s0)
    83002e18:	00040593          	mv	a1,s0
    83002e1c:	000c0513          	mv	a0,s8
    83002e20:	01378863          	beq	a5,s3,83002e30 <_fwalk_reent+0x90>
    83002e24:	000a00e7          	jalr	s4
    83002e28:	01656b33          	or	s6,a0,s6
    83002e2c:	000b0b1b          	sext.w	s6,s6
    83002e30:	0b040413          	addi	s0,s0,176
    83002e34:	fc849ce3          	bne	s1,s0,83002e0c <_fwalk_reent+0x6c>
    83002e38:	00093903          	ld	s2,0(s2)
    83002e3c:	fa0916e3          	bnez	s2,83002de8 <_fwalk_reent+0x48>
    83002e40:	04813083          	ld	ra,72(sp)
    83002e44:	04013403          	ld	s0,64(sp)
    83002e48:	03813483          	ld	s1,56(sp)
    83002e4c:	03013903          	ld	s2,48(sp)
    83002e50:	02813983          	ld	s3,40(sp)
    83002e54:	02013a03          	ld	s4,32(sp)
    83002e58:	01813a83          	ld	s5,24(sp)
    83002e5c:	00813b83          	ld	s7,8(sp)
    83002e60:	00013c03          	ld	s8,0(sp)
    83002e64:	000b0513          	mv	a0,s6
    83002e68:	01013b03          	ld	s6,16(sp)
    83002e6c:	05010113          	addi	sp,sp,80
    83002e70:	00008067          	ret

0000000083002e74 <__sflush_r>:
    83002e74:	0105d783          	lhu	a5,16(a1)
    83002e78:	fd010113          	addi	sp,sp,-48
    83002e7c:	02813023          	sd	s0,32(sp)
    83002e80:	01313423          	sd	s3,8(sp)
    83002e84:	02113423          	sd	ra,40(sp)
    83002e88:	00913c23          	sd	s1,24(sp)
    83002e8c:	01213823          	sd	s2,16(sp)
    83002e90:	0087f713          	andi	a4,a5,8
    83002e94:	00058413          	mv	s0,a1
    83002e98:	00050993          	mv	s3,a0
    83002e9c:	0e071863          	bnez	a4,83002f8c <__sflush_r+0x118>
    83002ea0:	0085a703          	lw	a4,8(a1)
    83002ea4:	16e05663          	blez	a4,83003010 <__sflush_r+0x19c>
    83002ea8:	04843703          	ld	a4,72(s0)
    83002eac:	0c070063          	beqz	a4,83002f6c <__sflush_r+0xf8>
    83002eb0:	0009a483          	lw	s1,0(s3)
    83002eb4:	03379693          	slli	a3,a5,0x33
    83002eb8:	0009a023          	sw	zero,0(s3)
    83002ebc:	03043583          	ld	a1,48(s0)
    83002ec0:	1406ce63          	bltz	a3,8300301c <__sflush_r+0x1a8>
    83002ec4:	00000613          	li	a2,0
    83002ec8:	00100693          	li	a3,1
    83002ecc:	00098513          	mv	a0,s3
    83002ed0:	000700e7          	jalr	a4
    83002ed4:	fff00793          	li	a5,-1
    83002ed8:	00050613          	mv	a2,a0
    83002edc:	16f50463          	beq	a0,a5,83003044 <__sflush_r+0x1d0>
    83002ee0:	01045783          	lhu	a5,16(s0)
    83002ee4:	04843703          	ld	a4,72(s0)
    83002ee8:	03043583          	ld	a1,48(s0)
    83002eec:	0047f793          	andi	a5,a5,4
    83002ef0:	00078e63          	beqz	a5,83002f0c <__sflush_r+0x98>
    83002ef4:	00842683          	lw	a3,8(s0)
    83002ef8:	05843783          	ld	a5,88(s0)
    83002efc:	40d60633          	sub	a2,a2,a3
    83002f00:	00078663          	beqz	a5,83002f0c <__sflush_r+0x98>
    83002f04:	07042783          	lw	a5,112(s0)
    83002f08:	40f60633          	sub	a2,a2,a5
    83002f0c:	00000693          	li	a3,0
    83002f10:	00098513          	mv	a0,s3
    83002f14:	000700e7          	jalr	a4
    83002f18:	fff00793          	li	a5,-1
    83002f1c:	10f51463          	bne	a0,a5,83003024 <__sflush_r+0x1b0>
    83002f20:	0009a783          	lw	a5,0(s3)
    83002f24:	01041703          	lh	a4,16(s0)
    83002f28:	14078063          	beqz	a5,83003068 <__sflush_r+0x1f4>
    83002f2c:	01d00693          	li	a3,29
    83002f30:	00d78663          	beq	a5,a3,83002f3c <__sflush_r+0xc8>
    83002f34:	01600693          	li	a3,22
    83002f38:	14d79663          	bne	a5,a3,83003084 <__sflush_r+0x210>
    83002f3c:	01843783          	ld	a5,24(s0)
    83002f40:	00042423          	sw	zero,8(s0)
    83002f44:	00f43023          	sd	a5,0(s0)
    83002f48:	05843583          	ld	a1,88(s0)
    83002f4c:	0099a023          	sw	s1,0(s3)
    83002f50:	00058e63          	beqz	a1,83002f6c <__sflush_r+0xf8>
    83002f54:	07440793          	addi	a5,s0,116
    83002f58:	00f58863          	beq	a1,a5,83002f68 <__sflush_r+0xf4>
    83002f5c:	00098513          	mv	a0,s3
    83002f60:	00001097          	auipc	ra,0x1
    83002f64:	b08080e7          	jalr	-1272(ra) # 83003a68 <_free_r>
    83002f68:	04043c23          	sd	zero,88(s0)
    83002f6c:	00000513          	li	a0,0
    83002f70:	02813083          	ld	ra,40(sp)
    83002f74:	02013403          	ld	s0,32(sp)
    83002f78:	01813483          	ld	s1,24(sp)
    83002f7c:	01013903          	ld	s2,16(sp)
    83002f80:	00813983          	ld	s3,8(sp)
    83002f84:	03010113          	addi	sp,sp,48
    83002f88:	00008067          	ret
    83002f8c:	0185b903          	ld	s2,24(a1)
    83002f90:	fc090ee3          	beqz	s2,83002f6c <__sflush_r+0xf8>
    83002f94:	0005b483          	ld	s1,0(a1)
    83002f98:	0037f793          	andi	a5,a5,3
    83002f9c:	0125b023          	sd	s2,0(a1)
    83002fa0:	412484bb          	subw	s1,s1,s2
    83002fa4:	00000713          	li	a4,0
    83002fa8:	00079463          	bnez	a5,83002fb0 <__sflush_r+0x13c>
    83002fac:	0205a703          	lw	a4,32(a1)
    83002fb0:	00e42623          	sw	a4,12(s0)
    83002fb4:	00904863          	bgtz	s1,83002fc4 <__sflush_r+0x150>
    83002fb8:	fb5ff06f          	j	83002f6c <__sflush_r+0xf8>
    83002fbc:	00a90933          	add	s2,s2,a0
    83002fc0:	fa9056e3          	blez	s1,83002f6c <__sflush_r+0xf8>
    83002fc4:	04043783          	ld	a5,64(s0)
    83002fc8:	03043583          	ld	a1,48(s0)
    83002fcc:	00048693          	mv	a3,s1
    83002fd0:	00090613          	mv	a2,s2
    83002fd4:	00098513          	mv	a0,s3
    83002fd8:	000780e7          	jalr	a5
    83002fdc:	40a484bb          	subw	s1,s1,a0
    83002fe0:	fca04ee3          	bgtz	a0,83002fbc <__sflush_r+0x148>
    83002fe4:	01045783          	lhu	a5,16(s0)
    83002fe8:	02813083          	ld	ra,40(sp)
    83002fec:	01813483          	ld	s1,24(sp)
    83002ff0:	0407e793          	ori	a5,a5,64
    83002ff4:	00f41823          	sh	a5,16(s0)
    83002ff8:	02013403          	ld	s0,32(sp)
    83002ffc:	01013903          	ld	s2,16(sp)
    83003000:	00813983          	ld	s3,8(sp)
    83003004:	fff00513          	li	a0,-1
    83003008:	03010113          	addi	sp,sp,48
    8300300c:	00008067          	ret
    83003010:	0705a703          	lw	a4,112(a1)
    83003014:	e8e04ae3          	bgtz	a4,83002ea8 <__sflush_r+0x34>
    83003018:	f55ff06f          	j	83002f6c <__sflush_r+0xf8>
    8300301c:	09043603          	ld	a2,144(s0)
    83003020:	ecdff06f          	j	83002eec <__sflush_r+0x78>
    83003024:	01843703          	ld	a4,24(s0)
    83003028:	01045783          	lhu	a5,16(s0)
    8300302c:	00042423          	sw	zero,8(s0)
    83003030:	00e43023          	sd	a4,0(s0)
    83003034:	03379713          	slli	a4,a5,0x33
    83003038:	f00758e3          	bgez	a4,83002f48 <__sflush_r+0xd4>
    8300303c:	08a43823          	sd	a0,144(s0)
    83003040:	f09ff06f          	j	83002f48 <__sflush_r+0xd4>
    83003044:	0009a783          	lw	a5,0(s3)
    83003048:	e8078ce3          	beqz	a5,83002ee0 <__sflush_r+0x6c>
    8300304c:	01d00713          	li	a4,29
    83003050:	00e78663          	beq	a5,a4,8300305c <__sflush_r+0x1e8>
    83003054:	01600713          	li	a4,22
    83003058:	f8e796e3          	bne	a5,a4,83002fe4 <__sflush_r+0x170>
    8300305c:	0099a023          	sw	s1,0(s3)
    83003060:	00000513          	li	a0,0
    83003064:	f0dff06f          	j	83002f70 <__sflush_r+0xfc>
    83003068:	01843783          	ld	a5,24(s0)
    8300306c:	00042423          	sw	zero,8(s0)
    83003070:	00f43023          	sd	a5,0(s0)
    83003074:	03371793          	slli	a5,a4,0x33
    83003078:	ec07d8e3          	bgez	a5,83002f48 <__sflush_r+0xd4>
    8300307c:	08a43823          	sd	a0,144(s0)
    83003080:	ec9ff06f          	j	83002f48 <__sflush_r+0xd4>
    83003084:	04076713          	ori	a4,a4,64
    83003088:	00e41823          	sh	a4,16(s0)
    8300308c:	fff00513          	li	a0,-1
    83003090:	ee1ff06f          	j	83002f70 <__sflush_r+0xfc>

0000000083003094 <_fflush_r>:
    83003094:	fe010113          	addi	sp,sp,-32
    83003098:	00813823          	sd	s0,16(sp)
    8300309c:	00113c23          	sd	ra,24(sp)
    830030a0:	00050413          	mv	s0,a0
    830030a4:	00050663          	beqz	a0,830030b0 <_fflush_r+0x1c>
    830030a8:	05052783          	lw	a5,80(a0)
    830030ac:	02078063          	beqz	a5,830030cc <_fflush_r+0x38>
    830030b0:	01059783          	lh	a5,16(a1)
    830030b4:	02079863          	bnez	a5,830030e4 <_fflush_r+0x50>
    830030b8:	01813083          	ld	ra,24(sp)
    830030bc:	01013403          	ld	s0,16(sp)
    830030c0:	00000513          	li	a0,0
    830030c4:	02010113          	addi	sp,sp,32
    830030c8:	00008067          	ret
    830030cc:	00b13423          	sd	a1,8(sp)
    830030d0:	ffffe097          	auipc	ra,0xffffe
    830030d4:	ec8080e7          	jalr	-312(ra) # 83000f98 <__sinit>
    830030d8:	00813583          	ld	a1,8(sp)
    830030dc:	01059783          	lh	a5,16(a1)
    830030e0:	fc078ce3          	beqz	a5,830030b8 <_fflush_r+0x24>
    830030e4:	00040513          	mv	a0,s0
    830030e8:	01013403          	ld	s0,16(sp)
    830030ec:	01813083          	ld	ra,24(sp)
    830030f0:	02010113          	addi	sp,sp,32
    830030f4:	00000317          	auipc	t1,0x0
    830030f8:	d8030067          	jr	-640(t1) # 83002e74 <__sflush_r>

00000000830030fc <fflush>:
    830030fc:	00050593          	mv	a1,a0
    83003100:	00050a63          	beqz	a0,83003114 <fflush+0x18>
    83003104:	00005517          	auipc	a0,0x5
    83003108:	82453503          	ld	a0,-2012(a0) # 83007928 <_impure_ptr>
    8300310c:	00000317          	auipc	t1,0x0
    83003110:	f8830067          	jr	-120(t1) # 83003094 <_fflush_r>
    83003114:	00000597          	auipc	a1,0x0
    83003118:	f8058593          	addi	a1,a1,-128 # 83003094 <_fflush_r>
    8300311c:	00004517          	auipc	a0,0x4
    83003120:	7ac53503          	ld	a0,1964(a0) # 830078c8 <_global_impure_ptr>
    83003124:	00000317          	auipc	t1,0x0
    83003128:	c7c30067          	jr	-900(t1) # 83002da0 <_fwalk_reent>

000000008300312c <__swsetup_r>:
    8300312c:	fe010113          	addi	sp,sp,-32
    83003130:	00813823          	sd	s0,16(sp)
    83003134:	00913423          	sd	s1,8(sp)
    83003138:	00113c23          	sd	ra,24(sp)
    8300313c:	00004797          	auipc	a5,0x4
    83003140:	7ec7b783          	ld	a5,2028(a5) # 83007928 <_impure_ptr>
    83003144:	00050493          	mv	s1,a0
    83003148:	00058413          	mv	s0,a1
    8300314c:	00078663          	beqz	a5,83003158 <__swsetup_r+0x2c>
    83003150:	0507a703          	lw	a4,80(a5)
    83003154:	0e070263          	beqz	a4,83003238 <__swsetup_r+0x10c>
    83003158:	01041703          	lh	a4,16(s0)
    8300315c:	03071793          	slli	a5,a4,0x30
    83003160:	00877693          	andi	a3,a4,8
    83003164:	0307d793          	srli	a5,a5,0x30
    83003168:	04068063          	beqz	a3,830031a8 <__swsetup_r+0x7c>
    8300316c:	01843683          	ld	a3,24(s0)
    83003170:	06068063          	beqz	a3,830031d0 <__swsetup_r+0xa4>
    83003174:	0017f613          	andi	a2,a5,1
    83003178:	08060663          	beqz	a2,83003204 <__swsetup_r+0xd8>
    8300317c:	02042603          	lw	a2,32(s0)
    83003180:	00042623          	sw	zero,12(s0)
    83003184:	00000513          	li	a0,0
    83003188:	40c0063b          	negw	a2,a2
    8300318c:	02c42423          	sw	a2,40(s0)
    83003190:	08068863          	beqz	a3,83003220 <__swsetup_r+0xf4>
    83003194:	01813083          	ld	ra,24(sp)
    83003198:	01013403          	ld	s0,16(sp)
    8300319c:	00813483          	ld	s1,8(sp)
    830031a0:	02010113          	addi	sp,sp,32
    830031a4:	00008067          	ret
    830031a8:	0107f693          	andi	a3,a5,16
    830031ac:	0c068a63          	beqz	a3,83003280 <__swsetup_r+0x154>
    830031b0:	0047f793          	andi	a5,a5,4
    830031b4:	08079a63          	bnez	a5,83003248 <__swsetup_r+0x11c>
    830031b8:	01843683          	ld	a3,24(s0)
    830031bc:	00876713          	ori	a4,a4,8
    830031c0:	03071793          	slli	a5,a4,0x30
    830031c4:	00e41823          	sh	a4,16(s0)
    830031c8:	0307d793          	srli	a5,a5,0x30
    830031cc:	fa0694e3          	bnez	a3,83003174 <__swsetup_r+0x48>
    830031d0:	2807f613          	andi	a2,a5,640
    830031d4:	20000593          	li	a1,512
    830031d8:	f8b60ee3          	beq	a2,a1,83003174 <__swsetup_r+0x48>
    830031dc:	00040593          	mv	a1,s0
    830031e0:	00048513          	mv	a0,s1
    830031e4:	00001097          	auipc	ra,0x1
    830031e8:	598080e7          	jalr	1432(ra) # 8300477c <__smakebuf_r>
    830031ec:	01041703          	lh	a4,16(s0)
    830031f0:	01843683          	ld	a3,24(s0)
    830031f4:	03071793          	slli	a5,a4,0x30
    830031f8:	0307d793          	srli	a5,a5,0x30
    830031fc:	0017f613          	andi	a2,a5,1
    83003200:	f6061ee3          	bnez	a2,8300317c <__swsetup_r+0x50>
    83003204:	0027f613          	andi	a2,a5,2
    83003208:	00000593          	li	a1,0
    8300320c:	00061463          	bnez	a2,83003214 <__swsetup_r+0xe8>
    83003210:	02042583          	lw	a1,32(s0)
    83003214:	00b42623          	sw	a1,12(s0)
    83003218:	00000513          	li	a0,0
    8300321c:	f6069ce3          	bnez	a3,83003194 <__swsetup_r+0x68>
    83003220:	0807f793          	andi	a5,a5,128
    83003224:	f60788e3          	beqz	a5,83003194 <__swsetup_r+0x68>
    83003228:	04076713          	ori	a4,a4,64
    8300322c:	00e41823          	sh	a4,16(s0)
    83003230:	fff00513          	li	a0,-1
    83003234:	f61ff06f          	j	83003194 <__swsetup_r+0x68>
    83003238:	00078513          	mv	a0,a5
    8300323c:	ffffe097          	auipc	ra,0xffffe
    83003240:	d5c080e7          	jalr	-676(ra) # 83000f98 <__sinit>
    83003244:	f15ff06f          	j	83003158 <__swsetup_r+0x2c>
    83003248:	05843583          	ld	a1,88(s0)
    8300324c:	02058063          	beqz	a1,8300326c <__swsetup_r+0x140>
    83003250:	07440793          	addi	a5,s0,116
    83003254:	00f58a63          	beq	a1,a5,83003268 <__swsetup_r+0x13c>
    83003258:	00048513          	mv	a0,s1
    8300325c:	00001097          	auipc	ra,0x1
    83003260:	80c080e7          	jalr	-2036(ra) # 83003a68 <_free_r>
    83003264:	01041703          	lh	a4,16(s0)
    83003268:	04043c23          	sd	zero,88(s0)
    8300326c:	01843683          	ld	a3,24(s0)
    83003270:	fdb77713          	andi	a4,a4,-37
    83003274:	00042423          	sw	zero,8(s0)
    83003278:	00d43023          	sd	a3,0(s0)
    8300327c:	f41ff06f          	j	830031bc <__swsetup_r+0x90>
    83003280:	00900793          	li	a5,9
    83003284:	00f4a023          	sw	a5,0(s1)
    83003288:	04076713          	ori	a4,a4,64
    8300328c:	00e41823          	sh	a4,16(s0)
    83003290:	fff00513          	li	a0,-1
    83003294:	f01ff06f          	j	83003194 <__swsetup_r+0x68>

0000000083003298 <__sread>:
    83003298:	ff010113          	addi	sp,sp,-16
    8300329c:	00813023          	sd	s0,0(sp)
    830032a0:	00058413          	mv	s0,a1
    830032a4:	01259583          	lh	a1,18(a1)
    830032a8:	00113423          	sd	ra,8(sp)
    830032ac:	00000097          	auipc	ra,0x0
    830032b0:	594080e7          	jalr	1428(ra) # 83003840 <_read_r>
    830032b4:	02054063          	bltz	a0,830032d4 <__sread+0x3c>
    830032b8:	09043783          	ld	a5,144(s0)
    830032bc:	00813083          	ld	ra,8(sp)
    830032c0:	00a787b3          	add	a5,a5,a0
    830032c4:	08f43823          	sd	a5,144(s0)
    830032c8:	00013403          	ld	s0,0(sp)
    830032cc:	01010113          	addi	sp,sp,16
    830032d0:	00008067          	ret
    830032d4:	01045783          	lhu	a5,16(s0)
    830032d8:	fffff737          	lui	a4,0xfffff
    830032dc:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xffffffff7cff7667>
    830032e0:	00e7f7b3          	and	a5,a5,a4
    830032e4:	00813083          	ld	ra,8(sp)
    830032e8:	00f41823          	sh	a5,16(s0)
    830032ec:	00013403          	ld	s0,0(sp)
    830032f0:	01010113          	addi	sp,sp,16
    830032f4:	00008067          	ret

00000000830032f8 <__seofread>:
    830032f8:	00000513          	li	a0,0
    830032fc:	00008067          	ret

0000000083003300 <__swrite>:
    83003300:	01059783          	lh	a5,16(a1)
    83003304:	fd010113          	addi	sp,sp,-48
    83003308:	02813023          	sd	s0,32(sp)
    8300330c:	00913c23          	sd	s1,24(sp)
    83003310:	01213823          	sd	s2,16(sp)
    83003314:	01313423          	sd	s3,8(sp)
    83003318:	02113423          	sd	ra,40(sp)
    8300331c:	1007f713          	andi	a4,a5,256
    83003320:	00058413          	mv	s0,a1
    83003324:	00050493          	mv	s1,a0
    83003328:	01259583          	lh	a1,18(a1)
    8300332c:	00060913          	mv	s2,a2
    83003330:	00068993          	mv	s3,a3
    83003334:	04071063          	bnez	a4,83003374 <__swrite+0x74>
    83003338:	fffff737          	lui	a4,0xfffff
    8300333c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xffffffff7cff7667>
    83003340:	00e7f7b3          	and	a5,a5,a4
    83003344:	00f41823          	sh	a5,16(s0)
    83003348:	02013403          	ld	s0,32(sp)
    8300334c:	02813083          	ld	ra,40(sp)
    83003350:	00098693          	mv	a3,s3
    83003354:	00090613          	mv	a2,s2
    83003358:	00813983          	ld	s3,8(sp)
    8300335c:	01013903          	ld	s2,16(sp)
    83003360:	00048513          	mv	a0,s1
    83003364:	01813483          	ld	s1,24(sp)
    83003368:	03010113          	addi	sp,sp,48
    8300336c:	fffff317          	auipc	t1,0xfffff
    83003370:	97030067          	jr	-1680(t1) # 83001cdc <_write_r>
    83003374:	00200693          	li	a3,2
    83003378:	00000613          	li	a2,0
    8300337c:	00000097          	auipc	ra,0x0
    83003380:	52c080e7          	jalr	1324(ra) # 830038a8 <_lseek_r>
    83003384:	01041783          	lh	a5,16(s0)
    83003388:	01241583          	lh	a1,18(s0)
    8300338c:	fadff06f          	j	83003338 <__swrite+0x38>

0000000083003390 <__sseek>:
    83003390:	ff010113          	addi	sp,sp,-16
    83003394:	00813023          	sd	s0,0(sp)
    83003398:	00058413          	mv	s0,a1
    8300339c:	01259583          	lh	a1,18(a1)
    830033a0:	00113423          	sd	ra,8(sp)
    830033a4:	00000097          	auipc	ra,0x0
    830033a8:	504080e7          	jalr	1284(ra) # 830038a8 <_lseek_r>
    830033ac:	fff00793          	li	a5,-1
    830033b0:	02f50463          	beq	a0,a5,830033d8 <__sseek+0x48>
    830033b4:	01045783          	lhu	a5,16(s0)
    830033b8:	00001737          	lui	a4,0x1
    830033bc:	00813083          	ld	ra,8(sp)
    830033c0:	00e7e7b3          	or	a5,a5,a4
    830033c4:	08a43823          	sd	a0,144(s0)
    830033c8:	00f41823          	sh	a5,16(s0)
    830033cc:	00013403          	ld	s0,0(sp)
    830033d0:	01010113          	addi	sp,sp,16
    830033d4:	00008067          	ret
    830033d8:	01045783          	lhu	a5,16(s0)
    830033dc:	fffff737          	lui	a4,0xfffff
    830033e0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xffffffff7cff7667>
    830033e4:	00e7f7b3          	and	a5,a5,a4
    830033e8:	00813083          	ld	ra,8(sp)
    830033ec:	00f41823          	sh	a5,16(s0)
    830033f0:	00013403          	ld	s0,0(sp)
    830033f4:	01010113          	addi	sp,sp,16
    830033f8:	00008067          	ret

00000000830033fc <__sclose>:
    830033fc:	01259583          	lh	a1,18(a1)
    83003400:	00000317          	auipc	t1,0x0
    83003404:	27830067          	jr	632(t1) # 83003678 <_close_r>

0000000083003408 <_fclose_r>:
    83003408:	fe010113          	addi	sp,sp,-32
    8300340c:	00113c23          	sd	ra,24(sp)
    83003410:	00813823          	sd	s0,16(sp)
    83003414:	00913423          	sd	s1,8(sp)
    83003418:	01213023          	sd	s2,0(sp)
    8300341c:	02058063          	beqz	a1,8300343c <_fclose_r+0x34>
    83003420:	00058413          	mv	s0,a1
    83003424:	00050493          	mv	s1,a0
    83003428:	00050663          	beqz	a0,83003434 <_fclose_r+0x2c>
    8300342c:	05052783          	lw	a5,80(a0)
    83003430:	0c078663          	beqz	a5,830034fc <_fclose_r+0xf4>
    83003434:	01041783          	lh	a5,16(s0)
    83003438:	02079263          	bnez	a5,8300345c <_fclose_r+0x54>
    8300343c:	01813083          	ld	ra,24(sp)
    83003440:	01013403          	ld	s0,16(sp)
    83003444:	00000913          	li	s2,0
    83003448:	00813483          	ld	s1,8(sp)
    8300344c:	00090513          	mv	a0,s2
    83003450:	00013903          	ld	s2,0(sp)
    83003454:	02010113          	addi	sp,sp,32
    83003458:	00008067          	ret
    8300345c:	00040593          	mv	a1,s0
    83003460:	00048513          	mv	a0,s1
    83003464:	00000097          	auipc	ra,0x0
    83003468:	a10080e7          	jalr	-1520(ra) # 83002e74 <__sflush_r>
    8300346c:	05043783          	ld	a5,80(s0)
    83003470:	00050913          	mv	s2,a0
    83003474:	00078a63          	beqz	a5,83003488 <_fclose_r+0x80>
    83003478:	03043583          	ld	a1,48(s0)
    8300347c:	00048513          	mv	a0,s1
    83003480:	000780e7          	jalr	a5
    83003484:	08054663          	bltz	a0,83003510 <_fclose_r+0x108>
    83003488:	01045783          	lhu	a5,16(s0)
    8300348c:	0807f793          	andi	a5,a5,128
    83003490:	08079863          	bnez	a5,83003520 <_fclose_r+0x118>
    83003494:	05843583          	ld	a1,88(s0)
    83003498:	00058e63          	beqz	a1,830034b4 <_fclose_r+0xac>
    8300349c:	07440793          	addi	a5,s0,116
    830034a0:	00f58863          	beq	a1,a5,830034b0 <_fclose_r+0xa8>
    830034a4:	00048513          	mv	a0,s1
    830034a8:	00000097          	auipc	ra,0x0
    830034ac:	5c0080e7          	jalr	1472(ra) # 83003a68 <_free_r>
    830034b0:	04043c23          	sd	zero,88(s0)
    830034b4:	07843583          	ld	a1,120(s0)
    830034b8:	00058a63          	beqz	a1,830034cc <_fclose_r+0xc4>
    830034bc:	00048513          	mv	a0,s1
    830034c0:	00000097          	auipc	ra,0x0
    830034c4:	5a8080e7          	jalr	1448(ra) # 83003a68 <_free_r>
    830034c8:	06043c23          	sd	zero,120(s0)
    830034cc:	ffffe097          	auipc	ra,0xffffe
    830034d0:	ae0080e7          	jalr	-1312(ra) # 83000fac <__sfp_lock_acquire>
    830034d4:	00041823          	sh	zero,16(s0)
    830034d8:	ffffe097          	auipc	ra,0xffffe
    830034dc:	ad8080e7          	jalr	-1320(ra) # 83000fb0 <__sfp_lock_release>
    830034e0:	01813083          	ld	ra,24(sp)
    830034e4:	01013403          	ld	s0,16(sp)
    830034e8:	00813483          	ld	s1,8(sp)
    830034ec:	00090513          	mv	a0,s2
    830034f0:	00013903          	ld	s2,0(sp)
    830034f4:	02010113          	addi	sp,sp,32
    830034f8:	00008067          	ret
    830034fc:	ffffe097          	auipc	ra,0xffffe
    83003500:	a9c080e7          	jalr	-1380(ra) # 83000f98 <__sinit>
    83003504:	01041783          	lh	a5,16(s0)
    83003508:	f2078ae3          	beqz	a5,8300343c <_fclose_r+0x34>
    8300350c:	f51ff06f          	j	8300345c <_fclose_r+0x54>
    83003510:	01045783          	lhu	a5,16(s0)
    83003514:	fff00913          	li	s2,-1
    83003518:	0807f793          	andi	a5,a5,128
    8300351c:	f6078ce3          	beqz	a5,83003494 <_fclose_r+0x8c>
    83003520:	01843583          	ld	a1,24(s0)
    83003524:	00048513          	mv	a0,s1
    83003528:	00000097          	auipc	ra,0x0
    8300352c:	540080e7          	jalr	1344(ra) # 83003a68 <_free_r>
    83003530:	f65ff06f          	j	83003494 <_fclose_r+0x8c>

0000000083003534 <fclose>:
    83003534:	00050593          	mv	a1,a0
    83003538:	00004517          	auipc	a0,0x4
    8300353c:	3f053503          	ld	a0,1008(a0) # 83007928 <_impure_ptr>
    83003540:	00000317          	auipc	t1,0x0
    83003544:	ec830067          	jr	-312(t1) # 83003408 <_fclose_r>

0000000083003548 <_fputc_r>:
    83003548:	fe010113          	addi	sp,sp,-32
    8300354c:	00813823          	sd	s0,16(sp)
    83003550:	00113c23          	sd	ra,24(sp)
    83003554:	00050413          	mv	s0,a0
    83003558:	00050663          	beqz	a0,83003564 <_fputc_r+0x1c>
    8300355c:	05052783          	lw	a5,80(a0)
    83003560:	00078e63          	beqz	a5,8300357c <_fputc_r+0x34>
    83003564:	00040513          	mv	a0,s0
    83003568:	01013403          	ld	s0,16(sp)
    8300356c:	01813083          	ld	ra,24(sp)
    83003570:	02010113          	addi	sp,sp,32
    83003574:	00001317          	auipc	t1,0x1
    83003578:	ffc30067          	jr	-4(t1) # 83004570 <_putc_r>
    8300357c:	00c13423          	sd	a2,8(sp)
    83003580:	00b13023          	sd	a1,0(sp)
    83003584:	ffffe097          	auipc	ra,0xffffe
    83003588:	a14080e7          	jalr	-1516(ra) # 83000f98 <__sinit>
    8300358c:	00040513          	mv	a0,s0
    83003590:	01013403          	ld	s0,16(sp)
    83003594:	00813603          	ld	a2,8(sp)
    83003598:	00013583          	ld	a1,0(sp)
    8300359c:	01813083          	ld	ra,24(sp)
    830035a0:	02010113          	addi	sp,sp,32
    830035a4:	00001317          	auipc	t1,0x1
    830035a8:	fcc30067          	jr	-52(t1) # 83004570 <_putc_r>

00000000830035ac <fputc>:
    830035ac:	fe010113          	addi	sp,sp,-32
    830035b0:	00813823          	sd	s0,16(sp)
    830035b4:	00113c23          	sd	ra,24(sp)
    830035b8:	00050413          	mv	s0,a0
    830035bc:	00004517          	auipc	a0,0x4
    830035c0:	36c53503          	ld	a0,876(a0) # 83007928 <_impure_ptr>
    830035c4:	00058613          	mv	a2,a1
    830035c8:	00050663          	beqz	a0,830035d4 <fputc+0x28>
    830035cc:	05052783          	lw	a5,80(a0)
    830035d0:	00078e63          	beqz	a5,830035ec <fputc+0x40>
    830035d4:	00040593          	mv	a1,s0
    830035d8:	01013403          	ld	s0,16(sp)
    830035dc:	01813083          	ld	ra,24(sp)
    830035e0:	02010113          	addi	sp,sp,32
    830035e4:	00001317          	auipc	t1,0x1
    830035e8:	f8c30067          	jr	-116(t1) # 83004570 <_putc_r>
    830035ec:	00b13423          	sd	a1,8(sp)
    830035f0:	00a13023          	sd	a0,0(sp)
    830035f4:	ffffe097          	auipc	ra,0xffffe
    830035f8:	9a4080e7          	jalr	-1628(ra) # 83000f98 <__sinit>
    830035fc:	00040593          	mv	a1,s0
    83003600:	01013403          	ld	s0,16(sp)
    83003604:	00813603          	ld	a2,8(sp)
    83003608:	00013503          	ld	a0,0(sp)
    8300360c:	01813083          	ld	ra,24(sp)
    83003610:	02010113          	addi	sp,sp,32
    83003614:	00001317          	auipc	t1,0x1
    83003618:	f5c30067          	jr	-164(t1) # 83004570 <_putc_r>

000000008300361c <_sbrk_r>:
    8300361c:	ff010113          	addi	sp,sp,-16
    83003620:	00813023          	sd	s0,0(sp)
    83003624:	00050413          	mv	s0,a0
    83003628:	00058513          	mv	a0,a1
    8300362c:	00004797          	auipc	a5,0x4
    83003630:	3607a223          	sw	zero,868(a5) # 83007990 <errno>
    83003634:	00113423          	sd	ra,8(sp)
    83003638:	00001097          	auipc	ra,0x1
    8300363c:	580080e7          	jalr	1408(ra) # 83004bb8 <_sbrk>
    83003640:	fff00793          	li	a5,-1
    83003644:	00f50a63          	beq	a0,a5,83003658 <_sbrk_r+0x3c>
    83003648:	00813083          	ld	ra,8(sp)
    8300364c:	00013403          	ld	s0,0(sp)
    83003650:	01010113          	addi	sp,sp,16
    83003654:	00008067          	ret
    83003658:	00004797          	auipc	a5,0x4
    8300365c:	3387a783          	lw	a5,824(a5) # 83007990 <errno>
    83003660:	fe0784e3          	beqz	a5,83003648 <_sbrk_r+0x2c>
    83003664:	00813083          	ld	ra,8(sp)
    83003668:	00f42023          	sw	a5,0(s0)
    8300366c:	00013403          	ld	s0,0(sp)
    83003670:	01010113          	addi	sp,sp,16
    83003674:	00008067          	ret

0000000083003678 <_close_r>:
    83003678:	ff010113          	addi	sp,sp,-16
    8300367c:	00813023          	sd	s0,0(sp)
    83003680:	00050413          	mv	s0,a0
    83003684:	00058513          	mv	a0,a1
    83003688:	00004797          	auipc	a5,0x4
    8300368c:	3007a423          	sw	zero,776(a5) # 83007990 <errno>
    83003690:	00113423          	sd	ra,8(sp)
    83003694:	00001097          	auipc	ra,0x1
    83003698:	540080e7          	jalr	1344(ra) # 83004bd4 <_close>
    8300369c:	fff00793          	li	a5,-1
    830036a0:	00f50a63          	beq	a0,a5,830036b4 <_close_r+0x3c>
    830036a4:	00813083          	ld	ra,8(sp)
    830036a8:	00013403          	ld	s0,0(sp)
    830036ac:	01010113          	addi	sp,sp,16
    830036b0:	00008067          	ret
    830036b4:	00004797          	auipc	a5,0x4
    830036b8:	2dc7a783          	lw	a5,732(a5) # 83007990 <errno>
    830036bc:	fe0784e3          	beqz	a5,830036a4 <_close_r+0x2c>
    830036c0:	00813083          	ld	ra,8(sp)
    830036c4:	00f42023          	sw	a5,0(s0)
    830036c8:	00013403          	ld	s0,0(sp)
    830036cc:	01010113          	addi	sp,sp,16
    830036d0:	00008067          	ret

00000000830036d4 <cleanup_glue>:
    830036d4:	fe010113          	addi	sp,sp,-32
    830036d8:	00813823          	sd	s0,16(sp)
    830036dc:	00058413          	mv	s0,a1
    830036e0:	0005b583          	ld	a1,0(a1)
    830036e4:	00913423          	sd	s1,8(sp)
    830036e8:	00113c23          	sd	ra,24(sp)
    830036ec:	00050493          	mv	s1,a0
    830036f0:	00058663          	beqz	a1,830036fc <cleanup_glue+0x28>
    830036f4:	00000097          	auipc	ra,0x0
    830036f8:	fe0080e7          	jalr	-32(ra) # 830036d4 <cleanup_glue>
    830036fc:	00040593          	mv	a1,s0
    83003700:	01013403          	ld	s0,16(sp)
    83003704:	01813083          	ld	ra,24(sp)
    83003708:	00048513          	mv	a0,s1
    8300370c:	00813483          	ld	s1,8(sp)
    83003710:	02010113          	addi	sp,sp,32
    83003714:	00000317          	auipc	t1,0x0
    83003718:	35430067          	jr	852(t1) # 83003a68 <_free_r>

000000008300371c <_reclaim_reent>:
    8300371c:	00004797          	auipc	a5,0x4
    83003720:	20c7b783          	ld	a5,524(a5) # 83007928 <_impure_ptr>
    83003724:	10a78c63          	beq	a5,a0,8300383c <_reclaim_reent+0x120>
    83003728:	07853583          	ld	a1,120(a0)
    8300372c:	fd010113          	addi	sp,sp,-48
    83003730:	00913c23          	sd	s1,24(sp)
    83003734:	02113423          	sd	ra,40(sp)
    83003738:	02813023          	sd	s0,32(sp)
    8300373c:	01213823          	sd	s2,16(sp)
    83003740:	01313423          	sd	s3,8(sp)
    83003744:	00050493          	mv	s1,a0
    83003748:	04058463          	beqz	a1,83003790 <_reclaim_reent+0x74>
    8300374c:	00000913          	li	s2,0
    83003750:	20000993          	li	s3,512
    83003754:	012587b3          	add	a5,a1,s2
    83003758:	0007b403          	ld	s0,0(a5)
    8300375c:	02040063          	beqz	s0,8300377c <_reclaim_reent+0x60>
    83003760:	00040593          	mv	a1,s0
    83003764:	00043403          	ld	s0,0(s0)
    83003768:	00048513          	mv	a0,s1
    8300376c:	00000097          	auipc	ra,0x0
    83003770:	2fc080e7          	jalr	764(ra) # 83003a68 <_free_r>
    83003774:	fe0416e3          	bnez	s0,83003760 <_reclaim_reent+0x44>
    83003778:	0784b583          	ld	a1,120(s1)
    8300377c:	00890913          	addi	s2,s2,8
    83003780:	fd391ae3          	bne	s2,s3,83003754 <_reclaim_reent+0x38>
    83003784:	00048513          	mv	a0,s1
    83003788:	00000097          	auipc	ra,0x0
    8300378c:	2e0080e7          	jalr	736(ra) # 83003a68 <_free_r>
    83003790:	0604b583          	ld	a1,96(s1)
    83003794:	00058863          	beqz	a1,830037a4 <_reclaim_reent+0x88>
    83003798:	00048513          	mv	a0,s1
    8300379c:	00000097          	auipc	ra,0x0
    830037a0:	2cc080e7          	jalr	716(ra) # 83003a68 <_free_r>
    830037a4:	1f84b403          	ld	s0,504(s1)
    830037a8:	02040263          	beqz	s0,830037cc <_reclaim_reent+0xb0>
    830037ac:	20048913          	addi	s2,s1,512
    830037b0:	01240e63          	beq	s0,s2,830037cc <_reclaim_reent+0xb0>
    830037b4:	00040593          	mv	a1,s0
    830037b8:	00043403          	ld	s0,0(s0)
    830037bc:	00048513          	mv	a0,s1
    830037c0:	00000097          	auipc	ra,0x0
    830037c4:	2a8080e7          	jalr	680(ra) # 83003a68 <_free_r>
    830037c8:	fe8916e3          	bne	s2,s0,830037b4 <_reclaim_reent+0x98>
    830037cc:	0884b583          	ld	a1,136(s1)
    830037d0:	00058863          	beqz	a1,830037e0 <_reclaim_reent+0xc4>
    830037d4:	00048513          	mv	a0,s1
    830037d8:	00000097          	auipc	ra,0x0
    830037dc:	290080e7          	jalr	656(ra) # 83003a68 <_free_r>
    830037e0:	0504a783          	lw	a5,80(s1)
    830037e4:	02078e63          	beqz	a5,83003820 <_reclaim_reent+0x104>
    830037e8:	0584b783          	ld	a5,88(s1)
    830037ec:	00048513          	mv	a0,s1
    830037f0:	000780e7          	jalr	a5
    830037f4:	5204b583          	ld	a1,1312(s1)
    830037f8:	02058463          	beqz	a1,83003820 <_reclaim_reent+0x104>
    830037fc:	02013403          	ld	s0,32(sp)
    83003800:	02813083          	ld	ra,40(sp)
    83003804:	01013903          	ld	s2,16(sp)
    83003808:	00813983          	ld	s3,8(sp)
    8300380c:	00048513          	mv	a0,s1
    83003810:	01813483          	ld	s1,24(sp)
    83003814:	03010113          	addi	sp,sp,48
    83003818:	00000317          	auipc	t1,0x0
    8300381c:	ebc30067          	jr	-324(t1) # 830036d4 <cleanup_glue>
    83003820:	02813083          	ld	ra,40(sp)
    83003824:	02013403          	ld	s0,32(sp)
    83003828:	01813483          	ld	s1,24(sp)
    8300382c:	01013903          	ld	s2,16(sp)
    83003830:	00813983          	ld	s3,8(sp)
    83003834:	03010113          	addi	sp,sp,48
    83003838:	00008067          	ret
    8300383c:	00008067          	ret

0000000083003840 <_read_r>:
    83003840:	ff010113          	addi	sp,sp,-16
    83003844:	00058713          	mv	a4,a1
    83003848:	00813023          	sd	s0,0(sp)
    8300384c:	00060593          	mv	a1,a2
    83003850:	00050413          	mv	s0,a0
    83003854:	00068613          	mv	a2,a3
    83003858:	00070513          	mv	a0,a4
    8300385c:	00004797          	auipc	a5,0x4
    83003860:	1207aa23          	sw	zero,308(a5) # 83007990 <errno>
    83003864:	00113423          	sd	ra,8(sp)
    83003868:	00001097          	auipc	ra,0x1
    8300386c:	358080e7          	jalr	856(ra) # 83004bc0 <_read>
    83003870:	fff00793          	li	a5,-1
    83003874:	00f50a63          	beq	a0,a5,83003888 <_read_r+0x48>
    83003878:	00813083          	ld	ra,8(sp)
    8300387c:	00013403          	ld	s0,0(sp)
    83003880:	01010113          	addi	sp,sp,16
    83003884:	00008067          	ret
    83003888:	00004797          	auipc	a5,0x4
    8300388c:	1087a783          	lw	a5,264(a5) # 83007990 <errno>
    83003890:	fe0784e3          	beqz	a5,83003878 <_read_r+0x38>
    83003894:	00813083          	ld	ra,8(sp)
    83003898:	00f42023          	sw	a5,0(s0)
    8300389c:	00013403          	ld	s0,0(sp)
    830038a0:	01010113          	addi	sp,sp,16
    830038a4:	00008067          	ret

00000000830038a8 <_lseek_r>:
    830038a8:	ff010113          	addi	sp,sp,-16
    830038ac:	00058713          	mv	a4,a1
    830038b0:	00813023          	sd	s0,0(sp)
    830038b4:	00060593          	mv	a1,a2
    830038b8:	00050413          	mv	s0,a0
    830038bc:	00068613          	mv	a2,a3
    830038c0:	00070513          	mv	a0,a4
    830038c4:	00004797          	auipc	a5,0x4
    830038c8:	0c07a623          	sw	zero,204(a5) # 83007990 <errno>
    830038cc:	00113423          	sd	ra,8(sp)
    830038d0:	00001097          	auipc	ra,0x1
    830038d4:	318080e7          	jalr	792(ra) # 83004be8 <_lseek>
    830038d8:	fff00793          	li	a5,-1
    830038dc:	00f50a63          	beq	a0,a5,830038f0 <_lseek_r+0x48>
    830038e0:	00813083          	ld	ra,8(sp)
    830038e4:	00013403          	ld	s0,0(sp)
    830038e8:	01010113          	addi	sp,sp,16
    830038ec:	00008067          	ret
    830038f0:	00004797          	auipc	a5,0x4
    830038f4:	0a07a783          	lw	a5,160(a5) # 83007990 <errno>
    830038f8:	fe0784e3          	beqz	a5,830038e0 <_lseek_r+0x38>
    830038fc:	00813083          	ld	ra,8(sp)
    83003900:	00f42023          	sw	a5,0(s0)
    83003904:	00013403          	ld	s0,0(sp)
    83003908:	01010113          	addi	sp,sp,16
    8300390c:	00008067          	ret

0000000083003910 <_malloc_trim_r>:
    83003910:	fd010113          	addi	sp,sp,-48
    83003914:	02813023          	sd	s0,32(sp)
    83003918:	00913c23          	sd	s1,24(sp)
    8300391c:	01213823          	sd	s2,16(sp)
    83003920:	01313423          	sd	s3,8(sp)
    83003924:	01413023          	sd	s4,0(sp)
    83003928:	00058993          	mv	s3,a1
    8300392c:	02113423          	sd	ra,40(sp)
    83003930:	00003a17          	auipc	s4,0x3
    83003934:	778a0a13          	addi	s4,s4,1912 # 830070a8 <__malloc_av_>
    83003938:	00050913          	mv	s2,a0
    8300393c:	00000097          	auipc	ra,0x0
    83003940:	470080e7          	jalr	1136(ra) # 83003dac <__malloc_lock>
    83003944:	010a3703          	ld	a4,16(s4)
    83003948:	000017b7          	lui	a5,0x1
    8300394c:	fdf78413          	addi	s0,a5,-33 # fdf <main-0x82fff109>
    83003950:	00873483          	ld	s1,8(a4)
    83003954:	41340433          	sub	s0,s0,s3
    83003958:	ffc4f493          	andi	s1,s1,-4
    8300395c:	00940433          	add	s0,s0,s1
    83003960:	00c45413          	srli	s0,s0,0xc
    83003964:	fff40413          	addi	s0,s0,-1
    83003968:	00c41413          	slli	s0,s0,0xc
    8300396c:	02f44063          	blt	s0,a5,8300398c <_malloc_trim_r+0x7c>
    83003970:	00000593          	li	a1,0
    83003974:	00090513          	mv	a0,s2
    83003978:	00000097          	auipc	ra,0x0
    8300397c:	ca4080e7          	jalr	-860(ra) # 8300361c <_sbrk_r>
    83003980:	010a3783          	ld	a5,16(s4)
    83003984:	009787b3          	add	a5,a5,s1
    83003988:	02f50a63          	beq	a0,a5,830039bc <_malloc_trim_r+0xac>
    8300398c:	00090513          	mv	a0,s2
    83003990:	00000097          	auipc	ra,0x0
    83003994:	420080e7          	jalr	1056(ra) # 83003db0 <__malloc_unlock>
    83003998:	02813083          	ld	ra,40(sp)
    8300399c:	02013403          	ld	s0,32(sp)
    830039a0:	01813483          	ld	s1,24(sp)
    830039a4:	01013903          	ld	s2,16(sp)
    830039a8:	00813983          	ld	s3,8(sp)
    830039ac:	00013a03          	ld	s4,0(sp)
    830039b0:	00000513          	li	a0,0
    830039b4:	03010113          	addi	sp,sp,48
    830039b8:	00008067          	ret
    830039bc:	408005b3          	neg	a1,s0
    830039c0:	00090513          	mv	a0,s2
    830039c4:	00000097          	auipc	ra,0x0
    830039c8:	c58080e7          	jalr	-936(ra) # 8300361c <_sbrk_r>
    830039cc:	fff00793          	li	a5,-1
    830039d0:	04f50c63          	beq	a0,a5,83003a28 <_malloc_trim_r+0x118>
    830039d4:	00004717          	auipc	a4,0x4
    830039d8:	f9470713          	addi	a4,a4,-108 # 83007968 <__malloc_current_mallinfo>
    830039dc:	00072783          	lw	a5,0(a4)
    830039e0:	010a3683          	ld	a3,16(s4)
    830039e4:	408484b3          	sub	s1,s1,s0
    830039e8:	0014e493          	ori	s1,s1,1
    830039ec:	4087843b          	subw	s0,a5,s0
    830039f0:	00090513          	mv	a0,s2
    830039f4:	0096b423          	sd	s1,8(a3)
    830039f8:	00872023          	sw	s0,0(a4)
    830039fc:	00000097          	auipc	ra,0x0
    83003a00:	3b4080e7          	jalr	948(ra) # 83003db0 <__malloc_unlock>
    83003a04:	02813083          	ld	ra,40(sp)
    83003a08:	02013403          	ld	s0,32(sp)
    83003a0c:	01813483          	ld	s1,24(sp)
    83003a10:	01013903          	ld	s2,16(sp)
    83003a14:	00813983          	ld	s3,8(sp)
    83003a18:	00013a03          	ld	s4,0(sp)
    83003a1c:	00100513          	li	a0,1
    83003a20:	03010113          	addi	sp,sp,48
    83003a24:	00008067          	ret
    83003a28:	00000593          	li	a1,0
    83003a2c:	00090513          	mv	a0,s2
    83003a30:	00000097          	auipc	ra,0x0
    83003a34:	bec080e7          	jalr	-1044(ra) # 8300361c <_sbrk_r>
    83003a38:	010a3703          	ld	a4,16(s4)
    83003a3c:	01f00693          	li	a3,31
    83003a40:	40e507b3          	sub	a5,a0,a4
    83003a44:	f4f6d4e3          	bge	a3,a5,8300398c <_malloc_trim_r+0x7c>
    83003a48:	00004697          	auipc	a3,0x4
    83003a4c:	ee86b683          	ld	a3,-280(a3) # 83007930 <__malloc_sbrk_base>
    83003a50:	40d50533          	sub	a0,a0,a3
    83003a54:	0017e793          	ori	a5,a5,1
    83003a58:	00004697          	auipc	a3,0x4
    83003a5c:	f0a6a823          	sw	a0,-240(a3) # 83007968 <__malloc_current_mallinfo>
    83003a60:	00f73423          	sd	a5,8(a4)
    83003a64:	f29ff06f          	j	8300398c <_malloc_trim_r+0x7c>

0000000083003a68 <_free_r>:
    83003a68:	14058263          	beqz	a1,83003bac <_free_r+0x144>
    83003a6c:	fe010113          	addi	sp,sp,-32
    83003a70:	00813823          	sd	s0,16(sp)
    83003a74:	00913423          	sd	s1,8(sp)
    83003a78:	00058413          	mv	s0,a1
    83003a7c:	00050493          	mv	s1,a0
    83003a80:	00113c23          	sd	ra,24(sp)
    83003a84:	00000097          	auipc	ra,0x0
    83003a88:	328080e7          	jalr	808(ra) # 83003dac <__malloc_lock>
    83003a8c:	ff843583          	ld	a1,-8(s0)
    83003a90:	ff040713          	addi	a4,s0,-16
    83003a94:	00003517          	auipc	a0,0x3
    83003a98:	61450513          	addi	a0,a0,1556 # 830070a8 <__malloc_av_>
    83003a9c:	ffe5f793          	andi	a5,a1,-2
    83003aa0:	00f70633          	add	a2,a4,a5
    83003aa4:	00863683          	ld	a3,8(a2)
    83003aa8:	01053803          	ld	a6,16(a0)
    83003aac:	ffc6f693          	andi	a3,a3,-4
    83003ab0:	1cc80663          	beq	a6,a2,83003c7c <_free_r+0x214>
    83003ab4:	00d63423          	sd	a3,8(a2)
    83003ab8:	0015f593          	andi	a1,a1,1
    83003abc:	00d60833          	add	a6,a2,a3
    83003ac0:	0a059663          	bnez	a1,83003b6c <_free_r+0x104>
    83003ac4:	ff043303          	ld	t1,-16(s0)
    83003ac8:	00883583          	ld	a1,8(a6)
    83003acc:	00003897          	auipc	a7,0x3
    83003ad0:	5ec88893          	addi	a7,a7,1516 # 830070b8 <__malloc_av_+0x10>
    83003ad4:	40670733          	sub	a4,a4,t1
    83003ad8:	01073803          	ld	a6,16(a4)
    83003adc:	006787b3          	add	a5,a5,t1
    83003ae0:	0015f593          	andi	a1,a1,1
    83003ae4:	15180a63          	beq	a6,a7,83003c38 <_free_r+0x1d0>
    83003ae8:	01873303          	ld	t1,24(a4)
    83003aec:	00683c23          	sd	t1,24(a6)
    83003af0:	01033823          	sd	a6,16(t1)
    83003af4:	20058463          	beqz	a1,83003cfc <_free_r+0x294>
    83003af8:	0017e693          	ori	a3,a5,1
    83003afc:	00d73423          	sd	a3,8(a4)
    83003b00:	00f63023          	sd	a5,0(a2)
    83003b04:	1ff00693          	li	a3,511
    83003b08:	0af6ee63          	bltu	a3,a5,83003bc4 <_free_r+0x15c>
    83003b0c:	0037d793          	srli	a5,a5,0x3
    83003b10:	0017869b          	addiw	a3,a5,1
    83003b14:	0016969b          	slliw	a3,a3,0x1
    83003b18:	00369693          	slli	a3,a3,0x3
    83003b1c:	00853803          	ld	a6,8(a0)
    83003b20:	00d506b3          	add	a3,a0,a3
    83003b24:	0006b583          	ld	a1,0(a3)
    83003b28:	4027d61b          	sraiw	a2,a5,0x2
    83003b2c:	00100793          	li	a5,1
    83003b30:	00c797b3          	sll	a5,a5,a2
    83003b34:	0107e7b3          	or	a5,a5,a6
    83003b38:	ff068613          	addi	a2,a3,-16
    83003b3c:	00c73c23          	sd	a2,24(a4)
    83003b40:	00b73823          	sd	a1,16(a4)
    83003b44:	00f53423          	sd	a5,8(a0)
    83003b48:	00e6b023          	sd	a4,0(a3)
    83003b4c:	00e5bc23          	sd	a4,24(a1)
    83003b50:	01013403          	ld	s0,16(sp)
    83003b54:	01813083          	ld	ra,24(sp)
    83003b58:	00048513          	mv	a0,s1
    83003b5c:	00813483          	ld	s1,8(sp)
    83003b60:	02010113          	addi	sp,sp,32
    83003b64:	00000317          	auipc	t1,0x0
    83003b68:	24c30067          	jr	588(t1) # 83003db0 <__malloc_unlock>
    83003b6c:	00883583          	ld	a1,8(a6)
    83003b70:	0015f593          	andi	a1,a1,1
    83003b74:	02059e63          	bnez	a1,83003bb0 <_free_r+0x148>
    83003b78:	00d787b3          	add	a5,a5,a3
    83003b7c:	00003897          	auipc	a7,0x3
    83003b80:	53c88893          	addi	a7,a7,1340 # 830070b8 <__malloc_av_+0x10>
    83003b84:	01063683          	ld	a3,16(a2)
    83003b88:	0017e813          	ori	a6,a5,1
    83003b8c:	00f705b3          	add	a1,a4,a5
    83003b90:	19168463          	beq	a3,a7,83003d18 <_free_r+0x2b0>
    83003b94:	01863603          	ld	a2,24(a2)
    83003b98:	00c6bc23          	sd	a2,24(a3)
    83003b9c:	00d63823          	sd	a3,16(a2)
    83003ba0:	01073423          	sd	a6,8(a4)
    83003ba4:	00f5b023          	sd	a5,0(a1)
    83003ba8:	f5dff06f          	j	83003b04 <_free_r+0x9c>
    83003bac:	00008067          	ret
    83003bb0:	0017e693          	ori	a3,a5,1
    83003bb4:	fed43c23          	sd	a3,-8(s0)
    83003bb8:	00f63023          	sd	a5,0(a2)
    83003bbc:	1ff00693          	li	a3,511
    83003bc0:	f4f6f6e3          	bgeu	a3,a5,83003b0c <_free_r+0xa4>
    83003bc4:	0097d693          	srli	a3,a5,0x9
    83003bc8:	00400613          	li	a2,4
    83003bcc:	10d66463          	bltu	a2,a3,83003cd4 <_free_r+0x26c>
    83003bd0:	0067d693          	srli	a3,a5,0x6
    83003bd4:	0396859b          	addiw	a1,a3,57
    83003bd8:	0015959b          	slliw	a1,a1,0x1
    83003bdc:	0386861b          	addiw	a2,a3,56
    83003be0:	00359593          	slli	a1,a1,0x3
    83003be4:	00b505b3          	add	a1,a0,a1
    83003be8:	0005b683          	ld	a3,0(a1)
    83003bec:	ff058593          	addi	a1,a1,-16
    83003bf0:	14d58263          	beq	a1,a3,83003d34 <_free_r+0x2cc>
    83003bf4:	0086b603          	ld	a2,8(a3)
    83003bf8:	ffc67613          	andi	a2,a2,-4
    83003bfc:	00c7f663          	bgeu	a5,a2,83003c08 <_free_r+0x1a0>
    83003c00:	0106b683          	ld	a3,16(a3)
    83003c04:	fed598e3          	bne	a1,a3,83003bf4 <_free_r+0x18c>
    83003c08:	0186b583          	ld	a1,24(a3)
    83003c0c:	00b73c23          	sd	a1,24(a4)
    83003c10:	00d73823          	sd	a3,16(a4)
    83003c14:	01013403          	ld	s0,16(sp)
    83003c18:	01813083          	ld	ra,24(sp)
    83003c1c:	00e5b823          	sd	a4,16(a1)
    83003c20:	00048513          	mv	a0,s1
    83003c24:	00813483          	ld	s1,8(sp)
    83003c28:	00e6bc23          	sd	a4,24(a3)
    83003c2c:	02010113          	addi	sp,sp,32
    83003c30:	00000317          	auipc	t1,0x0
    83003c34:	18030067          	jr	384(t1) # 83003db0 <__malloc_unlock>
    83003c38:	16059263          	bnez	a1,83003d9c <_free_r+0x334>
    83003c3c:	01863583          	ld	a1,24(a2)
    83003c40:	01063603          	ld	a2,16(a2)
    83003c44:	00f687b3          	add	a5,a3,a5
    83003c48:	01013403          	ld	s0,16(sp)
    83003c4c:	00b63c23          	sd	a1,24(a2)
    83003c50:	00c5b823          	sd	a2,16(a1)
    83003c54:	0017e693          	ori	a3,a5,1
    83003c58:	01813083          	ld	ra,24(sp)
    83003c5c:	00d73423          	sd	a3,8(a4)
    83003c60:	00048513          	mv	a0,s1
    83003c64:	00f70733          	add	a4,a4,a5
    83003c68:	00813483          	ld	s1,8(sp)
    83003c6c:	00f73023          	sd	a5,0(a4)
    83003c70:	02010113          	addi	sp,sp,32
    83003c74:	00000317          	auipc	t1,0x0
    83003c78:	13c30067          	jr	316(t1) # 83003db0 <__malloc_unlock>
    83003c7c:	0015f593          	andi	a1,a1,1
    83003c80:	00d787b3          	add	a5,a5,a3
    83003c84:	02059063          	bnez	a1,83003ca4 <_free_r+0x23c>
    83003c88:	ff043583          	ld	a1,-16(s0)
    83003c8c:	40b70733          	sub	a4,a4,a1
    83003c90:	01873683          	ld	a3,24(a4)
    83003c94:	01073603          	ld	a2,16(a4)
    83003c98:	00b787b3          	add	a5,a5,a1
    83003c9c:	00d63c23          	sd	a3,24(a2)
    83003ca0:	00c6b823          	sd	a2,16(a3)
    83003ca4:	0017e693          	ori	a3,a5,1
    83003ca8:	00d73423          	sd	a3,8(a4)
    83003cac:	00e53823          	sd	a4,16(a0)
    83003cb0:	00004717          	auipc	a4,0x4
    83003cb4:	c8873703          	ld	a4,-888(a4) # 83007938 <__malloc_trim_threshold>
    83003cb8:	e8e7ece3          	bltu	a5,a4,83003b50 <_free_r+0xe8>
    83003cbc:	00004597          	auipc	a1,0x4
    83003cc0:	c9c5b583          	ld	a1,-868(a1) # 83007958 <__malloc_top_pad>
    83003cc4:	00048513          	mv	a0,s1
    83003cc8:	00000097          	auipc	ra,0x0
    83003ccc:	c48080e7          	jalr	-952(ra) # 83003910 <_malloc_trim_r>
    83003cd0:	e81ff06f          	j	83003b50 <_free_r+0xe8>
    83003cd4:	01400613          	li	a2,20
    83003cd8:	02d67663          	bgeu	a2,a3,83003d04 <_free_r+0x29c>
    83003cdc:	05400613          	li	a2,84
    83003ce0:	06d66863          	bltu	a2,a3,83003d50 <_free_r+0x2e8>
    83003ce4:	00c7d693          	srli	a3,a5,0xc
    83003ce8:	06f6859b          	addiw	a1,a3,111
    83003cec:	0015959b          	slliw	a1,a1,0x1
    83003cf0:	06e6861b          	addiw	a2,a3,110
    83003cf4:	00359593          	slli	a1,a1,0x3
    83003cf8:	eedff06f          	j	83003be4 <_free_r+0x17c>
    83003cfc:	00d787b3          	add	a5,a5,a3
    83003d00:	e85ff06f          	j	83003b84 <_free_r+0x11c>
    83003d04:	05c6859b          	addiw	a1,a3,92
    83003d08:	0015959b          	slliw	a1,a1,0x1
    83003d0c:	05b6861b          	addiw	a2,a3,91
    83003d10:	00359593          	slli	a1,a1,0x3
    83003d14:	ed1ff06f          	j	83003be4 <_free_r+0x17c>
    83003d18:	02e53423          	sd	a4,40(a0)
    83003d1c:	02e53023          	sd	a4,32(a0)
    83003d20:	01173c23          	sd	a7,24(a4)
    83003d24:	01173823          	sd	a7,16(a4)
    83003d28:	01073423          	sd	a6,8(a4)
    83003d2c:	00f5b023          	sd	a5,0(a1)
    83003d30:	e21ff06f          	j	83003b50 <_free_r+0xe8>
    83003d34:	00853803          	ld	a6,8(a0)
    83003d38:	4026561b          	sraiw	a2,a2,0x2
    83003d3c:	00100793          	li	a5,1
    83003d40:	00c79633          	sll	a2,a5,a2
    83003d44:	01066633          	or	a2,a2,a6
    83003d48:	00c53423          	sd	a2,8(a0)
    83003d4c:	ec1ff06f          	j	83003c0c <_free_r+0x1a4>
    83003d50:	15400613          	li	a2,340
    83003d54:	00d66e63          	bltu	a2,a3,83003d70 <_free_r+0x308>
    83003d58:	00f7d693          	srli	a3,a5,0xf
    83003d5c:	0786859b          	addiw	a1,a3,120
    83003d60:	0015959b          	slliw	a1,a1,0x1
    83003d64:	0776861b          	addiw	a2,a3,119
    83003d68:	00359593          	slli	a1,a1,0x3
    83003d6c:	e79ff06f          	j	83003be4 <_free_r+0x17c>
    83003d70:	55400613          	li	a2,1364
    83003d74:	00d66e63          	bltu	a2,a3,83003d90 <_free_r+0x328>
    83003d78:	0127d693          	srli	a3,a5,0x12
    83003d7c:	07d6859b          	addiw	a1,a3,125
    83003d80:	0015959b          	slliw	a1,a1,0x1
    83003d84:	07c6861b          	addiw	a2,a3,124
    83003d88:	00359593          	slli	a1,a1,0x3
    83003d8c:	e59ff06f          	j	83003be4 <_free_r+0x17c>
    83003d90:	7f000593          	li	a1,2032
    83003d94:	07e00613          	li	a2,126
    83003d98:	e4dff06f          	j	83003be4 <_free_r+0x17c>
    83003d9c:	0017e693          	ori	a3,a5,1
    83003da0:	00d73423          	sd	a3,8(a4)
    83003da4:	00f63023          	sd	a5,0(a2)
    83003da8:	da9ff06f          	j	83003b50 <_free_r+0xe8>

0000000083003dac <__malloc_lock>:
    83003dac:	00008067          	ret

0000000083003db0 <__malloc_unlock>:
    83003db0:	00008067          	ret

0000000083003db4 <_realloc_r>:
    83003db4:	fb010113          	addi	sp,sp,-80
    83003db8:	03213823          	sd	s2,48(sp)
    83003dbc:	04113423          	sd	ra,72(sp)
    83003dc0:	04813023          	sd	s0,64(sp)
    83003dc4:	02913c23          	sd	s1,56(sp)
    83003dc8:	03313423          	sd	s3,40(sp)
    83003dcc:	03413023          	sd	s4,32(sp)
    83003dd0:	01513c23          	sd	s5,24(sp)
    83003dd4:	01613823          	sd	s6,16(sp)
    83003dd8:	01713423          	sd	s7,8(sp)
    83003ddc:	01813023          	sd	s8,0(sp)
    83003de0:	00060913          	mv	s2,a2
    83003de4:	22058e63          	beqz	a1,83004020 <_realloc_r+0x26c>
    83003de8:	00058413          	mv	s0,a1
    83003dec:	00050a93          	mv	s5,a0
    83003df0:	00000097          	auipc	ra,0x0
    83003df4:	fbc080e7          	jalr	-68(ra) # 83003dac <__malloc_lock>
    83003df8:	ff843703          	ld	a4,-8(s0)
    83003dfc:	01790493          	addi	s1,s2,23
    83003e00:	02e00793          	li	a5,46
    83003e04:	ff040b13          	addi	s6,s0,-16
    83003e08:	ffc77a13          	andi	s4,a4,-4
    83003e0c:	1097f063          	bgeu	a5,s1,83003f0c <_realloc_r+0x158>
    83003e10:	800007b7          	lui	a5,0x80000
    83003e14:	ff04f493          	andi	s1,s1,-16
    83003e18:	fff7c793          	not	a5,a5
    83003e1c:	0e97ec63          	bltu	a5,s1,83003f14 <_realloc_r+0x160>
    83003e20:	0f24ea63          	bltu	s1,s2,83003f14 <_realloc_r+0x160>
    83003e24:	014b09b3          	add	s3,s6,s4
    83003e28:	1a9a5063          	bge	s4,s1,83003fc8 <_realloc_r+0x214>
    83003e2c:	00003b97          	auipc	s7,0x3
    83003e30:	27cb8b93          	addi	s7,s7,636 # 830070a8 <__malloc_av_>
    83003e34:	010bb683          	ld	a3,16(s7)
    83003e38:	0089b783          	ld	a5,8(s3)
    83003e3c:	25368863          	beq	a3,s3,8300408c <_realloc_r+0x2d8>
    83003e40:	ffe7f693          	andi	a3,a5,-2
    83003e44:	00d986b3          	add	a3,s3,a3
    83003e48:	0086b683          	ld	a3,8(a3)
    83003e4c:	0016f693          	andi	a3,a3,1
    83003e50:	1a069a63          	bnez	a3,83004004 <_realloc_r+0x250>
    83003e54:	ffc7f793          	andi	a5,a5,-4
    83003e58:	00fa06b3          	add	a3,s4,a5
    83003e5c:	3496dc63          	bge	a3,s1,830041b4 <_realloc_r+0x400>
    83003e60:	00177713          	andi	a4,a4,1
    83003e64:	02071463          	bnez	a4,83003e8c <_realloc_r+0xd8>
    83003e68:	ff043c03          	ld	s8,-16(s0)
    83003e6c:	418b0c33          	sub	s8,s6,s8
    83003e70:	008c3703          	ld	a4,8(s8)
    83003e74:	ffc77713          	andi	a4,a4,-4
    83003e78:	00f707b3          	add	a5,a4,a5
    83003e7c:	01478bb3          	add	s7,a5,s4
    83003e80:	369bda63          	bge	s7,s1,830041f4 <_realloc_r+0x440>
    83003e84:	00ea0bb3          	add	s7,s4,a4
    83003e88:	0c9bd663          	bge	s7,s1,83003f54 <_realloc_r+0x1a0>
    83003e8c:	00090593          	mv	a1,s2
    83003e90:	000a8513          	mv	a0,s5
    83003e94:	ffffe097          	auipc	ra,0xffffe
    83003e98:	eb0080e7          	jalr	-336(ra) # 83001d44 <_malloc_r>
    83003e9c:	00050913          	mv	s2,a0
    83003ea0:	04050e63          	beqz	a0,83003efc <_realloc_r+0x148>
    83003ea4:	ff843783          	ld	a5,-8(s0)
    83003ea8:	ff050713          	addi	a4,a0,-16
    83003eac:	ffe7f793          	andi	a5,a5,-2
    83003eb0:	00fb07b3          	add	a5,s6,a5
    83003eb4:	30e78e63          	beq	a5,a4,830041d0 <_realloc_r+0x41c>
    83003eb8:	ff8a0613          	addi	a2,s4,-8
    83003ebc:	04800793          	li	a5,72
    83003ec0:	32c7e263          	bltu	a5,a2,830041e4 <_realloc_r+0x430>
    83003ec4:	02700713          	li	a4,39
    83003ec8:	00043683          	ld	a3,0(s0)
    83003ecc:	28c76663          	bltu	a4,a2,83004158 <_realloc_r+0x3a4>
    83003ed0:	00050793          	mv	a5,a0
    83003ed4:	00040713          	mv	a4,s0
    83003ed8:	00d7b023          	sd	a3,0(a5) # ffffffff80000000 <__BSS_END__+0xfffffffefcff8668>
    83003edc:	00873683          	ld	a3,8(a4)
    83003ee0:	00d7b423          	sd	a3,8(a5)
    83003ee4:	01073703          	ld	a4,16(a4)
    83003ee8:	00e7b823          	sd	a4,16(a5)
    83003eec:	00040593          	mv	a1,s0
    83003ef0:	000a8513          	mv	a0,s5
    83003ef4:	00000097          	auipc	ra,0x0
    83003ef8:	b74080e7          	jalr	-1164(ra) # 83003a68 <_free_r>
    83003efc:	000a8513          	mv	a0,s5
    83003f00:	00000097          	auipc	ra,0x0
    83003f04:	eb0080e7          	jalr	-336(ra) # 83003db0 <__malloc_unlock>
    83003f08:	0180006f          	j	83003f20 <_realloc_r+0x16c>
    83003f0c:	02000493          	li	s1,32
    83003f10:	f124fae3          	bgeu	s1,s2,83003e24 <_realloc_r+0x70>
    83003f14:	00c00793          	li	a5,12
    83003f18:	00faa023          	sw	a5,0(s5)
    83003f1c:	00000913          	li	s2,0
    83003f20:	04813083          	ld	ra,72(sp)
    83003f24:	04013403          	ld	s0,64(sp)
    83003f28:	03813483          	ld	s1,56(sp)
    83003f2c:	02813983          	ld	s3,40(sp)
    83003f30:	02013a03          	ld	s4,32(sp)
    83003f34:	01813a83          	ld	s5,24(sp)
    83003f38:	01013b03          	ld	s6,16(sp)
    83003f3c:	00813b83          	ld	s7,8(sp)
    83003f40:	00013c03          	ld	s8,0(sp)
    83003f44:	00090513          	mv	a0,s2
    83003f48:	03013903          	ld	s2,48(sp)
    83003f4c:	05010113          	addi	sp,sp,80
    83003f50:	00008067          	ret
    83003f54:	018c3783          	ld	a5,24(s8)
    83003f58:	010c3703          	ld	a4,16(s8)
    83003f5c:	ff8a0613          	addi	a2,s4,-8
    83003f60:	04800693          	li	a3,72
    83003f64:	00f73c23          	sd	a5,24(a4)
    83003f68:	00e7b823          	sd	a4,16(a5)
    83003f6c:	010c0913          	addi	s2,s8,16
    83003f70:	017c09b3          	add	s3,s8,s7
    83003f74:	30c6e063          	bltu	a3,a2,83004274 <_realloc_r+0x4c0>
    83003f78:	02700593          	li	a1,39
    83003f7c:	00043703          	ld	a4,0(s0)
    83003f80:	00090793          	mv	a5,s2
    83003f84:	02c5f263          	bgeu	a1,a2,83003fa8 <_realloc_r+0x1f4>
    83003f88:	00ec3823          	sd	a4,16(s8)
    83003f8c:	00843703          	ld	a4,8(s0)
    83003f90:	03700793          	li	a5,55
    83003f94:	00ec3c23          	sd	a4,24(s8)
    83003f98:	32c7e063          	bltu	a5,a2,830042b8 <_realloc_r+0x504>
    83003f9c:	01043703          	ld	a4,16(s0)
    83003fa0:	020c0793          	addi	a5,s8,32
    83003fa4:	01040413          	addi	s0,s0,16
    83003fa8:	00e7b023          	sd	a4,0(a5)
    83003fac:	00843703          	ld	a4,8(s0)
    83003fb0:	000b8a13          	mv	s4,s7
    83003fb4:	000c0b13          	mv	s6,s8
    83003fb8:	00e7b423          	sd	a4,8(a5)
    83003fbc:	01043703          	ld	a4,16(s0)
    83003fc0:	00090413          	mv	s0,s2
    83003fc4:	00e7b823          	sd	a4,16(a5)
    83003fc8:	008b3783          	ld	a5,8(s6) # ffffffff80000008 <__BSS_END__+0xfffffffefcff8670>
    83003fcc:	409a0733          	sub	a4,s4,s1
    83003fd0:	01f00693          	li	a3,31
    83003fd4:	0017f793          	andi	a5,a5,1
    83003fd8:	08e6e063          	bltu	a3,a4,83004058 <_realloc_r+0x2a4>
    83003fdc:	00fa67b3          	or	a5,s4,a5
    83003fe0:	00fb3423          	sd	a5,8(s6)
    83003fe4:	0089b783          	ld	a5,8(s3)
    83003fe8:	0017e793          	ori	a5,a5,1
    83003fec:	00f9b423          	sd	a5,8(s3)
    83003ff0:	000a8513          	mv	a0,s5
    83003ff4:	00000097          	auipc	ra,0x0
    83003ff8:	dbc080e7          	jalr	-580(ra) # 83003db0 <__malloc_unlock>
    83003ffc:	00040913          	mv	s2,s0
    83004000:	f21ff06f          	j	83003f20 <_realloc_r+0x16c>
    83004004:	00177713          	andi	a4,a4,1
    83004008:	e80712e3          	bnez	a4,83003e8c <_realloc_r+0xd8>
    8300400c:	ff043c03          	ld	s8,-16(s0)
    83004010:	418b0c33          	sub	s8,s6,s8
    83004014:	008c3703          	ld	a4,8(s8)
    83004018:	ffc77713          	andi	a4,a4,-4
    8300401c:	e69ff06f          	j	83003e84 <_realloc_r+0xd0>
    83004020:	04013403          	ld	s0,64(sp)
    83004024:	04813083          	ld	ra,72(sp)
    83004028:	03813483          	ld	s1,56(sp)
    8300402c:	03013903          	ld	s2,48(sp)
    83004030:	02813983          	ld	s3,40(sp)
    83004034:	02013a03          	ld	s4,32(sp)
    83004038:	01813a83          	ld	s5,24(sp)
    8300403c:	01013b03          	ld	s6,16(sp)
    83004040:	00813b83          	ld	s7,8(sp)
    83004044:	00013c03          	ld	s8,0(sp)
    83004048:	00060593          	mv	a1,a2
    8300404c:	05010113          	addi	sp,sp,80
    83004050:	ffffe317          	auipc	t1,0xffffe
    83004054:	cf430067          	jr	-780(t1) # 83001d44 <_malloc_r>
    83004058:	00f4e7b3          	or	a5,s1,a5
    8300405c:	00fb3423          	sd	a5,8(s6)
    83004060:	009b05b3          	add	a1,s6,s1
    83004064:	00176713          	ori	a4,a4,1
    83004068:	00e5b423          	sd	a4,8(a1)
    8300406c:	0089b783          	ld	a5,8(s3)
    83004070:	01058593          	addi	a1,a1,16
    83004074:	000a8513          	mv	a0,s5
    83004078:	0017e793          	ori	a5,a5,1
    8300407c:	00f9b423          	sd	a5,8(s3)
    83004080:	00000097          	auipc	ra,0x0
    83004084:	9e8080e7          	jalr	-1560(ra) # 83003a68 <_free_r>
    83004088:	f69ff06f          	j	83003ff0 <_realloc_r+0x23c>
    8300408c:	ffc7f793          	andi	a5,a5,-4
    83004090:	00fa06b3          	add	a3,s4,a5
    83004094:	02048613          	addi	a2,s1,32
    83004098:	0ec6d263          	bge	a3,a2,8300417c <_realloc_r+0x3c8>
    8300409c:	00177713          	andi	a4,a4,1
    830040a0:	de0716e3          	bnez	a4,83003e8c <_realloc_r+0xd8>
    830040a4:	ff043c03          	ld	s8,-16(s0)
    830040a8:	418b0c33          	sub	s8,s6,s8
    830040ac:	008c3703          	ld	a4,8(s8)
    830040b0:	ffc77713          	andi	a4,a4,-4
    830040b4:	00f707b3          	add	a5,a4,a5
    830040b8:	014789b3          	add	s3,a5,s4
    830040bc:	dcc9c4e3          	blt	s3,a2,83003e84 <_realloc_r+0xd0>
    830040c0:	018c3783          	ld	a5,24(s8)
    830040c4:	010c3703          	ld	a4,16(s8)
    830040c8:	ff8a0613          	addi	a2,s4,-8
    830040cc:	04800693          	li	a3,72
    830040d0:	00f73c23          	sd	a5,24(a4)
    830040d4:	00e7b823          	sd	a4,16(a5)
    830040d8:	010c0913          	addi	s2,s8,16
    830040dc:	22c6e663          	bltu	a3,a2,83004308 <_realloc_r+0x554>
    830040e0:	02700593          	li	a1,39
    830040e4:	00043703          	ld	a4,0(s0)
    830040e8:	00090793          	mv	a5,s2
    830040ec:	02c5f263          	bgeu	a1,a2,83004110 <_realloc_r+0x35c>
    830040f0:	00ec3823          	sd	a4,16(s8)
    830040f4:	00843703          	ld	a4,8(s0)
    830040f8:	03700793          	li	a5,55
    830040fc:	00ec3c23          	sd	a4,24(s8)
    83004100:	20c7ee63          	bltu	a5,a2,8300431c <_realloc_r+0x568>
    83004104:	01043703          	ld	a4,16(s0)
    83004108:	020c0793          	addi	a5,s8,32
    8300410c:	01040413          	addi	s0,s0,16
    83004110:	00e7b023          	sd	a4,0(a5)
    83004114:	00843703          	ld	a4,8(s0)
    83004118:	00e7b423          	sd	a4,8(a5)
    8300411c:	01043703          	ld	a4,16(s0)
    83004120:	00e7b823          	sd	a4,16(a5)
    83004124:	009c0733          	add	a4,s8,s1
    83004128:	409987b3          	sub	a5,s3,s1
    8300412c:	00ebb823          	sd	a4,16(s7)
    83004130:	0017e793          	ori	a5,a5,1
    83004134:	00f73423          	sd	a5,8(a4)
    83004138:	008c3783          	ld	a5,8(s8)
    8300413c:	000a8513          	mv	a0,s5
    83004140:	0017f793          	andi	a5,a5,1
    83004144:	0097e4b3          	or	s1,a5,s1
    83004148:	009c3423          	sd	s1,8(s8)
    8300414c:	00000097          	auipc	ra,0x0
    83004150:	c64080e7          	jalr	-924(ra) # 83003db0 <__malloc_unlock>
    83004154:	dcdff06f          	j	83003f20 <_realloc_r+0x16c>
    83004158:	00d53023          	sd	a3,0(a0)
    8300415c:	00843683          	ld	a3,8(s0)
    83004160:	03700713          	li	a4,55
    83004164:	00d53423          	sd	a3,8(a0)
    83004168:	12c76663          	bltu	a4,a2,83004294 <_realloc_r+0x4e0>
    8300416c:	01043683          	ld	a3,16(s0)
    83004170:	01040713          	addi	a4,s0,16
    83004174:	01050793          	addi	a5,a0,16
    83004178:	d61ff06f          	j	83003ed8 <_realloc_r+0x124>
    8300417c:	009b0b33          	add	s6,s6,s1
    83004180:	409687b3          	sub	a5,a3,s1
    83004184:	016bb823          	sd	s6,16(s7)
    83004188:	0017e793          	ori	a5,a5,1
    8300418c:	00fb3423          	sd	a5,8(s6)
    83004190:	ff843783          	ld	a5,-8(s0)
    83004194:	000a8513          	mv	a0,s5
    83004198:	00040913          	mv	s2,s0
    8300419c:	0017f793          	andi	a5,a5,1
    830041a0:	0097e4b3          	or	s1,a5,s1
    830041a4:	fe943c23          	sd	s1,-8(s0)
    830041a8:	00000097          	auipc	ra,0x0
    830041ac:	c08080e7          	jalr	-1016(ra) # 83003db0 <__malloc_unlock>
    830041b0:	d71ff06f          	j	83003f20 <_realloc_r+0x16c>
    830041b4:	0189b783          	ld	a5,24(s3)
    830041b8:	0109b703          	ld	a4,16(s3)
    830041bc:	00068a13          	mv	s4,a3
    830041c0:	00db09b3          	add	s3,s6,a3
    830041c4:	00f73c23          	sd	a5,24(a4)
    830041c8:	00e7b823          	sd	a4,16(a5)
    830041cc:	dfdff06f          	j	83003fc8 <_realloc_r+0x214>
    830041d0:	ff853783          	ld	a5,-8(a0)
    830041d4:	ffc7f793          	andi	a5,a5,-4
    830041d8:	00fa0a33          	add	s4,s4,a5
    830041dc:	014b09b3          	add	s3,s6,s4
    830041e0:	de9ff06f          	j	83003fc8 <_realloc_r+0x214>
    830041e4:	00040593          	mv	a1,s0
    830041e8:	00000097          	auipc	ra,0x0
    830041ec:	268080e7          	jalr	616(ra) # 83004450 <memmove>
    830041f0:	cfdff06f          	j	83003eec <_realloc_r+0x138>
    830041f4:	0189b783          	ld	a5,24(s3)
    830041f8:	0109b703          	ld	a4,16(s3)
    830041fc:	ff8a0613          	addi	a2,s4,-8
    83004200:	04800693          	li	a3,72
    83004204:	00f73c23          	sd	a5,24(a4)
    83004208:	00e7b823          	sd	a4,16(a5)
    8300420c:	010c3703          	ld	a4,16(s8)
    83004210:	018c3783          	ld	a5,24(s8)
    83004214:	010c0913          	addi	s2,s8,16
    83004218:	017c09b3          	add	s3,s8,s7
    8300421c:	00f73c23          	sd	a5,24(a4)
    83004220:	00e7b823          	sd	a4,16(a5)
    83004224:	04c6e863          	bltu	a3,a2,83004274 <_realloc_r+0x4c0>
    83004228:	02700693          	li	a3,39
    8300422c:	00043703          	ld	a4,0(s0)
    83004230:	00090793          	mv	a5,s2
    83004234:	d6c6fae3          	bgeu	a3,a2,83003fa8 <_realloc_r+0x1f4>
    83004238:	00ec3823          	sd	a4,16(s8)
    8300423c:	00843703          	ld	a4,8(s0)
    83004240:	03700793          	li	a5,55
    83004244:	00ec3c23          	sd	a4,24(s8)
    83004248:	01043703          	ld	a4,16(s0)
    8300424c:	d4c7fae3          	bgeu	a5,a2,83003fa0 <_realloc_r+0x1ec>
    83004250:	02ec3023          	sd	a4,32(s8)
    83004254:	01843703          	ld	a4,24(s0)
    83004258:	04800793          	li	a5,72
    8300425c:	02ec3423          	sd	a4,40(s8)
    83004260:	02043703          	ld	a4,32(s0)
    83004264:	06f60663          	beq	a2,a5,830042d0 <_realloc_r+0x51c>
    83004268:	030c0793          	addi	a5,s8,48
    8300426c:	02040413          	addi	s0,s0,32
    83004270:	d39ff06f          	j	83003fa8 <_realloc_r+0x1f4>
    83004274:	00040593          	mv	a1,s0
    83004278:	00090513          	mv	a0,s2
    8300427c:	00000097          	auipc	ra,0x0
    83004280:	1d4080e7          	jalr	468(ra) # 83004450 <memmove>
    83004284:	00090413          	mv	s0,s2
    83004288:	000b8a13          	mv	s4,s7
    8300428c:	000c0b13          	mv	s6,s8
    83004290:	d39ff06f          	j	83003fc8 <_realloc_r+0x214>
    83004294:	01043703          	ld	a4,16(s0)
    83004298:	00e53823          	sd	a4,16(a0)
    8300429c:	01843703          	ld	a4,24(s0)
    830042a0:	00e53c23          	sd	a4,24(a0)
    830042a4:	02043683          	ld	a3,32(s0)
    830042a8:	04f60263          	beq	a2,a5,830042ec <_realloc_r+0x538>
    830042ac:	02040713          	addi	a4,s0,32
    830042b0:	02050793          	addi	a5,a0,32
    830042b4:	c25ff06f          	j	83003ed8 <_realloc_r+0x124>
    830042b8:	01043783          	ld	a5,16(s0)
    830042bc:	02fc3023          	sd	a5,32(s8)
    830042c0:	01843783          	ld	a5,24(s0)
    830042c4:	02fc3423          	sd	a5,40(s8)
    830042c8:	02043703          	ld	a4,32(s0)
    830042cc:	f8d61ee3          	bne	a2,a3,83004268 <_realloc_r+0x4b4>
    830042d0:	02ec3823          	sd	a4,48(s8)
    830042d4:	02843703          	ld	a4,40(s0)
    830042d8:	040c0793          	addi	a5,s8,64
    830042dc:	03040413          	addi	s0,s0,48
    830042e0:	02ec3c23          	sd	a4,56(s8)
    830042e4:	00043703          	ld	a4,0(s0)
    830042e8:	cc1ff06f          	j	83003fa8 <_realloc_r+0x1f4>
    830042ec:	02d53023          	sd	a3,32(a0)
    830042f0:	02843683          	ld	a3,40(s0)
    830042f4:	03040713          	addi	a4,s0,48
    830042f8:	03050793          	addi	a5,a0,48
    830042fc:	02d53423          	sd	a3,40(a0)
    83004300:	03043683          	ld	a3,48(s0)
    83004304:	bd5ff06f          	j	83003ed8 <_realloc_r+0x124>
    83004308:	00040593          	mv	a1,s0
    8300430c:	00090513          	mv	a0,s2
    83004310:	00000097          	auipc	ra,0x0
    83004314:	140080e7          	jalr	320(ra) # 83004450 <memmove>
    83004318:	e0dff06f          	j	83004124 <_realloc_r+0x370>
    8300431c:	01043783          	ld	a5,16(s0)
    83004320:	02fc3023          	sd	a5,32(s8)
    83004324:	01843783          	ld	a5,24(s0)
    83004328:	02fc3423          	sd	a5,40(s8)
    8300432c:	02043703          	ld	a4,32(s0)
    83004330:	00d60863          	beq	a2,a3,83004340 <_realloc_r+0x58c>
    83004334:	030c0793          	addi	a5,s8,48
    83004338:	02040413          	addi	s0,s0,32
    8300433c:	dd5ff06f          	j	83004110 <_realloc_r+0x35c>
    83004340:	02ec3823          	sd	a4,48(s8)
    83004344:	02843703          	ld	a4,40(s0)
    83004348:	040c0793          	addi	a5,s8,64
    8300434c:	03040413          	addi	s0,s0,48
    83004350:	02ec3c23          	sd	a4,56(s8)
    83004354:	00043703          	ld	a4,0(s0)
    83004358:	db9ff06f          	j	83004110 <_realloc_r+0x35c>

000000008300435c <memcpy>:
    8300435c:	01f00793          	li	a5,31
    83004360:	0ac7f863          	bgeu	a5,a2,83004410 <memcpy+0xb4>
    83004364:	00a5e7b3          	or	a5,a1,a0
    83004368:	0077f793          	andi	a5,a5,7
    8300436c:	0c079863          	bnez	a5,8300443c <memcpy+0xe0>
    83004370:	fe060e13          	addi	t3,a2,-32
    83004374:	fe0e7e13          	andi	t3,t3,-32
    83004378:	020e0e13          	addi	t3,t3,32
    8300437c:	01c50333          	add	t1,a0,t3
    83004380:	00058713          	mv	a4,a1
    83004384:	00050793          	mv	a5,a0
    83004388:	00873683          	ld	a3,8(a4)
    8300438c:	00073883          	ld	a7,0(a4)
    83004390:	01073803          	ld	a6,16(a4)
    83004394:	00d7b423          	sd	a3,8(a5)
    83004398:	01873683          	ld	a3,24(a4)
    8300439c:	0117b023          	sd	a7,0(a5)
    830043a0:	0107b823          	sd	a6,16(a5)
    830043a4:	00d7bc23          	sd	a3,24(a5)
    830043a8:	02078793          	addi	a5,a5,32
    830043ac:	02070713          	addi	a4,a4,32
    830043b0:	fcf31ce3          	bne	t1,a5,83004388 <memcpy+0x2c>
    830043b4:	01867713          	andi	a4,a2,24
    830043b8:	01c585b3          	add	a1,a1,t3
    830043bc:	01f67813          	andi	a6,a2,31
    830043c0:	08070463          	beqz	a4,83004448 <memcpy+0xec>
    830043c4:	00058713          	mv	a4,a1
    830043c8:	00078893          	mv	a7,a5
    830043cc:	00700e13          	li	t3,7
    830043d0:	00073303          	ld	t1,0(a4)
    830043d4:	00870713          	addi	a4,a4,8
    830043d8:	40e806b3          	sub	a3,a6,a4
    830043dc:	0068b023          	sd	t1,0(a7)
    830043e0:	00d586b3          	add	a3,a1,a3
    830043e4:	00888893          	addi	a7,a7,8
    830043e8:	fede64e3          	bltu	t3,a3,830043d0 <memcpy+0x74>
    830043ec:	ff880713          	addi	a4,a6,-8
    830043f0:	ff877713          	andi	a4,a4,-8
    830043f4:	00870713          	addi	a4,a4,8
    830043f8:	00767613          	andi	a2,a2,7
    830043fc:	00e787b3          	add	a5,a5,a4
    83004400:	00e585b3          	add	a1,a1,a4
    83004404:	fff60693          	addi	a3,a2,-1
    83004408:	00061a63          	bnez	a2,8300441c <memcpy+0xc0>
    8300440c:	00008067          	ret
    83004410:	00050793          	mv	a5,a0
    83004414:	fff60693          	addi	a3,a2,-1
    83004418:	fe060ae3          	beqz	a2,8300440c <memcpy+0xb0>
    8300441c:	00168693          	addi	a3,a3,1
    83004420:	00d786b3          	add	a3,a5,a3
    83004424:	0005c703          	lbu	a4,0(a1)
    83004428:	00178793          	addi	a5,a5,1
    8300442c:	00158593          	addi	a1,a1,1
    83004430:	fee78fa3          	sb	a4,-1(a5)
    83004434:	fef698e3          	bne	a3,a5,83004424 <memcpy+0xc8>
    83004438:	00008067          	ret
    8300443c:	fff60693          	addi	a3,a2,-1
    83004440:	00050793          	mv	a5,a0
    83004444:	fd9ff06f          	j	8300441c <memcpy+0xc0>
    83004448:	00080613          	mv	a2,a6
    8300444c:	fc9ff06f          	j	83004414 <memcpy+0xb8>

0000000083004450 <memmove>:
    83004450:	02a5f663          	bgeu	a1,a0,8300447c <memmove+0x2c>
    83004454:	00c587b3          	add	a5,a1,a2
    83004458:	02f57263          	bgeu	a0,a5,8300447c <memmove+0x2c>
    8300445c:	00c50733          	add	a4,a0,a2
    83004460:	0e060a63          	beqz	a2,83004554 <memmove+0x104>
    83004464:	fff7c683          	lbu	a3,-1(a5)
    83004468:	fff78793          	addi	a5,a5,-1
    8300446c:	fff70713          	addi	a4,a4,-1
    83004470:	00d70023          	sb	a3,0(a4)
    83004474:	fef598e3          	bne	a1,a5,83004464 <memmove+0x14>
    83004478:	00008067          	ret
    8300447c:	01f00793          	li	a5,31
    83004480:	02c7e863          	bltu	a5,a2,830044b0 <memmove+0x60>
    83004484:	00050793          	mv	a5,a0
    83004488:	fff60693          	addi	a3,a2,-1
    8300448c:	0c060c63          	beqz	a2,83004564 <memmove+0x114>
    83004490:	00168693          	addi	a3,a3,1
    83004494:	00d786b3          	add	a3,a5,a3
    83004498:	0005c703          	lbu	a4,0(a1)
    8300449c:	00178793          	addi	a5,a5,1
    830044a0:	00158593          	addi	a1,a1,1
    830044a4:	fee78fa3          	sb	a4,-1(a5)
    830044a8:	fed798e3          	bne	a5,a3,83004498 <memmove+0x48>
    830044ac:	00008067          	ret
    830044b0:	00a5e7b3          	or	a5,a1,a0
    830044b4:	0077f793          	andi	a5,a5,7
    830044b8:	0a079063          	bnez	a5,83004558 <memmove+0x108>
    830044bc:	fe060893          	addi	a7,a2,-32
    830044c0:	fe08f893          	andi	a7,a7,-32
    830044c4:	02088893          	addi	a7,a7,32
    830044c8:	01150833          	add	a6,a0,a7
    830044cc:	00058713          	mv	a4,a1
    830044d0:	00050793          	mv	a5,a0
    830044d4:	00073683          	ld	a3,0(a4)
    830044d8:	02070713          	addi	a4,a4,32
    830044dc:	02078793          	addi	a5,a5,32
    830044e0:	fed7b023          	sd	a3,-32(a5)
    830044e4:	fe873683          	ld	a3,-24(a4)
    830044e8:	fed7b423          	sd	a3,-24(a5)
    830044ec:	ff073683          	ld	a3,-16(a4)
    830044f0:	fed7b823          	sd	a3,-16(a5)
    830044f4:	ff873683          	ld	a3,-8(a4)
    830044f8:	fed7bc23          	sd	a3,-8(a5)
    830044fc:	fcf81ce3          	bne	a6,a5,830044d4 <memmove+0x84>
    83004500:	01867713          	andi	a4,a2,24
    83004504:	011585b3          	add	a1,a1,a7
    83004508:	01f67813          	andi	a6,a2,31
    8300450c:	04070e63          	beqz	a4,83004568 <memmove+0x118>
    83004510:	00058713          	mv	a4,a1
    83004514:	00078893          	mv	a7,a5
    83004518:	00700e13          	li	t3,7
    8300451c:	00073303          	ld	t1,0(a4)
    83004520:	00870713          	addi	a4,a4,8
    83004524:	40e806b3          	sub	a3,a6,a4
    83004528:	0068b023          	sd	t1,0(a7)
    8300452c:	00d586b3          	add	a3,a1,a3
    83004530:	00888893          	addi	a7,a7,8
    83004534:	fede64e3          	bltu	t3,a3,8300451c <memmove+0xcc>
    83004538:	ff880713          	addi	a4,a6,-8
    8300453c:	ff877713          	andi	a4,a4,-8
    83004540:	00870713          	addi	a4,a4,8
    83004544:	00767613          	andi	a2,a2,7
    83004548:	00e787b3          	add	a5,a5,a4
    8300454c:	00e585b3          	add	a1,a1,a4
    83004550:	f39ff06f          	j	83004488 <memmove+0x38>
    83004554:	00008067          	ret
    83004558:	fff60693          	addi	a3,a2,-1
    8300455c:	00050793          	mv	a5,a0
    83004560:	f31ff06f          	j	83004490 <memmove+0x40>
    83004564:	00008067          	ret
    83004568:	00080613          	mv	a2,a6
    8300456c:	f1dff06f          	j	83004488 <memmove+0x38>

0000000083004570 <_putc_r>:
    83004570:	fe010113          	addi	sp,sp,-32
    83004574:	01213823          	sd	s2,16(sp)
    83004578:	00113c23          	sd	ra,24(sp)
    8300457c:	00050913          	mv	s2,a0
    83004580:	00050663          	beqz	a0,8300458c <_putc_r+0x1c>
    83004584:	05052783          	lw	a5,80(a0)
    83004588:	04078a63          	beqz	a5,830045dc <_putc_r+0x6c>
    8300458c:	00c62783          	lw	a5,12(a2)
    83004590:	fff7879b          	addiw	a5,a5,-1
    83004594:	00f62623          	sw	a5,12(a2)
    83004598:	02079693          	slli	a3,a5,0x20
    8300459c:	0007871b          	sext.w	a4,a5
    830045a0:	0006dc63          	bgez	a3,830045b8 <_putc_r+0x48>
    830045a4:	02862783          	lw	a5,40(a2)
    830045a8:	04f74863          	blt	a4,a5,830045f8 <_putc_r+0x88>
    830045ac:	0ff5f793          	andi	a5,a1,255
    830045b0:	00a00713          	li	a4,10
    830045b4:	04e78263          	beq	a5,a4,830045f8 <_putc_r+0x88>
    830045b8:	00063783          	ld	a5,0(a2)
    830045bc:	0ff5f513          	andi	a0,a1,255
    830045c0:	00178713          	addi	a4,a5,1
    830045c4:	00e63023          	sd	a4,0(a2)
    830045c8:	00b78023          	sb	a1,0(a5)
    830045cc:	01813083          	ld	ra,24(sp)
    830045d0:	01013903          	ld	s2,16(sp)
    830045d4:	02010113          	addi	sp,sp,32
    830045d8:	00008067          	ret
    830045dc:	00c13423          	sd	a2,8(sp)
    830045e0:	00b13023          	sd	a1,0(sp)
    830045e4:	ffffd097          	auipc	ra,0xffffd
    830045e8:	9b4080e7          	jalr	-1612(ra) # 83000f98 <__sinit>
    830045ec:	00813603          	ld	a2,8(sp)
    830045f0:	00013583          	ld	a1,0(sp)
    830045f4:	f99ff06f          	j	8300458c <_putc_r+0x1c>
    830045f8:	01813083          	ld	ra,24(sp)
    830045fc:	00090513          	mv	a0,s2
    83004600:	01013903          	ld	s2,16(sp)
    83004604:	02010113          	addi	sp,sp,32
    83004608:	00000317          	auipc	t1,0x0
    8300460c:	2a030067          	jr	672(t1) # 830048a8 <__swbuf_r>

0000000083004610 <putc>:
    83004610:	fe010113          	addi	sp,sp,-32
    83004614:	00813823          	sd	s0,16(sp)
    83004618:	00913423          	sd	s1,8(sp)
    8300461c:	01213023          	sd	s2,0(sp)
    83004620:	00113c23          	sd	ra,24(sp)
    83004624:	00003917          	auipc	s2,0x3
    83004628:	30493903          	ld	s2,772(s2) # 83007928 <_impure_ptr>
    8300462c:	00050493          	mv	s1,a0
    83004630:	00058413          	mv	s0,a1
    83004634:	00090663          	beqz	s2,83004640 <putc+0x30>
    83004638:	05092783          	lw	a5,80(s2)
    8300463c:	04078e63          	beqz	a5,83004698 <putc+0x88>
    83004640:	00c42783          	lw	a5,12(s0)
    83004644:	fff7879b          	addiw	a5,a5,-1
    83004648:	00f42623          	sw	a5,12(s0)
    8300464c:	02079693          	slli	a3,a5,0x20
    83004650:	0007871b          	sext.w	a4,a5
    83004654:	0006dc63          	bgez	a3,8300466c <putc+0x5c>
    83004658:	02842783          	lw	a5,40(s0)
    8300465c:	04f74663          	blt	a4,a5,830046a8 <putc+0x98>
    83004660:	0ff4f793          	andi	a5,s1,255
    83004664:	00a00713          	li	a4,10
    83004668:	04e78063          	beq	a5,a4,830046a8 <putc+0x98>
    8300466c:	00043783          	ld	a5,0(s0)
    83004670:	0ff4f513          	andi	a0,s1,255
    83004674:	00178713          	addi	a4,a5,1
    83004678:	00e43023          	sd	a4,0(s0)
    8300467c:	00978023          	sb	s1,0(a5)
    83004680:	01813083          	ld	ra,24(sp)
    83004684:	01013403          	ld	s0,16(sp)
    83004688:	00813483          	ld	s1,8(sp)
    8300468c:	00013903          	ld	s2,0(sp)
    83004690:	02010113          	addi	sp,sp,32
    83004694:	00008067          	ret
    83004698:	00090513          	mv	a0,s2
    8300469c:	ffffd097          	auipc	ra,0xffffd
    830046a0:	8fc080e7          	jalr	-1796(ra) # 83000f98 <__sinit>
    830046a4:	f9dff06f          	j	83004640 <putc+0x30>
    830046a8:	00040613          	mv	a2,s0
    830046ac:	01013403          	ld	s0,16(sp)
    830046b0:	01813083          	ld	ra,24(sp)
    830046b4:	00048593          	mv	a1,s1
    830046b8:	00090513          	mv	a0,s2
    830046bc:	00813483          	ld	s1,8(sp)
    830046c0:	00013903          	ld	s2,0(sp)
    830046c4:	02010113          	addi	sp,sp,32
    830046c8:	00000317          	auipc	t1,0x0
    830046cc:	1e030067          	jr	480(t1) # 830048a8 <__swbuf_r>

00000000830046d0 <__swhatbuf_r>:
    830046d0:	f7010113          	addi	sp,sp,-144
    830046d4:	08813023          	sd	s0,128(sp)
    830046d8:	00058413          	mv	s0,a1
    830046dc:	01259583          	lh	a1,18(a1)
    830046e0:	06913c23          	sd	s1,120(sp)
    830046e4:	07213823          	sd	s2,112(sp)
    830046e8:	08113423          	sd	ra,136(sp)
    830046ec:	00060913          	mv	s2,a2
    830046f0:	00068493          	mv	s1,a3
    830046f4:	0405ca63          	bltz	a1,83004748 <__swhatbuf_r+0x78>
    830046f8:	00810613          	addi	a2,sp,8
    830046fc:	00000097          	auipc	ra,0x0
    83004700:	370080e7          	jalr	880(ra) # 83004a6c <_fstat_r>
    83004704:	04054263          	bltz	a0,83004748 <__swhatbuf_r+0x78>
    83004708:	00c12783          	lw	a5,12(sp)
    8300470c:	0000f737          	lui	a4,0xf
    83004710:	00e7f7b3          	and	a5,a5,a4
    83004714:	00002737          	lui	a4,0x2
    83004718:	40e787b3          	sub	a5,a5,a4
    8300471c:	0017b793          	seqz	a5,a5
    83004720:	00f4a023          	sw	a5,0(s1)
    83004724:	08813083          	ld	ra,136(sp)
    83004728:	08013403          	ld	s0,128(sp)
    8300472c:	40000793          	li	a5,1024
    83004730:	00f93023          	sd	a5,0(s2)
    83004734:	07813483          	ld	s1,120(sp)
    83004738:	07013903          	ld	s2,112(sp)
    8300473c:	00000513          	li	a0,0
    83004740:	09010113          	addi	sp,sp,144
    83004744:	00008067          	ret
    83004748:	01045783          	lhu	a5,16(s0)
    8300474c:	0004a023          	sw	zero,0(s1)
    83004750:	0807f793          	andi	a5,a5,128
    83004754:	fc0788e3          	beqz	a5,83004724 <__swhatbuf_r+0x54>
    83004758:	08813083          	ld	ra,136(sp)
    8300475c:	08013403          	ld	s0,128(sp)
    83004760:	04000793          	li	a5,64
    83004764:	00f93023          	sd	a5,0(s2)
    83004768:	07813483          	ld	s1,120(sp)
    8300476c:	07013903          	ld	s2,112(sp)
    83004770:	00000513          	li	a0,0
    83004774:	09010113          	addi	sp,sp,144
    83004778:	00008067          	ret

000000008300477c <__smakebuf_r>:
    8300477c:	0105d783          	lhu	a5,16(a1)
    83004780:	fd010113          	addi	sp,sp,-48
    83004784:	02813023          	sd	s0,32(sp)
    83004788:	02113423          	sd	ra,40(sp)
    8300478c:	00913c23          	sd	s1,24(sp)
    83004790:	01213823          	sd	s2,16(sp)
    83004794:	0027f793          	andi	a5,a5,2
    83004798:	00058413          	mv	s0,a1
    8300479c:	02078863          	beqz	a5,830047cc <__smakebuf_r+0x50>
    830047a0:	07758793          	addi	a5,a1,119
    830047a4:	00f5b023          	sd	a5,0(a1)
    830047a8:	00f5bc23          	sd	a5,24(a1)
    830047ac:	00100793          	li	a5,1
    830047b0:	02f5a023          	sw	a5,32(a1)
    830047b4:	02813083          	ld	ra,40(sp)
    830047b8:	02013403          	ld	s0,32(sp)
    830047bc:	01813483          	ld	s1,24(sp)
    830047c0:	01013903          	ld	s2,16(sp)
    830047c4:	03010113          	addi	sp,sp,48
    830047c8:	00008067          	ret
    830047cc:	00410693          	addi	a3,sp,4
    830047d0:	00810613          	addi	a2,sp,8
    830047d4:	00050493          	mv	s1,a0
    830047d8:	00000097          	auipc	ra,0x0
    830047dc:	ef8080e7          	jalr	-264(ra) # 830046d0 <__swhatbuf_r>
    830047e0:	00813583          	ld	a1,8(sp)
    830047e4:	00050913          	mv	s2,a0
    830047e8:	00048513          	mv	a0,s1
    830047ec:	ffffd097          	auipc	ra,0xffffd
    830047f0:	558080e7          	jalr	1368(ra) # 83001d44 <_malloc_r>
    830047f4:	01041783          	lh	a5,16(s0)
    830047f8:	04050863          	beqz	a0,83004848 <__smakebuf_r+0xcc>
    830047fc:	ffffc697          	auipc	a3,0xffffc
    83004800:	45868693          	addi	a3,a3,1112 # 83000c54 <_cleanup_r>
    83004804:	04d4bc23          	sd	a3,88(s1)
    83004808:	00813683          	ld	a3,8(sp)
    8300480c:	00412703          	lw	a4,4(sp)
    83004810:	0807e793          	ori	a5,a5,128
    83004814:	00f41823          	sh	a5,16(s0)
    83004818:	00a43023          	sd	a0,0(s0)
    8300481c:	00a43c23          	sd	a0,24(s0)
    83004820:	02d42023          	sw	a3,32(s0)
    83004824:	04071863          	bnez	a4,83004874 <__smakebuf_r+0xf8>
    83004828:	0127e7b3          	or	a5,a5,s2
    8300482c:	02813083          	ld	ra,40(sp)
    83004830:	00f41823          	sh	a5,16(s0)
    83004834:	02013403          	ld	s0,32(sp)
    83004838:	01813483          	ld	s1,24(sp)
    8300483c:	01013903          	ld	s2,16(sp)
    83004840:	03010113          	addi	sp,sp,48
    83004844:	00008067          	ret
    83004848:	2007f713          	andi	a4,a5,512
    8300484c:	f60714e3          	bnez	a4,830047b4 <__smakebuf_r+0x38>
    83004850:	ffc7f793          	andi	a5,a5,-4
    83004854:	0027e793          	ori	a5,a5,2
    83004858:	07740713          	addi	a4,s0,119
    8300485c:	00f41823          	sh	a5,16(s0)
    83004860:	00100793          	li	a5,1
    83004864:	00e43023          	sd	a4,0(s0)
    83004868:	00e43c23          	sd	a4,24(s0)
    8300486c:	02f42023          	sw	a5,32(s0)
    83004870:	f45ff06f          	j	830047b4 <__smakebuf_r+0x38>
    83004874:	01241583          	lh	a1,18(s0)
    83004878:	00048513          	mv	a0,s1
    8300487c:	00000097          	auipc	ra,0x0
    83004880:	194080e7          	jalr	404(ra) # 83004a10 <_isatty_r>
    83004884:	00051663          	bnez	a0,83004890 <__smakebuf_r+0x114>
    83004888:	01041783          	lh	a5,16(s0)
    8300488c:	f9dff06f          	j	83004828 <__smakebuf_r+0xac>
    83004890:	01045703          	lhu	a4,16(s0)
    83004894:	ffc77713          	andi	a4,a4,-4
    83004898:	00176713          	ori	a4,a4,1
    8300489c:	0107179b          	slliw	a5,a4,0x10
    830048a0:	4107d79b          	sraiw	a5,a5,0x10
    830048a4:	f85ff06f          	j	83004828 <__smakebuf_r+0xac>

00000000830048a8 <__swbuf_r>:
    830048a8:	fd010113          	addi	sp,sp,-48
    830048ac:	02813023          	sd	s0,32(sp)
    830048b0:	00913c23          	sd	s1,24(sp)
    830048b4:	01213823          	sd	s2,16(sp)
    830048b8:	02113423          	sd	ra,40(sp)
    830048bc:	01313423          	sd	s3,8(sp)
    830048c0:	00050913          	mv	s2,a0
    830048c4:	00058493          	mv	s1,a1
    830048c8:	00060413          	mv	s0,a2
    830048cc:	00050663          	beqz	a0,830048d8 <__swbuf_r+0x30>
    830048d0:	05052783          	lw	a5,80(a0)
    830048d4:	10078c63          	beqz	a5,830049ec <__swbuf_r+0x144>
    830048d8:	02842703          	lw	a4,40(s0)
    830048dc:	01045783          	lhu	a5,16(s0)
    830048e0:	00e42623          	sw	a4,12(s0)
    830048e4:	0087f793          	andi	a5,a5,8
    830048e8:	06078e63          	beqz	a5,83004964 <__swbuf_r+0xbc>
    830048ec:	01843783          	ld	a5,24(s0)
    830048f0:	06078a63          	beqz	a5,83004964 <__swbuf_r+0xbc>
    830048f4:	00043703          	ld	a4,0(s0)
    830048f8:	02042683          	lw	a3,32(s0)
    830048fc:	0ff4f993          	andi	s3,s1,255
    83004900:	40f707bb          	subw	a5,a4,a5
    83004904:	00098493          	mv	s1,s3
    83004908:	08d7d663          	bge	a5,a3,83004994 <__swbuf_r+0xec>
    8300490c:	00c42683          	lw	a3,12(s0)
    83004910:	00170613          	addi	a2,a4,1 # 2001 <main-0x82ffe0e7>
    83004914:	00c43023          	sd	a2,0(s0)
    83004918:	fff6869b          	addiw	a3,a3,-1
    8300491c:	00d42623          	sw	a3,12(s0)
    83004920:	01370023          	sb	s3,0(a4)
    83004924:	02042703          	lw	a4,32(s0)
    83004928:	0017879b          	addiw	a5,a5,1
    8300492c:	0af70263          	beq	a4,a5,830049d0 <__swbuf_r+0x128>
    83004930:	01045783          	lhu	a5,16(s0)
    83004934:	0017f793          	andi	a5,a5,1
    83004938:	00078663          	beqz	a5,83004944 <__swbuf_r+0x9c>
    8300493c:	00a00793          	li	a5,10
    83004940:	08f48863          	beq	s1,a5,830049d0 <__swbuf_r+0x128>
    83004944:	02813083          	ld	ra,40(sp)
    83004948:	02013403          	ld	s0,32(sp)
    8300494c:	01013903          	ld	s2,16(sp)
    83004950:	00813983          	ld	s3,8(sp)
    83004954:	00048513          	mv	a0,s1
    83004958:	01813483          	ld	s1,24(sp)
    8300495c:	03010113          	addi	sp,sp,48
    83004960:	00008067          	ret
    83004964:	00040593          	mv	a1,s0
    83004968:	00090513          	mv	a0,s2
    8300496c:	ffffe097          	auipc	ra,0xffffe
    83004970:	7c0080e7          	jalr	1984(ra) # 8300312c <__swsetup_r>
    83004974:	06051863          	bnez	a0,830049e4 <__swbuf_r+0x13c>
    83004978:	01843783          	ld	a5,24(s0)
    8300497c:	00043703          	ld	a4,0(s0)
    83004980:	02042683          	lw	a3,32(s0)
    83004984:	0ff4f993          	andi	s3,s1,255
    83004988:	40f707bb          	subw	a5,a4,a5
    8300498c:	00098493          	mv	s1,s3
    83004990:	f6d7cee3          	blt	a5,a3,8300490c <__swbuf_r+0x64>
    83004994:	00040593          	mv	a1,s0
    83004998:	00090513          	mv	a0,s2
    8300499c:	ffffe097          	auipc	ra,0xffffe
    830049a0:	6f8080e7          	jalr	1784(ra) # 83003094 <_fflush_r>
    830049a4:	04051063          	bnez	a0,830049e4 <__swbuf_r+0x13c>
    830049a8:	00043703          	ld	a4,0(s0)
    830049ac:	00c42683          	lw	a3,12(s0)
    830049b0:	00100793          	li	a5,1
    830049b4:	00170613          	addi	a2,a4,1
    830049b8:	fff6869b          	addiw	a3,a3,-1
    830049bc:	00c43023          	sd	a2,0(s0)
    830049c0:	00d42623          	sw	a3,12(s0)
    830049c4:	01370023          	sb	s3,0(a4)
    830049c8:	02042703          	lw	a4,32(s0)
    830049cc:	f6f712e3          	bne	a4,a5,83004930 <__swbuf_r+0x88>
    830049d0:	00040593          	mv	a1,s0
    830049d4:	00090513          	mv	a0,s2
    830049d8:	ffffe097          	auipc	ra,0xffffe
    830049dc:	6bc080e7          	jalr	1724(ra) # 83003094 <_fflush_r>
    830049e0:	f60502e3          	beqz	a0,83004944 <__swbuf_r+0x9c>
    830049e4:	fff00493          	li	s1,-1
    830049e8:	f5dff06f          	j	83004944 <__swbuf_r+0x9c>
    830049ec:	ffffc097          	auipc	ra,0xffffc
    830049f0:	5ac080e7          	jalr	1452(ra) # 83000f98 <__sinit>
    830049f4:	ee5ff06f          	j	830048d8 <__swbuf_r+0x30>

00000000830049f8 <__swbuf>:
    830049f8:	00058613          	mv	a2,a1
    830049fc:	00050593          	mv	a1,a0
    83004a00:	00003517          	auipc	a0,0x3
    83004a04:	f2853503          	ld	a0,-216(a0) # 83007928 <_impure_ptr>
    83004a08:	00000317          	auipc	t1,0x0
    83004a0c:	ea030067          	jr	-352(t1) # 830048a8 <__swbuf_r>

0000000083004a10 <_isatty_r>:
    83004a10:	ff010113          	addi	sp,sp,-16
    83004a14:	00813023          	sd	s0,0(sp)
    83004a18:	00050413          	mv	s0,a0
    83004a1c:	00058513          	mv	a0,a1
    83004a20:	00003797          	auipc	a5,0x3
    83004a24:	f607a823          	sw	zero,-144(a5) # 83007990 <errno>
    83004a28:	00113423          	sd	ra,8(sp)
    83004a2c:	00000097          	auipc	ra,0x0
    83004a30:	0a4080e7          	jalr	164(ra) # 83004ad0 <_isatty>
    83004a34:	fff00793          	li	a5,-1
    83004a38:	00f50a63          	beq	a0,a5,83004a4c <_isatty_r+0x3c>
    83004a3c:	00813083          	ld	ra,8(sp)
    83004a40:	00013403          	ld	s0,0(sp)
    83004a44:	01010113          	addi	sp,sp,16
    83004a48:	00008067          	ret
    83004a4c:	00003797          	auipc	a5,0x3
    83004a50:	f447a783          	lw	a5,-188(a5) # 83007990 <errno>
    83004a54:	fe0784e3          	beqz	a5,83004a3c <_isatty_r+0x2c>
    83004a58:	00813083          	ld	ra,8(sp)
    83004a5c:	00f42023          	sw	a5,0(s0)
    83004a60:	00013403          	ld	s0,0(sp)
    83004a64:	01010113          	addi	sp,sp,16
    83004a68:	00008067          	ret

0000000083004a6c <_fstat_r>:
    83004a6c:	ff010113          	addi	sp,sp,-16
    83004a70:	00058713          	mv	a4,a1
    83004a74:	00813023          	sd	s0,0(sp)
    83004a78:	00060593          	mv	a1,a2
    83004a7c:	00050413          	mv	s0,a0
    83004a80:	00070513          	mv	a0,a4
    83004a84:	00003797          	auipc	a5,0x3
    83004a88:	f007a623          	sw	zero,-244(a5) # 83007990 <errno>
    83004a8c:	00113423          	sd	ra,8(sp)
    83004a90:	00000097          	auipc	ra,0x0
    83004a94:	194080e7          	jalr	404(ra) # 83004c24 <_fstat>
    83004a98:	fff00793          	li	a5,-1
    83004a9c:	00f50a63          	beq	a0,a5,83004ab0 <_fstat_r+0x44>
    83004aa0:	00813083          	ld	ra,8(sp)
    83004aa4:	00013403          	ld	s0,0(sp)
    83004aa8:	01010113          	addi	sp,sp,16
    83004aac:	00008067          	ret
    83004ab0:	00003797          	auipc	a5,0x3
    83004ab4:	ee07a783          	lw	a5,-288(a5) # 83007990 <errno>
    83004ab8:	fe0784e3          	beqz	a5,83004aa0 <_fstat_r+0x34>
    83004abc:	00813083          	ld	ra,8(sp)
    83004ac0:	00f42023          	sw	a5,0(s0)
    83004ac4:	00013403          	ld	s0,0(sp)
    83004ac8:	01010113          	addi	sp,sp,16
    83004acc:	00008067          	ret

0000000083004ad0 <_isatty>:
    83004ad0:	f8010113          	addi	sp,sp,-128
    83004ad4:	00810593          	addi	a1,sp,8
    83004ad8:	06113c23          	sd	ra,120(sp)
    83004adc:	00000097          	auipc	ra,0x0
    83004ae0:	064080e7          	jalr	100(ra) # 83004b40 <fstat>
    83004ae4:	02054e63          	bltz	a0,83004b20 <_isatty+0x50>
    83004ae8:	00c12783          	lw	a5,12(sp)
    83004aec:	0000f6b7          	lui	a3,0xf
    83004af0:	00002737          	lui	a4,0x2
    83004af4:	00d7f7b3          	and	a5,a5,a3
    83004af8:	00100513          	li	a0,1
    83004afc:	00e78c63          	beq	a5,a4,83004b14 <_isatty+0x44>
    83004b00:	00000097          	auipc	ra,0x0
    83004b04:	058080e7          	jalr	88(ra) # 83004b58 <__errno>
    83004b08:	01900793          	li	a5,25
    83004b0c:	00f52023          	sw	a5,0(a0)
    83004b10:	00000513          	li	a0,0
    83004b14:	07813083          	ld	ra,120(sp)
    83004b18:	08010113          	addi	sp,sp,128
    83004b1c:	00008067          	ret
    83004b20:	00000097          	auipc	ra,0x0
    83004b24:	038080e7          	jalr	56(ra) # 83004b58 <__errno>
    83004b28:	07813083          	ld	ra,120(sp)
    83004b2c:	00900793          	li	a5,9
    83004b30:	00f52023          	sw	a5,0(a0)
    83004b34:	00000513          	li	a0,0
    83004b38:	08010113          	addi	sp,sp,128
    83004b3c:	00008067          	ret

0000000083004b40 <fstat>:
    83004b40:	00058613          	mv	a2,a1
    83004b44:	00050593          	mv	a1,a0
    83004b48:	00003517          	auipc	a0,0x3
    83004b4c:	de053503          	ld	a0,-544(a0) # 83007928 <_impure_ptr>
    83004b50:	00000317          	auipc	t1,0x0
    83004b54:	f1c30067          	jr	-228(t1) # 83004a6c <_fstat_r>

0000000083004b58 <__errno>:
    83004b58:	00003517          	auipc	a0,0x3
    83004b5c:	dd053503          	ld	a0,-560(a0) # 83007928 <_impure_ptr>
    83004b60:	00008067          	ret

0000000083004b64 <_syscall_>:
    83004b64:	00050893          	mv	a7,a0
    83004b68:	00058513          	mv	a0,a1
    83004b6c:	00060593          	mv	a1,a2
    83004b70:	00068613          	mv	a2,a3
    83004b74:	00000073          	ecall
    83004b78:	00008067          	ret

0000000083004b7c <_exit>:
    83004b7c:	00000893          	li	a7,0
    83004b80:	00000593          	li	a1,0
    83004b84:	00000613          	li	a2,0
    83004b88:	00000073          	ecall
    83004b8c:	0000006f          	j	83004b8c <_exit+0x10>

0000000083004b90 <_open>:
    83004b90:	ff010113          	addi	sp,sp,-16
    83004b94:	00200513          	li	a0,2
    83004b98:	00113423          	sd	ra,8(sp)
    83004b9c:	00000097          	auipc	ra,0x0
    83004ba0:	fe0080e7          	jalr	-32(ra) # 83004b7c <_exit>

0000000083004ba4 <_write>:
    83004ba4:	ff010113          	addi	sp,sp,-16
    83004ba8:	00400513          	li	a0,4
    83004bac:	00113423          	sd	ra,8(sp)
    83004bb0:	00000097          	auipc	ra,0x0
    83004bb4:	fcc080e7          	jalr	-52(ra) # 83004b7c <_exit>

0000000083004bb8 <_sbrk>:
    83004bb8:	fff00513          	li	a0,-1
    83004bbc:	00008067          	ret

0000000083004bc0 <_read>:
    83004bc0:	ff010113          	addi	sp,sp,-16
    83004bc4:	00300513          	li	a0,3
    83004bc8:	00113423          	sd	ra,8(sp)
    83004bcc:	00000097          	auipc	ra,0x0
    83004bd0:	fb0080e7          	jalr	-80(ra) # 83004b7c <_exit>

0000000083004bd4 <_close>:
    83004bd4:	ff010113          	addi	sp,sp,-16
    83004bd8:	00700513          	li	a0,7
    83004bdc:	00113423          	sd	ra,8(sp)
    83004be0:	00000097          	auipc	ra,0x0
    83004be4:	f9c080e7          	jalr	-100(ra) # 83004b7c <_exit>

0000000083004be8 <_lseek>:
    83004be8:	ff010113          	addi	sp,sp,-16
    83004bec:	00800513          	li	a0,8
    83004bf0:	00113423          	sd	ra,8(sp)
    83004bf4:	00000097          	auipc	ra,0x0
    83004bf8:	f88080e7          	jalr	-120(ra) # 83004b7c <_exit>

0000000083004bfc <_gettimeofday>:
    83004bfc:	ff010113          	addi	sp,sp,-16
    83004c00:	01300513          	li	a0,19
    83004c04:	00113423          	sd	ra,8(sp)
    83004c08:	00000097          	auipc	ra,0x0
    83004c0c:	f74080e7          	jalr	-140(ra) # 83004b7c <_exit>

0000000083004c10 <_execve>:
    83004c10:	ff010113          	addi	sp,sp,-16
    83004c14:	00d00513          	li	a0,13
    83004c18:	00113423          	sd	ra,8(sp)
    83004c1c:	00000097          	auipc	ra,0x0
    83004c20:	f60080e7          	jalr	-160(ra) # 83004b7c <_exit>

0000000083004c24 <_fstat>:
    83004c24:	fff00513          	li	a0,-1
    83004c28:	00008067          	ret

0000000083004c2c <_stat>:
    83004c2c:	ff010113          	addi	sp,sp,-16
    83004c30:	00001697          	auipc	a3,0x1
    83004c34:	c9868693          	addi	a3,a3,-872 # 830058c8 <zeroes.4462+0x10>
    83004c38:	00003617          	auipc	a2,0x3
    83004c3c:	ce860613          	addi	a2,a2,-792 # 83007920 <__func__.1965>
    83004c40:	06900593          	li	a1,105
    83004c44:	00001517          	auipc	a0,0x1
    83004c48:	c8c50513          	addi	a0,a0,-884 # 830058d0 <zeroes.4462+0x18>
    83004c4c:	00113423          	sd	ra,8(sp)
    83004c50:	00000097          	auipc	ra,0x0
    83004c54:	2b8080e7          	jalr	696(ra) # 83004f08 <__assert_func>

0000000083004c58 <_kill>:
    83004c58:	ff010113          	addi	sp,sp,-16
    83004c5c:	ffb00513          	li	a0,-5
    83004c60:	00113423          	sd	ra,8(sp)
    83004c64:	00000097          	auipc	ra,0x0
    83004c68:	f18080e7          	jalr	-232(ra) # 83004b7c <_exit>

0000000083004c6c <_getpid>:
    83004c6c:	ff010113          	addi	sp,sp,-16
    83004c70:	ffa00513          	li	a0,-6
    83004c74:	00113423          	sd	ra,8(sp)
    83004c78:	00000097          	auipc	ra,0x0
    83004c7c:	f04080e7          	jalr	-252(ra) # 83004b7c <_exit>

0000000083004c80 <_fork>:
    83004c80:	ff010113          	addi	sp,sp,-16
    83004c84:	00001697          	auipc	a3,0x1
    83004c88:	c4468693          	addi	a3,a3,-956 # 830058c8 <zeroes.4462+0x10>
    83004c8c:	00003617          	auipc	a2,0x3
    83004c90:	c8c60613          	addi	a2,a2,-884 # 83007918 <__func__.1974>
    83004c94:	07800593          	li	a1,120
    83004c98:	00001517          	auipc	a0,0x1
    83004c9c:	c3850513          	addi	a0,a0,-968 # 830058d0 <zeroes.4462+0x18>
    83004ca0:	00113423          	sd	ra,8(sp)
    83004ca4:	00000097          	auipc	ra,0x0
    83004ca8:	264080e7          	jalr	612(ra) # 83004f08 <__assert_func>

0000000083004cac <vfork>:
    83004cac:	ff010113          	addi	sp,sp,-16
    83004cb0:	00001697          	auipc	a3,0x1
    83004cb4:	c1868693          	addi	a3,a3,-1000 # 830058c8 <zeroes.4462+0x10>
    83004cb8:	00003617          	auipc	a2,0x3
    83004cbc:	c5860613          	addi	a2,a2,-936 # 83007910 <__func__.1977>
    83004cc0:	07d00593          	li	a1,125
    83004cc4:	00001517          	auipc	a0,0x1
    83004cc8:	c0c50513          	addi	a0,a0,-1012 # 830058d0 <zeroes.4462+0x18>
    83004ccc:	00113423          	sd	ra,8(sp)
    83004cd0:	00000097          	auipc	ra,0x0
    83004cd4:	238080e7          	jalr	568(ra) # 83004f08 <__assert_func>

0000000083004cd8 <_link>:
    83004cd8:	ff010113          	addi	sp,sp,-16
    83004cdc:	00001697          	auipc	a3,0x1
    83004ce0:	bec68693          	addi	a3,a3,-1044 # 830058c8 <zeroes.4462+0x10>
    83004ce4:	00003617          	auipc	a2,0x3
    83004ce8:	c2460613          	addi	a2,a2,-988 # 83007908 <__func__.1982>
    83004cec:	08200593          	li	a1,130
    83004cf0:	00001517          	auipc	a0,0x1
    83004cf4:	be050513          	addi	a0,a0,-1056 # 830058d0 <zeroes.4462+0x18>
    83004cf8:	00113423          	sd	ra,8(sp)
    83004cfc:	00000097          	auipc	ra,0x0
    83004d00:	20c080e7          	jalr	524(ra) # 83004f08 <__assert_func>

0000000083004d04 <_unlink>:
    83004d04:	ff010113          	addi	sp,sp,-16
    83004d08:	00001697          	auipc	a3,0x1
    83004d0c:	bc068693          	addi	a3,a3,-1088 # 830058c8 <zeroes.4462+0x10>
    83004d10:	00003617          	auipc	a2,0x3
    83004d14:	bf060613          	addi	a2,a2,-1040 # 83007900 <__func__.1986>
    83004d18:	08700593          	li	a1,135
    83004d1c:	00001517          	auipc	a0,0x1
    83004d20:	bb450513          	addi	a0,a0,-1100 # 830058d0 <zeroes.4462+0x18>
    83004d24:	00113423          	sd	ra,8(sp)
    83004d28:	00000097          	auipc	ra,0x0
    83004d2c:	1e0080e7          	jalr	480(ra) # 83004f08 <__assert_func>

0000000083004d30 <_wait>:
    83004d30:	ff010113          	addi	sp,sp,-16
    83004d34:	00001697          	auipc	a3,0x1
    83004d38:	b9468693          	addi	a3,a3,-1132 # 830058c8 <zeroes.4462+0x10>
    83004d3c:	00003617          	auipc	a2,0x3
    83004d40:	bbc60613          	addi	a2,a2,-1092 # 830078f8 <__func__.1990>
    83004d44:	08c00593          	li	a1,140
    83004d48:	00001517          	auipc	a0,0x1
    83004d4c:	b8850513          	addi	a0,a0,-1144 # 830058d0 <zeroes.4462+0x18>
    83004d50:	00113423          	sd	ra,8(sp)
    83004d54:	00000097          	auipc	ra,0x0
    83004d58:	1b4080e7          	jalr	436(ra) # 83004f08 <__assert_func>

0000000083004d5c <_times>:
    83004d5c:	ff010113          	addi	sp,sp,-16
    83004d60:	00001697          	auipc	a3,0x1
    83004d64:	b6868693          	addi	a3,a3,-1176 # 830058c8 <zeroes.4462+0x10>
    83004d68:	00003617          	auipc	a2,0x3
    83004d6c:	b8860613          	addi	a2,a2,-1144 # 830078f0 <__func__.1994>
    83004d70:	09100593          	li	a1,145
    83004d74:	00001517          	auipc	a0,0x1
    83004d78:	b5c50513          	addi	a0,a0,-1188 # 830058d0 <zeroes.4462+0x18>
    83004d7c:	00113423          	sd	ra,8(sp)
    83004d80:	00000097          	auipc	ra,0x0
    83004d84:	188080e7          	jalr	392(ra) # 83004f08 <__assert_func>

0000000083004d88 <pipe>:
    83004d88:	ff010113          	addi	sp,sp,-16
    83004d8c:	00001697          	auipc	a3,0x1
    83004d90:	b3c68693          	addi	a3,a3,-1220 # 830058c8 <zeroes.4462+0x10>
    83004d94:	00003617          	auipc	a2,0x3
    83004d98:	b5460613          	addi	a2,a2,-1196 # 830078e8 <__func__.1998>
    83004d9c:	09600593          	li	a1,150
    83004da0:	00001517          	auipc	a0,0x1
    83004da4:	b3050513          	addi	a0,a0,-1232 # 830058d0 <zeroes.4462+0x18>
    83004da8:	00113423          	sd	ra,8(sp)
    83004dac:	00000097          	auipc	ra,0x0
    83004db0:	15c080e7          	jalr	348(ra) # 83004f08 <__assert_func>

0000000083004db4 <dup>:
    83004db4:	ff010113          	addi	sp,sp,-16
    83004db8:	00001697          	auipc	a3,0x1
    83004dbc:	b1068693          	addi	a3,a3,-1264 # 830058c8 <zeroes.4462+0x10>
    83004dc0:	00003617          	auipc	a2,0x3
    83004dc4:	b2060613          	addi	a2,a2,-1248 # 830078e0 <__func__.2002>
    83004dc8:	09b00593          	li	a1,155
    83004dcc:	00001517          	auipc	a0,0x1
    83004dd0:	b0450513          	addi	a0,a0,-1276 # 830058d0 <zeroes.4462+0x18>
    83004dd4:	00113423          	sd	ra,8(sp)
    83004dd8:	00000097          	auipc	ra,0x0
    83004ddc:	130080e7          	jalr	304(ra) # 83004f08 <__assert_func>

0000000083004de0 <dup2>:
    83004de0:	fff00513          	li	a0,-1
    83004de4:	00008067          	ret

0000000083004de8 <sleep>:
    83004de8:	ff010113          	addi	sp,sp,-16
    83004dec:	00001697          	auipc	a3,0x1
    83004df0:	adc68693          	addi	a3,a3,-1316 # 830058c8 <zeroes.4462+0x10>
    83004df4:	00003617          	auipc	a2,0x3
    83004df8:	ae460613          	addi	a2,a2,-1308 # 830078d8 <__func__.2010>
    83004dfc:	0a400593          	li	a1,164
    83004e00:	00001517          	auipc	a0,0x1
    83004e04:	ad050513          	addi	a0,a0,-1328 # 830058d0 <zeroes.4462+0x18>
    83004e08:	00113423          	sd	ra,8(sp)
    83004e0c:	00000097          	auipc	ra,0x0
    83004e10:	0fc080e7          	jalr	252(ra) # 83004f08 <__assert_func>

0000000083004e14 <readlink>:
    83004e14:	ff010113          	addi	sp,sp,-16
    83004e18:	00001697          	auipc	a3,0x1
    83004e1c:	ab068693          	addi	a3,a3,-1360 # 830058c8 <zeroes.4462+0x10>
    83004e20:	00001617          	auipc	a2,0x1
    83004e24:	af060613          	addi	a2,a2,-1296 # 83005910 <__func__.2016>
    83004e28:	0a900593          	li	a1,169
    83004e2c:	00001517          	auipc	a0,0x1
    83004e30:	aa450513          	addi	a0,a0,-1372 # 830058d0 <zeroes.4462+0x18>
    83004e34:	00113423          	sd	ra,8(sp)
    83004e38:	00000097          	auipc	ra,0x0
    83004e3c:	0d0080e7          	jalr	208(ra) # 83004f08 <__assert_func>

0000000083004e40 <symlink>:
    83004e40:	ff010113          	addi	sp,sp,-16
    83004e44:	00001697          	auipc	a3,0x1
    83004e48:	a8468693          	addi	a3,a3,-1404 # 830058c8 <zeroes.4462+0x10>
    83004e4c:	00003617          	auipc	a2,0x3
    83004e50:	a8460613          	addi	a2,a2,-1404 # 830078d0 <__func__.2021>
    83004e54:	0ae00593          	li	a1,174
    83004e58:	00001517          	auipc	a0,0x1
    83004e5c:	a7850513          	addi	a0,a0,-1416 # 830058d0 <zeroes.4462+0x18>
    83004e60:	00113423          	sd	ra,8(sp)
    83004e64:	00000097          	auipc	ra,0x0
    83004e68:	0a4080e7          	jalr	164(ra) # 83004f08 <__assert_func>

0000000083004e6c <ioctl>:
    83004e6c:	fd010113          	addi	sp,sp,-48
    83004e70:	00c13023          	sd	a2,0(sp)
    83004e74:	00d13423          	sd	a3,8(sp)
    83004e78:	00e13823          	sd	a4,16(sp)
    83004e7c:	00f13c23          	sd	a5,24(sp)
    83004e80:	03013023          	sd	a6,32(sp)
    83004e84:	03113423          	sd	a7,40(sp)
    83004e88:	fff00513          	li	a0,-1
    83004e8c:	03010113          	addi	sp,sp,48
    83004e90:	00008067          	ret

0000000083004e94 <_start>:
    83004e94:	00000413          	li	s0,0
    83004e98:	004000ef          	jal	ra,83004e9c <call_main>

0000000083004e9c <call_main>:
    83004e9c:	fe010113          	addi	sp,sp,-32
    83004ea0:	00810613          	addi	a2,sp,8
    83004ea4:	00060593          	mv	a1,a2
    83004ea8:	00000513          	li	a0,0
    83004eac:	00113c23          	sd	ra,24(sp)
    83004eb0:	00003797          	auipc	a5,0x3
    83004eb4:	a8c7b823          	sd	a2,-1392(a5) # 83007940 <environ>
    83004eb8:	00013423          	sd	zero,8(sp)
    83004ebc:	ffffb097          	auipc	ra,0xffffb
    83004ec0:	22c080e7          	jalr	556(ra) # 830000e8 <main>
    83004ec4:	00000097          	auipc	ra,0x0
    83004ec8:	008080e7          	jalr	8(ra) # 83004ecc <exit>

0000000083004ecc <exit>:
    83004ecc:	ff010113          	addi	sp,sp,-16
    83004ed0:	00000593          	li	a1,0
    83004ed4:	00813023          	sd	s0,0(sp)
    83004ed8:	00113423          	sd	ra,8(sp)
    83004edc:	00050413          	mv	s0,a0
    83004ee0:	00000097          	auipc	ra,0x0
    83004ee4:	0a0080e7          	jalr	160(ra) # 83004f80 <__call_exitprocs>
    83004ee8:	00003517          	auipc	a0,0x3
    83004eec:	9e053503          	ld	a0,-1568(a0) # 830078c8 <_global_impure_ptr>
    83004ef0:	05853783          	ld	a5,88(a0)
    83004ef4:	00078463          	beqz	a5,83004efc <exit+0x30>
    83004ef8:	000780e7          	jalr	a5
    83004efc:	00040513          	mv	a0,s0
    83004f00:	00000097          	auipc	ra,0x0
    83004f04:	c7c080e7          	jalr	-900(ra) # 83004b7c <_exit>

0000000083004f08 <__assert_func>:
    83004f08:	ff010113          	addi	sp,sp,-16
    83004f0c:	00068793          	mv	a5,a3
    83004f10:	00003717          	auipc	a4,0x3
    83004f14:	a1873703          	ld	a4,-1512(a4) # 83007928 <_impure_ptr>
    83004f18:	00060813          	mv	a6,a2
    83004f1c:	00113423          	sd	ra,8(sp)
    83004f20:	01873883          	ld	a7,24(a4)
    83004f24:	00078613          	mv	a2,a5
    83004f28:	00050693          	mv	a3,a0
    83004f2c:	00058713          	mv	a4,a1
    83004f30:	00001797          	auipc	a5,0x1
    83004f34:	9f078793          	addi	a5,a5,-1552 # 83005920 <__func__.2016+0x10>
    83004f38:	02080063          	beqz	a6,83004f58 <__assert_func+0x50>
    83004f3c:	00001597          	auipc	a1,0x1
    83004f40:	9f458593          	addi	a1,a1,-1548 # 83005930 <__func__.2016+0x20>
    83004f44:	00088513          	mv	a0,a7
    83004f48:	00000097          	auipc	ra,0x0
    83004f4c:	1c0080e7          	jalr	448(ra) # 83005108 <fiprintf>
    83004f50:	00000097          	auipc	ra,0x0
    83004f54:	15c080e7          	jalr	348(ra) # 830050ac <abort>
    83004f58:	00000797          	auipc	a5,0x0
    83004f5c:	63878793          	addi	a5,a5,1592 # 83005590 <_getpid_r+0x5c>
    83004f60:	00078813          	mv	a6,a5
    83004f64:	fd9ff06f          	j	83004f3c <__assert_func+0x34>

0000000083004f68 <__assert>:
    83004f68:	ff010113          	addi	sp,sp,-16
    83004f6c:	00060693          	mv	a3,a2
    83004f70:	00000613          	li	a2,0
    83004f74:	00113423          	sd	ra,8(sp)
    83004f78:	00000097          	auipc	ra,0x0
    83004f7c:	f90080e7          	jalr	-112(ra) # 83004f08 <__assert_func>

0000000083004f80 <__call_exitprocs>:
    83004f80:	fb010113          	addi	sp,sp,-80
    83004f84:	03413023          	sd	s4,32(sp)
    83004f88:	00003a17          	auipc	s4,0x3
    83004f8c:	940a3a03          	ld	s4,-1728(s4) # 830078c8 <_global_impure_ptr>
    83004f90:	03213823          	sd	s2,48(sp)
    83004f94:	1f8a3903          	ld	s2,504(s4)
    83004f98:	04113423          	sd	ra,72(sp)
    83004f9c:	04813023          	sd	s0,64(sp)
    83004fa0:	02913c23          	sd	s1,56(sp)
    83004fa4:	03313423          	sd	s3,40(sp)
    83004fa8:	01513c23          	sd	s5,24(sp)
    83004fac:	01613823          	sd	s6,16(sp)
    83004fb0:	01713423          	sd	s7,8(sp)
    83004fb4:	01813023          	sd	s8,0(sp)
    83004fb8:	04090063          	beqz	s2,83004ff8 <__call_exitprocs+0x78>
    83004fbc:	00050b13          	mv	s6,a0
    83004fc0:	00058b93          	mv	s7,a1
    83004fc4:	00100a93          	li	s5,1
    83004fc8:	fff00993          	li	s3,-1
    83004fcc:	00892483          	lw	s1,8(s2)
    83004fd0:	fff4841b          	addiw	s0,s1,-1
    83004fd4:	02044263          	bltz	s0,83004ff8 <__call_exitprocs+0x78>
    83004fd8:	00349493          	slli	s1,s1,0x3
    83004fdc:	009904b3          	add	s1,s2,s1
    83004fe0:	040b8463          	beqz	s7,83005028 <__call_exitprocs+0xa8>
    83004fe4:	2084b783          	ld	a5,520(s1)
    83004fe8:	05778063          	beq	a5,s7,83005028 <__call_exitprocs+0xa8>
    83004fec:	fff4041b          	addiw	s0,s0,-1
    83004ff0:	ff848493          	addi	s1,s1,-8
    83004ff4:	ff3416e3          	bne	s0,s3,83004fe0 <__call_exitprocs+0x60>
    83004ff8:	04813083          	ld	ra,72(sp)
    83004ffc:	04013403          	ld	s0,64(sp)
    83005000:	03813483          	ld	s1,56(sp)
    83005004:	03013903          	ld	s2,48(sp)
    83005008:	02813983          	ld	s3,40(sp)
    8300500c:	02013a03          	ld	s4,32(sp)
    83005010:	01813a83          	ld	s5,24(sp)
    83005014:	01013b03          	ld	s6,16(sp)
    83005018:	00813b83          	ld	s7,8(sp)
    8300501c:	00013c03          	ld	s8,0(sp)
    83005020:	05010113          	addi	sp,sp,80
    83005024:	00008067          	ret
    83005028:	00892783          	lw	a5,8(s2)
    8300502c:	0084b703          	ld	a4,8(s1)
    83005030:	fff7879b          	addiw	a5,a5,-1
    83005034:	06878263          	beq	a5,s0,83005098 <__call_exitprocs+0x118>
    83005038:	0004b423          	sd	zero,8(s1)
    8300503c:	fa0708e3          	beqz	a4,83004fec <__call_exitprocs+0x6c>
    83005040:	31092783          	lw	a5,784(s2)
    83005044:	008a96bb          	sllw	a3,s5,s0
    83005048:	00892c03          	lw	s8,8(s2)
    8300504c:	00d7f7b3          	and	a5,a5,a3
    83005050:	0007879b          	sext.w	a5,a5
    83005054:	02079263          	bnez	a5,83005078 <__call_exitprocs+0xf8>
    83005058:	000700e7          	jalr	a4
    8300505c:	00892703          	lw	a4,8(s2)
    83005060:	1f8a3783          	ld	a5,504(s4)
    83005064:	01871463          	bne	a4,s8,8300506c <__call_exitprocs+0xec>
    83005068:	f8f902e3          	beq	s2,a5,83004fec <__call_exitprocs+0x6c>
    8300506c:	f80786e3          	beqz	a5,83004ff8 <__call_exitprocs+0x78>
    83005070:	00078913          	mv	s2,a5
    83005074:	f59ff06f          	j	83004fcc <__call_exitprocs+0x4c>
    83005078:	31492783          	lw	a5,788(s2)
    8300507c:	1084b583          	ld	a1,264(s1)
    83005080:	00d7f7b3          	and	a5,a5,a3
    83005084:	0007879b          	sext.w	a5,a5
    83005088:	00079c63          	bnez	a5,830050a0 <__call_exitprocs+0x120>
    8300508c:	000b0513          	mv	a0,s6
    83005090:	000700e7          	jalr	a4
    83005094:	fc9ff06f          	j	8300505c <__call_exitprocs+0xdc>
    83005098:	00892423          	sw	s0,8(s2)
    8300509c:	fa1ff06f          	j	8300503c <__call_exitprocs+0xbc>
    830050a0:	00058513          	mv	a0,a1
    830050a4:	000700e7          	jalr	a4
    830050a8:	fb5ff06f          	j	8300505c <__call_exitprocs+0xdc>

00000000830050ac <abort>:
    830050ac:	ff010113          	addi	sp,sp,-16
    830050b0:	00600513          	li	a0,6
    830050b4:	00113423          	sd	ra,8(sp)
    830050b8:	00000097          	auipc	ra,0x0
    830050bc:	338080e7          	jalr	824(ra) # 830053f0 <raise>
    830050c0:	00100513          	li	a0,1
    830050c4:	00000097          	auipc	ra,0x0
    830050c8:	ab8080e7          	jalr	-1352(ra) # 83004b7c <_exit>

00000000830050cc <_fiprintf_r>:
    830050cc:	fb010113          	addi	sp,sp,-80
    830050d0:	02810313          	addi	t1,sp,40
    830050d4:	02d13423          	sd	a3,40(sp)
    830050d8:	00030693          	mv	a3,t1
    830050dc:	00113c23          	sd	ra,24(sp)
    830050e0:	02e13823          	sd	a4,48(sp)
    830050e4:	02f13c23          	sd	a5,56(sp)
    830050e8:	05013023          	sd	a6,64(sp)
    830050ec:	05113423          	sd	a7,72(sp)
    830050f0:	00613423          	sd	t1,8(sp)
    830050f4:	ffffc097          	auipc	ra,0xffffc
    830050f8:	fec080e7          	jalr	-20(ra) # 830010e0 <_vfiprintf_r>
    830050fc:	01813083          	ld	ra,24(sp)
    83005100:	05010113          	addi	sp,sp,80
    83005104:	00008067          	ret

0000000083005108 <fiprintf>:
    83005108:	fb010113          	addi	sp,sp,-80
    8300510c:	02010313          	addi	t1,sp,32
    83005110:	02c13023          	sd	a2,32(sp)
    83005114:	02d13423          	sd	a3,40(sp)
    83005118:	00058613          	mv	a2,a1
    8300511c:	00030693          	mv	a3,t1
    83005120:	00050593          	mv	a1,a0
    83005124:	00003517          	auipc	a0,0x3
    83005128:	80453503          	ld	a0,-2044(a0) # 83007928 <_impure_ptr>
    8300512c:	00113c23          	sd	ra,24(sp)
    83005130:	02e13823          	sd	a4,48(sp)
    83005134:	02f13c23          	sd	a5,56(sp)
    83005138:	05013023          	sd	a6,64(sp)
    8300513c:	05113423          	sd	a7,72(sp)
    83005140:	00613423          	sd	t1,8(sp)
    83005144:	ffffc097          	auipc	ra,0xffffc
    83005148:	f9c080e7          	jalr	-100(ra) # 830010e0 <_vfiprintf_r>
    8300514c:	01813083          	ld	ra,24(sp)
    83005150:	05010113          	addi	sp,sp,80
    83005154:	00008067          	ret

0000000083005158 <_init_signal_r.part.0>:
    83005158:	ff010113          	addi	sp,sp,-16
    8300515c:	10000593          	li	a1,256
    83005160:	00813023          	sd	s0,0(sp)
    83005164:	00113423          	sd	ra,8(sp)
    83005168:	00050413          	mv	s0,a0
    8300516c:	ffffd097          	auipc	ra,0xffffd
    83005170:	bd8080e7          	jalr	-1064(ra) # 83001d44 <_malloc_r>
    83005174:	50a43c23          	sd	a0,1304(s0)
    83005178:	02050463          	beqz	a0,830051a0 <_init_signal_r.part.0+0x48>
    8300517c:	10050793          	addi	a5,a0,256
    83005180:	00053023          	sd	zero,0(a0)
    83005184:	00850513          	addi	a0,a0,8
    83005188:	fef51ce3          	bne	a0,a5,83005180 <_init_signal_r.part.0+0x28>
    8300518c:	00000513          	li	a0,0
    83005190:	00813083          	ld	ra,8(sp)
    83005194:	00013403          	ld	s0,0(sp)
    83005198:	01010113          	addi	sp,sp,16
    8300519c:	00008067          	ret
    830051a0:	fff00513          	li	a0,-1
    830051a4:	fedff06f          	j	83005190 <_init_signal_r.part.0+0x38>

00000000830051a8 <_init_signal_r>:
    830051a8:	51853783          	ld	a5,1304(a0)
    830051ac:	00078663          	beqz	a5,830051b8 <_init_signal_r+0x10>
    830051b0:	00000513          	li	a0,0
    830051b4:	00008067          	ret
    830051b8:	00000317          	auipc	t1,0x0
    830051bc:	fa030067          	jr	-96(t1) # 83005158 <_init_signal_r.part.0>

00000000830051c0 <_signal_r>:
    830051c0:	fd010113          	addi	sp,sp,-48
    830051c4:	00913c23          	sd	s1,24(sp)
    830051c8:	02113423          	sd	ra,40(sp)
    830051cc:	02813023          	sd	s0,32(sp)
    830051d0:	01f00793          	li	a5,31
    830051d4:	00050493          	mv	s1,a0
    830051d8:	02b7ea63          	bltu	a5,a1,8300520c <_signal_r+0x4c>
    830051dc:	00058413          	mv	s0,a1
    830051e0:	51853583          	ld	a1,1304(a0)
    830051e4:	04058463          	beqz	a1,8300522c <_signal_r+0x6c>
    830051e8:	00341413          	slli	s0,s0,0x3
    830051ec:	00858433          	add	s0,a1,s0
    830051f0:	00043503          	ld	a0,0(s0)
    830051f4:	00c43023          	sd	a2,0(s0)
    830051f8:	02813083          	ld	ra,40(sp)
    830051fc:	02013403          	ld	s0,32(sp)
    83005200:	01813483          	ld	s1,24(sp)
    83005204:	03010113          	addi	sp,sp,48
    83005208:	00008067          	ret
    8300520c:	02813083          	ld	ra,40(sp)
    83005210:	02013403          	ld	s0,32(sp)
    83005214:	01600793          	li	a5,22
    83005218:	00f52023          	sw	a5,0(a0)
    8300521c:	01813483          	ld	s1,24(sp)
    83005220:	fff00513          	li	a0,-1
    83005224:	03010113          	addi	sp,sp,48
    83005228:	00008067          	ret
    8300522c:	00c13423          	sd	a2,8(sp)
    83005230:	00000097          	auipc	ra,0x0
    83005234:	f28080e7          	jalr	-216(ra) # 83005158 <_init_signal_r.part.0>
    83005238:	00050793          	mv	a5,a0
    8300523c:	fff00513          	li	a0,-1
    83005240:	fa079ce3          	bnez	a5,830051f8 <_signal_r+0x38>
    83005244:	5184b583          	ld	a1,1304(s1)
    83005248:	00813603          	ld	a2,8(sp)
    8300524c:	f9dff06f          	j	830051e8 <_signal_r+0x28>

0000000083005250 <_raise_r>:
    83005250:	fe010113          	addi	sp,sp,-32
    83005254:	00913423          	sd	s1,8(sp)
    83005258:	00113c23          	sd	ra,24(sp)
    8300525c:	00813823          	sd	s0,16(sp)
    83005260:	01f00793          	li	a5,31
    83005264:	00050493          	mv	s1,a0
    83005268:	0ab7ee63          	bltu	a5,a1,83005324 <_raise_r+0xd4>
    8300526c:	51853783          	ld	a5,1304(a0)
    83005270:	00058413          	mv	s0,a1
    83005274:	04078463          	beqz	a5,830052bc <_raise_r+0x6c>
    83005278:	00359713          	slli	a4,a1,0x3
    8300527c:	00e787b3          	add	a5,a5,a4
    83005280:	0007b703          	ld	a4,0(a5)
    83005284:	02070c63          	beqz	a4,830052bc <_raise_r+0x6c>
    83005288:	00100693          	li	a3,1
    8300528c:	08d70063          	beq	a4,a3,8300530c <_raise_r+0xbc>
    83005290:	fff00693          	li	a3,-1
    83005294:	04d70c63          	beq	a4,a3,830052ec <_raise_r+0x9c>
    83005298:	00058513          	mv	a0,a1
    8300529c:	0007b023          	sd	zero,0(a5)
    830052a0:	000700e7          	jalr	a4
    830052a4:	00000513          	li	a0,0
    830052a8:	01813083          	ld	ra,24(sp)
    830052ac:	01013403          	ld	s0,16(sp)
    830052b0:	00813483          	ld	s1,8(sp)
    830052b4:	02010113          	addi	sp,sp,32
    830052b8:	00008067          	ret
    830052bc:	00048513          	mv	a0,s1
    830052c0:	00000097          	auipc	ra,0x0
    830052c4:	274080e7          	jalr	628(ra) # 83005534 <_getpid_r>
    830052c8:	00040613          	mv	a2,s0
    830052cc:	01013403          	ld	s0,16(sp)
    830052d0:	01813083          	ld	ra,24(sp)
    830052d4:	00050593          	mv	a1,a0
    830052d8:	00048513          	mv	a0,s1
    830052dc:	00813483          	ld	s1,8(sp)
    830052e0:	02010113          	addi	sp,sp,32
    830052e4:	00000317          	auipc	t1,0x0
    830052e8:	1ec30067          	jr	492(t1) # 830054d0 <_kill_r>
    830052ec:	01813083          	ld	ra,24(sp)
    830052f0:	01013403          	ld	s0,16(sp)
    830052f4:	01600793          	li	a5,22
    830052f8:	00f52023          	sw	a5,0(a0)
    830052fc:	00813483          	ld	s1,8(sp)
    83005300:	00100513          	li	a0,1
    83005304:	02010113          	addi	sp,sp,32
    83005308:	00008067          	ret
    8300530c:	01813083          	ld	ra,24(sp)
    83005310:	01013403          	ld	s0,16(sp)
    83005314:	00813483          	ld	s1,8(sp)
    83005318:	00000513          	li	a0,0
    8300531c:	02010113          	addi	sp,sp,32
    83005320:	00008067          	ret
    83005324:	01600793          	li	a5,22
    83005328:	00f52023          	sw	a5,0(a0)
    8300532c:	fff00513          	li	a0,-1
    83005330:	f79ff06f          	j	830052a8 <_raise_r+0x58>

0000000083005334 <__sigtramp_r>:
    83005334:	01f00793          	li	a5,31
    83005338:	0ab7e863          	bltu	a5,a1,830053e8 <__sigtramp_r+0xb4>
    8300533c:	51853783          	ld	a5,1304(a0)
    83005340:	fe010113          	addi	sp,sp,-32
    83005344:	00913823          	sd	s1,16(sp)
    83005348:	00113c23          	sd	ra,24(sp)
    8300534c:	00050493          	mv	s1,a0
    83005350:	04078c63          	beqz	a5,830053a8 <__sigtramp_r+0x74>
    83005354:	00359713          	slli	a4,a1,0x3
    83005358:	00e787b3          	add	a5,a5,a4
    8300535c:	0007b703          	ld	a4,0(a5)
    83005360:	02070a63          	beqz	a4,83005394 <__sigtramp_r+0x60>
    83005364:	fff00693          	li	a3,-1
    83005368:	06d70863          	beq	a4,a3,830053d8 <__sigtramp_r+0xa4>
    8300536c:	00100693          	li	a3,1
    83005370:	04d70a63          	beq	a4,a3,830053c4 <__sigtramp_r+0x90>
    83005374:	00058513          	mv	a0,a1
    83005378:	0007b023          	sd	zero,0(a5)
    8300537c:	000700e7          	jalr	a4
    83005380:	00000513          	li	a0,0
    83005384:	01813083          	ld	ra,24(sp)
    83005388:	01013483          	ld	s1,16(sp)
    8300538c:	02010113          	addi	sp,sp,32
    83005390:	00008067          	ret
    83005394:	01813083          	ld	ra,24(sp)
    83005398:	01013483          	ld	s1,16(sp)
    8300539c:	00100513          	li	a0,1
    830053a0:	02010113          	addi	sp,sp,32
    830053a4:	00008067          	ret
    830053a8:	00b13423          	sd	a1,8(sp)
    830053ac:	00000097          	auipc	ra,0x0
    830053b0:	dac080e7          	jalr	-596(ra) # 83005158 <_init_signal_r.part.0>
    830053b4:	02051663          	bnez	a0,830053e0 <__sigtramp_r+0xac>
    830053b8:	5184b783          	ld	a5,1304(s1)
    830053bc:	00813583          	ld	a1,8(sp)
    830053c0:	f95ff06f          	j	83005354 <__sigtramp_r+0x20>
    830053c4:	01813083          	ld	ra,24(sp)
    830053c8:	01013483          	ld	s1,16(sp)
    830053cc:	00300513          	li	a0,3
    830053d0:	02010113          	addi	sp,sp,32
    830053d4:	00008067          	ret
    830053d8:	00200513          	li	a0,2
    830053dc:	fa9ff06f          	j	83005384 <__sigtramp_r+0x50>
    830053e0:	fff00513          	li	a0,-1
    830053e4:	fa1ff06f          	j	83005384 <__sigtramp_r+0x50>
    830053e8:	fff00513          	li	a0,-1
    830053ec:	00008067          	ret

00000000830053f0 <raise>:
    830053f0:	00050593          	mv	a1,a0
    830053f4:	00002517          	auipc	a0,0x2
    830053f8:	53453503          	ld	a0,1332(a0) # 83007928 <_impure_ptr>
    830053fc:	00000317          	auipc	t1,0x0
    83005400:	e5430067          	jr	-428(t1) # 83005250 <_raise_r>

0000000083005404 <signal>:
    83005404:	fd010113          	addi	sp,sp,-48
    83005408:	00913c23          	sd	s1,24(sp)
    8300540c:	02113423          	sd	ra,40(sp)
    83005410:	02813023          	sd	s0,32(sp)
    83005414:	01f00793          	li	a5,31
    83005418:	00002497          	auipc	s1,0x2
    8300541c:	5104b483          	ld	s1,1296(s1) # 83007928 <_impure_ptr>
    83005420:	02a7ea63          	bltu	a5,a0,83005454 <signal+0x50>
    83005424:	00050413          	mv	s0,a0
    83005428:	5184b503          	ld	a0,1304(s1)
    8300542c:	04050463          	beqz	a0,83005474 <signal+0x70>
    83005430:	00341413          	slli	s0,s0,0x3
    83005434:	00850433          	add	s0,a0,s0
    83005438:	00043503          	ld	a0,0(s0)
    8300543c:	00b43023          	sd	a1,0(s0)
    83005440:	02813083          	ld	ra,40(sp)
    83005444:	02013403          	ld	s0,32(sp)
    83005448:	01813483          	ld	s1,24(sp)
    8300544c:	03010113          	addi	sp,sp,48
    83005450:	00008067          	ret
    83005454:	02813083          	ld	ra,40(sp)
    83005458:	02013403          	ld	s0,32(sp)
    8300545c:	01600793          	li	a5,22
    83005460:	00f4a023          	sw	a5,0(s1)
    83005464:	fff00513          	li	a0,-1
    83005468:	01813483          	ld	s1,24(sp)
    8300546c:	03010113          	addi	sp,sp,48
    83005470:	00008067          	ret
    83005474:	00048513          	mv	a0,s1
    83005478:	00b13423          	sd	a1,8(sp)
    8300547c:	00000097          	auipc	ra,0x0
    83005480:	cdc080e7          	jalr	-804(ra) # 83005158 <_init_signal_r.part.0>
    83005484:	00050793          	mv	a5,a0
    83005488:	fff00513          	li	a0,-1
    8300548c:	fa079ae3          	bnez	a5,83005440 <signal+0x3c>
    83005490:	5184b503          	ld	a0,1304(s1)
    83005494:	00813583          	ld	a1,8(sp)
    83005498:	f99ff06f          	j	83005430 <signal+0x2c>

000000008300549c <_init_signal>:
    8300549c:	00002517          	auipc	a0,0x2
    830054a0:	48c53503          	ld	a0,1164(a0) # 83007928 <_impure_ptr>
    830054a4:	51853783          	ld	a5,1304(a0)
    830054a8:	00078663          	beqz	a5,830054b4 <_init_signal+0x18>
    830054ac:	00000513          	li	a0,0
    830054b0:	00008067          	ret
    830054b4:	00000317          	auipc	t1,0x0
    830054b8:	ca430067          	jr	-860(t1) # 83005158 <_init_signal_r.part.0>

00000000830054bc <__sigtramp>:
    830054bc:	00050593          	mv	a1,a0
    830054c0:	00002517          	auipc	a0,0x2
    830054c4:	46853503          	ld	a0,1128(a0) # 83007928 <_impure_ptr>
    830054c8:	00000317          	auipc	t1,0x0
    830054cc:	e6c30067          	jr	-404(t1) # 83005334 <__sigtramp_r>

00000000830054d0 <_kill_r>:
    830054d0:	ff010113          	addi	sp,sp,-16
    830054d4:	00058713          	mv	a4,a1
    830054d8:	00813023          	sd	s0,0(sp)
    830054dc:	00060593          	mv	a1,a2
    830054e0:	00050413          	mv	s0,a0
    830054e4:	00070513          	mv	a0,a4
    830054e8:	00002797          	auipc	a5,0x2
    830054ec:	4a07a423          	sw	zero,1192(a5) # 83007990 <errno>
    830054f0:	00113423          	sd	ra,8(sp)
    830054f4:	fffff097          	auipc	ra,0xfffff
    830054f8:	764080e7          	jalr	1892(ra) # 83004c58 <_kill>
    830054fc:	fff00793          	li	a5,-1
    83005500:	00f50a63          	beq	a0,a5,83005514 <_kill_r+0x44>
    83005504:	00813083          	ld	ra,8(sp)
    83005508:	00013403          	ld	s0,0(sp)
    8300550c:	01010113          	addi	sp,sp,16
    83005510:	00008067          	ret
    83005514:	00002797          	auipc	a5,0x2
    83005518:	47c7a783          	lw	a5,1148(a5) # 83007990 <errno>
    8300551c:	fe0784e3          	beqz	a5,83005504 <_kill_r+0x34>
    83005520:	00813083          	ld	ra,8(sp)
    83005524:	00f42023          	sw	a5,0(s0)
    83005528:	00013403          	ld	s0,0(sp)
    8300552c:	01010113          	addi	sp,sp,16
    83005530:	00008067          	ret

0000000083005534 <_getpid_r>:
    83005534:	fffff317          	auipc	t1,0xfffff
    83005538:	73830067          	jr	1848(t1) # 83004c6c <_getpid>
