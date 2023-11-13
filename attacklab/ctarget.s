
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 5f 00 00 	mov    0x5fe9(%rip),%rax        # 406ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	push   0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 5f 00 00 	bnd jmp *0x5fe3(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64 
  401104:	68 0d 00 00 00       	push   $0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmp 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64 
  401114:	68 0e 00 00 00       	push   $0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmp 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64 
  401124:	68 0f 00 00 00       	push   $0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmp 401020 <.plt>
  40112f:	90                   	nop
  401130:	f3 0f 1e fa          	endbr64 
  401134:	68 10 00 00 00       	push   $0x10
  401139:	f2 e9 e1 fe ff ff    	bnd jmp 401020 <.plt>
  40113f:	90                   	nop
  401140:	f3 0f 1e fa          	endbr64 
  401144:	68 11 00 00 00       	push   $0x11
  401149:	f2 e9 d1 fe ff ff    	bnd jmp 401020 <.plt>
  40114f:	90                   	nop
  401150:	f3 0f 1e fa          	endbr64 
  401154:	68 12 00 00 00       	push   $0x12
  401159:	f2 e9 c1 fe ff ff    	bnd jmp 401020 <.plt>
  40115f:	90                   	nop
  401160:	f3 0f 1e fa          	endbr64 
  401164:	68 13 00 00 00       	push   $0x13
  401169:	f2 e9 b1 fe ff ff    	bnd jmp 401020 <.plt>
  40116f:	90                   	nop
  401170:	f3 0f 1e fa          	endbr64 
  401174:	68 14 00 00 00       	push   $0x14
  401179:	f2 e9 a1 fe ff ff    	bnd jmp 401020 <.plt>
  40117f:	90                   	nop
  401180:	f3 0f 1e fa          	endbr64 
  401184:	68 15 00 00 00       	push   $0x15
  401189:	f2 e9 91 fe ff ff    	bnd jmp 401020 <.plt>
  40118f:	90                   	nop
  401190:	f3 0f 1e fa          	endbr64 
  401194:	68 16 00 00 00       	push   $0x16
  401199:	f2 e9 81 fe ff ff    	bnd jmp 401020 <.plt>
  40119f:	90                   	nop
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	68 17 00 00 00       	push   $0x17
  4011a9:	f2 e9 71 fe ff ff    	bnd jmp 401020 <.plt>
  4011af:	90                   	nop
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	68 18 00 00 00       	push   $0x18
  4011b9:	f2 e9 61 fe ff ff    	bnd jmp 401020 <.plt>
  4011bf:	90                   	nop
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	68 19 00 00 00       	push   $0x19
  4011c9:	f2 e9 51 fe ff ff    	bnd jmp 401020 <.plt>
  4011cf:	90                   	nop
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	68 1a 00 00 00       	push   $0x1a
  4011d9:	f2 e9 41 fe ff ff    	bnd jmp 401020 <.plt>
  4011df:	90                   	nop
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	68 1b 00 00 00       	push   $0x1b
  4011e9:	f2 e9 31 fe ff ff    	bnd jmp 401020 <.plt>
  4011ef:	90                   	nop
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	68 1c 00 00 00       	push   $0x1c
  4011f9:	f2 e9 21 fe ff ff    	bnd jmp 401020 <.plt>
  4011ff:	90                   	nop
  401200:	f3 0f 1e fa          	endbr64 
  401204:	68 1d 00 00 00       	push   $0x1d
  401209:	f2 e9 11 fe ff ff    	bnd jmp 401020 <.plt>
  40120f:	90                   	nop
  401210:	f3 0f 1e fa          	endbr64 
  401214:	68 1e 00 00 00       	push   $0x1e
  401219:	f2 e9 01 fe ff ff    	bnd jmp 401020 <.plt>
  40121f:	90                   	nop
  401220:	f3 0f 1e fa          	endbr64 
  401224:	68 1f 00 00 00       	push   $0x1f
  401229:	f2 e9 f1 fd ff ff    	bnd jmp 401020 <.plt>
  40122f:	90                   	nop
  401230:	f3 0f 1e fa          	endbr64 
  401234:	68 20 00 00 00       	push   $0x20
  401239:	f2 e9 e1 fd ff ff    	bnd jmp 401020 <.plt>
  40123f:	90                   	nop
  401240:	f3 0f 1e fa          	endbr64 
  401244:	68 21 00 00 00       	push   $0x21
  401249:	f2 e9 d1 fd ff ff    	bnd jmp 401020 <.plt>
  40124f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401250 <strcasecmp@plt>:
  401250:	f3 0f 1e fa          	endbr64 
  401254:	f2 ff 25 bd 5d 00 00 	bnd jmp *0x5dbd(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <__errno_location@plt>:
  401260:	f3 0f 1e fa          	endbr64 
  401264:	f2 ff 25 b5 5d 00 00 	bnd jmp *0x5db5(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <srandom@plt>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	f2 ff 25 ad 5d 00 00 	bnd jmp *0x5dad(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401280 <strncpy@plt>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	f2 ff 25 a5 5d 00 00 	bnd jmp *0x5da5(%rip)        # 407030 <strncpy@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401290 <strncmp@plt>:
  401290:	f3 0f 1e fa          	endbr64 
  401294:	f2 ff 25 9d 5d 00 00 	bnd jmp *0x5d9d(%rip)        # 407038 <strncmp@GLIBC_2.2.5>
  40129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012a0 <strcpy@plt>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	f2 ff 25 95 5d 00 00 	bnd jmp *0x5d95(%rip)        # 407040 <strcpy@GLIBC_2.2.5>
  4012ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012b0 <puts@plt>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	f2 ff 25 8d 5d 00 00 	bnd jmp *0x5d8d(%rip)        # 407048 <puts@GLIBC_2.2.5>
  4012bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012c0 <write@plt>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	f2 ff 25 85 5d 00 00 	bnd jmp *0x5d85(%rip)        # 407050 <write@GLIBC_2.2.5>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012d0 <mmap@plt>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	f2 ff 25 7d 5d 00 00 	bnd jmp *0x5d7d(%rip)        # 407058 <mmap@GLIBC_2.2.5>
  4012db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012e0 <memset@plt>:
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	f2 ff 25 75 5d 00 00 	bnd jmp *0x5d75(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012f0 <alarm@plt>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	f2 ff 25 6d 5d 00 00 	bnd jmp *0x5d6d(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401300 <close@plt>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	f2 ff 25 65 5d 00 00 	bnd jmp *0x5d65(%rip)        # 407070 <close@GLIBC_2.2.5>
  40130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401310 <read@plt>:
  401310:	f3 0f 1e fa          	endbr64 
  401314:	f2 ff 25 5d 5d 00 00 	bnd jmp *0x5d5d(%rip)        # 407078 <read@GLIBC_2.2.5>
  40131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401320 <strcmp@plt>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	f2 ff 25 55 5d 00 00 	bnd jmp *0x5d55(%rip)        # 407080 <strcmp@GLIBC_2.2.5>
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401330 <signal@plt>:
  401330:	f3 0f 1e fa          	endbr64 
  401334:	f2 ff 25 4d 5d 00 00 	bnd jmp *0x5d4d(%rip)        # 407088 <signal@GLIBC_2.2.5>
  40133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401340 <gethostbyname@plt>:
  401340:	f3 0f 1e fa          	endbr64 
  401344:	f2 ff 25 45 5d 00 00 	bnd jmp *0x5d45(%rip)        # 407090 <gethostbyname@GLIBC_2.2.5>
  40134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401350 <__memmove_chk@plt>:
  401350:	f3 0f 1e fa          	endbr64 
  401354:	f2 ff 25 3d 5d 00 00 	bnd jmp *0x5d3d(%rip)        # 407098 <__memmove_chk@GLIBC_2.3.4>
  40135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401360 <strtol@plt>:
  401360:	f3 0f 1e fa          	endbr64 
  401364:	f2 ff 25 35 5d 00 00 	bnd jmp *0x5d35(%rip)        # 4070a0 <strtol@GLIBC_2.2.5>
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401370 <memcpy@plt>:
  401370:	f3 0f 1e fa          	endbr64 
  401374:	f2 ff 25 2d 5d 00 00 	bnd jmp *0x5d2d(%rip)        # 4070a8 <memcpy@GLIBC_2.14>
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401380 <time@plt>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	f2 ff 25 25 5d 00 00 	bnd jmp *0x5d25(%rip)        # 4070b0 <time@GLIBC_2.2.5>
  40138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401390 <random@plt>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	f2 ff 25 1d 5d 00 00 	bnd jmp *0x5d1d(%rip)        # 4070b8 <random@GLIBC_2.2.5>
  40139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013a0 <__isoc99_sscanf@plt>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	f2 ff 25 15 5d 00 00 	bnd jmp *0x5d15(%rip)        # 4070c0 <__isoc99_sscanf@GLIBC_2.7>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013b0 <munmap@plt>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	f2 ff 25 0d 5d 00 00 	bnd jmp *0x5d0d(%rip)        # 4070c8 <munmap@GLIBC_2.2.5>
  4013bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013c0 <__printf_chk@plt>:
  4013c0:	f3 0f 1e fa          	endbr64 
  4013c4:	f2 ff 25 05 5d 00 00 	bnd jmp *0x5d05(%rip)        # 4070d0 <__printf_chk@GLIBC_2.3.4>
  4013cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013d0 <fopen@plt>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	f2 ff 25 fd 5c 00 00 	bnd jmp *0x5cfd(%rip)        # 4070d8 <fopen@GLIBC_2.2.5>
  4013db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013e0 <getopt@plt>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	f2 ff 25 f5 5c 00 00 	bnd jmp *0x5cf5(%rip)        # 4070e0 <getopt@GLIBC_2.2.5>
  4013eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013f0 <strtoul@plt>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	f2 ff 25 ed 5c 00 00 	bnd jmp *0x5ced(%rip)        # 4070e8 <strtoul@GLIBC_2.2.5>
  4013fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401400 <gethostname@plt>:
  401400:	f3 0f 1e fa          	endbr64 
  401404:	f2 ff 25 e5 5c 00 00 	bnd jmp *0x5ce5(%rip)        # 4070f0 <gethostname@GLIBC_2.2.5>
  40140b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401410 <exit@plt>:
  401410:	f3 0f 1e fa          	endbr64 
  401414:	f2 ff 25 dd 5c 00 00 	bnd jmp *0x5cdd(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  40141b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401420 <connect@plt>:
  401420:	f3 0f 1e fa          	endbr64 
  401424:	f2 ff 25 d5 5c 00 00 	bnd jmp *0x5cd5(%rip)        # 407100 <connect@GLIBC_2.2.5>
  40142b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401430 <__fprintf_chk@plt>:
  401430:	f3 0f 1e fa          	endbr64 
  401434:	f2 ff 25 cd 5c 00 00 	bnd jmp *0x5ccd(%rip)        # 407108 <__fprintf_chk@GLIBC_2.3.4>
  40143b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401440 <getc@plt>:
  401440:	f3 0f 1e fa          	endbr64 
  401444:	f2 ff 25 c5 5c 00 00 	bnd jmp *0x5cc5(%rip)        # 407110 <getc@GLIBC_2.2.5>
  40144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401450 <__sprintf_chk@plt>:
  401450:	f3 0f 1e fa          	endbr64 
  401454:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 407118 <__sprintf_chk@GLIBC_2.3.4>
  40145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401460 <socket@plt>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 407120 <socket@GLIBC_2.2.5>
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401470 <_start>:
  401470:	f3 0f 1e fa          	endbr64 
  401474:	31 ed                	xor    %ebp,%ebp
  401476:	49 89 d1             	mov    %rdx,%r9
  401479:	5e                   	pop    %rsi
  40147a:	48 89 e2             	mov    %rsp,%rdx
  40147d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401481:	50                   	push   %rax
  401482:	54                   	push   %rsp
  401483:	49 c7 c0 60 38 40 00 	mov    $0x403860,%r8
  40148a:	48 c7 c1 f0 37 40 00 	mov    $0x4037f0,%rcx
  401491:	48 c7 c7 99 17 40 00 	mov    $0x401799,%rdi
  401498:	ff 15 52 5b 00 00    	call   *0x5b52(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40149e:	f4                   	hlt    
  40149f:	90                   	nop

00000000004014a0 <_dl_relocate_static_pie>:
  4014a0:	f3 0f 1e fa          	endbr64 
  4014a4:	c3                   	ret    
  4014a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4014ac:	00 00 00 
  4014af:	90                   	nop

00000000004014b0 <deregister_tm_clones>:
  4014b0:	b8 b0 74 40 00       	mov    $0x4074b0,%eax
  4014b5:	48 3d b0 74 40 00    	cmp    $0x4074b0,%rax
  4014bb:	74 13                	je     4014d0 <deregister_tm_clones+0x20>
  4014bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c2:	48 85 c0             	test   %rax,%rax
  4014c5:	74 09                	je     4014d0 <deregister_tm_clones+0x20>
  4014c7:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  4014cc:	ff e0                	jmp    *%rax
  4014ce:	66 90                	xchg   %ax,%ax
  4014d0:	c3                   	ret    
  4014d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4014d8:	00 00 00 00 
  4014dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004014e0 <register_tm_clones>:
  4014e0:	be b0 74 40 00       	mov    $0x4074b0,%esi
  4014e5:	48 81 ee b0 74 40 00 	sub    $0x4074b0,%rsi
  4014ec:	48 89 f0             	mov    %rsi,%rax
  4014ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4014f3:	48 c1 f8 03          	sar    $0x3,%rax
  4014f7:	48 01 c6             	add    %rax,%rsi
  4014fa:	48 d1 fe             	sar    %rsi
  4014fd:	74 11                	je     401510 <register_tm_clones+0x30>
  4014ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401504:	48 85 c0             	test   %rax,%rax
  401507:	74 07                	je     401510 <register_tm_clones+0x30>
  401509:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  40150e:	ff e0                	jmp    *%rax
  401510:	c3                   	ret    
  401511:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401518:	00 00 00 00 
  40151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401520 <__do_global_dtors_aux>:
  401520:	f3 0f 1e fa          	endbr64 
  401524:	80 3d bd 5f 00 00 00 	cmpb   $0x0,0x5fbd(%rip)        # 4074e8 <completed.8060>
  40152b:	75 13                	jne    401540 <__do_global_dtors_aux+0x20>
  40152d:	55                   	push   %rbp
  40152e:	48 89 e5             	mov    %rsp,%rbp
  401531:	e8 7a ff ff ff       	call   4014b0 <deregister_tm_clones>
  401536:	c6 05 ab 5f 00 00 01 	movb   $0x1,0x5fab(%rip)        # 4074e8 <completed.8060>
  40153d:	5d                   	pop    %rbp
  40153e:	c3                   	ret    
  40153f:	90                   	nop
  401540:	c3                   	ret    
  401541:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401548:	00 00 00 00 
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <frame_dummy>:
  401550:	f3 0f 1e fa          	endbr64 
  401554:	eb 8a                	jmp    4014e0 <register_tm_clones>

0000000000401556 <usage>:
  401556:	50                   	push   %rax
  401557:	58                   	pop    %rax
  401558:	48 83 ec 08          	sub    $0x8,%rsp
  40155c:	48 89 fa             	mov    %rdi,%rdx
  40155f:	83 3d c2 5f 00 00 00 	cmpl   $0x0,0x5fc2(%rip)        # 407528 <is_checker>
  401566:	74 50                	je     4015b8 <usage+0x62>
  401568:	48 8d 35 99 2a 00 00 	lea    0x2a99(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40156f:	bf 01 00 00 00       	mov    $0x1,%edi
  401574:	b8 00 00 00 00       	mov    $0x0,%eax
  401579:	e8 42 fe ff ff       	call   4013c0 <__printf_chk@plt>
  40157e:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401585:	e8 26 fd ff ff       	call   4012b0 <puts@plt>
  40158a:	48 8d 3d 3f 2c 00 00 	lea    0x2c3f(%rip),%rdi        # 4041d0 <_IO_stdin_used+0x1d0>
  401591:	e8 1a fd ff ff       	call   4012b0 <puts@plt>
  401596:	48 8d 3d cb 2a 00 00 	lea    0x2acb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40159d:	e8 0e fd ff ff       	call   4012b0 <puts@plt>
  4015a2:	48 8d 3d 41 2c 00 00 	lea    0x2c41(%rip),%rdi        # 4041ea <_IO_stdin_used+0x1ea>
  4015a9:	e8 02 fd ff ff       	call   4012b0 <puts@plt>
  4015ae:	bf 00 00 00 00       	mov    $0x0,%edi
  4015b3:	e8 58 fe ff ff       	call   401410 <exit@plt>
  4015b8:	48 8d 35 47 2c 00 00 	lea    0x2c47(%rip),%rsi        # 404206 <_IO_stdin_used+0x206>
  4015bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4015c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c9:	e8 f2 fd ff ff       	call   4013c0 <__printf_chk@plt>
  4015ce:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4015d5:	e8 d6 fc ff ff       	call   4012b0 <puts@plt>
  4015da:	48 8d 3d d7 2a 00 00 	lea    0x2ad7(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4015e1:	e8 ca fc ff ff       	call   4012b0 <puts@plt>
  4015e6:	48 8d 3d 37 2c 00 00 	lea    0x2c37(%rip),%rdi        # 404224 <_IO_stdin_used+0x224>
  4015ed:	e8 be fc ff ff       	call   4012b0 <puts@plt>
  4015f2:	eb ba                	jmp    4015ae <usage+0x58>

00000000004015f4 <initialize_target>:
  4015f4:	55                   	push   %rbp
  4015f5:	53                   	push   %rbx
  4015f6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4015fd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401602:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401609:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40160e:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  401615:	89 f5                	mov    %esi,%ebp
  401617:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40161e:	00 00 
  401620:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  401627:	00 
  401628:	31 c0                	xor    %eax,%eax
  40162a:	89 3d e8 5e 00 00    	mov    %edi,0x5ee8(%rip)        # 407518 <check_level>
  401630:	8b 3d 1a 5b 00 00    	mov    0x5b1a(%rip),%edi        # 407150 <target_id>
  401636:	e8 89 21 00 00       	call   4037c4 <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 7c 21 00 00       	call   4037c4 <gencookie>
  401648:	89 05 d2 5e 00 00    	mov    %eax,0x5ed2(%rip)        # 407520 <authkey>
  40164e:	8b 05 fc 5a 00 00    	mov    0x5afc(%rip),%eax        # 407150 <target_id>
  401654:	8d 78 01             	lea    0x1(%rax),%edi
  401657:	e8 14 fc ff ff       	call   401270 <srandom@plt>
  40165c:	e8 2f fd ff ff       	call   401390 <random@plt>
  401661:	48 89 c7             	mov    %rax,%rdi
  401664:	e8 9b 03 00 00       	call   401a04 <scramble>
  401669:	89 c3                	mov    %eax,%ebx
  40166b:	85 ed                	test   %ebp,%ebp
  40166d:	75 54                	jne    4016c3 <initialize_target+0xcf>
  40166f:	b8 00 00 00 00       	mov    $0x0,%eax
  401674:	01 d8                	add    %ebx,%eax
  401676:	0f b7 c0             	movzwl %ax,%eax
  401679:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401680:	89 c0                	mov    %eax,%eax
  401682:	48 89 05 1f 5e 00 00 	mov    %rax,0x5e1f(%rip)        # 4074a8 <buf_offset>
  401689:	c6 05 b8 6a 00 00 63 	movb   $0x63,0x6ab8(%rip)        # 408148 <target_prefix>
  401690:	83 3d 09 5e 00 00 00 	cmpl   $0x0,0x5e09(%rip)        # 4074a0 <notify>
  401697:	74 09                	je     4016a2 <initialize_target+0xae>
  401699:	83 3d 88 5e 00 00 00 	cmpl   $0x0,0x5e88(%rip)        # 407528 <is_checker>
  4016a0:	74 3a                	je     4016dc <initialize_target+0xe8>
  4016a2:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4016a9:	00 
  4016aa:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016b1:	00 00 
  4016b3:	0f 85 db 00 00 00    	jne    401794 <initialize_target+0x1a0>
  4016b9:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4016c0:	5b                   	pop    %rbx
  4016c1:	5d                   	pop    %rbp
  4016c2:	c3                   	ret    
  4016c3:	bf 00 00 00 00       	mov    $0x0,%edi
  4016c8:	e8 b3 fc ff ff       	call   401380 <time@plt>
  4016cd:	48 89 c7             	mov    %rax,%rdi
  4016d0:	e8 9b fb ff ff       	call   401270 <srandom@plt>
  4016d5:	e8 b6 fc ff ff       	call   401390 <random@plt>
  4016da:	eb 98                	jmp    401674 <initialize_target+0x80>
  4016dc:	48 89 e7             	mov    %rsp,%rdi
  4016df:	be 00 01 00 00       	mov    $0x100,%esi
  4016e4:	e8 17 fd ff ff       	call   401400 <gethostname@plt>
  4016e9:	89 c5                	mov    %eax,%ebp
  4016eb:	85 c0                	test   %eax,%eax
  4016ed:	75 26                	jne    401715 <initialize_target+0x121>
  4016ef:	89 c3                	mov    %eax,%ebx
  4016f1:	48 63 c3             	movslq %ebx,%rax
  4016f4:	48 8d 15 85 5a 00 00 	lea    0x5a85(%rip),%rdx        # 407180 <host_table>
  4016fb:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4016ff:	48 85 ff             	test   %rdi,%rdi
  401702:	74 2c                	je     401730 <initialize_target+0x13c>
  401704:	48 89 e6             	mov    %rsp,%rsi
  401707:	e8 44 fb ff ff       	call   401250 <strcasecmp@plt>
  40170c:	85 c0                	test   %eax,%eax
  40170e:	74 1b                	je     40172b <initialize_target+0x137>
  401710:	83 c3 01             	add    $0x1,%ebx
  401713:	eb dc                	jmp    4016f1 <initialize_target+0xfd>
  401715:	48 8d 3d cc 29 00 00 	lea    0x29cc(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  40171c:	e8 8f fb ff ff       	call   4012b0 <puts@plt>
  401721:	bf 08 00 00 00       	mov    $0x8,%edi
  401726:	e8 e5 fc ff ff       	call   401410 <exit@plt>
  40172b:	bd 01 00 00 00       	mov    $0x1,%ebp
  401730:	85 ed                	test   %ebp,%ebp
  401732:	74 3d                	je     401771 <initialize_target+0x17d>
  401734:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40173b:	00 
  40173c:	e8 c8 1d 00 00       	call   403509 <init_driver>
  401741:	85 c0                	test   %eax,%eax
  401743:	0f 89 59 ff ff ff    	jns    4016a2 <initialize_target+0xae>
  401749:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401750:	00 
  401751:	48 8d 35 08 2a 00 00 	lea    0x2a08(%rip),%rsi        # 404160 <_IO_stdin_used+0x160>
  401758:	bf 01 00 00 00       	mov    $0x1,%edi
  40175d:	b8 00 00 00 00       	mov    $0x0,%eax
  401762:	e8 59 fc ff ff       	call   4013c0 <__printf_chk@plt>
  401767:	bf 08 00 00 00       	mov    $0x8,%edi
  40176c:	e8 9f fc ff ff       	call   401410 <exit@plt>
  401771:	48 89 e2             	mov    %rsp,%rdx
  401774:	48 8d 35 a5 29 00 00 	lea    0x29a5(%rip),%rsi        # 404120 <_IO_stdin_used+0x120>
  40177b:	bf 01 00 00 00       	mov    $0x1,%edi
  401780:	b8 00 00 00 00       	mov    $0x0,%eax
  401785:	e8 36 fc ff ff       	call   4013c0 <__printf_chk@plt>
  40178a:	bf 08 00 00 00       	mov    $0x8,%edi
  40178f:	e8 7c fc ff ff       	call   401410 <exit@plt>
  401794:	e8 92 10 00 00       	call   40282b <__stack_chk_fail>

0000000000401799 <main>:
  401799:	f3 0f 1e fa          	endbr64 
  40179d:	41 56                	push   %r14
  40179f:	41 55                	push   %r13
  4017a1:	41 54                	push   %r12
  4017a3:	55                   	push   %rbp
  4017a4:	53                   	push   %rbx
  4017a5:	48 83 ec 60          	sub    $0x60,%rsp
  4017a9:	89 fd                	mov    %edi,%ebp
  4017ab:	48 89 f3             	mov    %rsi,%rbx
  4017ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017b5:	00 00 
  4017b7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4017bc:	31 c0                	xor    %eax,%eax
  4017be:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  4017c5:	74 65 64 
  4017c8:	48 89 04 24          	mov    %rax,(%rsp)
  4017cc:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  4017d3:	79 
  4017d4:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  4017db:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  4017e0:	48 c7 c6 1a 27 40 00 	mov    $0x40271a,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	call   401330 <signal@plt>
  4017f1:	48 c7 c6 c0 26 40 00 	mov    $0x4026c0,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	call   401330 <signal@plt>
  401802:	48 c7 c6 74 27 40 00 	mov    $0x402774,%rsi
  401809:	bf 04 00 00 00       	mov    $0x4,%edi
  40180e:	e8 1d fb ff ff       	call   401330 <signal@plt>
  401813:	83 3d 0e 5d 00 00 00 	cmpl   $0x0,0x5d0e(%rip)        # 407528 <is_checker>
  40181a:	75 26                	jne    401842 <main+0xa9>
  40181c:	4c 8d 25 24 2a 00 00 	lea    0x2a24(%rip),%r12        # 404247 <_IO_stdin_used+0x247>
  401823:	48 8b 05 96 5c 00 00 	mov    0x5c96(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  40182a:	48 89 05 df 5c 00 00 	mov    %rax,0x5cdf(%rip)        # 407510 <infile>
  401831:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401837:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40183d:	e9 8d 00 00 00       	jmp    4018cf <main+0x136>
  401842:	48 c7 c6 ce 27 40 00 	mov    $0x4027ce,%rsi
  401849:	bf 0e 00 00 00       	mov    $0xe,%edi
  40184e:	e8 dd fa ff ff       	call   401330 <signal@plt>
  401853:	bf 02 00 00 00       	mov    $0x2,%edi
  401858:	e8 93 fa ff ff       	call   4012f0 <alarm@plt>
  40185d:	4c 8d 25 d9 29 00 00 	lea    0x29d9(%rip),%r12        # 40423d <_IO_stdin_used+0x23d>
  401864:	eb bd                	jmp    401823 <main+0x8a>
  401866:	48 8b 3b             	mov    (%rbx),%rdi
  401869:	e8 e8 fc ff ff       	call   401556 <usage>
  40186e:	48 8d 35 9f 2a 00 00 	lea    0x2a9f(%rip),%rsi        # 404314 <_IO_stdin_used+0x314>
  401875:	48 8b 3d 4c 5c 00 00 	mov    0x5c4c(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40187c:	e8 4f fb ff ff       	call   4013d0 <fopen@plt>
  401881:	48 89 05 88 5c 00 00 	mov    %rax,0x5c88(%rip)        # 407510 <infile>
  401888:	48 85 c0             	test   %rax,%rax
  40188b:	75 42                	jne    4018cf <main+0x136>
  40188d:	48 8b 0d 34 5c 00 00 	mov    0x5c34(%rip),%rcx        # 4074c8 <optarg@GLIBC_2.2.5>
  401894:	48 8d 15 b1 29 00 00 	lea    0x29b1(%rip),%rdx        # 40424c <_IO_stdin_used+0x24c>
  40189b:	be 01 00 00 00       	mov    $0x1,%esi
  4018a0:	48 8b 3d 39 5c 00 00 	mov    0x5c39(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4018a7:	e8 84 fb ff ff       	call   401430 <__fprintf_chk@plt>
  4018ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b1:	e9 2c 01 00 00       	jmp    4019e2 <main+0x249>
  4018b6:	ba 10 00 00 00       	mov    $0x10,%edx
  4018bb:	be 00 00 00 00       	mov    $0x0,%esi
  4018c0:	48 8b 3d 01 5c 00 00 	mov    0x5c01(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  4018c7:	e8 24 fb ff ff       	call   4013f0 <strtoul@plt>
  4018cc:	41 89 c6             	mov    %eax,%r14d
  4018cf:	4c 89 e2             	mov    %r12,%rdx
  4018d2:	48 89 de             	mov    %rbx,%rsi
  4018d5:	89 ef                	mov    %ebp,%edi
  4018d7:	e8 04 fb ff ff       	call   4013e0 <getopt@plt>
  4018dc:	3c ff                	cmp    $0xff,%al
  4018de:	74 7b                	je     40195b <main+0x1c2>
  4018e0:	0f be c8             	movsbl %al,%ecx
  4018e3:	83 e8 61             	sub    $0x61,%eax
  4018e6:	3c 14                	cmp    $0x14,%al
  4018e8:	77 51                	ja     40193b <main+0x1a2>
  4018ea:	0f b6 c0             	movzbl %al,%eax
  4018ed:	48 8d 15 98 29 00 00 	lea    0x2998(%rip),%rdx        # 40428c <_IO_stdin_used+0x28c>
  4018f4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4018f8:	48 01 d0             	add    %rdx,%rax
  4018fb:	3e ff e0             	notrack jmp *%rax
  4018fe:	ba 0a 00 00 00       	mov    $0xa,%edx
  401903:	be 00 00 00 00       	mov    $0x0,%esi
  401908:	48 8b 3d b9 5b 00 00 	mov    0x5bb9(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40190f:	e8 4c fa ff ff       	call   401360 <strtol@plt>
  401914:	41 89 c5             	mov    %eax,%r13d
  401917:	eb b6                	jmp    4018cf <main+0x136>
  401919:	c7 05 7d 5b 00 00 00 	movl   $0x0,0x5b7d(%rip)        # 4074a0 <notify>
  401920:	00 00 00 
  401923:	eb aa                	jmp    4018cf <main+0x136>
  401925:	48 89 e7             	mov    %rsp,%rdi
  401928:	ba 50 00 00 00       	mov    $0x50,%edx
  40192d:	48 8b 35 94 5b 00 00 	mov    0x5b94(%rip),%rsi        # 4074c8 <optarg@GLIBC_2.2.5>
  401934:	e8 47 f9 ff ff       	call   401280 <strncpy@plt>
  401939:	eb 94                	jmp    4018cf <main+0x136>
  40193b:	89 ca                	mov    %ecx,%edx
  40193d:	48 8d 35 25 29 00 00 	lea    0x2925(%rip),%rsi        # 404269 <_IO_stdin_used+0x269>
  401944:	bf 01 00 00 00       	mov    $0x1,%edi
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e8 6d fa ff ff       	call   4013c0 <__printf_chk@plt>
  401953:	48 8b 3b             	mov    (%rbx),%rdi
  401956:	e8 fb fb ff ff       	call   401556 <usage>
  40195b:	be 00 00 00 00       	mov    $0x0,%esi
  401960:	44 89 ef             	mov    %r13d,%edi
  401963:	e8 8c fc ff ff       	call   4015f4 <initialize_target>
  401968:	83 3d b9 5b 00 00 00 	cmpl   $0x0,0x5bb9(%rip)        # 407528 <is_checker>
  40196f:	74 3f                	je     4019b0 <main+0x217>
  401971:	44 39 35 a8 5b 00 00 	cmp    %r14d,0x5ba8(%rip)        # 407520 <authkey>
  401978:	75 13                	jne    40198d <main+0x1f4>
  40197a:	48 89 e7             	mov    %rsp,%rdi
  40197d:	48 8b 35 dc 57 00 00 	mov    0x57dc(%rip),%rsi        # 407160 <user_id>
  401984:	e8 97 f9 ff ff       	call   401320 <strcmp@plt>
  401989:	85 c0                	test   %eax,%eax
  40198b:	74 23                	je     4019b0 <main+0x217>
  40198d:	44 89 f2             	mov    %r14d,%edx
  401990:	48 8d 35 f1 27 00 00 	lea    0x27f1(%rip),%rsi        # 404188 <_IO_stdin_used+0x188>
  401997:	bf 01 00 00 00       	mov    $0x1,%edi
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a1:	e8 1a fa ff ff       	call   4013c0 <__printf_chk@plt>
  4019a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ab:	e8 59 09 00 00       	call   402309 <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	call   4013c0 <__printf_chk@plt>
  4019cc:	be 00 00 00 00       	mov    $0x0,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 aa 0f 00 00       	call   402987 <stable_launch>
  4019dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e2:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  4019e7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4019ee:	00 00 
  4019f0:	75 0d                	jne    4019ff <main+0x266>
  4019f2:	48 83 c4 60          	add    $0x60,%rsp
  4019f6:	5b                   	pop    %rbx
  4019f7:	5d                   	pop    %rbp
  4019f8:	41 5c                	pop    %r12
  4019fa:	41 5d                	pop    %r13
  4019fc:	41 5e                	pop    %r14
  4019fe:	c3                   	ret    
  4019ff:	e8 27 0e 00 00       	call   40282b <__stack_chk_fail>

0000000000401a04 <scramble>:
  401a04:	f3 0f 1e fa          	endbr64 
  401a08:	48 83 ec 38          	sub    $0x38,%rsp
  401a0c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a13:	00 00 
  401a15:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a1a:	31 c0                	xor    %eax,%eax
  401a1c:	83 f8 09             	cmp    $0x9,%eax
  401a1f:	77 12                	ja     401a33 <scramble+0x2f>
  401a21:	69 d0 7e 5f 00 00    	imul   $0x5f7e,%eax,%edx
  401a27:	01 fa                	add    %edi,%edx
  401a29:	89 c1                	mov    %eax,%ecx
  401a2b:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401a2e:	83 c0 01             	add    $0x1,%eax
  401a31:	eb e9                	jmp    401a1c <scramble+0x18>
  401a33:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a37:	69 c0 06 06 00 00    	imul   $0x606,%eax,%eax
  401a3d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a41:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a45:	69 c0 b7 bc 00 00    	imul   $0xbcb7,%eax,%eax
  401a4b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a4f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a53:	69 c0 ff 90 00 00    	imul   $0x90ff,%eax,%eax
  401a59:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a5d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a61:	69 c0 59 31 00 00    	imul   $0x3159,%eax,%eax
  401a67:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a6b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a6f:	69 c0 89 6e 00 00    	imul   $0x6e89,%eax,%eax
  401a75:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a79:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a7d:	69 c0 75 8f 00 00    	imul   $0x8f75,%eax,%eax
  401a83:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a87:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a8b:	69 c0 2e 50 00 00    	imul   $0x502e,%eax,%eax
  401a91:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a95:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a99:	69 c0 49 6f 00 00    	imul   $0x6f49,%eax,%eax
  401a9f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401aa3:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401aa7:	69 c0 7b de 00 00    	imul   $0xde7b,%eax,%eax
  401aad:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ab1:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ab5:	69 c0 7c f3 00 00    	imul   $0xf37c,%eax,%eax
  401abb:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401abf:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401ac3:	69 c0 f7 b0 00 00    	imul   $0xb0f7,%eax,%eax
  401ac9:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401acd:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ad1:	69 c0 65 c5 00 00    	imul   $0xc565,%eax,%eax
  401ad7:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401adb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401adf:	69 c0 d4 5c 00 00    	imul   $0x5cd4,%eax,%eax
  401ae5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ae9:	8b 04 24             	mov    (%rsp),%eax
  401aec:	69 c0 ec ac 00 00    	imul   $0xacec,%eax,%eax
  401af2:	89 04 24             	mov    %eax,(%rsp)
  401af5:	8b 04 24             	mov    (%rsp),%eax
  401af8:	69 c0 9b 1c 00 00    	imul   $0x1c9b,%eax,%eax
  401afe:	89 04 24             	mov    %eax,(%rsp)
  401b01:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b05:	69 c0 fe 02 00 00    	imul   $0x2fe,%eax,%eax
  401b0b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b0f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b13:	69 c0 c3 80 00 00    	imul   $0x80c3,%eax,%eax
  401b19:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b1d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b21:	69 c0 7c 51 00 00    	imul   $0x517c,%eax,%eax
  401b27:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b2b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b2f:	69 c0 12 33 00 00    	imul   $0x3312,%eax,%eax
  401b35:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b39:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b3d:	69 c0 34 9d 00 00    	imul   $0x9d34,%eax,%eax
  401b43:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b47:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b4b:	69 c0 49 a3 00 00    	imul   $0xa349,%eax,%eax
  401b51:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b55:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b59:	69 c0 b9 de 00 00    	imul   $0xdeb9,%eax,%eax
  401b5f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b63:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b67:	69 c0 4f fa 00 00    	imul   $0xfa4f,%eax,%eax
  401b6d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b71:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b75:	69 c0 69 14 00 00    	imul   $0x1469,%eax,%eax
  401b7b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b7f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b83:	69 c0 7c 6c 00 00    	imul   $0x6c7c,%eax,%eax
  401b89:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b8d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b91:	69 c0 76 da 00 00    	imul   $0xda76,%eax,%eax
  401b97:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b9b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b9f:	69 c0 b6 64 00 00    	imul   $0x64b6,%eax,%eax
  401ba5:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ba9:	8b 04 24             	mov    (%rsp),%eax
  401bac:	69 c0 a3 20 00 00    	imul   $0x20a3,%eax,%eax
  401bb2:	89 04 24             	mov    %eax,(%rsp)
  401bb5:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401bb9:	69 c0 66 f2 00 00    	imul   $0xf266,%eax,%eax
  401bbf:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bc3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401bc7:	69 c0 0a 65 00 00    	imul   $0x650a,%eax,%eax
  401bcd:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401bd1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bd5:	69 c0 a5 98 00 00    	imul   $0x98a5,%eax,%eax
  401bdb:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401bdf:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401be3:	69 c0 a2 31 00 00    	imul   $0x31a2,%eax,%eax
  401be9:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401bed:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401bf1:	69 c0 bd 27 00 00    	imul   $0x27bd,%eax,%eax
  401bf7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401bfb:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bff:	69 c0 2a 2b 00 00    	imul   $0x2b2a,%eax,%eax
  401c05:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c09:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401c0d:	69 c0 f4 05 00 00    	imul   $0x5f4,%eax,%eax
  401c13:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401c17:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c1b:	69 c0 6b fc 00 00    	imul   $0xfc6b,%eax,%eax
  401c21:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c25:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c29:	69 c0 07 f5 00 00    	imul   $0xf507,%eax,%eax
  401c2f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c33:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401c37:	69 c0 b5 9c 00 00    	imul   $0x9cb5,%eax,%eax
  401c3d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c41:	8b 04 24             	mov    (%rsp),%eax
  401c44:	69 c0 27 29 00 00    	imul   $0x2927,%eax,%eax
  401c4a:	89 04 24             	mov    %eax,(%rsp)
  401c4d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c51:	69 c0 20 c8 00 00    	imul   $0xc820,%eax,%eax
  401c57:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c5b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c5f:	69 c0 03 b9 00 00    	imul   $0xb903,%eax,%eax
  401c65:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c69:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c6d:	69 c0 16 b3 00 00    	imul   $0xb316,%eax,%eax
  401c73:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c77:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c7b:	69 c0 72 42 00 00    	imul   $0x4272,%eax,%eax
  401c81:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c85:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c89:	69 c0 44 df 00 00    	imul   $0xdf44,%eax,%eax
  401c8f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c93:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c97:	69 c0 48 a1 00 00    	imul   $0xa148,%eax,%eax
  401c9d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ca1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401ca5:	69 c0 da 43 00 00    	imul   $0x43da,%eax,%eax
  401cab:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401caf:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401cb3:	69 c0 57 ac 00 00    	imul   $0xac57,%eax,%eax
  401cb9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401cbd:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401cc1:	69 c0 55 53 00 00    	imul   $0x5355,%eax,%eax
  401cc7:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ccb:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401ccf:	69 c0 9c f8 00 00    	imul   $0xf89c,%eax,%eax
  401cd5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401cd9:	8b 04 24             	mov    (%rsp),%eax
  401cdc:	69 c0 e4 2e 00 00    	imul   $0x2ee4,%eax,%eax
  401ce2:	89 04 24             	mov    %eax,(%rsp)
  401ce5:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ce9:	69 c0 dd 46 00 00    	imul   $0x46dd,%eax,%eax
  401cef:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401cf3:	8b 04 24             	mov    (%rsp),%eax
  401cf6:	69 c0 ce a7 00 00    	imul   $0xa7ce,%eax,%eax
  401cfc:	89 04 24             	mov    %eax,(%rsp)
  401cff:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d03:	69 c0 74 06 00 00    	imul   $0x674,%eax,%eax
  401d09:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d0d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401d11:	69 c0 3a 2b 00 00    	imul   $0x2b3a,%eax,%eax
  401d17:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401d1b:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401d1f:	69 c0 a1 f5 00 00    	imul   $0xf5a1,%eax,%eax
  401d25:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401d29:	8b 04 24             	mov    (%rsp),%eax
  401d2c:	69 c0 3e c5 00 00    	imul   $0xc53e,%eax,%eax
  401d32:	89 04 24             	mov    %eax,(%rsp)
  401d35:	8b 04 24             	mov    (%rsp),%eax
  401d38:	69 c0 f1 95 00 00    	imul   $0x95f1,%eax,%eax
  401d3e:	89 04 24             	mov    %eax,(%rsp)
  401d41:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401d45:	69 c0 5d cc 00 00    	imul   $0xcc5d,%eax,%eax
  401d4b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401d4f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401d53:	69 c0 0d 4c 00 00    	imul   $0x4c0d,%eax,%eax
  401d59:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401d5d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d61:	69 c0 3d 0d 00 00    	imul   $0xd3d,%eax,%eax
  401d67:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d6b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401d6f:	69 c0 f0 ef 00 00    	imul   $0xeff0,%eax,%eax
  401d75:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401d79:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401d7d:	69 c0 42 27 00 00    	imul   $0x2742,%eax,%eax
  401d83:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401d87:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d8b:	69 c0 94 c6 00 00    	imul   $0xc694,%eax,%eax
  401d91:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d95:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401d99:	69 c0 5b 70 00 00    	imul   $0x705b,%eax,%eax
  401d9f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401da3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401da7:	69 c0 16 f9 00 00    	imul   $0xf916,%eax,%eax
  401dad:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401db1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401db5:	69 c0 c1 bd 00 00    	imul   $0xbdc1,%eax,%eax
  401dbb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401dbf:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401dc3:	69 c0 90 ca 00 00    	imul   $0xca90,%eax,%eax
  401dc9:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401dcd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401dd1:	69 c0 d7 7b 00 00    	imul   $0x7bd7,%eax,%eax
  401dd7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401ddb:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401ddf:	69 c0 12 aa 00 00    	imul   $0xaa12,%eax,%eax
  401de5:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401de9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ded:	8d 04 80             	lea    (%rax,%rax,4),%eax
  401df0:	c1 e0 05             	shl    $0x5,%eax
  401df3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401df7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401dfb:	69 c0 6c 9a 00 00    	imul   $0x9a6c,%eax,%eax
  401e01:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e05:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401e09:	69 c0 57 4e 00 00    	imul   $0x4e57,%eax,%eax
  401e0f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401e13:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401e17:	69 c0 33 3e 00 00    	imul   $0x3e33,%eax,%eax
  401e1d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401e21:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401e25:	69 c0 c1 08 00 00    	imul   $0x8c1,%eax,%eax
  401e2b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401e2f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401e33:	69 c0 56 c6 00 00    	imul   $0xc656,%eax,%eax
  401e39:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e3d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401e41:	69 c0 96 77 00 00    	imul   $0x7796,%eax,%eax
  401e47:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e4b:	8b 04 24             	mov    (%rsp),%eax
  401e4e:	69 c0 16 67 00 00    	imul   $0x6716,%eax,%eax
  401e54:	89 04 24             	mov    %eax,(%rsp)
  401e57:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401e5b:	69 c0 8d 52 00 00    	imul   $0x528d,%eax,%eax
  401e61:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401e65:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401e69:	69 c0 70 19 00 00    	imul   $0x1970,%eax,%eax
  401e6f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e73:	8b 04 24             	mov    (%rsp),%eax
  401e76:	69 c0 db ec 00 00    	imul   $0xecdb,%eax,%eax
  401e7c:	89 04 24             	mov    %eax,(%rsp)
  401e7f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401e83:	69 c0 28 62 00 00    	imul   $0x6228,%eax,%eax
  401e89:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401e8d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e91:	69 c0 7a 52 00 00    	imul   $0x527a,%eax,%eax
  401e97:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e9b:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401e9f:	69 c0 2b 10 00 00    	imul   $0x102b,%eax,%eax
  401ea5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401ea9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ead:	69 c0 bd fd 00 00    	imul   $0xfdbd,%eax,%eax
  401eb3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401eb7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ebb:	69 c0 63 75 00 00    	imul   $0x7563,%eax,%eax
  401ec1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ec5:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401ec9:	69 c0 f0 59 00 00    	imul   $0x59f0,%eax,%eax
  401ecf:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401ed3:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ed7:	69 c0 3b c4 00 00    	imul   $0xc43b,%eax,%eax
  401edd:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ee1:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ee5:	69 c0 2c 40 00 00    	imul   $0x402c,%eax,%eax
  401eeb:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401eef:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ef3:	69 c0 fb c2 00 00    	imul   $0xc2fb,%eax,%eax
  401ef9:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401efd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401f01:	69 c0 af 8c 00 00    	imul   $0x8caf,%eax,%eax
  401f07:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401f0b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401f0f:	69 c0 ec 5e 00 00    	imul   $0x5eec,%eax,%eax
  401f15:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401f19:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401f1d:	69 c0 97 3f 00 00    	imul   $0x3f97,%eax,%eax
  401f23:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401f27:	8b 04 24             	mov    (%rsp),%eax
  401f2a:	69 c0 1d a3 00 00    	imul   $0xa31d,%eax,%eax
  401f30:	89 04 24             	mov    %eax,(%rsp)
  401f33:	b8 00 00 00 00       	mov    $0x0,%eax
  401f38:	ba 00 00 00 00       	mov    $0x0,%edx
  401f3d:	83 f8 09             	cmp    $0x9,%eax
  401f40:	77 0c                	ja     401f4e <scramble+0x54a>
  401f42:	89 c1                	mov    %eax,%ecx
  401f44:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401f47:	01 ca                	add    %ecx,%edx
  401f49:	83 c0 01             	add    $0x1,%eax
  401f4c:	eb ef                	jmp    401f3d <scramble+0x539>
  401f4e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401f53:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f5a:	00 00 
  401f5c:	75 07                	jne    401f65 <scramble+0x561>
  401f5e:	89 d0                	mov    %edx,%eax
  401f60:	48 83 c4 38          	add    $0x38,%rsp
  401f64:	c3                   	ret    
  401f65:	e8 c1 08 00 00       	call   40282b <__stack_chk_fail>

0000000000401f6a <getbuf>:
  401f6a:	f3 0f 1e fa          	endbr64 
  401f6e:	48 83 ec 28          	sub    $0x28,%rsp
  401f72:	48 89 e7             	mov    %rsp,%rdi
  401f75:	e8 cd 03 00 00       	call   402347 <Gets>
  401f7a:	b8 01 00 00 00       	mov    $0x1,%eax
  401f7f:	48 83 c4 28          	add    $0x28,%rsp
  401f83:	c3                   	ret    

0000000000401f84 <getbuf_withcanary>:
  401f84:	f3 0f 1e fa          	endbr64 
  401f88:	55                   	push   %rbp
  401f89:	48 89 e5             	mov    %rsp,%rbp
  401f8c:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  401f93:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f9a:	00 00 
  401f9c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401fa0:	31 c0                	xor    %eax,%eax
  401fa2:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  401fa9:	00 00 00 
  401fac:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401fb2:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  401fb8:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401fbf:	48 89 c7             	mov    %rax,%rdi
  401fc2:	e8 80 03 00 00       	call   402347 <Gets>
  401fc7:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  401fcd:	48 63 d0             	movslq %eax,%rdx
  401fd0:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401fd7:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  401fde:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401fe5:	48 89 ce             	mov    %rcx,%rsi
  401fe8:	48 89 c7             	mov    %rax,%rdi
  401feb:	e8 80 f3 ff ff       	call   401370 <memcpy@plt>
  401ff0:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401ff6:	48 63 d0             	movslq %eax,%rdx
  401ff9:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402000:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  402007:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  40200e:	48 89 c6             	mov    %rax,%rsi
  402011:	48 89 cf             	mov    %rcx,%rdi
  402014:	e8 57 f3 ff ff       	call   401370 <memcpy@plt>
  402019:	b8 01 00 00 00       	mov    $0x1,%eax
  40201e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402022:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402029:	00 00 
  40202b:	74 05                	je     402032 <getbuf_withcanary+0xae>
  40202d:	e8 f9 07 00 00       	call   40282b <__stack_chk_fail>
  402032:	c9                   	leave  
  402033:	c3                   	ret    

0000000000402034 <touch1>:
  402034:	f3 0f 1e fa          	endbr64 
  402038:	50                   	push   %rax
  402039:	58                   	pop    %rax
  40203a:	48 83 ec 08          	sub    $0x8,%rsp
  40203e:	c7 05 d4 54 00 00 01 	movl   $0x1,0x54d4(%rip)        # 40751c <vlevel>
  402045:	00 00 00 
  402048:	48 8d 3d c7 22 00 00 	lea    0x22c7(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  40204f:	e8 5c f2 ff ff       	call   4012b0 <puts@plt>
  402054:	bf 01 00 00 00       	mov    $0x1,%edi
  402059:	e8 5b 05 00 00       	call   4025b9 <validate>
  40205e:	bf 00 00 00 00       	mov    $0x0,%edi
  402063:	e8 a8 f3 ff ff       	call   401410 <exit@plt>

0000000000402068 <touch2>:
  402068:	f3 0f 1e fa          	endbr64 
  40206c:	50                   	push   %rax
  40206d:	58                   	pop    %rax
  40206e:	48 83 ec 08          	sub    $0x8,%rsp
  402072:	89 fa                	mov    %edi,%edx
  402074:	c7 05 9e 54 00 00 02 	movl   $0x2,0x549e(%rip)        # 40751c <vlevel>
  40207b:	00 00 00 
  40207e:	39 3d a0 54 00 00    	cmp    %edi,0x54a0(%rip)        # 407524 <cookie>
  402084:	74 2a                	je     4020b0 <touch2+0x48>
  402086:	48 8d 35 d3 22 00 00 	lea    0x22d3(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  40208d:	bf 01 00 00 00       	mov    $0x1,%edi
  402092:	b8 00 00 00 00       	mov    $0x0,%eax
  402097:	e8 24 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  40209c:	bf 02 00 00 00       	mov    $0x2,%edi
  4020a1:	e8 ee 05 00 00       	call   402694 <fail>
  4020a6:	bf 00 00 00 00       	mov    $0x0,%edi
  4020ab:	e8 60 f3 ff ff       	call   401410 <exit@plt>
  4020b0:	48 8d 35 81 22 00 00 	lea    0x2281(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  4020b7:	bf 01 00 00 00       	mov    $0x1,%edi
  4020bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4020c1:	e8 fa f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4020c6:	bf 02 00 00 00       	mov    $0x2,%edi
  4020cb:	e8 e9 04 00 00       	call   4025b9 <validate>
  4020d0:	eb d4                	jmp    4020a6 <touch2+0x3e>

00000000004020d2 <hexmatch>:
  4020d2:	f3 0f 1e fa          	endbr64 
  4020d6:	41 55                	push   %r13
  4020d8:	41 54                	push   %r12
  4020da:	55                   	push   %rbp
  4020db:	53                   	push   %rbx
  4020dc:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  4020e3:	89 fd                	mov    %edi,%ebp
  4020e5:	48 89 f3             	mov    %rsi,%rbx
  4020e8:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  4020ee:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  4020f3:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  4020f8:	31 c0                	xor    %eax,%eax
  4020fa:	e8 91 f2 ff ff       	call   401390 <random@plt>
  4020ff:	48 89 c1             	mov    %rax,%rcx
  402102:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  402109:	0a d7 a3 
  40210c:	48 f7 ea             	imul   %rdx
  40210f:	48 01 ca             	add    %rcx,%rdx
  402112:	48 c1 fa 06          	sar    $0x6,%rdx
  402116:	48 89 c8             	mov    %rcx,%rax
  402119:	48 c1 f8 3f          	sar    $0x3f,%rax
  40211d:	48 29 c2             	sub    %rax,%rdx
  402120:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  402124:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402128:	48 c1 e0 02          	shl    $0x2,%rax
  40212c:	48 29 c1             	sub    %rax,%rcx
  40212f:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  402133:	41 89 e8             	mov    %ebp,%r8d
  402136:	48 8d 0d f6 21 00 00 	lea    0x21f6(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  40213d:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402144:	be 01 00 00 00       	mov    $0x1,%esi
  402149:	4c 89 ef             	mov    %r13,%rdi
  40214c:	b8 00 00 00 00       	mov    $0x0,%eax
  402151:	e8 fa f2 ff ff       	call   401450 <__sprintf_chk@plt>
  402156:	ba 09 00 00 00       	mov    $0x9,%edx
  40215b:	4c 89 ee             	mov    %r13,%rsi
  40215e:	48 89 df             	mov    %rbx,%rdi
  402161:	e8 2a f1 ff ff       	call   401290 <strncmp@plt>
  402166:	85 c0                	test   %eax,%eax
  402168:	0f 94 c0             	sete   %al
  40216b:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  402170:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  402175:	75 11                	jne    402188 <hexmatch+0xb6>
  402177:	0f b6 c0             	movzbl %al,%eax
  40217a:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  402181:	5b                   	pop    %rbx
  402182:	5d                   	pop    %rbp
  402183:	41 5c                	pop    %r12
  402185:	41 5d                	pop    %r13
  402187:	c3                   	ret    
  402188:	e8 9e 06 00 00       	call   40282b <__stack_chk_fail>

000000000040218d <touch3>:
  40218d:	f3 0f 1e fa          	endbr64 
  402191:	53                   	push   %rbx
  402192:	48 89 fb             	mov    %rdi,%rbx
  402195:	c7 05 7d 53 00 00 03 	movl   $0x3,0x537d(%rip)        # 40751c <vlevel>
  40219c:	00 00 00 
  40219f:	48 89 fe             	mov    %rdi,%rsi
  4021a2:	8b 3d 7c 53 00 00    	mov    0x537c(%rip),%edi        # 407524 <cookie>
  4021a8:	e8 25 ff ff ff       	call   4020d2 <hexmatch>
  4021ad:	85 c0                	test   %eax,%eax
  4021af:	74 2d                	je     4021de <touch3+0x51>
  4021b1:	48 89 da             	mov    %rbx,%rdx
  4021b4:	48 8d 35 cd 21 00 00 	lea    0x21cd(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  4021bb:	bf 01 00 00 00       	mov    $0x1,%edi
  4021c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c5:	e8 f6 f1 ff ff       	call   4013c0 <__printf_chk@plt>
  4021ca:	bf 03 00 00 00       	mov    $0x3,%edi
  4021cf:	e8 e5 03 00 00       	call   4025b9 <validate>
  4021d4:	bf 00 00 00 00       	mov    $0x0,%edi
  4021d9:	e8 32 f2 ff ff       	call   401410 <exit@plt>
  4021de:	48 89 da             	mov    %rbx,%rdx
  4021e1:	48 8d 35 c8 21 00 00 	lea    0x21c8(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  4021e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4021ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4021f2:	e8 c9 f1 ff ff       	call   4013c0 <__printf_chk@plt>
  4021f7:	bf 03 00 00 00       	mov    $0x3,%edi
  4021fc:	e8 93 04 00 00       	call   402694 <fail>
  402201:	eb d1                	jmp    4021d4 <touch3+0x47>

0000000000402203 <test>:
  402203:	f3 0f 1e fa          	endbr64 
  402207:	48 83 ec 08          	sub    $0x8,%rsp
  40220b:	b8 00 00 00 00       	mov    $0x0,%eax
  402210:	e8 55 fd ff ff       	call   401f6a <getbuf>
  402215:	89 c2                	mov    %eax,%edx
  402217:	48 89 e0             	mov    %rsp,%rax
  40221a:	48 83 e0 0f          	and    $0xf,%rax
  40221e:	74 07                	je     402227 <aligned4>
  402220:	b9 00 00 00 00       	mov    $0x0,%ecx
  402225:	eb 05                	jmp    40222c <done4>

0000000000402227 <aligned4>:
  402227:	b9 01 00 00 00       	mov    $0x1,%ecx

000000000040222c <done4>:
  40222c:	85 c9                	test   %ecx,%ecx
  40222e:	75 23                	jne    402253 <done4+0x27>
  402230:	48 83 ec 08          	sub    $0x8,%rsp
  402234:	48 8d 35 9d 21 00 00 	lea    0x219d(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  40223b:	bf 01 00 00 00       	mov    $0x1,%edi
  402240:	b8 00 00 00 00       	mov    $0x0,%eax
  402245:	e8 76 f1 ff ff       	call   4013c0 <__printf_chk@plt>
  40224a:	48 83 c4 08          	add    $0x8,%rsp
  40224e:	48 83 c4 08          	add    $0x8,%rsp
  402252:	c3                   	ret    
  402253:	48 8d 35 7e 21 00 00 	lea    0x217e(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  40225a:	bf 01 00 00 00       	mov    $0x1,%edi
  40225f:	b8 00 00 00 00       	mov    $0x0,%eax
  402264:	e8 57 f1 ff ff       	call   4013c0 <__printf_chk@plt>
  402269:	eb e3                	jmp    40224e <done4+0x22>

000000000040226b <test2>:
  40226b:	f3 0f 1e fa          	endbr64 
  40226f:	48 83 ec 08          	sub    $0x8,%rsp
  402273:	b8 00 00 00 00       	mov    $0x0,%eax
  402278:	e8 07 fd ff ff       	call   401f84 <getbuf_withcanary>
  40227d:	89 c2                	mov    %eax,%edx
  40227f:	48 8d 35 7a 21 00 00 	lea    0x217a(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  402286:	bf 01 00 00 00       	mov    $0x1,%edi
  40228b:	b8 00 00 00 00       	mov    $0x0,%eax
  402290:	e8 2b f1 ff ff       	call   4013c0 <__printf_chk@plt>
  402295:	48 83 c4 08          	add    $0x8,%rsp
  402299:	c3                   	ret    

000000000040229a <save_char>:
  40229a:	8b 05 a4 5e 00 00    	mov    0x5ea4(%rip),%eax        # 408144 <gets_cnt>
  4022a0:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4022a5:	7f 4a                	jg     4022f1 <save_char+0x57>
  4022a7:	89 f9                	mov    %edi,%ecx
  4022a9:	c0 e9 04             	shr    $0x4,%cl
  4022ac:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4022af:	4c 8d 05 ba 24 00 00 	lea    0x24ba(%rip),%r8        # 404770 <trans_char>
  4022b6:	83 e1 0f             	and    $0xf,%ecx
  4022b9:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  4022be:	48 8d 0d 7b 52 00 00 	lea    0x527b(%rip),%rcx        # 407540 <gets_buf>
  4022c5:	48 63 f2             	movslq %edx,%rsi
  4022c8:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4022cc:	8d 72 01             	lea    0x1(%rdx),%esi
  4022cf:	83 e7 0f             	and    $0xf,%edi
  4022d2:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4022d7:	48 63 f6             	movslq %esi,%rsi
  4022da:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4022de:	83 c2 02             	add    $0x2,%edx
  4022e1:	48 63 d2             	movslq %edx,%rdx
  4022e4:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4022e8:	83 c0 01             	add    $0x1,%eax
  4022eb:	89 05 53 5e 00 00    	mov    %eax,0x5e53(%rip)        # 408144 <gets_cnt>
  4022f1:	c3                   	ret    

00000000004022f2 <save_term>:
  4022f2:	8b 05 4c 5e 00 00    	mov    0x5e4c(%rip),%eax        # 408144 <gets_cnt>
  4022f8:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4022fb:	48 98                	cltq   
  4022fd:	48 8d 15 3c 52 00 00 	lea    0x523c(%rip),%rdx        # 407540 <gets_buf>
  402304:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402308:	c3                   	ret    

0000000000402309 <check_fail>:
  402309:	f3 0f 1e fa          	endbr64 
  40230d:	50                   	push   %rax
  40230e:	58                   	pop    %rax
  40230f:	48 83 ec 08          	sub    $0x8,%rsp
  402313:	0f be 15 2e 5e 00 00 	movsbl 0x5e2e(%rip),%edx        # 408148 <target_prefix>
  40231a:	4c 8d 05 1f 52 00 00 	lea    0x521f(%rip),%r8        # 407540 <gets_buf>
  402321:	8b 0d f1 51 00 00    	mov    0x51f1(%rip),%ecx        # 407518 <check_level>
  402327:	48 8d 35 00 21 00 00 	lea    0x2100(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  40232e:	bf 01 00 00 00       	mov    $0x1,%edi
  402333:	b8 00 00 00 00       	mov    $0x0,%eax
  402338:	e8 83 f0 ff ff       	call   4013c0 <__printf_chk@plt>
  40233d:	bf 01 00 00 00       	mov    $0x1,%edi
  402342:	e8 c9 f0 ff ff       	call   401410 <exit@plt>

0000000000402347 <Gets>:
  402347:	f3 0f 1e fa          	endbr64 
  40234b:	41 54                	push   %r12
  40234d:	55                   	push   %rbp
  40234e:	53                   	push   %rbx
  40234f:	49 89 fc             	mov    %rdi,%r12
  402352:	c7 05 e8 5d 00 00 00 	movl   $0x0,0x5de8(%rip)        # 408144 <gets_cnt>
  402359:	00 00 00 
  40235c:	48 89 fb             	mov    %rdi,%rbx
  40235f:	48 8b 3d aa 51 00 00 	mov    0x51aa(%rip),%rdi        # 407510 <infile>
  402366:	e8 d5 f0 ff ff       	call   401440 <getc@plt>
  40236b:	83 f8 ff             	cmp    $0xffffffff,%eax
  40236e:	74 18                	je     402388 <Gets+0x41>
  402370:	83 f8 0a             	cmp    $0xa,%eax
  402373:	74 13                	je     402388 <Gets+0x41>
  402375:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402379:	88 03                	mov    %al,(%rbx)
  40237b:	0f b6 f8             	movzbl %al,%edi
  40237e:	e8 17 ff ff ff       	call   40229a <save_char>
  402383:	48 89 eb             	mov    %rbp,%rbx
  402386:	eb d7                	jmp    40235f <Gets+0x18>
  402388:	c6 03 00             	movb   $0x0,(%rbx)
  40238b:	b8 00 00 00 00       	mov    $0x0,%eax
  402390:	e8 5d ff ff ff       	call   4022f2 <save_term>
  402395:	4c 89 e0             	mov    %r12,%rax
  402398:	5b                   	pop    %rbx
  402399:	5d                   	pop    %rbp
  40239a:	41 5c                	pop    %r12
  40239c:	c3                   	ret    

000000000040239d <notify_server>:
  40239d:	f3 0f 1e fa          	endbr64 
  4023a1:	55                   	push   %rbp
  4023a2:	53                   	push   %rbx
  4023a3:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  4023aa:	ff 
  4023ab:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4023b2:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4023b7:	4c 39 dc             	cmp    %r11,%rsp
  4023ba:	75 ef                	jne    4023ab <notify_server+0xe>
  4023bc:	48 83 ec 18          	sub    $0x18,%rsp
  4023c0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023c7:	00 00 
  4023c9:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4023d0:	00 
  4023d1:	31 c0                	xor    %eax,%eax
  4023d3:	83 3d 4e 51 00 00 00 	cmpl   $0x0,0x514e(%rip)        # 407528 <is_checker>
  4023da:	0f 85 b7 01 00 00    	jne    402597 <notify_server+0x1fa>
  4023e0:	89 fb                	mov    %edi,%ebx
  4023e2:	81 3d 58 5d 00 00 9c 	cmpl   $0x1f9c,0x5d58(%rip)        # 408144 <gets_cnt>
  4023e9:	1f 00 00 
  4023ec:	7f 18                	jg     402406 <notify_server+0x69>
  4023ee:	0f be 05 53 5d 00 00 	movsbl 0x5d53(%rip),%eax        # 408148 <target_prefix>
  4023f5:	83 3d a4 50 00 00 00 	cmpl   $0x0,0x50a4(%rip)        # 4074a0 <notify>
  4023fc:	74 23                	je     402421 <notify_server+0x84>
  4023fe:	8b 15 1c 51 00 00    	mov    0x511c(%rip),%edx        # 407520 <authkey>
  402404:	eb 20                	jmp    402426 <notify_server+0x89>
  402406:	48 8d 35 4b 21 00 00 	lea    0x214b(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  40240d:	bf 01 00 00 00       	mov    $0x1,%edi
  402412:	e8 a9 ef ff ff       	call   4013c0 <__printf_chk@plt>
  402417:	bf 01 00 00 00       	mov    $0x1,%edi
  40241c:	e8 ef ef ff ff       	call   401410 <exit@plt>
  402421:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402426:	85 db                	test   %ebx,%ebx
  402428:	0f 84 9b 00 00 00    	je     4024c9 <notify_server+0x12c>
  40242e:	48 8d 2d 14 20 00 00 	lea    0x2014(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  402435:	48 89 e7             	mov    %rsp,%rdi
  402438:	48 8d 0d 01 51 00 00 	lea    0x5101(%rip),%rcx        # 407540 <gets_buf>
  40243f:	51                   	push   %rcx
  402440:	56                   	push   %rsi
  402441:	50                   	push   %rax
  402442:	52                   	push   %rdx
  402443:	49 89 e9             	mov    %rbp,%r9
  402446:	44 8b 05 03 4d 00 00 	mov    0x4d03(%rip),%r8d        # 407150 <target_id>
  40244d:	48 8d 0d fa 1f 00 00 	lea    0x1ffa(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  402454:	ba 00 20 00 00       	mov    $0x2000,%edx
  402459:	be 01 00 00 00       	mov    $0x1,%esi
  40245e:	b8 00 00 00 00       	mov    $0x0,%eax
  402463:	e8 e8 ef ff ff       	call   401450 <__sprintf_chk@plt>
  402468:	48 83 c4 20          	add    $0x20,%rsp
  40246c:	83 3d 2d 50 00 00 00 	cmpl   $0x0,0x502d(%rip)        # 4074a0 <notify>
  402473:	0f 84 95 00 00 00    	je     40250e <notify_server+0x171>
  402479:	48 89 e1             	mov    %rsp,%rcx
  40247c:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402483:	00 
  402484:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40248a:	48 8b 15 d7 4c 00 00 	mov    0x4cd7(%rip),%rdx        # 407168 <lab>
  402491:	48 8b 35 d8 4c 00 00 	mov    0x4cd8(%rip),%rsi        # 407170 <course>
  402498:	48 8b 3d c1 4c 00 00 	mov    0x4cc1(%rip),%rdi        # 407160 <user_id>
  40249f:	e8 75 12 00 00       	call   403719 <driver_post>
  4024a4:	85 c0                	test   %eax,%eax
  4024a6:	78 2d                	js     4024d5 <notify_server+0x138>
  4024a8:	85 db                	test   %ebx,%ebx
  4024aa:	74 51                	je     4024fd <notify_server+0x160>
  4024ac:	48 8d 3d d5 20 00 00 	lea    0x20d5(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  4024b3:	e8 f8 ed ff ff       	call   4012b0 <puts@plt>
  4024b8:	48 8d 3d b7 1f 00 00 	lea    0x1fb7(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  4024bf:	e8 ec ed ff ff       	call   4012b0 <puts@plt>
  4024c4:	e9 ce 00 00 00       	jmp    402597 <notify_server+0x1fa>
  4024c9:	48 8d 2d 74 1f 00 00 	lea    0x1f74(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  4024d0:	e9 60 ff ff ff       	jmp    402435 <notify_server+0x98>
  4024d5:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4024dc:	00 
  4024dd:	48 8d 35 86 1f 00 00 	lea    0x1f86(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  4024e4:	bf 01 00 00 00       	mov    $0x1,%edi
  4024e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ee:	e8 cd ee ff ff       	call   4013c0 <__printf_chk@plt>
  4024f3:	bf 01 00 00 00       	mov    $0x1,%edi
  4024f8:	e8 13 ef ff ff       	call   401410 <exit@plt>
  4024fd:	48 8d 3d 7c 1f 00 00 	lea    0x1f7c(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  402504:	e8 a7 ed ff ff       	call   4012b0 <puts@plt>
  402509:	e9 89 00 00 00       	jmp    402597 <notify_server+0x1fa>
  40250e:	48 89 ea             	mov    %rbp,%rdx
  402511:	48 8d 35 a8 20 00 00 	lea    0x20a8(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  402518:	bf 01 00 00 00       	mov    $0x1,%edi
  40251d:	b8 00 00 00 00       	mov    $0x0,%eax
  402522:	e8 99 ee ff ff       	call   4013c0 <__printf_chk@plt>
  402527:	48 8b 15 32 4c 00 00 	mov    0x4c32(%rip),%rdx        # 407160 <user_id>
  40252e:	48 8d 35 52 1f 00 00 	lea    0x1f52(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  402535:	bf 01 00 00 00       	mov    $0x1,%edi
  40253a:	b8 00 00 00 00       	mov    $0x0,%eax
  40253f:	e8 7c ee ff ff       	call   4013c0 <__printf_chk@plt>
  402544:	48 8b 15 25 4c 00 00 	mov    0x4c25(%rip),%rdx        # 407170 <course>
  40254b:	48 8d 35 42 1f 00 00 	lea    0x1f42(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  402552:	bf 01 00 00 00       	mov    $0x1,%edi
  402557:	b8 00 00 00 00       	mov    $0x0,%eax
  40255c:	e8 5f ee ff ff       	call   4013c0 <__printf_chk@plt>
  402561:	48 8b 15 00 4c 00 00 	mov    0x4c00(%rip),%rdx        # 407168 <lab>
  402568:	48 8d 35 31 1f 00 00 	lea    0x1f31(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  40256f:	bf 01 00 00 00       	mov    $0x1,%edi
  402574:	b8 00 00 00 00       	mov    $0x0,%eax
  402579:	e8 42 ee ff ff       	call   4013c0 <__printf_chk@plt>
  40257e:	48 89 e2             	mov    %rsp,%rdx
  402581:	48 8d 35 21 1f 00 00 	lea    0x1f21(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  402588:	bf 01 00 00 00       	mov    $0x1,%edi
  40258d:	b8 00 00 00 00       	mov    $0x0,%eax
  402592:	e8 29 ee ff ff       	call   4013c0 <__printf_chk@plt>
  402597:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40259e:	00 
  40259f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4025a6:	00 00 
  4025a8:	75 0a                	jne    4025b4 <notify_server+0x217>
  4025aa:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4025b1:	5b                   	pop    %rbx
  4025b2:	5d                   	pop    %rbp
  4025b3:	c3                   	ret    
  4025b4:	e8 72 02 00 00       	call   40282b <__stack_chk_fail>

00000000004025b9 <validate>:
  4025b9:	f3 0f 1e fa          	endbr64 
  4025bd:	53                   	push   %rbx
  4025be:	89 fb                	mov    %edi,%ebx
  4025c0:	83 3d 61 4f 00 00 00 	cmpl   $0x0,0x4f61(%rip)        # 407528 <is_checker>
  4025c7:	74 79                	je     402642 <validate+0x89>
  4025c9:	39 3d 4d 4f 00 00    	cmp    %edi,0x4f4d(%rip)        # 40751c <vlevel>
  4025cf:	75 39                	jne    40260a <validate+0x51>
  4025d1:	8b 15 41 4f 00 00    	mov    0x4f41(%rip),%edx        # 407518 <check_level>
  4025d7:	39 fa                	cmp    %edi,%edx
  4025d9:	75 45                	jne    402620 <validate+0x67>
  4025db:	0f be 0d 66 5b 00 00 	movsbl 0x5b66(%rip),%ecx        # 408148 <target_prefix>
  4025e2:	4c 8d 0d 57 4f 00 00 	lea    0x4f57(%rip),%r9        # 407540 <gets_buf>
  4025e9:	41 89 f8             	mov    %edi,%r8d
  4025ec:	8b 15 2e 4f 00 00    	mov    0x4f2e(%rip),%edx        # 407520 <authkey>
  4025f2:	48 8d 35 17 20 00 00 	lea    0x2017(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  4025f9:	bf 01 00 00 00       	mov    $0x1,%edi
  4025fe:	b8 00 00 00 00       	mov    $0x0,%eax
  402603:	e8 b8 ed ff ff       	call   4013c0 <__printf_chk@plt>
  402608:	5b                   	pop    %rbx
  402609:	c3                   	ret    
  40260a:	48 8d 3d a4 1e 00 00 	lea    0x1ea4(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  402611:	e8 9a ec ff ff       	call   4012b0 <puts@plt>
  402616:	b8 00 00 00 00       	mov    $0x0,%eax
  40261b:	e8 e9 fc ff ff       	call   402309 <check_fail>
  402620:	89 f9                	mov    %edi,%ecx
  402622:	48 8d 35 bf 1f 00 00 	lea    0x1fbf(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  402629:	bf 01 00 00 00       	mov    $0x1,%edi
  40262e:	b8 00 00 00 00       	mov    $0x0,%eax
  402633:	e8 88 ed ff ff       	call   4013c0 <__printf_chk@plt>
  402638:	b8 00 00 00 00       	mov    $0x0,%eax
  40263d:	e8 c7 fc ff ff       	call   402309 <check_fail>
  402642:	39 3d d4 4e 00 00    	cmp    %edi,0x4ed4(%rip)        # 40751c <vlevel>
  402648:	74 1a                	je     402664 <validate+0xab>
  40264a:	48 8d 3d 64 1e 00 00 	lea    0x1e64(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  402651:	e8 5a ec ff ff       	call   4012b0 <puts@plt>
  402656:	89 de                	mov    %ebx,%esi
  402658:	bf 00 00 00 00       	mov    $0x0,%edi
  40265d:	e8 3b fd ff ff       	call   40239d <notify_server>
  402662:	eb a4                	jmp    402608 <validate+0x4f>
  402664:	0f be 0d dd 5a 00 00 	movsbl 0x5add(%rip),%ecx        # 408148 <target_prefix>
  40266b:	89 fa                	mov    %edi,%edx
  40266d:	48 8d 35 c4 1f 00 00 	lea    0x1fc4(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  402674:	bf 01 00 00 00       	mov    $0x1,%edi
  402679:	b8 00 00 00 00       	mov    $0x0,%eax
  40267e:	e8 3d ed ff ff       	call   4013c0 <__printf_chk@plt>
  402683:	89 de                	mov    %ebx,%esi
  402685:	bf 01 00 00 00       	mov    $0x1,%edi
  40268a:	e8 0e fd ff ff       	call   40239d <notify_server>
  40268f:	e9 74 ff ff ff       	jmp    402608 <validate+0x4f>

0000000000402694 <fail>:
  402694:	f3 0f 1e fa          	endbr64 
  402698:	48 83 ec 08          	sub    $0x8,%rsp
  40269c:	83 3d 85 4e 00 00 00 	cmpl   $0x0,0x4e85(%rip)        # 407528 <is_checker>
  4026a3:	75 11                	jne    4026b6 <fail+0x22>
  4026a5:	89 fe                	mov    %edi,%esi
  4026a7:	bf 00 00 00 00       	mov    $0x0,%edi
  4026ac:	e8 ec fc ff ff       	call   40239d <notify_server>
  4026b1:	48 83 c4 08          	add    $0x8,%rsp
  4026b5:	c3                   	ret    
  4026b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4026bb:	e8 49 fc ff ff       	call   402309 <check_fail>

00000000004026c0 <bushandler>:
  4026c0:	f3 0f 1e fa          	endbr64 
  4026c4:	50                   	push   %rax
  4026c5:	58                   	pop    %rax
  4026c6:	48 83 ec 08          	sub    $0x8,%rsp
  4026ca:	83 3d 57 4e 00 00 00 	cmpl   $0x0,0x4e57(%rip)        # 407528 <is_checker>
  4026d1:	74 16                	je     4026e9 <bushandler+0x29>
  4026d3:	48 8d 3d f9 1d 00 00 	lea    0x1df9(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  4026da:	e8 d1 eb ff ff       	call   4012b0 <puts@plt>
  4026df:	b8 00 00 00 00       	mov    $0x0,%eax
  4026e4:	e8 20 fc ff ff       	call   402309 <check_fail>
  4026e9:	48 8d 3d 80 1f 00 00 	lea    0x1f80(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  4026f0:	e8 bb eb ff ff       	call   4012b0 <puts@plt>
  4026f5:	48 8d 3d e1 1d 00 00 	lea    0x1de1(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4026fc:	e8 af eb ff ff       	call   4012b0 <puts@plt>
  402701:	be 00 00 00 00       	mov    $0x0,%esi
  402706:	bf 00 00 00 00       	mov    $0x0,%edi
  40270b:	e8 8d fc ff ff       	call   40239d <notify_server>
  402710:	bf 01 00 00 00       	mov    $0x1,%edi
  402715:	e8 f6 ec ff ff       	call   401410 <exit@plt>

000000000040271a <seghandler>:
  40271a:	f3 0f 1e fa          	endbr64 
  40271e:	50                   	push   %rax
  40271f:	58                   	pop    %rax
  402720:	48 83 ec 08          	sub    $0x8,%rsp
  402724:	83 3d fd 4d 00 00 00 	cmpl   $0x0,0x4dfd(%rip)        # 407528 <is_checker>
  40272b:	74 16                	je     402743 <seghandler+0x29>
  40272d:	48 8d 3d bf 1d 00 00 	lea    0x1dbf(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  402734:	e8 77 eb ff ff       	call   4012b0 <puts@plt>
  402739:	b8 00 00 00 00       	mov    $0x0,%eax
  40273e:	e8 c6 fb ff ff       	call   402309 <check_fail>
  402743:	48 8d 3d 46 1f 00 00 	lea    0x1f46(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  40274a:	e8 61 eb ff ff       	call   4012b0 <puts@plt>
  40274f:	48 8d 3d 87 1d 00 00 	lea    0x1d87(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402756:	e8 55 eb ff ff       	call   4012b0 <puts@plt>
  40275b:	be 00 00 00 00       	mov    $0x0,%esi
  402760:	bf 00 00 00 00       	mov    $0x0,%edi
  402765:	e8 33 fc ff ff       	call   40239d <notify_server>
  40276a:	bf 01 00 00 00       	mov    $0x1,%edi
  40276f:	e8 9c ec ff ff       	call   401410 <exit@plt>

0000000000402774 <illegalhandler>:
  402774:	f3 0f 1e fa          	endbr64 
  402778:	50                   	push   %rax
  402779:	58                   	pop    %rax
  40277a:	48 83 ec 08          	sub    $0x8,%rsp
  40277e:	83 3d a3 4d 00 00 00 	cmpl   $0x0,0x4da3(%rip)        # 407528 <is_checker>
  402785:	74 16                	je     40279d <illegalhandler+0x29>
  402787:	48 8d 3d 78 1d 00 00 	lea    0x1d78(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  40278e:	e8 1d eb ff ff       	call   4012b0 <puts@plt>
  402793:	b8 00 00 00 00       	mov    $0x0,%eax
  402798:	e8 6c fb ff ff       	call   402309 <check_fail>
  40279d:	48 8d 3d 14 1f 00 00 	lea    0x1f14(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  4027a4:	e8 07 eb ff ff       	call   4012b0 <puts@plt>
  4027a9:	48 8d 3d 2d 1d 00 00 	lea    0x1d2d(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4027b0:	e8 fb ea ff ff       	call   4012b0 <puts@plt>
  4027b5:	be 00 00 00 00       	mov    $0x0,%esi
  4027ba:	bf 00 00 00 00       	mov    $0x0,%edi
  4027bf:	e8 d9 fb ff ff       	call   40239d <notify_server>
  4027c4:	bf 01 00 00 00       	mov    $0x1,%edi
  4027c9:	e8 42 ec ff ff       	call   401410 <exit@plt>

00000000004027ce <sigalrmhandler>:
  4027ce:	f3 0f 1e fa          	endbr64 
  4027d2:	50                   	push   %rax
  4027d3:	58                   	pop    %rax
  4027d4:	48 83 ec 08          	sub    $0x8,%rsp
  4027d8:	83 3d 49 4d 00 00 00 	cmpl   $0x0,0x4d49(%rip)        # 407528 <is_checker>
  4027df:	74 16                	je     4027f7 <sigalrmhandler+0x29>
  4027e1:	48 8d 3d 32 1d 00 00 	lea    0x1d32(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  4027e8:	e8 c3 ea ff ff       	call   4012b0 <puts@plt>
  4027ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4027f2:	e8 12 fb ff ff       	call   402309 <check_fail>
  4027f7:	ba 02 00 00 00       	mov    $0x2,%edx
  4027fc:	48 8d 35 e5 1e 00 00 	lea    0x1ee5(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  402803:	bf 01 00 00 00       	mov    $0x1,%edi
  402808:	b8 00 00 00 00       	mov    $0x0,%eax
  40280d:	e8 ae eb ff ff       	call   4013c0 <__printf_chk@plt>
  402812:	be 00 00 00 00       	mov    $0x0,%esi
  402817:	bf 00 00 00 00       	mov    $0x0,%edi
  40281c:	e8 7c fb ff ff       	call   40239d <notify_server>
  402821:	bf 01 00 00 00       	mov    $0x1,%edi
  402826:	e8 e5 eb ff ff       	call   401410 <exit@plt>

000000000040282b <__stack_chk_fail>:
  40282b:	f3 0f 1e fa          	endbr64 
  40282f:	50                   	push   %rax
  402830:	58                   	pop    %rax
  402831:	48 83 ec 08          	sub    $0x8,%rsp
  402835:	83 3d ec 4c 00 00 00 	cmpl   $0x0,0x4cec(%rip)        # 407528 <is_checker>
  40283c:	74 16                	je     402854 <__stack_chk_fail+0x29>
  40283e:	48 8d 3d dd 1c 00 00 	lea    0x1cdd(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  402845:	e8 66 ea ff ff       	call   4012b0 <puts@plt>
  40284a:	b8 00 00 00 00       	mov    $0x0,%eax
  40284f:	e8 b5 fa ff ff       	call   402309 <check_fail>
  402854:	48 8d 3d c5 1e 00 00 	lea    0x1ec5(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  40285b:	e8 50 ea ff ff       	call   4012b0 <puts@plt>
  402860:	48 8d 3d 76 1c 00 00 	lea    0x1c76(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402867:	e8 44 ea ff ff       	call   4012b0 <puts@plt>
  40286c:	be 00 00 00 00       	mov    $0x0,%esi
  402871:	bf 00 00 00 00       	mov    $0x0,%edi
  402876:	e8 22 fb ff ff       	call   40239d <notify_server>
  40287b:	bf 01 00 00 00       	mov    $0x1,%edi
  402880:	e8 8b eb ff ff       	call   401410 <exit@plt>

0000000000402885 <launch>:
  402885:	f3 0f 1e fa          	endbr64 
  402889:	55                   	push   %rbp
  40288a:	48 89 e5             	mov    %rsp,%rbp
  40288d:	53                   	push   %rbx
  40288e:	48 83 ec 18          	sub    $0x18,%rsp
  402892:	48 89 fa             	mov    %rdi,%rdx
  402895:	89 f3                	mov    %esi,%ebx
  402897:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40289e:	00 00 
  4028a0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4028a4:	31 c0                	xor    %eax,%eax
  4028a6:	48 8d 47 17          	lea    0x17(%rdi),%rax
  4028aa:	48 89 c1             	mov    %rax,%rcx
  4028ad:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4028b1:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  4028b7:	48 89 e6             	mov    %rsp,%rsi
  4028ba:	48 29 c6             	sub    %rax,%rsi
  4028bd:	48 89 f0             	mov    %rsi,%rax
  4028c0:	48 39 c4             	cmp    %rax,%rsp
  4028c3:	74 12                	je     4028d7 <launch+0x52>
  4028c5:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4028cc:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4028d3:	00 00 
  4028d5:	eb e9                	jmp    4028c0 <launch+0x3b>
  4028d7:	48 89 c8             	mov    %rcx,%rax
  4028da:	25 ff 0f 00 00       	and    $0xfff,%eax
  4028df:	48 29 c4             	sub    %rax,%rsp
  4028e2:	48 85 c0             	test   %rax,%rax
  4028e5:	74 06                	je     4028ed <launch+0x68>
  4028e7:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4028ed:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4028f2:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4028f6:	be f4 00 00 00       	mov    $0xf4,%esi
  4028fb:	e8 e0 e9 ff ff       	call   4012e0 <memset@plt>
  402900:	48 8b 05 b9 4b 00 00 	mov    0x4bb9(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  402907:	48 39 05 02 4c 00 00 	cmp    %rax,0x4c02(%rip)        # 407510 <infile>
  40290e:	74 42                	je     402952 <launch+0xcd>
  402910:	c7 05 02 4c 00 00 00 	movl   $0x0,0x4c02(%rip)        # 40751c <vlevel>
  402917:	00 00 00 
  40291a:	85 db                	test   %ebx,%ebx
  40291c:	75 42                	jne    402960 <launch+0xdb>
  40291e:	b8 00 00 00 00       	mov    $0x0,%eax
  402923:	e8 db f8 ff ff       	call   402203 <test>
  402928:	83 3d f9 4b 00 00 00 	cmpl   $0x0,0x4bf9(%rip)        # 407528 <is_checker>
  40292f:	75 3b                	jne    40296c <launch+0xe7>
  402931:	48 8d 3d 11 1c 00 00 	lea    0x1c11(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  402938:	e8 73 e9 ff ff       	call   4012b0 <puts@plt>
  40293d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402941:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402948:	00 00 
  40294a:	75 36                	jne    402982 <launch+0xfd>
  40294c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402950:	c9                   	leave  
  402951:	c3                   	ret    
  402952:	48 8d 3d d8 1b 00 00 	lea    0x1bd8(%rip),%rdi        # 404531 <_IO_stdin_used+0x531>
  402959:	e8 52 e9 ff ff       	call   4012b0 <puts@plt>
  40295e:	eb b0                	jmp    402910 <launch+0x8b>
  402960:	b8 00 00 00 00       	mov    $0x0,%eax
  402965:	e8 01 f9 ff ff       	call   40226b <test2>
  40296a:	eb bc                	jmp    402928 <launch+0xa3>
  40296c:	48 8d 3d cb 1b 00 00 	lea    0x1bcb(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  402973:	e8 38 e9 ff ff       	call   4012b0 <puts@plt>
  402978:	b8 00 00 00 00       	mov    $0x0,%eax
  40297d:	e8 87 f9 ff ff       	call   402309 <check_fail>
  402982:	e8 a4 fe ff ff       	call   40282b <__stack_chk_fail>

0000000000402987 <stable_launch>:
  402987:	f3 0f 1e fa          	endbr64 
  40298b:	55                   	push   %rbp
  40298c:	53                   	push   %rbx
  40298d:	48 83 ec 08          	sub    $0x8,%rsp
  402991:	89 f5                	mov    %esi,%ebp
  402993:	48 89 3d 6e 4b 00 00 	mov    %rdi,0x4b6e(%rip)        # 407508 <global_offset>
  40299a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4029a0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4029a6:	b9 32 01 00 00       	mov    $0x132,%ecx
  4029ab:	ba 07 00 00 00       	mov    $0x7,%edx
  4029b0:	be 00 00 10 00       	mov    $0x100000,%esi
  4029b5:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4029ba:	e8 11 e9 ff ff       	call   4012d0 <mmap@plt>
  4029bf:	48 89 c3             	mov    %rax,%rbx
  4029c2:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4029c8:	75 4a                	jne    402a14 <stable_launch+0x8d>
  4029ca:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4029d1:	48 89 15 78 57 00 00 	mov    %rdx,0x5778(%rip)        # 408150 <stack_top>
  4029d8:	48 89 e0             	mov    %rsp,%rax
  4029db:	48 89 d4             	mov    %rdx,%rsp
  4029de:	48 89 c2             	mov    %rax,%rdx
  4029e1:	48 89 15 18 4b 00 00 	mov    %rdx,0x4b18(%rip)        # 407500 <global_save_stack>
  4029e8:	89 ee                	mov    %ebp,%esi
  4029ea:	48 8b 3d 17 4b 00 00 	mov    0x4b17(%rip),%rdi        # 407508 <global_offset>
  4029f1:	e8 8f fe ff ff       	call   402885 <launch>
  4029f6:	48 8b 05 03 4b 00 00 	mov    0x4b03(%rip),%rax        # 407500 <global_save_stack>
  4029fd:	48 89 c4             	mov    %rax,%rsp
  402a00:	be 00 00 10 00       	mov    $0x100000,%esi
  402a05:	48 89 df             	mov    %rbx,%rdi
  402a08:	e8 a3 e9 ff ff       	call   4013b0 <munmap@plt>
  402a0d:	48 83 c4 08          	add    $0x8,%rsp
  402a11:	5b                   	pop    %rbx
  402a12:	5d                   	pop    %rbp
  402a13:	c3                   	ret    
  402a14:	be 00 00 10 00       	mov    $0x100000,%esi
  402a19:	48 89 c7             	mov    %rax,%rdi
  402a1c:	e8 8f e9 ff ff       	call   4013b0 <munmap@plt>
  402a21:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402a26:	48 8d 15 1b 1d 00 00 	lea    0x1d1b(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  402a2d:	be 01 00 00 00       	mov    $0x1,%esi
  402a32:	48 8b 3d a7 4a 00 00 	mov    0x4aa7(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402a39:	b8 00 00 00 00       	mov    $0x0,%eax
  402a3e:	e8 ed e9 ff ff       	call   401430 <__fprintf_chk@plt>
  402a43:	bf 01 00 00 00       	mov    $0x1,%edi
  402a48:	e8 c3 e9 ff ff       	call   401410 <exit@plt>

0000000000402a4d <rio_readinitb>:
  402a4d:	89 37                	mov    %esi,(%rdi)
  402a4f:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402a56:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402a5a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402a5e:	c3                   	ret    

0000000000402a5f <sigalrm_handler>:
  402a5f:	f3 0f 1e fa          	endbr64 
  402a63:	50                   	push   %rax
  402a64:	58                   	pop    %rax
  402a65:	48 83 ec 08          	sub    $0x8,%rsp
  402a69:	b9 00 00 00 00       	mov    $0x0,%ecx
  402a6e:	48 8d 15 0b 1d 00 00 	lea    0x1d0b(%rip),%rdx        # 404780 <trans_char+0x10>
  402a75:	be 01 00 00 00       	mov    $0x1,%esi
  402a7a:	48 8b 3d 5f 4a 00 00 	mov    0x4a5f(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402a81:	b8 00 00 00 00       	mov    $0x0,%eax
  402a86:	e8 a5 e9 ff ff       	call   401430 <__fprintf_chk@plt>
  402a8b:	bf 01 00 00 00       	mov    $0x1,%edi
  402a90:	e8 7b e9 ff ff       	call   401410 <exit@plt>

0000000000402a95 <rio_writen>:
  402a95:	41 55                	push   %r13
  402a97:	41 54                	push   %r12
  402a99:	55                   	push   %rbp
  402a9a:	53                   	push   %rbx
  402a9b:	48 83 ec 08          	sub    $0x8,%rsp
  402a9f:	41 89 fc             	mov    %edi,%r12d
  402aa2:	48 89 f5             	mov    %rsi,%rbp
  402aa5:	49 89 d5             	mov    %rdx,%r13
  402aa8:	48 89 d3             	mov    %rdx,%rbx
  402aab:	eb 06                	jmp    402ab3 <rio_writen+0x1e>
  402aad:	48 29 c3             	sub    %rax,%rbx
  402ab0:	48 01 c5             	add    %rax,%rbp
  402ab3:	48 85 db             	test   %rbx,%rbx
  402ab6:	74 24                	je     402adc <rio_writen+0x47>
  402ab8:	48 89 da             	mov    %rbx,%rdx
  402abb:	48 89 ee             	mov    %rbp,%rsi
  402abe:	44 89 e7             	mov    %r12d,%edi
  402ac1:	e8 fa e7 ff ff       	call   4012c0 <write@plt>
  402ac6:	48 85 c0             	test   %rax,%rax
  402ac9:	7f e2                	jg     402aad <rio_writen+0x18>
  402acb:	e8 90 e7 ff ff       	call   401260 <__errno_location@plt>
  402ad0:	83 38 04             	cmpl   $0x4,(%rax)
  402ad3:	75 15                	jne    402aea <rio_writen+0x55>
  402ad5:	b8 00 00 00 00       	mov    $0x0,%eax
  402ada:	eb d1                	jmp    402aad <rio_writen+0x18>
  402adc:	4c 89 e8             	mov    %r13,%rax
  402adf:	48 83 c4 08          	add    $0x8,%rsp
  402ae3:	5b                   	pop    %rbx
  402ae4:	5d                   	pop    %rbp
  402ae5:	41 5c                	pop    %r12
  402ae7:	41 5d                	pop    %r13
  402ae9:	c3                   	ret    
  402aea:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402af1:	eb ec                	jmp    402adf <rio_writen+0x4a>

0000000000402af3 <rio_read>:
  402af3:	41 55                	push   %r13
  402af5:	41 54                	push   %r12
  402af7:	55                   	push   %rbp
  402af8:	53                   	push   %rbx
  402af9:	48 83 ec 08          	sub    $0x8,%rsp
  402afd:	48 89 fb             	mov    %rdi,%rbx
  402b00:	49 89 f5             	mov    %rsi,%r13
  402b03:	49 89 d4             	mov    %rdx,%r12
  402b06:	eb 17                	jmp    402b1f <rio_read+0x2c>
  402b08:	e8 53 e7 ff ff       	call   401260 <__errno_location@plt>
  402b0d:	83 38 04             	cmpl   $0x4,(%rax)
  402b10:	74 0d                	je     402b1f <rio_read+0x2c>
  402b12:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402b19:	eb 54                	jmp    402b6f <rio_read+0x7c>
  402b1b:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402b1f:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402b22:	85 ed                	test   %ebp,%ebp
  402b24:	7f 23                	jg     402b49 <rio_read+0x56>
  402b26:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402b2a:	8b 3b                	mov    (%rbx),%edi
  402b2c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b31:	48 89 ee             	mov    %rbp,%rsi
  402b34:	e8 d7 e7 ff ff       	call   401310 <read@plt>
  402b39:	89 43 04             	mov    %eax,0x4(%rbx)
  402b3c:	85 c0                	test   %eax,%eax
  402b3e:	78 c8                	js     402b08 <rio_read+0x15>
  402b40:	75 d9                	jne    402b1b <rio_read+0x28>
  402b42:	b8 00 00 00 00       	mov    $0x0,%eax
  402b47:	eb 26                	jmp    402b6f <rio_read+0x7c>
  402b49:	89 e8                	mov    %ebp,%eax
  402b4b:	4c 39 e0             	cmp    %r12,%rax
  402b4e:	72 03                	jb     402b53 <rio_read+0x60>
  402b50:	44 89 e5             	mov    %r12d,%ebp
  402b53:	4c 63 e5             	movslq %ebp,%r12
  402b56:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402b5a:	4c 89 e2             	mov    %r12,%rdx
  402b5d:	4c 89 ef             	mov    %r13,%rdi
  402b60:	e8 0b e8 ff ff       	call   401370 <memcpy@plt>
  402b65:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402b69:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402b6c:	4c 89 e0             	mov    %r12,%rax
  402b6f:	48 83 c4 08          	add    $0x8,%rsp
  402b73:	5b                   	pop    %rbx
  402b74:	5d                   	pop    %rbp
  402b75:	41 5c                	pop    %r12
  402b77:	41 5d                	pop    %r13
  402b79:	c3                   	ret    

0000000000402b7a <rio_readlineb>:
  402b7a:	41 55                	push   %r13
  402b7c:	41 54                	push   %r12
  402b7e:	55                   	push   %rbp
  402b7f:	53                   	push   %rbx
  402b80:	48 83 ec 18          	sub    $0x18,%rsp
  402b84:	49 89 fd             	mov    %rdi,%r13
  402b87:	48 89 f5             	mov    %rsi,%rbp
  402b8a:	49 89 d4             	mov    %rdx,%r12
  402b8d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b94:	00 00 
  402b96:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402b9b:	31 c0                	xor    %eax,%eax
  402b9d:	bb 01 00 00 00       	mov    $0x1,%ebx
  402ba2:	eb 18                	jmp    402bbc <rio_readlineb+0x42>
  402ba4:	85 c0                	test   %eax,%eax
  402ba6:	75 65                	jne    402c0d <rio_readlineb+0x93>
  402ba8:	48 83 fb 01          	cmp    $0x1,%rbx
  402bac:	75 3d                	jne    402beb <rio_readlineb+0x71>
  402bae:	b8 00 00 00 00       	mov    $0x0,%eax
  402bb3:	eb 3d                	jmp    402bf2 <rio_readlineb+0x78>
  402bb5:	48 83 c3 01          	add    $0x1,%rbx
  402bb9:	48 89 d5             	mov    %rdx,%rbp
  402bbc:	4c 39 e3             	cmp    %r12,%rbx
  402bbf:	73 2a                	jae    402beb <rio_readlineb+0x71>
  402bc1:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402bc6:	ba 01 00 00 00       	mov    $0x1,%edx
  402bcb:	4c 89 ef             	mov    %r13,%rdi
  402bce:	e8 20 ff ff ff       	call   402af3 <rio_read>
  402bd3:	83 f8 01             	cmp    $0x1,%eax
  402bd6:	75 cc                	jne    402ba4 <rio_readlineb+0x2a>
  402bd8:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402bdc:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402be1:	88 45 00             	mov    %al,0x0(%rbp)
  402be4:	3c 0a                	cmp    $0xa,%al
  402be6:	75 cd                	jne    402bb5 <rio_readlineb+0x3b>
  402be8:	48 89 d5             	mov    %rdx,%rbp
  402beb:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402bef:	48 89 d8             	mov    %rbx,%rax
  402bf2:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402bf7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402bfe:	00 00 
  402c00:	75 14                	jne    402c16 <rio_readlineb+0x9c>
  402c02:	48 83 c4 18          	add    $0x18,%rsp
  402c06:	5b                   	pop    %rbx
  402c07:	5d                   	pop    %rbp
  402c08:	41 5c                	pop    %r12
  402c0a:	41 5d                	pop    %r13
  402c0c:	c3                   	ret    
  402c0d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402c14:	eb dc                	jmp    402bf2 <rio_readlineb+0x78>
  402c16:	e8 10 fc ff ff       	call   40282b <__stack_chk_fail>

0000000000402c1b <urlencode>:
  402c1b:	41 54                	push   %r12
  402c1d:	55                   	push   %rbp
  402c1e:	53                   	push   %rbx
  402c1f:	48 83 ec 10          	sub    $0x10,%rsp
  402c23:	48 89 fb             	mov    %rdi,%rbx
  402c26:	48 89 f5             	mov    %rsi,%rbp
  402c29:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c30:	00 00 
  402c32:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402c37:	31 c0                	xor    %eax,%eax
  402c39:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402c40:	f2 ae                	repnz scas %es:(%rdi),%al
  402c42:	48 f7 d1             	not    %rcx
  402c45:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402c48:	eb 0f                	jmp    402c59 <urlencode+0x3e>
  402c4a:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402c4e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402c52:	48 83 c3 01          	add    $0x1,%rbx
  402c56:	44 89 e0             	mov    %r12d,%eax
  402c59:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402c5d:	85 c0                	test   %eax,%eax
  402c5f:	0f 84 a8 00 00 00    	je     402d0d <urlencode+0xf2>
  402c65:	44 0f b6 03          	movzbl (%rbx),%r8d
  402c69:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402c6d:	0f 94 c2             	sete   %dl
  402c70:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402c74:	0f 94 c0             	sete   %al
  402c77:	08 c2                	or     %al,%dl
  402c79:	75 cf                	jne    402c4a <urlencode+0x2f>
  402c7b:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402c7f:	74 c9                	je     402c4a <urlencode+0x2f>
  402c81:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402c85:	74 c3                	je     402c4a <urlencode+0x2f>
  402c87:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402c8b:	3c 09                	cmp    $0x9,%al
  402c8d:	76 bb                	jbe    402c4a <urlencode+0x2f>
  402c8f:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402c93:	3c 19                	cmp    $0x19,%al
  402c95:	76 b3                	jbe    402c4a <urlencode+0x2f>
  402c97:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402c9b:	3c 19                	cmp    $0x19,%al
  402c9d:	76 ab                	jbe    402c4a <urlencode+0x2f>
  402c9f:	41 80 f8 20          	cmp    $0x20,%r8b
  402ca3:	74 56                	je     402cfb <urlencode+0xe0>
  402ca5:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402ca9:	3c 5f                	cmp    $0x5f,%al
  402cab:	0f 96 c2             	setbe  %dl
  402cae:	41 80 f8 09          	cmp    $0x9,%r8b
  402cb2:	0f 94 c0             	sete   %al
  402cb5:	08 c2                	or     %al,%dl
  402cb7:	74 4f                	je     402d08 <urlencode+0xed>
  402cb9:	48 89 e7             	mov    %rsp,%rdi
  402cbc:	45 0f b6 c0          	movzbl %r8b,%r8d
  402cc0:	48 8d 0d 6e 1b 00 00 	lea    0x1b6e(%rip),%rcx        # 404835 <trans_char+0xc5>
  402cc7:	ba 08 00 00 00       	mov    $0x8,%edx
  402ccc:	be 01 00 00 00       	mov    $0x1,%esi
  402cd1:	b8 00 00 00 00       	mov    $0x0,%eax
  402cd6:	e8 75 e7 ff ff       	call   401450 <__sprintf_chk@plt>
  402cdb:	0f b6 04 24          	movzbl (%rsp),%eax
  402cdf:	88 45 00             	mov    %al,0x0(%rbp)
  402ce2:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402ce7:	88 45 01             	mov    %al,0x1(%rbp)
  402cea:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402cef:	88 45 02             	mov    %al,0x2(%rbp)
  402cf2:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402cf6:	e9 57 ff ff ff       	jmp    402c52 <urlencode+0x37>
  402cfb:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402cff:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402d03:	e9 4a ff ff ff       	jmp    402c52 <urlencode+0x37>
  402d08:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d0d:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402d12:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402d19:	00 00 
  402d1b:	75 09                	jne    402d26 <urlencode+0x10b>
  402d1d:	48 83 c4 10          	add    $0x10,%rsp
  402d21:	5b                   	pop    %rbx
  402d22:	5d                   	pop    %rbp
  402d23:	41 5c                	pop    %r12
  402d25:	c3                   	ret    
  402d26:	e8 00 fb ff ff       	call   40282b <__stack_chk_fail>

0000000000402d2b <submitr>:
  402d2b:	f3 0f 1e fa          	endbr64 
  402d2f:	41 57                	push   %r15
  402d31:	41 56                	push   %r14
  402d33:	41 55                	push   %r13
  402d35:	41 54                	push   %r12
  402d37:	55                   	push   %rbp
  402d38:	53                   	push   %rbx
  402d39:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402d40:	ff 
  402d41:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402d48:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402d4d:	4c 39 dc             	cmp    %r11,%rsp
  402d50:	75 ef                	jne    402d41 <submitr+0x16>
  402d52:	48 83 ec 68          	sub    $0x68,%rsp
  402d56:	49 89 fc             	mov    %rdi,%r12
  402d59:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402d5d:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402d62:	49 89 cd             	mov    %rcx,%r13
  402d65:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402d6a:	4d 89 ce             	mov    %r9,%r14
  402d6d:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402d74:	00 
  402d75:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d7c:	00 00 
  402d7e:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402d85:	00 
  402d86:	31 c0                	xor    %eax,%eax
  402d88:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402d8f:	00 
  402d90:	ba 00 00 00 00       	mov    $0x0,%edx
  402d95:	be 01 00 00 00       	mov    $0x1,%esi
  402d9a:	bf 02 00 00 00       	mov    $0x2,%edi
  402d9f:	e8 bc e6 ff ff       	call   401460 <socket@plt>
  402da4:	85 c0                	test   %eax,%eax
  402da6:	0f 88 a5 02 00 00    	js     403051 <submitr+0x326>
  402dac:	89 c3                	mov    %eax,%ebx
  402dae:	4c 89 e7             	mov    %r12,%rdi
  402db1:	e8 8a e5 ff ff       	call   401340 <gethostbyname@plt>
  402db6:	48 85 c0             	test   %rax,%rax
  402db9:	0f 84 de 02 00 00    	je     40309d <submitr+0x372>
  402dbf:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402dc4:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402dcb:	00 00 
  402dcd:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402dd4:	00 00 
  402dd6:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402ddd:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402de1:	48 8b 40 18          	mov    0x18(%rax),%rax
  402de5:	48 8b 30             	mov    (%rax),%rsi
  402de8:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402ded:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402df2:	e8 59 e5 ff ff       	call   401350 <__memmove_chk@plt>
  402df7:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402dfc:	66 c1 c6 08          	rol    $0x8,%si
  402e00:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402e05:	ba 10 00 00 00       	mov    $0x10,%edx
  402e0a:	4c 89 fe             	mov    %r15,%rsi
  402e0d:	89 df                	mov    %ebx,%edi
  402e0f:	e8 0c e6 ff ff       	call   401420 <connect@plt>
  402e14:	85 c0                	test   %eax,%eax
  402e16:	0f 88 f7 02 00 00    	js     403113 <submitr+0x3e8>
  402e1c:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402e23:	b8 00 00 00 00       	mov    $0x0,%eax
  402e28:	48 89 f1             	mov    %rsi,%rcx
  402e2b:	4c 89 f7             	mov    %r14,%rdi
  402e2e:	f2 ae                	repnz scas %es:(%rdi),%al
  402e30:	48 89 ca             	mov    %rcx,%rdx
  402e33:	48 f7 d2             	not    %rdx
  402e36:	48 89 f1             	mov    %rsi,%rcx
  402e39:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402e3e:	f2 ae                	repnz scas %es:(%rdi),%al
  402e40:	48 f7 d1             	not    %rcx
  402e43:	49 89 c8             	mov    %rcx,%r8
  402e46:	48 89 f1             	mov    %rsi,%rcx
  402e49:	4c 89 ef             	mov    %r13,%rdi
  402e4c:	f2 ae                	repnz scas %es:(%rdi),%al
  402e4e:	48 f7 d1             	not    %rcx
  402e51:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402e56:	48 89 f1             	mov    %rsi,%rcx
  402e59:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402e5e:	f2 ae                	repnz scas %es:(%rdi),%al
  402e60:	48 89 c8             	mov    %rcx,%rax
  402e63:	48 f7 d0             	not    %rax
  402e66:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402e6b:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402e70:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402e77:	00 
  402e78:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402e7e:	0f 87 f7 02 00 00    	ja     40317b <submitr+0x450>
  402e84:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402e8b:	00 
  402e8c:	b9 00 04 00 00       	mov    $0x400,%ecx
  402e91:	b8 00 00 00 00       	mov    $0x0,%eax
  402e96:	48 89 f7             	mov    %rsi,%rdi
  402e99:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402e9c:	4c 89 f7             	mov    %r14,%rdi
  402e9f:	e8 77 fd ff ff       	call   402c1b <urlencode>
  402ea4:	85 c0                	test   %eax,%eax
  402ea6:	0f 88 42 03 00 00    	js     4031ee <submitr+0x4c3>
  402eac:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  402eb3:	00 
  402eb4:	48 83 ec 08          	sub    $0x8,%rsp
  402eb8:	41 54                	push   %r12
  402eba:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402ec1:	00 
  402ec2:	50                   	push   %rax
  402ec3:	41 55                	push   %r13
  402ec5:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  402eca:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402ecf:	48 8d 0d d2 18 00 00 	lea    0x18d2(%rip),%rcx        # 4047a8 <trans_char+0x38>
  402ed6:	ba 00 20 00 00       	mov    $0x2000,%edx
  402edb:	be 01 00 00 00       	mov    $0x1,%esi
  402ee0:	4c 89 ff             	mov    %r15,%rdi
  402ee3:	b8 00 00 00 00       	mov    $0x0,%eax
  402ee8:	e8 63 e5 ff ff       	call   401450 <__sprintf_chk@plt>
  402eed:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402ef4:	b8 00 00 00 00       	mov    $0x0,%eax
  402ef9:	4c 89 ff             	mov    %r15,%rdi
  402efc:	f2 ae                	repnz scas %es:(%rdi),%al
  402efe:	48 f7 d1             	not    %rcx
  402f01:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402f05:	48 83 c4 20          	add    $0x20,%rsp
  402f09:	4c 89 fe             	mov    %r15,%rsi
  402f0c:	89 df                	mov    %ebx,%edi
  402f0e:	e8 82 fb ff ff       	call   402a95 <rio_writen>
  402f13:	48 85 c0             	test   %rax,%rax
  402f16:	0f 88 5d 03 00 00    	js     403279 <submitr+0x54e>
  402f1c:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402f21:	89 de                	mov    %ebx,%esi
  402f23:	4c 89 e7             	mov    %r12,%rdi
  402f26:	e8 22 fb ff ff       	call   402a4d <rio_readinitb>
  402f2b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402f32:	00 
  402f33:	ba 00 20 00 00       	mov    $0x2000,%edx
  402f38:	4c 89 e7             	mov    %r12,%rdi
  402f3b:	e8 3a fc ff ff       	call   402b7a <rio_readlineb>
  402f40:	48 85 c0             	test   %rax,%rax
  402f43:	0f 8e 9c 03 00 00    	jle    4032e5 <submitr+0x5ba>
  402f49:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402f4e:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402f55:	00 
  402f56:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402f5d:	00 
  402f5e:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402f65:	00 
  402f66:	48 8d 35 cf 18 00 00 	lea    0x18cf(%rip),%rsi        # 40483c <trans_char+0xcc>
  402f6d:	b8 00 00 00 00       	mov    $0x0,%eax
  402f72:	e8 29 e4 ff ff       	call   4013a0 <__isoc99_sscanf@plt>
  402f77:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402f7e:	00 
  402f7f:	b9 03 00 00 00       	mov    $0x3,%ecx
  402f84:	48 8d 3d c8 18 00 00 	lea    0x18c8(%rip),%rdi        # 404853 <trans_char+0xe3>
  402f8b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402f8d:	0f 97 c0             	seta   %al
  402f90:	1c 00                	sbb    $0x0,%al
  402f92:	84 c0                	test   %al,%al
  402f94:	0f 84 cb 03 00 00    	je     403365 <submitr+0x63a>
  402f9a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402fa1:	00 
  402fa2:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402fa7:	ba 00 20 00 00       	mov    $0x2000,%edx
  402fac:	e8 c9 fb ff ff       	call   402b7a <rio_readlineb>
  402fb1:	48 85 c0             	test   %rax,%rax
  402fb4:	7f c1                	jg     402f77 <submitr+0x24c>
  402fb6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402fbd:	3a 20 43 
  402fc0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402fc7:	20 75 6e 
  402fca:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402fce:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402fd2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fd9:	74 6f 20 
  402fdc:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402fe3:	68 65 61 
  402fe6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402fea:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402fee:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402ff5:	66 72 6f 
  402ff8:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402fff:	6f 6c 61 
  403002:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403006:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40300a:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  403011:	76 65 72 
  403014:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403018:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  40301c:	89 df                	mov    %ebx,%edi
  40301e:	e8 dd e2 ff ff       	call   401300 <close@plt>
  403023:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403028:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  40302f:	00 
  403030:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  403037:	00 00 
  403039:	0f 85 96 04 00 00    	jne    4034d5 <submitr+0x7aa>
  40303f:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  403046:	5b                   	pop    %rbx
  403047:	5d                   	pop    %rbp
  403048:	41 5c                	pop    %r12
  40304a:	41 5d                	pop    %r13
  40304c:	41 5e                	pop    %r14
  40304e:	41 5f                	pop    %r15
  403050:	c3                   	ret    
  403051:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403058:	3a 20 43 
  40305b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403062:	20 75 6e 
  403065:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403069:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40306d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403074:	74 6f 20 
  403077:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40307e:	65 20 73 
  403081:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403085:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403089:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403090:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403096:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40309b:	eb 8b                	jmp    403028 <submitr+0x2fd>
  40309d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4030a4:	3a 20 44 
  4030a7:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4030ae:	20 75 6e 
  4030b1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4030b5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4030b9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030c0:	74 6f 20 
  4030c3:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4030ca:	76 65 20 
  4030cd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4030d1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4030d5:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4030dc:	61 62 20 
  4030df:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  4030e6:	72 20 61 
  4030e9:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4030ed:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4030f1:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  4030f8:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  4030fe:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  403102:	89 df                	mov    %ebx,%edi
  403104:	e8 f7 e1 ff ff       	call   401300 <close@plt>
  403109:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40310e:	e9 15 ff ff ff       	jmp    403028 <submitr+0x2fd>
  403113:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40311a:	3a 20 55 
  40311d:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403124:	20 74 6f 
  403127:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40312b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40312f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403136:	65 63 74 
  403139:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  403140:	68 65 20 
  403143:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403147:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40314b:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403152:	61 62 20 
  403155:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403159:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  403160:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  403166:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40316a:	89 df                	mov    %ebx,%edi
  40316c:	e8 8f e1 ff ff       	call   401300 <close@plt>
  403171:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403176:	e9 ad fe ff ff       	jmp    403028 <submitr+0x2fd>
  40317b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403182:	3a 20 52 
  403185:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40318c:	20 73 74 
  40318f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403193:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403197:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40319e:	74 6f 6f 
  4031a1:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4031a8:	65 2e 20 
  4031ab:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4031af:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4031b3:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4031ba:	61 73 65 
  4031bd:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4031c4:	49 54 52 
  4031c7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4031cb:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4031cf:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4031d6:	55 46 00 
  4031d9:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4031dd:	89 df                	mov    %ebx,%edi
  4031df:	e8 1c e1 ff ff       	call   401300 <close@plt>
  4031e4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031e9:	e9 3a fe ff ff       	jmp    403028 <submitr+0x2fd>
  4031ee:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4031f5:	3a 20 52 
  4031f8:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4031ff:	20 73 74 
  403202:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403206:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40320a:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  403211:	63 6f 6e 
  403214:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  40321b:	20 61 6e 
  40321e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403222:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403226:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40322d:	67 61 6c 
  403230:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  403237:	6e 70 72 
  40323a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40323e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403242:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  403249:	6c 65 20 
  40324c:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403253:	63 74 65 
  403256:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40325a:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40325e:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  403264:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  403268:	89 df                	mov    %ebx,%edi
  40326a:	e8 91 e0 ff ff       	call   401300 <close@plt>
  40326f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403274:	e9 af fd ff ff       	jmp    403028 <submitr+0x2fd>
  403279:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403280:	3a 20 43 
  403283:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40328a:	20 75 6e 
  40328d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403291:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403295:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40329c:	74 6f 20 
  40329f:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4032a6:	20 74 6f 
  4032a9:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032ad:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032b1:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4032b8:	41 75 74 
  4032bb:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  4032c2:	73 65 72 
  4032c5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4032c9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4032cd:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  4032d4:	89 df                	mov    %ebx,%edi
  4032d6:	e8 25 e0 ff ff       	call   401300 <close@plt>
  4032db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032e0:	e9 43 fd ff ff       	jmp    403028 <submitr+0x2fd>
  4032e5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4032ec:	3a 20 43 
  4032ef:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4032f6:	20 75 6e 
  4032f9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032fd:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403301:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403308:	74 6f 20 
  40330b:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  403312:	66 69 72 
  403315:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403319:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40331d:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  403324:	61 64 65 
  403327:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  40332e:	6d 20 41 
  403331:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403335:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403339:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  403340:	62 20 73 
  403343:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403347:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  40334e:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  403354:	89 df                	mov    %ebx,%edi
  403356:	e8 a5 df ff ff       	call   401300 <close@plt>
  40335b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403360:	e9 c3 fc ff ff       	jmp    403028 <submitr+0x2fd>
  403365:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40336c:	00 
  40336d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403372:	ba 00 20 00 00       	mov    $0x2000,%edx
  403377:	e8 fe f7 ff ff       	call   402b7a <rio_readlineb>
  40337c:	48 85 c0             	test   %rax,%rax
  40337f:	0f 8e 96 00 00 00    	jle    40341b <submitr+0x6f0>
  403385:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  40338a:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  403391:	0f 85 05 01 00 00    	jne    40349c <submitr+0x771>
  403397:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40339e:	00 
  40339f:	48 89 ef             	mov    %rbp,%rdi
  4033a2:	e8 f9 de ff ff       	call   4012a0 <strcpy@plt>
  4033a7:	89 df                	mov    %ebx,%edi
  4033a9:	e8 52 df ff ff       	call   401300 <close@plt>
  4033ae:	b9 04 00 00 00       	mov    $0x4,%ecx
  4033b3:	48 8d 3d 93 14 00 00 	lea    0x1493(%rip),%rdi        # 40484d <trans_char+0xdd>
  4033ba:	48 89 ee             	mov    %rbp,%rsi
  4033bd:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4033bf:	0f 97 c0             	seta   %al
  4033c2:	1c 00                	sbb    $0x0,%al
  4033c4:	0f be c0             	movsbl %al,%eax
  4033c7:	85 c0                	test   %eax,%eax
  4033c9:	0f 84 59 fc ff ff    	je     403028 <submitr+0x2fd>
  4033cf:	b9 05 00 00 00       	mov    $0x5,%ecx
  4033d4:	48 8d 3d 76 14 00 00 	lea    0x1476(%rip),%rdi        # 404851 <trans_char+0xe1>
  4033db:	48 89 ee             	mov    %rbp,%rsi
  4033de:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4033e0:	0f 97 c0             	seta   %al
  4033e3:	1c 00                	sbb    $0x0,%al
  4033e5:	0f be c0             	movsbl %al,%eax
  4033e8:	85 c0                	test   %eax,%eax
  4033ea:	0f 84 38 fc ff ff    	je     403028 <submitr+0x2fd>
  4033f0:	b9 03 00 00 00       	mov    $0x3,%ecx
  4033f5:	48 8d 3d 5a 14 00 00 	lea    0x145a(%rip),%rdi        # 404856 <trans_char+0xe6>
  4033fc:	48 89 ee             	mov    %rbp,%rsi
  4033ff:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403401:	0f 97 c0             	seta   %al
  403404:	1c 00                	sbb    $0x0,%al
  403406:	0f be c0             	movsbl %al,%eax
  403409:	85 c0                	test   %eax,%eax
  40340b:	0f 84 17 fc ff ff    	je     403028 <submitr+0x2fd>
  403411:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403416:	e9 0d fc ff ff       	jmp    403028 <submitr+0x2fd>
  40341b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403422:	3a 20 43 
  403425:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40342c:	20 75 6e 
  40342f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403433:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403437:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40343e:	74 6f 20 
  403441:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403448:	73 74 61 
  40344b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40344f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403453:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40345a:	65 73 73 
  40345d:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  403464:	72 6f 6d 
  403467:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40346b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40346f:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403476:	6c 61 62 
  403479:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403480:	65 72 00 
  403483:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403487:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40348b:	89 df                	mov    %ebx,%edi
  40348d:	e8 6e de ff ff       	call   401300 <close@plt>
  403492:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403497:	e9 8c fb ff ff       	jmp    403028 <submitr+0x2fd>
  40349c:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4034a3:	00 
  4034a4:	48 8d 0d 5d 13 00 00 	lea    0x135d(%rip),%rcx        # 404808 <trans_char+0x98>
  4034ab:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4034b2:	be 01 00 00 00       	mov    $0x1,%esi
  4034b7:	48 89 ef             	mov    %rbp,%rdi
  4034ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4034bf:	e8 8c df ff ff       	call   401450 <__sprintf_chk@plt>
  4034c4:	89 df                	mov    %ebx,%edi
  4034c6:	e8 35 de ff ff       	call   401300 <close@plt>
  4034cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034d0:	e9 53 fb ff ff       	jmp    403028 <submitr+0x2fd>
  4034d5:	e8 51 f3 ff ff       	call   40282b <__stack_chk_fail>

00000000004034da <init_timeout>:
  4034da:	f3 0f 1e fa          	endbr64 
  4034de:	85 ff                	test   %edi,%edi
  4034e0:	74 26                	je     403508 <init_timeout+0x2e>
  4034e2:	53                   	push   %rbx
  4034e3:	89 fb                	mov    %edi,%ebx
  4034e5:	78 1a                	js     403501 <init_timeout+0x27>
  4034e7:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 402a5f <sigalrm_handler>
  4034ee:	bf 0e 00 00 00       	mov    $0xe,%edi
  4034f3:	e8 38 de ff ff       	call   401330 <signal@plt>
  4034f8:	89 df                	mov    %ebx,%edi
  4034fa:	e8 f1 dd ff ff       	call   4012f0 <alarm@plt>
  4034ff:	5b                   	pop    %rbx
  403500:	c3                   	ret    
  403501:	bb 00 00 00 00       	mov    $0x0,%ebx
  403506:	eb df                	jmp    4034e7 <init_timeout+0xd>
  403508:	c3                   	ret    

0000000000403509 <init_driver>:
  403509:	f3 0f 1e fa          	endbr64 
  40350d:	41 54                	push   %r12
  40350f:	55                   	push   %rbp
  403510:	53                   	push   %rbx
  403511:	48 83 ec 20          	sub    $0x20,%rsp
  403515:	48 89 fd             	mov    %rdi,%rbp
  403518:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40351f:	00 00 
  403521:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403526:	31 c0                	xor    %eax,%eax
  403528:	be 01 00 00 00       	mov    $0x1,%esi
  40352d:	bf 0d 00 00 00       	mov    $0xd,%edi
  403532:	e8 f9 dd ff ff       	call   401330 <signal@plt>
  403537:	be 01 00 00 00       	mov    $0x1,%esi
  40353c:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403541:	e8 ea dd ff ff       	call   401330 <signal@plt>
  403546:	be 01 00 00 00       	mov    $0x1,%esi
  40354b:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403550:	e8 db dd ff ff       	call   401330 <signal@plt>
  403555:	ba 00 00 00 00       	mov    $0x0,%edx
  40355a:	be 01 00 00 00       	mov    $0x1,%esi
  40355f:	bf 02 00 00 00       	mov    $0x2,%edi
  403564:	e8 f7 de ff ff       	call   401460 <socket@plt>
  403569:	85 c0                	test   %eax,%eax
  40356b:	0f 88 9c 00 00 00    	js     40360d <init_driver+0x104>
  403571:	89 c3                	mov    %eax,%ebx
  403573:	48 8d 3d df 12 00 00 	lea    0x12df(%rip),%rdi        # 404859 <trans_char+0xe9>
  40357a:	e8 c1 dd ff ff       	call   401340 <gethostbyname@plt>
  40357f:	48 85 c0             	test   %rax,%rax
  403582:	0f 84 d1 00 00 00    	je     403659 <init_driver+0x150>
  403588:	49 89 e4             	mov    %rsp,%r12
  40358b:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  403592:	00 
  403593:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40359a:	00 00 
  40359c:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4035a2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4035a6:	48 8b 40 18          	mov    0x18(%rax),%rax
  4035aa:	48 8b 30             	mov    (%rax),%rsi
  4035ad:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4035b2:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4035b7:	e8 94 dd ff ff       	call   401350 <__memmove_chk@plt>
  4035bc:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  4035c3:	ba 10 00 00 00       	mov    $0x10,%edx
  4035c8:	4c 89 e6             	mov    %r12,%rsi
  4035cb:	89 df                	mov    %ebx,%edi
  4035cd:	e8 4e de ff ff       	call   401420 <connect@plt>
  4035d2:	85 c0                	test   %eax,%eax
  4035d4:	0f 88 e7 00 00 00    	js     4036c1 <init_driver+0x1b8>
  4035da:	89 df                	mov    %ebx,%edi
  4035dc:	e8 1f dd ff ff       	call   401300 <close@plt>
  4035e1:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4035e7:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4035eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4035f0:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4035f5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4035fc:	00 00 
  4035fe:	0f 85 10 01 00 00    	jne    403714 <init_driver+0x20b>
  403604:	48 83 c4 20          	add    $0x20,%rsp
  403608:	5b                   	pop    %rbx
  403609:	5d                   	pop    %rbp
  40360a:	41 5c                	pop    %r12
  40360c:	c3                   	ret    
  40360d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403614:	3a 20 43 
  403617:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40361e:	20 75 6e 
  403621:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403625:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403629:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403630:	74 6f 20 
  403633:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40363a:	65 20 73 
  40363d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403641:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403645:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40364c:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403652:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403657:	eb 97                	jmp    4035f0 <init_driver+0xe7>
  403659:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403660:	3a 20 44 
  403663:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  40366a:	20 75 6e 
  40366d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403671:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403675:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40367c:	74 6f 20 
  40367f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403686:	76 65 20 
  403689:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40368d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403691:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  403698:	72 20 61 
  40369b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40369f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4036a6:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4036ac:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4036b0:	89 df                	mov    %ebx,%edi
  4036b2:	e8 49 dc ff ff       	call   401300 <close@plt>
  4036b7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4036bc:	e9 2f ff ff ff       	jmp    4035f0 <init_driver+0xe7>
  4036c1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4036c8:	3a 20 55 
  4036cb:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4036d2:	20 74 6f 
  4036d5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4036d9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4036dd:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4036e4:	65 63 74 
  4036e7:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  4036ee:	65 72 76 
  4036f1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4036f5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4036f9:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4036ff:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  403703:	89 df                	mov    %ebx,%edi
  403705:	e8 f6 db ff ff       	call   401300 <close@plt>
  40370a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40370f:	e9 dc fe ff ff       	jmp    4035f0 <init_driver+0xe7>
  403714:	e8 12 f1 ff ff       	call   40282b <__stack_chk_fail>

0000000000403719 <driver_post>:
  403719:	f3 0f 1e fa          	endbr64 
  40371d:	53                   	push   %rbx
  40371e:	4c 89 cb             	mov    %r9,%rbx
  403721:	45 85 c0             	test   %r8d,%r8d
  403724:	75 18                	jne    40373e <driver_post+0x25>
  403726:	48 85 ff             	test   %rdi,%rdi
  403729:	74 05                	je     403730 <driver_post+0x17>
  40372b:	80 3f 00             	cmpb   $0x0,(%rdi)
  40372e:	75 37                	jne    403767 <driver_post+0x4e>
  403730:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403735:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403739:	44 89 c0             	mov    %r8d,%eax
  40373c:	5b                   	pop    %rbx
  40373d:	c3                   	ret    
  40373e:	48 89 ca             	mov    %rcx,%rdx
  403741:	48 8d 35 21 11 00 00 	lea    0x1121(%rip),%rsi        # 404869 <trans_char+0xf9>
  403748:	bf 01 00 00 00       	mov    $0x1,%edi
  40374d:	b8 00 00 00 00       	mov    $0x0,%eax
  403752:	e8 69 dc ff ff       	call   4013c0 <__printf_chk@plt>
  403757:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40375c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403760:	b8 00 00 00 00       	mov    $0x0,%eax
  403765:	eb d5                	jmp    40373c <driver_post+0x23>
  403767:	48 83 ec 08          	sub    $0x8,%rsp
  40376b:	41 51                	push   %r9
  40376d:	49 89 c9             	mov    %rcx,%r9
  403770:	49 89 d0             	mov    %rdx,%r8
  403773:	48 89 f9             	mov    %rdi,%rcx
  403776:	48 89 f2             	mov    %rsi,%rdx
  403779:	be 39 30 00 00       	mov    $0x3039,%esi
  40377e:	48 8d 3d d4 10 00 00 	lea    0x10d4(%rip),%rdi        # 404859 <trans_char+0xe9>
  403785:	e8 a1 f5 ff ff       	call   402d2b <submitr>
  40378a:	48 83 c4 10          	add    $0x10,%rsp
  40378e:	eb ac                	jmp    40373c <driver_post+0x23>

0000000000403790 <check>:
  403790:	f3 0f 1e fa          	endbr64 
  403794:	89 f8                	mov    %edi,%eax
  403796:	c1 e8 1c             	shr    $0x1c,%eax
  403799:	74 1d                	je     4037b8 <check+0x28>
  40379b:	b9 00 00 00 00       	mov    $0x0,%ecx
  4037a0:	83 f9 1f             	cmp    $0x1f,%ecx
  4037a3:	7f 0d                	jg     4037b2 <check+0x22>
  4037a5:	89 f8                	mov    %edi,%eax
  4037a7:	d3 e8                	shr    %cl,%eax
  4037a9:	3c 0a                	cmp    $0xa,%al
  4037ab:	74 11                	je     4037be <check+0x2e>
  4037ad:	83 c1 08             	add    $0x8,%ecx
  4037b0:	eb ee                	jmp    4037a0 <check+0x10>
  4037b2:	b8 01 00 00 00       	mov    $0x1,%eax
  4037b7:	c3                   	ret    
  4037b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4037bd:	c3                   	ret    
  4037be:	b8 00 00 00 00       	mov    $0x0,%eax
  4037c3:	c3                   	ret    

00000000004037c4 <gencookie>:
  4037c4:	f3 0f 1e fa          	endbr64 
  4037c8:	53                   	push   %rbx
  4037c9:	83 c7 01             	add    $0x1,%edi
  4037cc:	e8 9f da ff ff       	call   401270 <srandom@plt>
  4037d1:	e8 ba db ff ff       	call   401390 <random@plt>
  4037d6:	48 89 c7             	mov    %rax,%rdi
  4037d9:	89 c3                	mov    %eax,%ebx
  4037db:	e8 b0 ff ff ff       	call   403790 <check>
  4037e0:	85 c0                	test   %eax,%eax
  4037e2:	74 ed                	je     4037d1 <gencookie+0xd>
  4037e4:	89 d8                	mov    %ebx,%eax
  4037e6:	5b                   	pop    %rbx
  4037e7:	c3                   	ret    
  4037e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4037ef:	00 

00000000004037f0 <__libc_csu_init>:
  4037f0:	f3 0f 1e fa          	endbr64 
  4037f4:	41 57                	push   %r15
  4037f6:	4c 8d 3d 13 36 00 00 	lea    0x3613(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  4037fd:	41 56                	push   %r14
  4037ff:	49 89 d6             	mov    %rdx,%r14
  403802:	41 55                	push   %r13
  403804:	49 89 f5             	mov    %rsi,%r13
  403807:	41 54                	push   %r12
  403809:	41 89 fc             	mov    %edi,%r12d
  40380c:	55                   	push   %rbp
  40380d:	48 8d 2d 04 36 00 00 	lea    0x3604(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  403814:	53                   	push   %rbx
  403815:	4c 29 fd             	sub    %r15,%rbp
  403818:	48 83 ec 08          	sub    $0x8,%rsp
  40381c:	e8 df d7 ff ff       	call   401000 <_init>
  403821:	48 c1 fd 03          	sar    $0x3,%rbp
  403825:	74 1f                	je     403846 <__libc_csu_init+0x56>
  403827:	31 db                	xor    %ebx,%ebx
  403829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403830:	4c 89 f2             	mov    %r14,%rdx
  403833:	4c 89 ee             	mov    %r13,%rsi
  403836:	44 89 e7             	mov    %r12d,%edi
  403839:	41 ff 14 df          	call   *(%r15,%rbx,8)
  40383d:	48 83 c3 01          	add    $0x1,%rbx
  403841:	48 39 dd             	cmp    %rbx,%rbp
  403844:	75 ea                	jne    403830 <__libc_csu_init+0x40>
  403846:	48 83 c4 08          	add    $0x8,%rsp
  40384a:	5b                   	pop    %rbx
  40384b:	5d                   	pop    %rbp
  40384c:	41 5c                	pop    %r12
  40384e:	41 5d                	pop    %r13
  403850:	41 5e                	pop    %r14
  403852:	41 5f                	pop    %r15
  403854:	c3                   	ret    
  403855:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40385c:	00 00 00 00 

0000000000403860 <__libc_csu_fini>:
  403860:	f3 0f 1e fa          	endbr64 
  403864:	c3                   	ret    

Disassembly of section .fini:

0000000000403868 <_fini>:
  403868:	f3 0f 1e fa          	endbr64 
  40386c:	48 83 ec 08          	sub    $0x8,%rsp
  403870:	48 83 c4 08          	add    $0x8,%rsp
  403874:	c3                   	ret    
