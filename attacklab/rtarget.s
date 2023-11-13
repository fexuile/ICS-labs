
rtarget:     file format elf64-x86-64


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
  401483:	49 c7 c0 30 3a 40 00 	mov    $0x403a30,%r8
  40148a:	48 c7 c1 c0 39 40 00 	mov    $0x4039c0,%rcx
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
  401636:	e8 5a 23 00 00       	call   403995 <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 4d 23 00 00       	call   403995 <gencookie>
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
  401689:	c6 05 b8 6a 00 00 72 	movb   $0x72,0x6ab8(%rip)        # 408148 <target_prefix>
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
  40173c:	e8 99 1f 00 00       	call   4036da <init_driver>
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
  401794:	e8 63 12 00 00       	call   4029fc <__stack_chk_fail>

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
  4017e0:	48 c7 c6 eb 28 40 00 	mov    $0x4028eb,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	call   401330 <signal@plt>
  4017f1:	48 c7 c6 91 28 40 00 	mov    $0x402891,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	call   401330 <signal@plt>
  401802:	48 c7 c6 45 29 40 00 	mov    $0x402945,%rsi
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
  401842:	48 c7 c6 9f 29 40 00 	mov    $0x40299f,%rsi
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
  40195b:	be 01 00 00 00       	mov    $0x1,%esi
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
  4019ab:	e8 2a 0b 00 00       	call   4024da <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	call   4013c0 <__printf_chk@plt>
  4019cc:	be 00 00 00 00       	mov    $0x0,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 79 10 00 00       	call   402a56 <launch>
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
  4019ff:	e8 f8 0f 00 00       	call   4029fc <__stack_chk_fail>

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
  401f65:	e8 92 0a 00 00       	call   4029fc <__stack_chk_fail>

0000000000401f6a <getbuf>:
  401f6a:	f3 0f 1e fa          	endbr64 
  401f6e:	48 83 ec 28          	sub    $0x28,%rsp
  401f72:	48 89 e7             	mov    %rsp,%rdi
  401f75:	e8 9e 05 00 00       	call   402518 <Gets>
  401f7a:	b8 01 00 00 00       	mov    $0x1,%eax
  401f7f:	48 83 c4 28          	add    $0x28,%rsp
  401f83:	c3                   	ret    

0000000000401f84 <touch1>:
  401f84:	f3 0f 1e fa          	endbr64 
  401f88:	50                   	push   %rax
  401f89:	58                   	pop    %rax
  401f8a:	48 83 ec 08          	sub    $0x8,%rsp
  401f8e:	c7 05 84 55 00 00 01 	movl   $0x1,0x5584(%rip)        # 40751c <vlevel>
  401f95:	00 00 00 
  401f98:	48 8d 3d 77 23 00 00 	lea    0x2377(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  401f9f:	e8 0c f3 ff ff       	call   4012b0 <puts@plt>
  401fa4:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa9:	e8 dc 07 00 00       	call   40278a <validate>
  401fae:	bf 00 00 00 00       	mov    $0x0,%edi
  401fb3:	e8 58 f4 ff ff       	call   401410 <exit@plt>

0000000000401fb8 <touch2>:
  401fb8:	f3 0f 1e fa          	endbr64 
  401fbc:	50                   	push   %rax
  401fbd:	58                   	pop    %rax
  401fbe:	48 83 ec 08          	sub    $0x8,%rsp
  401fc2:	89 fa                	mov    %edi,%edx
  401fc4:	c7 05 4e 55 00 00 02 	movl   $0x2,0x554e(%rip)        # 40751c <vlevel>
  401fcb:	00 00 00 
  401fce:	39 3d 50 55 00 00    	cmp    %edi,0x5550(%rip)        # 407524 <cookie>
  401fd4:	74 2a                	je     402000 <touch2+0x48>
  401fd6:	48 8d 35 83 23 00 00 	lea    0x2383(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  401fdd:	bf 01 00 00 00       	mov    $0x1,%edi
  401fe2:	b8 00 00 00 00       	mov    $0x0,%eax
  401fe7:	e8 d4 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  401fec:	bf 02 00 00 00       	mov    $0x2,%edi
  401ff1:	e8 6f 08 00 00       	call   402865 <fail>
  401ff6:	bf 00 00 00 00       	mov    $0x0,%edi
  401ffb:	e8 10 f4 ff ff       	call   401410 <exit@plt>
  402000:	48 8d 35 31 23 00 00 	lea    0x2331(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  402007:	bf 01 00 00 00       	mov    $0x1,%edi
  40200c:	b8 00 00 00 00       	mov    $0x0,%eax
  402011:	e8 aa f3 ff ff       	call   4013c0 <__printf_chk@plt>
  402016:	bf 02 00 00 00       	mov    $0x2,%edi
  40201b:	e8 6a 07 00 00       	call   40278a <validate>
  402020:	eb d4                	jmp    401ff6 <touch2+0x3e>

0000000000402022 <hexmatch>:
  402022:	f3 0f 1e fa          	endbr64 
  402026:	41 55                	push   %r13
  402028:	41 54                	push   %r12
  40202a:	55                   	push   %rbp
  40202b:	53                   	push   %rbx
  40202c:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  402033:	89 fd                	mov    %edi,%ebp
  402035:	48 89 f3             	mov    %rsi,%rbx
  402038:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  40203e:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  402043:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  402048:	31 c0                	xor    %eax,%eax
  40204a:	e8 41 f3 ff ff       	call   401390 <random@plt>
  40204f:	48 89 c1             	mov    %rax,%rcx
  402052:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  402059:	0a d7 a3 
  40205c:	48 f7 ea             	imul   %rdx
  40205f:	48 01 ca             	add    %rcx,%rdx
  402062:	48 c1 fa 06          	sar    $0x6,%rdx
  402066:	48 89 c8             	mov    %rcx,%rax
  402069:	48 c1 f8 3f          	sar    $0x3f,%rax
  40206d:	48 29 c2             	sub    %rax,%rdx
  402070:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  402074:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402078:	48 c1 e0 02          	shl    $0x2,%rax
  40207c:	48 29 c1             	sub    %rax,%rcx
  40207f:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  402083:	41 89 e8             	mov    %ebp,%r8d
  402086:	48 8d 0d a6 22 00 00 	lea    0x22a6(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  40208d:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402094:	be 01 00 00 00       	mov    $0x1,%esi
  402099:	4c 89 ef             	mov    %r13,%rdi
  40209c:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a1:	e8 aa f3 ff ff       	call   401450 <__sprintf_chk@plt>
  4020a6:	ba 09 00 00 00       	mov    $0x9,%edx
  4020ab:	4c 89 ee             	mov    %r13,%rsi
  4020ae:	48 89 df             	mov    %rbx,%rdi
  4020b1:	e8 da f1 ff ff       	call   401290 <strncmp@plt>
  4020b6:	85 c0                	test   %eax,%eax
  4020b8:	0f 94 c0             	sete   %al
  4020bb:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  4020c0:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  4020c5:	75 11                	jne    4020d8 <hexmatch+0xb6>
  4020c7:	0f b6 c0             	movzbl %al,%eax
  4020ca:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  4020d1:	5b                   	pop    %rbx
  4020d2:	5d                   	pop    %rbp
  4020d3:	41 5c                	pop    %r12
  4020d5:	41 5d                	pop    %r13
  4020d7:	c3                   	ret    
  4020d8:	e8 1f 09 00 00       	call   4029fc <__stack_chk_fail>

00000000004020dd <touch3>:
  4020dd:	f3 0f 1e fa          	endbr64 
  4020e1:	53                   	push   %rbx
  4020e2:	48 89 fb             	mov    %rdi,%rbx
  4020e5:	c7 05 2d 54 00 00 03 	movl   $0x3,0x542d(%rip)        # 40751c <vlevel>
  4020ec:	00 00 00 
  4020ef:	48 89 fe             	mov    %rdi,%rsi
  4020f2:	8b 3d 2c 54 00 00    	mov    0x542c(%rip),%edi        # 407524 <cookie>
  4020f8:	e8 25 ff ff ff       	call   402022 <hexmatch>
  4020fd:	85 c0                	test   %eax,%eax
  4020ff:	74 2d                	je     40212e <touch3+0x51>
  402101:	48 89 da             	mov    %rbx,%rdx
  402104:	48 8d 35 7d 22 00 00 	lea    0x227d(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  40210b:	bf 01 00 00 00       	mov    $0x1,%edi
  402110:	b8 00 00 00 00       	mov    $0x0,%eax
  402115:	e8 a6 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  40211a:	bf 03 00 00 00       	mov    $0x3,%edi
  40211f:	e8 66 06 00 00       	call   40278a <validate>
  402124:	bf 00 00 00 00       	mov    $0x0,%edi
  402129:	e8 e2 f2 ff ff       	call   401410 <exit@plt>
  40212e:	48 89 da             	mov    %rbx,%rdx
  402131:	48 8d 35 78 22 00 00 	lea    0x2278(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  402138:	bf 01 00 00 00       	mov    $0x1,%edi
  40213d:	b8 00 00 00 00       	mov    $0x0,%eax
  402142:	e8 79 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402147:	bf 03 00 00 00       	mov    $0x3,%edi
  40214c:	e8 14 07 00 00       	call   402865 <fail>
  402151:	eb d1                	jmp    402124 <touch3+0x47>

0000000000402153 <test>:
  402153:	f3 0f 1e fa          	endbr64 
  402157:	48 83 ec 08          	sub    $0x8,%rsp
  40215b:	b8 00 00 00 00       	mov    $0x0,%eax
  402160:	e8 05 fe ff ff       	call   401f6a <getbuf>
  402165:	89 c2                	mov    %eax,%edx
  402167:	48 89 e0             	mov    %rsp,%rax
  40216a:	48 83 e0 0f          	and    $0xf,%rax
  40216e:	74 07                	je     402177 <aligned4>
  402170:	b9 00 00 00 00       	mov    $0x0,%ecx
  402175:	eb 05                	jmp    40217c <done4>

0000000000402177 <aligned4>:
  402177:	b9 01 00 00 00       	mov    $0x1,%ecx

000000000040217c <done4>:
  40217c:	85 c9                	test   %ecx,%ecx
  40217e:	75 23                	jne    4021a3 <done4+0x27>
  402180:	48 83 ec 08          	sub    $0x8,%rsp
  402184:	48 8d 35 4d 22 00 00 	lea    0x224d(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  40218b:	bf 01 00 00 00       	mov    $0x1,%edi
  402190:	b8 00 00 00 00       	mov    $0x0,%eax
  402195:	e8 26 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  40219a:	48 83 c4 08          	add    $0x8,%rsp
  40219e:	48 83 c4 08          	add    $0x8,%rsp
  4021a2:	c3                   	ret    
  4021a3:	48 8d 35 2e 22 00 00 	lea    0x222e(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  4021aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4021af:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b4:	e8 07 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4021b9:	eb e3                	jmp    40219e <done4+0x22>

00000000004021bb <test2>:
  4021bb:	f3 0f 1e fa          	endbr64 
  4021bf:	48 83 ec 08          	sub    $0x8,%rsp
  4021c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c8:	e8 1d 00 00 00       	call   4021ea <getbuf_withcanary>
  4021cd:	89 c2                	mov    %eax,%edx
  4021cf:	48 8d 35 2a 22 00 00 	lea    0x222a(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  4021d6:	bf 01 00 00 00       	mov    $0x1,%edi
  4021db:	b8 00 00 00 00       	mov    $0x0,%eax
  4021e0:	e8 db f1 ff ff       	call   4013c0 <__printf_chk@plt>
  4021e5:	48 83 c4 08          	add    $0x8,%rsp
  4021e9:	c3                   	ret    

00000000004021ea <getbuf_withcanary>:
  4021ea:	f3 0f 1e fa          	endbr64 
  4021ee:	55                   	push   %rbp
  4021ef:	48 89 e5             	mov    %rsp,%rbp
  4021f2:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  4021f9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402200:	00 00 
  402202:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402206:	31 c0                	xor    %eax,%eax
  402208:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  40220f:	00 00 00 
  402212:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  402218:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  40221e:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402225:	48 89 c7             	mov    %rax,%rdi
  402228:	e8 eb 02 00 00       	call   402518 <Gets>
  40222d:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  402233:	48 63 d0             	movslq %eax,%rdx
  402236:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  40223d:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  402244:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  40224b:	48 89 ce             	mov    %rcx,%rsi
  40224e:	48 89 c7             	mov    %rax,%rdi
  402251:	e8 1a f1 ff ff       	call   401370 <memcpy@plt>
  402256:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  40225c:	48 63 d0             	movslq %eax,%rdx
  40225f:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402266:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  40226d:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  402274:	48 89 c6             	mov    %rax,%rsi
  402277:	48 89 cf             	mov    %rcx,%rdi
  40227a:	e8 f1 f0 ff ff       	call   401370 <memcpy@plt>
  40227f:	b8 01 00 00 00       	mov    $0x1,%eax
  402284:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402288:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40228f:	00 00 
  402291:	74 05                	je     402298 <getbuf_withcanary+0xae>
  402293:	e8 64 07 00 00       	call   4029fc <__stack_chk_fail>
  402298:	c9                   	leave  
  402299:	c3                   	ret    

000000000040229a <start_farm>:
  40229a:	f3 0f 1e fa          	endbr64 
  40229e:	b8 01 00 00 00       	mov    $0x1,%eax
  4022a3:	c3                   	ret    

00000000004022a4 <getval_179>:
  4022a4:	f3 0f 1e fa          	endbr64 
  4022a8:	b8 ee 6e 58 90       	mov    $0x90586eee,%eax
  4022ad:	c3                   	ret    

00000000004022ae <setval_296>:
  4022ae:	f3 0f 1e fa          	endbr64 
  4022b2:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
  4022b8:	c3                   	ret    

00000000004022b9 <addval_436>:
  4022b9:	f3 0f 1e fa          	endbr64 
  4022bd:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  4022c3:	c3                   	ret    

00000000004022c4 <setval_215>:
  4022c4:	f3 0f 1e fa          	endbr64 
  4022c8:	c7 07 58 90 90 90    	movl   $0x90909058,(%rdi)
  4022ce:	c3                   	ret    

00000000004022cf <addval_113>:
  4022cf:	f3 0f 1e fa          	endbr64 
  4022d3:	8d 87 48 88 c7 c3    	lea    -0x3c3877b8(%rdi),%eax
  4022d9:	c3                   	ret    

00000000004022da <getval_423>:
  4022da:	f3 0f 1e fa          	endbr64 
  4022de:	b8 a7 58 89 c7       	mov    $0xc78958a7,%eax
  4022e3:	c3                   	ret    

00000000004022e4 <getval_317>:
  4022e4:	f3 0f 1e fa          	endbr64 
  4022e8:	b8 3a 78 c3 85       	mov    $0x85c3783a,%eax
  4022ed:	c3                   	ret    

00000000004022ee <getval_166>:
  4022ee:	f3 0f 1e fa          	endbr64 
  4022f2:	b8 cb 18 c3 bf       	mov    $0xbfc318cb,%eax
  4022f7:	c3                   	ret    

00000000004022f8 <mid_farm>:
  4022f8:	f3 0f 1e fa          	endbr64 
  4022fc:	b8 01 00 00 00       	mov    $0x1,%eax
  402301:	c3                   	ret    

0000000000402302 <add_xy>:
  402302:	f3 0f 1e fa          	endbr64 
  402306:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  40230a:	c3                   	ret    

000000000040230b <addval_165>:
  40230b:	f3 0f 1e fa          	endbr64 
  40230f:	8d 87 1f c5 81 c1    	lea    -0x3e7e3ae1(%rdi),%eax
  402315:	c3                   	ret    

0000000000402316 <getval_490>:
  402316:	f3 0f 1e fa          	endbr64 
  40231a:	b8 02 09 c1 90       	mov    $0x90c10902,%eax
  40231f:	c3                   	ret    

0000000000402320 <setval_145>:
  402320:	f3 0f 1e fa          	endbr64 
  402324:	c7 07 48 89 e0 90    	movl   $0x90e08948,(%rdi)
  40232a:	c3                   	ret    

000000000040232b <setval_324>:
  40232b:	f3 0f 1e fa          	endbr64 
  40232f:	c7 07 89 d6 84 d2    	movl   $0xd284d689,(%rdi)
  402335:	c3                   	ret    

0000000000402336 <getval_426>:
  402336:	f3 0f 1e fa          	endbr64 
  40233a:	b8 89 d6 94 90       	mov    $0x9094d689,%eax
  40233f:	c3                   	ret    

0000000000402340 <setval_184>:
  402340:	f3 0f 1e fa          	endbr64 
  402344:	c7 07 89 c1 28 c0    	movl   $0xc028c189,(%rdi)
  40234a:	c3                   	ret    

000000000040234b <setval_122>:
  40234b:	f3 0f 1e fa          	endbr64 
  40234f:	c7 07 8d d6 20 d2    	movl   $0xd220d68d,(%rdi)
  402355:	c3                   	ret    

0000000000402356 <setval_483>:
  402356:	f3 0f 1e fa          	endbr64 
  40235a:	c7 07 a9 d6 38 d2    	movl   $0xd238d6a9,(%rdi)
  402360:	c3                   	ret    

0000000000402361 <addval_110>:
  402361:	f3 0f 1e fa          	endbr64 
  402365:	8d 87 48 8d e0 90    	lea    -0x6f1f72b8(%rdi),%eax
  40236b:	c3                   	ret    

000000000040236c <addval_114>:
  40236c:	f3 0f 1e fa          	endbr64 
  402370:	8d 87 89 c1 38 db    	lea    -0x24c73e77(%rdi),%eax
  402376:	c3                   	ret    

0000000000402377 <addval_491>:
  402377:	f3 0f 1e fa          	endbr64 
  40237b:	8d 87 99 c1 20 db    	lea    -0x24df3e67(%rdi),%eax
  402381:	c3                   	ret    

0000000000402382 <addval_463>:
  402382:	f3 0f 1e fa          	endbr64 
  402386:	8d 87 89 ca 90 c3    	lea    -0x3c6f3577(%rdi),%eax
  40238c:	c3                   	ret    

000000000040238d <setval_307>:
  40238d:	f3 0f 1e fa          	endbr64 
  402391:	c7 07 88 ca 84 db    	movl   $0xdb84ca88,(%rdi)
  402397:	c3                   	ret    

0000000000402398 <addval_172>:
  402398:	f3 0f 1e fa          	endbr64 
  40239c:	8d 87 89 d6 38 c9    	lea    -0x36c72977(%rdi),%eax
  4023a2:	c3                   	ret    

00000000004023a3 <getval_129>:
  4023a3:	f3 0f 1e fa          	endbr64 
  4023a7:	b8 89 d6 48 db       	mov    $0xdb48d689,%eax
  4023ac:	c3                   	ret    

00000000004023ad <setval_430>:
  4023ad:	f3 0f 1e fa          	endbr64 
  4023b1:	c7 07 c4 89 ca 94    	movl   $0x94ca89c4,(%rdi)
  4023b7:	c3                   	ret    

00000000004023b8 <setval_249>:
  4023b8:	f3 0f 1e fa          	endbr64 
  4023bc:	c7 07 89 ca 78 c9    	movl   $0xc978ca89,(%rdi)
  4023c2:	c3                   	ret    

00000000004023c3 <setval_216>:
  4023c3:	f3 0f 1e fa          	endbr64 
  4023c7:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  4023cd:	c3                   	ret    

00000000004023ce <getval_231>:
  4023ce:	f3 0f 1e fa          	endbr64 
  4023d2:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  4023d7:	c3                   	ret    

00000000004023d8 <addval_183>:
  4023d8:	f3 0f 1e fa          	endbr64 
  4023dc:	8d 87 81 ca 84 c0    	lea    -0x3f7b357f(%rdi),%eax
  4023e2:	c3                   	ret    

00000000004023e3 <setval_481>:
  4023e3:	f3 0f 1e fa          	endbr64 
  4023e7:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  4023ed:	c3                   	ret    

00000000004023ee <getval_213>:
  4023ee:	f3 0f 1e fa          	endbr64 
  4023f2:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  4023f7:	c3                   	ret    

00000000004023f8 <getval_407>:
  4023f8:	f3 0f 1e fa          	endbr64 
  4023fc:	b8 89 d6 91 90       	mov    $0x9091d689,%eax
  402401:	c3                   	ret    

0000000000402402 <getval_238>:
  402402:	f3 0f 1e fa          	endbr64 
  402406:	b8 89 ca 91 90       	mov    $0x9091ca89,%eax
  40240b:	c3                   	ret    

000000000040240c <getval_421>:
  40240c:	f3 0f 1e fa          	endbr64 
  402410:	b8 b3 99 c1 c3       	mov    $0xc3c199b3,%eax
  402415:	c3                   	ret    

0000000000402416 <getval_121>:
  402416:	f3 0f 1e fa          	endbr64 
  40241a:	b8 89 ca 91 90       	mov    $0x9091ca89,%eax
  40241f:	c3                   	ret    

0000000000402420 <setval_169>:
  402420:	f3 0f 1e fa          	endbr64 
  402424:	c7 07 89 c1 84 c9    	movl   $0xc984c189,(%rdi)
  40242a:	c3                   	ret    

000000000040242b <setval_191>:
  40242b:	f3 0f 1e fa          	endbr64 
  40242f:	c7 07 a9 d6 20 db    	movl   $0xdb20d6a9,(%rdi)
  402435:	c3                   	ret    

0000000000402436 <addval_224>:
  402436:	f3 0f 1e fa          	endbr64 
  40243a:	8d 87 40 89 e0 c3    	lea    -0x3c1f76c0(%rdi),%eax
  402440:	c3                   	ret    

0000000000402441 <addval_394>:
  402441:	f3 0f 1e fa          	endbr64 
  402445:	8d 87 3d 92 89 ca    	lea    -0x35766dc3(%rdi),%eax
  40244b:	c3                   	ret    

000000000040244c <setval_387>:
  40244c:	f3 0f 1e fa          	endbr64 
  402450:	c7 07 89 c1 60 c9    	movl   $0xc960c189,(%rdi)
  402456:	c3                   	ret    

0000000000402457 <getval_484>:
  402457:	f3 0f 1e fa          	endbr64 
  40245b:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  402460:	c3                   	ret    

0000000000402461 <end_farm>:
  402461:	f3 0f 1e fa          	endbr64 
  402465:	b8 01 00 00 00       	mov    $0x1,%eax
  40246a:	c3                   	ret    

000000000040246b <save_char>:
  40246b:	8b 05 d3 5c 00 00    	mov    0x5cd3(%rip),%eax        # 408144 <gets_cnt>
  402471:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402476:	7f 4a                	jg     4024c2 <save_char+0x57>
  402478:	89 f9                	mov    %edi,%ecx
  40247a:	c0 e9 04             	shr    $0x4,%cl
  40247d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  402480:	4c 8d 05 e9 22 00 00 	lea    0x22e9(%rip),%r8        # 404770 <trans_char>
  402487:	83 e1 0f             	and    $0xf,%ecx
  40248a:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  40248f:	48 8d 0d aa 50 00 00 	lea    0x50aa(%rip),%rcx        # 407540 <gets_buf>
  402496:	48 63 f2             	movslq %edx,%rsi
  402499:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  40249d:	8d 72 01             	lea    0x1(%rdx),%esi
  4024a0:	83 e7 0f             	and    $0xf,%edi
  4024a3:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4024a8:	48 63 f6             	movslq %esi,%rsi
  4024ab:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4024af:	83 c2 02             	add    $0x2,%edx
  4024b2:	48 63 d2             	movslq %edx,%rdx
  4024b5:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4024b9:	83 c0 01             	add    $0x1,%eax
  4024bc:	89 05 82 5c 00 00    	mov    %eax,0x5c82(%rip)        # 408144 <gets_cnt>
  4024c2:	c3                   	ret    

00000000004024c3 <save_term>:
  4024c3:	8b 05 7b 5c 00 00    	mov    0x5c7b(%rip),%eax        # 408144 <gets_cnt>
  4024c9:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4024cc:	48 98                	cltq   
  4024ce:	48 8d 15 6b 50 00 00 	lea    0x506b(%rip),%rdx        # 407540 <gets_buf>
  4024d5:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4024d9:	c3                   	ret    

00000000004024da <check_fail>:
  4024da:	f3 0f 1e fa          	endbr64 
  4024de:	50                   	push   %rax
  4024df:	58                   	pop    %rax
  4024e0:	48 83 ec 08          	sub    $0x8,%rsp
  4024e4:	0f be 15 5d 5c 00 00 	movsbl 0x5c5d(%rip),%edx        # 408148 <target_prefix>
  4024eb:	4c 8d 05 4e 50 00 00 	lea    0x504e(%rip),%r8        # 407540 <gets_buf>
  4024f2:	8b 0d 20 50 00 00    	mov    0x5020(%rip),%ecx        # 407518 <check_level>
  4024f8:	48 8d 35 2f 1f 00 00 	lea    0x1f2f(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  4024ff:	bf 01 00 00 00       	mov    $0x1,%edi
  402504:	b8 00 00 00 00       	mov    $0x0,%eax
  402509:	e8 b2 ee ff ff       	call   4013c0 <__printf_chk@plt>
  40250e:	bf 01 00 00 00       	mov    $0x1,%edi
  402513:	e8 f8 ee ff ff       	call   401410 <exit@plt>

0000000000402518 <Gets>:
  402518:	f3 0f 1e fa          	endbr64 
  40251c:	41 54                	push   %r12
  40251e:	55                   	push   %rbp
  40251f:	53                   	push   %rbx
  402520:	49 89 fc             	mov    %rdi,%r12
  402523:	c7 05 17 5c 00 00 00 	movl   $0x0,0x5c17(%rip)        # 408144 <gets_cnt>
  40252a:	00 00 00 
  40252d:	48 89 fb             	mov    %rdi,%rbx
  402530:	48 8b 3d d9 4f 00 00 	mov    0x4fd9(%rip),%rdi        # 407510 <infile>
  402537:	e8 04 ef ff ff       	call   401440 <getc@plt>
  40253c:	83 f8 ff             	cmp    $0xffffffff,%eax
  40253f:	74 18                	je     402559 <Gets+0x41>
  402541:	83 f8 0a             	cmp    $0xa,%eax
  402544:	74 13                	je     402559 <Gets+0x41>
  402546:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  40254a:	88 03                	mov    %al,(%rbx)
  40254c:	0f b6 f8             	movzbl %al,%edi
  40254f:	e8 17 ff ff ff       	call   40246b <save_char>
  402554:	48 89 eb             	mov    %rbp,%rbx
  402557:	eb d7                	jmp    402530 <Gets+0x18>
  402559:	c6 03 00             	movb   $0x0,(%rbx)
  40255c:	b8 00 00 00 00       	mov    $0x0,%eax
  402561:	e8 5d ff ff ff       	call   4024c3 <save_term>
  402566:	4c 89 e0             	mov    %r12,%rax
  402569:	5b                   	pop    %rbx
  40256a:	5d                   	pop    %rbp
  40256b:	41 5c                	pop    %r12
  40256d:	c3                   	ret    

000000000040256e <notify_server>:
  40256e:	f3 0f 1e fa          	endbr64 
  402572:	55                   	push   %rbp
  402573:	53                   	push   %rbx
  402574:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  40257b:	ff 
  40257c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402583:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402588:	4c 39 dc             	cmp    %r11,%rsp
  40258b:	75 ef                	jne    40257c <notify_server+0xe>
  40258d:	48 83 ec 18          	sub    $0x18,%rsp
  402591:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402598:	00 00 
  40259a:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4025a1:	00 
  4025a2:	31 c0                	xor    %eax,%eax
  4025a4:	83 3d 7d 4f 00 00 00 	cmpl   $0x0,0x4f7d(%rip)        # 407528 <is_checker>
  4025ab:	0f 85 b7 01 00 00    	jne    402768 <notify_server+0x1fa>
  4025b1:	89 fb                	mov    %edi,%ebx
  4025b3:	81 3d 87 5b 00 00 9c 	cmpl   $0x1f9c,0x5b87(%rip)        # 408144 <gets_cnt>
  4025ba:	1f 00 00 
  4025bd:	7f 18                	jg     4025d7 <notify_server+0x69>
  4025bf:	0f be 05 82 5b 00 00 	movsbl 0x5b82(%rip),%eax        # 408148 <target_prefix>
  4025c6:	83 3d d3 4e 00 00 00 	cmpl   $0x0,0x4ed3(%rip)        # 4074a0 <notify>
  4025cd:	74 23                	je     4025f2 <notify_server+0x84>
  4025cf:	8b 15 4b 4f 00 00    	mov    0x4f4b(%rip),%edx        # 407520 <authkey>
  4025d5:	eb 20                	jmp    4025f7 <notify_server+0x89>
  4025d7:	48 8d 35 7a 1f 00 00 	lea    0x1f7a(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  4025de:	bf 01 00 00 00       	mov    $0x1,%edi
  4025e3:	e8 d8 ed ff ff       	call   4013c0 <__printf_chk@plt>
  4025e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4025ed:	e8 1e ee ff ff       	call   401410 <exit@plt>
  4025f2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4025f7:	85 db                	test   %ebx,%ebx
  4025f9:	0f 84 9b 00 00 00    	je     40269a <notify_server+0x12c>
  4025ff:	48 8d 2d 43 1e 00 00 	lea    0x1e43(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  402606:	48 89 e7             	mov    %rsp,%rdi
  402609:	48 8d 0d 30 4f 00 00 	lea    0x4f30(%rip),%rcx        # 407540 <gets_buf>
  402610:	51                   	push   %rcx
  402611:	56                   	push   %rsi
  402612:	50                   	push   %rax
  402613:	52                   	push   %rdx
  402614:	49 89 e9             	mov    %rbp,%r9
  402617:	44 8b 05 32 4b 00 00 	mov    0x4b32(%rip),%r8d        # 407150 <target_id>
  40261e:	48 8d 0d 29 1e 00 00 	lea    0x1e29(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  402625:	ba 00 20 00 00       	mov    $0x2000,%edx
  40262a:	be 01 00 00 00       	mov    $0x1,%esi
  40262f:	b8 00 00 00 00       	mov    $0x0,%eax
  402634:	e8 17 ee ff ff       	call   401450 <__sprintf_chk@plt>
  402639:	48 83 c4 20          	add    $0x20,%rsp
  40263d:	83 3d 5c 4e 00 00 00 	cmpl   $0x0,0x4e5c(%rip)        # 4074a0 <notify>
  402644:	0f 84 95 00 00 00    	je     4026df <notify_server+0x171>
  40264a:	48 89 e1             	mov    %rsp,%rcx
  40264d:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402654:	00 
  402655:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40265b:	48 8b 15 06 4b 00 00 	mov    0x4b06(%rip),%rdx        # 407168 <lab>
  402662:	48 8b 35 07 4b 00 00 	mov    0x4b07(%rip),%rsi        # 407170 <course>
  402669:	48 8b 3d f0 4a 00 00 	mov    0x4af0(%rip),%rdi        # 407160 <user_id>
  402670:	e8 75 12 00 00       	call   4038ea <driver_post>
  402675:	85 c0                	test   %eax,%eax
  402677:	78 2d                	js     4026a6 <notify_server+0x138>
  402679:	85 db                	test   %ebx,%ebx
  40267b:	74 51                	je     4026ce <notify_server+0x160>
  40267d:	48 8d 3d 04 1f 00 00 	lea    0x1f04(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  402684:	e8 27 ec ff ff       	call   4012b0 <puts@plt>
  402689:	48 8d 3d e6 1d 00 00 	lea    0x1de6(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  402690:	e8 1b ec ff ff       	call   4012b0 <puts@plt>
  402695:	e9 ce 00 00 00       	jmp    402768 <notify_server+0x1fa>
  40269a:	48 8d 2d a3 1d 00 00 	lea    0x1da3(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  4026a1:	e9 60 ff ff ff       	jmp    402606 <notify_server+0x98>
  4026a6:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4026ad:	00 
  4026ae:	48 8d 35 b5 1d 00 00 	lea    0x1db5(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  4026b5:	bf 01 00 00 00       	mov    $0x1,%edi
  4026ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4026bf:	e8 fc ec ff ff       	call   4013c0 <__printf_chk@plt>
  4026c4:	bf 01 00 00 00       	mov    $0x1,%edi
  4026c9:	e8 42 ed ff ff       	call   401410 <exit@plt>
  4026ce:	48 8d 3d ab 1d 00 00 	lea    0x1dab(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  4026d5:	e8 d6 eb ff ff       	call   4012b0 <puts@plt>
  4026da:	e9 89 00 00 00       	jmp    402768 <notify_server+0x1fa>
  4026df:	48 89 ea             	mov    %rbp,%rdx
  4026e2:	48 8d 35 d7 1e 00 00 	lea    0x1ed7(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  4026e9:	bf 01 00 00 00       	mov    $0x1,%edi
  4026ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4026f3:	e8 c8 ec ff ff       	call   4013c0 <__printf_chk@plt>
  4026f8:	48 8b 15 61 4a 00 00 	mov    0x4a61(%rip),%rdx        # 407160 <user_id>
  4026ff:	48 8d 35 81 1d 00 00 	lea    0x1d81(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  402706:	bf 01 00 00 00       	mov    $0x1,%edi
  40270b:	b8 00 00 00 00       	mov    $0x0,%eax
  402710:	e8 ab ec ff ff       	call   4013c0 <__printf_chk@plt>
  402715:	48 8b 15 54 4a 00 00 	mov    0x4a54(%rip),%rdx        # 407170 <course>
  40271c:	48 8d 35 71 1d 00 00 	lea    0x1d71(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  402723:	bf 01 00 00 00       	mov    $0x1,%edi
  402728:	b8 00 00 00 00       	mov    $0x0,%eax
  40272d:	e8 8e ec ff ff       	call   4013c0 <__printf_chk@plt>
  402732:	48 8b 15 2f 4a 00 00 	mov    0x4a2f(%rip),%rdx        # 407168 <lab>
  402739:	48 8d 35 60 1d 00 00 	lea    0x1d60(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  402740:	bf 01 00 00 00       	mov    $0x1,%edi
  402745:	b8 00 00 00 00       	mov    $0x0,%eax
  40274a:	e8 71 ec ff ff       	call   4013c0 <__printf_chk@plt>
  40274f:	48 89 e2             	mov    %rsp,%rdx
  402752:	48 8d 35 50 1d 00 00 	lea    0x1d50(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  402759:	bf 01 00 00 00       	mov    $0x1,%edi
  40275e:	b8 00 00 00 00       	mov    $0x0,%eax
  402763:	e8 58 ec ff ff       	call   4013c0 <__printf_chk@plt>
  402768:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40276f:	00 
  402770:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402777:	00 00 
  402779:	75 0a                	jne    402785 <notify_server+0x217>
  40277b:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402782:	5b                   	pop    %rbx
  402783:	5d                   	pop    %rbp
  402784:	c3                   	ret    
  402785:	e8 72 02 00 00       	call   4029fc <__stack_chk_fail>

000000000040278a <validate>:
  40278a:	f3 0f 1e fa          	endbr64 
  40278e:	53                   	push   %rbx
  40278f:	89 fb                	mov    %edi,%ebx
  402791:	83 3d 90 4d 00 00 00 	cmpl   $0x0,0x4d90(%rip)        # 407528 <is_checker>
  402798:	74 79                	je     402813 <validate+0x89>
  40279a:	39 3d 7c 4d 00 00    	cmp    %edi,0x4d7c(%rip)        # 40751c <vlevel>
  4027a0:	75 39                	jne    4027db <validate+0x51>
  4027a2:	8b 15 70 4d 00 00    	mov    0x4d70(%rip),%edx        # 407518 <check_level>
  4027a8:	39 fa                	cmp    %edi,%edx
  4027aa:	75 45                	jne    4027f1 <validate+0x67>
  4027ac:	0f be 0d 95 59 00 00 	movsbl 0x5995(%rip),%ecx        # 408148 <target_prefix>
  4027b3:	4c 8d 0d 86 4d 00 00 	lea    0x4d86(%rip),%r9        # 407540 <gets_buf>
  4027ba:	41 89 f8             	mov    %edi,%r8d
  4027bd:	8b 15 5d 4d 00 00    	mov    0x4d5d(%rip),%edx        # 407520 <authkey>
  4027c3:	48 8d 35 46 1e 00 00 	lea    0x1e46(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  4027ca:	bf 01 00 00 00       	mov    $0x1,%edi
  4027cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d4:	e8 e7 eb ff ff       	call   4013c0 <__printf_chk@plt>
  4027d9:	5b                   	pop    %rbx
  4027da:	c3                   	ret    
  4027db:	48 8d 3d d3 1c 00 00 	lea    0x1cd3(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  4027e2:	e8 c9 ea ff ff       	call   4012b0 <puts@plt>
  4027e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4027ec:	e8 e9 fc ff ff       	call   4024da <check_fail>
  4027f1:	89 f9                	mov    %edi,%ecx
  4027f3:	48 8d 35 ee 1d 00 00 	lea    0x1dee(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  4027fa:	bf 01 00 00 00       	mov    $0x1,%edi
  4027ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402804:	e8 b7 eb ff ff       	call   4013c0 <__printf_chk@plt>
  402809:	b8 00 00 00 00       	mov    $0x0,%eax
  40280e:	e8 c7 fc ff ff       	call   4024da <check_fail>
  402813:	39 3d 03 4d 00 00    	cmp    %edi,0x4d03(%rip)        # 40751c <vlevel>
  402819:	74 1a                	je     402835 <validate+0xab>
  40281b:	48 8d 3d 93 1c 00 00 	lea    0x1c93(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  402822:	e8 89 ea ff ff       	call   4012b0 <puts@plt>
  402827:	89 de                	mov    %ebx,%esi
  402829:	bf 00 00 00 00       	mov    $0x0,%edi
  40282e:	e8 3b fd ff ff       	call   40256e <notify_server>
  402833:	eb a4                	jmp    4027d9 <validate+0x4f>
  402835:	0f be 0d 0c 59 00 00 	movsbl 0x590c(%rip),%ecx        # 408148 <target_prefix>
  40283c:	89 fa                	mov    %edi,%edx
  40283e:	48 8d 35 f3 1d 00 00 	lea    0x1df3(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  402845:	bf 01 00 00 00       	mov    $0x1,%edi
  40284a:	b8 00 00 00 00       	mov    $0x0,%eax
  40284f:	e8 6c eb ff ff       	call   4013c0 <__printf_chk@plt>
  402854:	89 de                	mov    %ebx,%esi
  402856:	bf 01 00 00 00       	mov    $0x1,%edi
  40285b:	e8 0e fd ff ff       	call   40256e <notify_server>
  402860:	e9 74 ff ff ff       	jmp    4027d9 <validate+0x4f>

0000000000402865 <fail>:
  402865:	f3 0f 1e fa          	endbr64 
  402869:	48 83 ec 08          	sub    $0x8,%rsp
  40286d:	83 3d b4 4c 00 00 00 	cmpl   $0x0,0x4cb4(%rip)        # 407528 <is_checker>
  402874:	75 11                	jne    402887 <fail+0x22>
  402876:	89 fe                	mov    %edi,%esi
  402878:	bf 00 00 00 00       	mov    $0x0,%edi
  40287d:	e8 ec fc ff ff       	call   40256e <notify_server>
  402882:	48 83 c4 08          	add    $0x8,%rsp
  402886:	c3                   	ret    
  402887:	b8 00 00 00 00       	mov    $0x0,%eax
  40288c:	e8 49 fc ff ff       	call   4024da <check_fail>

0000000000402891 <bushandler>:
  402891:	f3 0f 1e fa          	endbr64 
  402895:	50                   	push   %rax
  402896:	58                   	pop    %rax
  402897:	48 83 ec 08          	sub    $0x8,%rsp
  40289b:	83 3d 86 4c 00 00 00 	cmpl   $0x0,0x4c86(%rip)        # 407528 <is_checker>
  4028a2:	74 16                	je     4028ba <bushandler+0x29>
  4028a4:	48 8d 3d 28 1c 00 00 	lea    0x1c28(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  4028ab:	e8 00 ea ff ff       	call   4012b0 <puts@plt>
  4028b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4028b5:	e8 20 fc ff ff       	call   4024da <check_fail>
  4028ba:	48 8d 3d af 1d 00 00 	lea    0x1daf(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  4028c1:	e8 ea e9 ff ff       	call   4012b0 <puts@plt>
  4028c6:	48 8d 3d 10 1c 00 00 	lea    0x1c10(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4028cd:	e8 de e9 ff ff       	call   4012b0 <puts@plt>
  4028d2:	be 00 00 00 00       	mov    $0x0,%esi
  4028d7:	bf 00 00 00 00       	mov    $0x0,%edi
  4028dc:	e8 8d fc ff ff       	call   40256e <notify_server>
  4028e1:	bf 01 00 00 00       	mov    $0x1,%edi
  4028e6:	e8 25 eb ff ff       	call   401410 <exit@plt>

00000000004028eb <seghandler>:
  4028eb:	f3 0f 1e fa          	endbr64 
  4028ef:	50                   	push   %rax
  4028f0:	58                   	pop    %rax
  4028f1:	48 83 ec 08          	sub    $0x8,%rsp
  4028f5:	83 3d 2c 4c 00 00 00 	cmpl   $0x0,0x4c2c(%rip)        # 407528 <is_checker>
  4028fc:	74 16                	je     402914 <seghandler+0x29>
  4028fe:	48 8d 3d ee 1b 00 00 	lea    0x1bee(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  402905:	e8 a6 e9 ff ff       	call   4012b0 <puts@plt>
  40290a:	b8 00 00 00 00       	mov    $0x0,%eax
  40290f:	e8 c6 fb ff ff       	call   4024da <check_fail>
  402914:	48 8d 3d 75 1d 00 00 	lea    0x1d75(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  40291b:	e8 90 e9 ff ff       	call   4012b0 <puts@plt>
  402920:	48 8d 3d b6 1b 00 00 	lea    0x1bb6(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402927:	e8 84 e9 ff ff       	call   4012b0 <puts@plt>
  40292c:	be 00 00 00 00       	mov    $0x0,%esi
  402931:	bf 00 00 00 00       	mov    $0x0,%edi
  402936:	e8 33 fc ff ff       	call   40256e <notify_server>
  40293b:	bf 01 00 00 00       	mov    $0x1,%edi
  402940:	e8 cb ea ff ff       	call   401410 <exit@plt>

0000000000402945 <illegalhandler>:
  402945:	f3 0f 1e fa          	endbr64 
  402949:	50                   	push   %rax
  40294a:	58                   	pop    %rax
  40294b:	48 83 ec 08          	sub    $0x8,%rsp
  40294f:	83 3d d2 4b 00 00 00 	cmpl   $0x0,0x4bd2(%rip)        # 407528 <is_checker>
  402956:	74 16                	je     40296e <illegalhandler+0x29>
  402958:	48 8d 3d a7 1b 00 00 	lea    0x1ba7(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  40295f:	e8 4c e9 ff ff       	call   4012b0 <puts@plt>
  402964:	b8 00 00 00 00       	mov    $0x0,%eax
  402969:	e8 6c fb ff ff       	call   4024da <check_fail>
  40296e:	48 8d 3d 43 1d 00 00 	lea    0x1d43(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  402975:	e8 36 e9 ff ff       	call   4012b0 <puts@plt>
  40297a:	48 8d 3d 5c 1b 00 00 	lea    0x1b5c(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402981:	e8 2a e9 ff ff       	call   4012b0 <puts@plt>
  402986:	be 00 00 00 00       	mov    $0x0,%esi
  40298b:	bf 00 00 00 00       	mov    $0x0,%edi
  402990:	e8 d9 fb ff ff       	call   40256e <notify_server>
  402995:	bf 01 00 00 00       	mov    $0x1,%edi
  40299a:	e8 71 ea ff ff       	call   401410 <exit@plt>

000000000040299f <sigalrmhandler>:
  40299f:	f3 0f 1e fa          	endbr64 
  4029a3:	50                   	push   %rax
  4029a4:	58                   	pop    %rax
  4029a5:	48 83 ec 08          	sub    $0x8,%rsp
  4029a9:	83 3d 78 4b 00 00 00 	cmpl   $0x0,0x4b78(%rip)        # 407528 <is_checker>
  4029b0:	74 16                	je     4029c8 <sigalrmhandler+0x29>
  4029b2:	48 8d 3d 61 1b 00 00 	lea    0x1b61(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  4029b9:	e8 f2 e8 ff ff       	call   4012b0 <puts@plt>
  4029be:	b8 00 00 00 00       	mov    $0x0,%eax
  4029c3:	e8 12 fb ff ff       	call   4024da <check_fail>
  4029c8:	ba 02 00 00 00       	mov    $0x2,%edx
  4029cd:	48 8d 35 14 1d 00 00 	lea    0x1d14(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  4029d4:	bf 01 00 00 00       	mov    $0x1,%edi
  4029d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4029de:	e8 dd e9 ff ff       	call   4013c0 <__printf_chk@plt>
  4029e3:	be 00 00 00 00       	mov    $0x0,%esi
  4029e8:	bf 00 00 00 00       	mov    $0x0,%edi
  4029ed:	e8 7c fb ff ff       	call   40256e <notify_server>
  4029f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4029f7:	e8 14 ea ff ff       	call   401410 <exit@plt>

00000000004029fc <__stack_chk_fail>:
  4029fc:	f3 0f 1e fa          	endbr64 
  402a00:	50                   	push   %rax
  402a01:	58                   	pop    %rax
  402a02:	48 83 ec 08          	sub    $0x8,%rsp
  402a06:	83 3d 1b 4b 00 00 00 	cmpl   $0x0,0x4b1b(%rip)        # 407528 <is_checker>
  402a0d:	74 16                	je     402a25 <__stack_chk_fail+0x29>
  402a0f:	48 8d 3d 0c 1b 00 00 	lea    0x1b0c(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  402a16:	e8 95 e8 ff ff       	call   4012b0 <puts@plt>
  402a1b:	b8 00 00 00 00       	mov    $0x0,%eax
  402a20:	e8 b5 fa ff ff       	call   4024da <check_fail>
  402a25:	48 8d 3d f4 1c 00 00 	lea    0x1cf4(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  402a2c:	e8 7f e8 ff ff       	call   4012b0 <puts@plt>
  402a31:	48 8d 3d a5 1a 00 00 	lea    0x1aa5(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402a38:	e8 73 e8 ff ff       	call   4012b0 <puts@plt>
  402a3d:	be 00 00 00 00       	mov    $0x0,%esi
  402a42:	bf 00 00 00 00       	mov    $0x0,%edi
  402a47:	e8 22 fb ff ff       	call   40256e <notify_server>
  402a4c:	bf 01 00 00 00       	mov    $0x1,%edi
  402a51:	e8 ba e9 ff ff       	call   401410 <exit@plt>

0000000000402a56 <launch>:
  402a56:	f3 0f 1e fa          	endbr64 
  402a5a:	55                   	push   %rbp
  402a5b:	48 89 e5             	mov    %rsp,%rbp
  402a5e:	53                   	push   %rbx
  402a5f:	48 83 ec 18          	sub    $0x18,%rsp
  402a63:	48 89 fa             	mov    %rdi,%rdx
  402a66:	89 f3                	mov    %esi,%ebx
  402a68:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a6f:	00 00 
  402a71:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402a75:	31 c0                	xor    %eax,%eax
  402a77:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402a7b:	48 89 c1             	mov    %rax,%rcx
  402a7e:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  402a82:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402a88:	48 89 e6             	mov    %rsp,%rsi
  402a8b:	48 29 c6             	sub    %rax,%rsi
  402a8e:	48 89 f0             	mov    %rsi,%rax
  402a91:	48 39 c4             	cmp    %rax,%rsp
  402a94:	74 12                	je     402aa8 <launch+0x52>
  402a96:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402a9d:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402aa4:	00 00 
  402aa6:	eb e9                	jmp    402a91 <launch+0x3b>
  402aa8:	48 89 c8             	mov    %rcx,%rax
  402aab:	25 ff 0f 00 00       	and    $0xfff,%eax
  402ab0:	48 29 c4             	sub    %rax,%rsp
  402ab3:	48 85 c0             	test   %rax,%rax
  402ab6:	74 06                	je     402abe <launch+0x68>
  402ab8:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402abe:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402ac3:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402ac7:	be f4 00 00 00       	mov    $0xf4,%esi
  402acc:	e8 0f e8 ff ff       	call   4012e0 <memset@plt>
  402ad1:	48 8b 05 e8 49 00 00 	mov    0x49e8(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  402ad8:	48 39 05 31 4a 00 00 	cmp    %rax,0x4a31(%rip)        # 407510 <infile>
  402adf:	74 42                	je     402b23 <launch+0xcd>
  402ae1:	c7 05 31 4a 00 00 00 	movl   $0x0,0x4a31(%rip)        # 40751c <vlevel>
  402ae8:	00 00 00 
  402aeb:	85 db                	test   %ebx,%ebx
  402aed:	75 42                	jne    402b31 <launch+0xdb>
  402aef:	b8 00 00 00 00       	mov    $0x0,%eax
  402af4:	e8 5a f6 ff ff       	call   402153 <test>
  402af9:	83 3d 28 4a 00 00 00 	cmpl   $0x0,0x4a28(%rip)        # 407528 <is_checker>
  402b00:	75 3b                	jne    402b3d <launch+0xe7>
  402b02:	48 8d 3d 40 1a 00 00 	lea    0x1a40(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  402b09:	e8 a2 e7 ff ff       	call   4012b0 <puts@plt>
  402b0e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402b12:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402b19:	00 00 
  402b1b:	75 36                	jne    402b53 <launch+0xfd>
  402b1d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402b21:	c9                   	leave  
  402b22:	c3                   	ret    
  402b23:	48 8d 3d 07 1a 00 00 	lea    0x1a07(%rip),%rdi        # 404531 <_IO_stdin_used+0x531>
  402b2a:	e8 81 e7 ff ff       	call   4012b0 <puts@plt>
  402b2f:	eb b0                	jmp    402ae1 <launch+0x8b>
  402b31:	b8 00 00 00 00       	mov    $0x0,%eax
  402b36:	e8 80 f6 ff ff       	call   4021bb <test2>
  402b3b:	eb bc                	jmp    402af9 <launch+0xa3>
  402b3d:	48 8d 3d fa 19 00 00 	lea    0x19fa(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  402b44:	e8 67 e7 ff ff       	call   4012b0 <puts@plt>
  402b49:	b8 00 00 00 00       	mov    $0x0,%eax
  402b4e:	e8 87 f9 ff ff       	call   4024da <check_fail>
  402b53:	e8 a4 fe ff ff       	call   4029fc <__stack_chk_fail>

0000000000402b58 <stable_launch>:
  402b58:	f3 0f 1e fa          	endbr64 
  402b5c:	55                   	push   %rbp
  402b5d:	53                   	push   %rbx
  402b5e:	48 83 ec 08          	sub    $0x8,%rsp
  402b62:	89 f5                	mov    %esi,%ebp
  402b64:	48 89 3d 9d 49 00 00 	mov    %rdi,0x499d(%rip)        # 407508 <global_offset>
  402b6b:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402b71:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402b77:	b9 32 01 00 00       	mov    $0x132,%ecx
  402b7c:	ba 07 00 00 00       	mov    $0x7,%edx
  402b81:	be 00 00 10 00       	mov    $0x100000,%esi
  402b86:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402b8b:	e8 40 e7 ff ff       	call   4012d0 <mmap@plt>
  402b90:	48 89 c3             	mov    %rax,%rbx
  402b93:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402b99:	75 4a                	jne    402be5 <stable_launch+0x8d>
  402b9b:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402ba2:	48 89 15 a7 55 00 00 	mov    %rdx,0x55a7(%rip)        # 408150 <stack_top>
  402ba9:	48 89 e0             	mov    %rsp,%rax
  402bac:	48 89 d4             	mov    %rdx,%rsp
  402baf:	48 89 c2             	mov    %rax,%rdx
  402bb2:	48 89 15 47 49 00 00 	mov    %rdx,0x4947(%rip)        # 407500 <global_save_stack>
  402bb9:	89 ee                	mov    %ebp,%esi
  402bbb:	48 8b 3d 46 49 00 00 	mov    0x4946(%rip),%rdi        # 407508 <global_offset>
  402bc2:	e8 8f fe ff ff       	call   402a56 <launch>
  402bc7:	48 8b 05 32 49 00 00 	mov    0x4932(%rip),%rax        # 407500 <global_save_stack>
  402bce:	48 89 c4             	mov    %rax,%rsp
  402bd1:	be 00 00 10 00       	mov    $0x100000,%esi
  402bd6:	48 89 df             	mov    %rbx,%rdi
  402bd9:	e8 d2 e7 ff ff       	call   4013b0 <munmap@plt>
  402bde:	48 83 c4 08          	add    $0x8,%rsp
  402be2:	5b                   	pop    %rbx
  402be3:	5d                   	pop    %rbp
  402be4:	c3                   	ret    
  402be5:	be 00 00 10 00       	mov    $0x100000,%esi
  402bea:	48 89 c7             	mov    %rax,%rdi
  402bed:	e8 be e7 ff ff       	call   4013b0 <munmap@plt>
  402bf2:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402bf7:	48 8d 15 4a 1b 00 00 	lea    0x1b4a(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  402bfe:	be 01 00 00 00       	mov    $0x1,%esi
  402c03:	48 8b 3d d6 48 00 00 	mov    0x48d6(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402c0a:	b8 00 00 00 00       	mov    $0x0,%eax
  402c0f:	e8 1c e8 ff ff       	call   401430 <__fprintf_chk@plt>
  402c14:	bf 01 00 00 00       	mov    $0x1,%edi
  402c19:	e8 f2 e7 ff ff       	call   401410 <exit@plt>

0000000000402c1e <rio_readinitb>:
  402c1e:	89 37                	mov    %esi,(%rdi)
  402c20:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402c27:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402c2b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402c2f:	c3                   	ret    

0000000000402c30 <sigalrm_handler>:
  402c30:	f3 0f 1e fa          	endbr64 
  402c34:	50                   	push   %rax
  402c35:	58                   	pop    %rax
  402c36:	48 83 ec 08          	sub    $0x8,%rsp
  402c3a:	b9 00 00 00 00       	mov    $0x0,%ecx
  402c3f:	48 8d 15 3a 1b 00 00 	lea    0x1b3a(%rip),%rdx        # 404780 <trans_char+0x10>
  402c46:	be 01 00 00 00       	mov    $0x1,%esi
  402c4b:	48 8b 3d 8e 48 00 00 	mov    0x488e(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402c52:	b8 00 00 00 00       	mov    $0x0,%eax
  402c57:	e8 d4 e7 ff ff       	call   401430 <__fprintf_chk@plt>
  402c5c:	bf 01 00 00 00       	mov    $0x1,%edi
  402c61:	e8 aa e7 ff ff       	call   401410 <exit@plt>

0000000000402c66 <rio_writen>:
  402c66:	41 55                	push   %r13
  402c68:	41 54                	push   %r12
  402c6a:	55                   	push   %rbp
  402c6b:	53                   	push   %rbx
  402c6c:	48 83 ec 08          	sub    $0x8,%rsp
  402c70:	41 89 fc             	mov    %edi,%r12d
  402c73:	48 89 f5             	mov    %rsi,%rbp
  402c76:	49 89 d5             	mov    %rdx,%r13
  402c79:	48 89 d3             	mov    %rdx,%rbx
  402c7c:	eb 06                	jmp    402c84 <rio_writen+0x1e>
  402c7e:	48 29 c3             	sub    %rax,%rbx
  402c81:	48 01 c5             	add    %rax,%rbp
  402c84:	48 85 db             	test   %rbx,%rbx
  402c87:	74 24                	je     402cad <rio_writen+0x47>
  402c89:	48 89 da             	mov    %rbx,%rdx
  402c8c:	48 89 ee             	mov    %rbp,%rsi
  402c8f:	44 89 e7             	mov    %r12d,%edi
  402c92:	e8 29 e6 ff ff       	call   4012c0 <write@plt>
  402c97:	48 85 c0             	test   %rax,%rax
  402c9a:	7f e2                	jg     402c7e <rio_writen+0x18>
  402c9c:	e8 bf e5 ff ff       	call   401260 <__errno_location@plt>
  402ca1:	83 38 04             	cmpl   $0x4,(%rax)
  402ca4:	75 15                	jne    402cbb <rio_writen+0x55>
  402ca6:	b8 00 00 00 00       	mov    $0x0,%eax
  402cab:	eb d1                	jmp    402c7e <rio_writen+0x18>
  402cad:	4c 89 e8             	mov    %r13,%rax
  402cb0:	48 83 c4 08          	add    $0x8,%rsp
  402cb4:	5b                   	pop    %rbx
  402cb5:	5d                   	pop    %rbp
  402cb6:	41 5c                	pop    %r12
  402cb8:	41 5d                	pop    %r13
  402cba:	c3                   	ret    
  402cbb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402cc2:	eb ec                	jmp    402cb0 <rio_writen+0x4a>

0000000000402cc4 <rio_read>:
  402cc4:	41 55                	push   %r13
  402cc6:	41 54                	push   %r12
  402cc8:	55                   	push   %rbp
  402cc9:	53                   	push   %rbx
  402cca:	48 83 ec 08          	sub    $0x8,%rsp
  402cce:	48 89 fb             	mov    %rdi,%rbx
  402cd1:	49 89 f5             	mov    %rsi,%r13
  402cd4:	49 89 d4             	mov    %rdx,%r12
  402cd7:	eb 17                	jmp    402cf0 <rio_read+0x2c>
  402cd9:	e8 82 e5 ff ff       	call   401260 <__errno_location@plt>
  402cde:	83 38 04             	cmpl   $0x4,(%rax)
  402ce1:	74 0d                	je     402cf0 <rio_read+0x2c>
  402ce3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402cea:	eb 54                	jmp    402d40 <rio_read+0x7c>
  402cec:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402cf0:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402cf3:	85 ed                	test   %ebp,%ebp
  402cf5:	7f 23                	jg     402d1a <rio_read+0x56>
  402cf7:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402cfb:	8b 3b                	mov    (%rbx),%edi
  402cfd:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d02:	48 89 ee             	mov    %rbp,%rsi
  402d05:	e8 06 e6 ff ff       	call   401310 <read@plt>
  402d0a:	89 43 04             	mov    %eax,0x4(%rbx)
  402d0d:	85 c0                	test   %eax,%eax
  402d0f:	78 c8                	js     402cd9 <rio_read+0x15>
  402d11:	75 d9                	jne    402cec <rio_read+0x28>
  402d13:	b8 00 00 00 00       	mov    $0x0,%eax
  402d18:	eb 26                	jmp    402d40 <rio_read+0x7c>
  402d1a:	89 e8                	mov    %ebp,%eax
  402d1c:	4c 39 e0             	cmp    %r12,%rax
  402d1f:	72 03                	jb     402d24 <rio_read+0x60>
  402d21:	44 89 e5             	mov    %r12d,%ebp
  402d24:	4c 63 e5             	movslq %ebp,%r12
  402d27:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402d2b:	4c 89 e2             	mov    %r12,%rdx
  402d2e:	4c 89 ef             	mov    %r13,%rdi
  402d31:	e8 3a e6 ff ff       	call   401370 <memcpy@plt>
  402d36:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402d3a:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402d3d:	4c 89 e0             	mov    %r12,%rax
  402d40:	48 83 c4 08          	add    $0x8,%rsp
  402d44:	5b                   	pop    %rbx
  402d45:	5d                   	pop    %rbp
  402d46:	41 5c                	pop    %r12
  402d48:	41 5d                	pop    %r13
  402d4a:	c3                   	ret    

0000000000402d4b <rio_readlineb>:
  402d4b:	41 55                	push   %r13
  402d4d:	41 54                	push   %r12
  402d4f:	55                   	push   %rbp
  402d50:	53                   	push   %rbx
  402d51:	48 83 ec 18          	sub    $0x18,%rsp
  402d55:	49 89 fd             	mov    %rdi,%r13
  402d58:	48 89 f5             	mov    %rsi,%rbp
  402d5b:	49 89 d4             	mov    %rdx,%r12
  402d5e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d65:	00 00 
  402d67:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402d6c:	31 c0                	xor    %eax,%eax
  402d6e:	bb 01 00 00 00       	mov    $0x1,%ebx
  402d73:	eb 18                	jmp    402d8d <rio_readlineb+0x42>
  402d75:	85 c0                	test   %eax,%eax
  402d77:	75 65                	jne    402dde <rio_readlineb+0x93>
  402d79:	48 83 fb 01          	cmp    $0x1,%rbx
  402d7d:	75 3d                	jne    402dbc <rio_readlineb+0x71>
  402d7f:	b8 00 00 00 00       	mov    $0x0,%eax
  402d84:	eb 3d                	jmp    402dc3 <rio_readlineb+0x78>
  402d86:	48 83 c3 01          	add    $0x1,%rbx
  402d8a:	48 89 d5             	mov    %rdx,%rbp
  402d8d:	4c 39 e3             	cmp    %r12,%rbx
  402d90:	73 2a                	jae    402dbc <rio_readlineb+0x71>
  402d92:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402d97:	ba 01 00 00 00       	mov    $0x1,%edx
  402d9c:	4c 89 ef             	mov    %r13,%rdi
  402d9f:	e8 20 ff ff ff       	call   402cc4 <rio_read>
  402da4:	83 f8 01             	cmp    $0x1,%eax
  402da7:	75 cc                	jne    402d75 <rio_readlineb+0x2a>
  402da9:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402dad:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402db2:	88 45 00             	mov    %al,0x0(%rbp)
  402db5:	3c 0a                	cmp    $0xa,%al
  402db7:	75 cd                	jne    402d86 <rio_readlineb+0x3b>
  402db9:	48 89 d5             	mov    %rdx,%rbp
  402dbc:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402dc0:	48 89 d8             	mov    %rbx,%rax
  402dc3:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402dc8:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402dcf:	00 00 
  402dd1:	75 14                	jne    402de7 <rio_readlineb+0x9c>
  402dd3:	48 83 c4 18          	add    $0x18,%rsp
  402dd7:	5b                   	pop    %rbx
  402dd8:	5d                   	pop    %rbp
  402dd9:	41 5c                	pop    %r12
  402ddb:	41 5d                	pop    %r13
  402ddd:	c3                   	ret    
  402dde:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402de5:	eb dc                	jmp    402dc3 <rio_readlineb+0x78>
  402de7:	e8 10 fc ff ff       	call   4029fc <__stack_chk_fail>

0000000000402dec <urlencode>:
  402dec:	41 54                	push   %r12
  402dee:	55                   	push   %rbp
  402def:	53                   	push   %rbx
  402df0:	48 83 ec 10          	sub    $0x10,%rsp
  402df4:	48 89 fb             	mov    %rdi,%rbx
  402df7:	48 89 f5             	mov    %rsi,%rbp
  402dfa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e01:	00 00 
  402e03:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402e08:	31 c0                	xor    %eax,%eax
  402e0a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402e11:	f2 ae                	repnz scas %es:(%rdi),%al
  402e13:	48 f7 d1             	not    %rcx
  402e16:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402e19:	eb 0f                	jmp    402e2a <urlencode+0x3e>
  402e1b:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402e1f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402e23:	48 83 c3 01          	add    $0x1,%rbx
  402e27:	44 89 e0             	mov    %r12d,%eax
  402e2a:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402e2e:	85 c0                	test   %eax,%eax
  402e30:	0f 84 a8 00 00 00    	je     402ede <urlencode+0xf2>
  402e36:	44 0f b6 03          	movzbl (%rbx),%r8d
  402e3a:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402e3e:	0f 94 c2             	sete   %dl
  402e41:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402e45:	0f 94 c0             	sete   %al
  402e48:	08 c2                	or     %al,%dl
  402e4a:	75 cf                	jne    402e1b <urlencode+0x2f>
  402e4c:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402e50:	74 c9                	je     402e1b <urlencode+0x2f>
  402e52:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402e56:	74 c3                	je     402e1b <urlencode+0x2f>
  402e58:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402e5c:	3c 09                	cmp    $0x9,%al
  402e5e:	76 bb                	jbe    402e1b <urlencode+0x2f>
  402e60:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402e64:	3c 19                	cmp    $0x19,%al
  402e66:	76 b3                	jbe    402e1b <urlencode+0x2f>
  402e68:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402e6c:	3c 19                	cmp    $0x19,%al
  402e6e:	76 ab                	jbe    402e1b <urlencode+0x2f>
  402e70:	41 80 f8 20          	cmp    $0x20,%r8b
  402e74:	74 56                	je     402ecc <urlencode+0xe0>
  402e76:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402e7a:	3c 5f                	cmp    $0x5f,%al
  402e7c:	0f 96 c2             	setbe  %dl
  402e7f:	41 80 f8 09          	cmp    $0x9,%r8b
  402e83:	0f 94 c0             	sete   %al
  402e86:	08 c2                	or     %al,%dl
  402e88:	74 4f                	je     402ed9 <urlencode+0xed>
  402e8a:	48 89 e7             	mov    %rsp,%rdi
  402e8d:	45 0f b6 c0          	movzbl %r8b,%r8d
  402e91:	48 8d 0d 9d 19 00 00 	lea    0x199d(%rip),%rcx        # 404835 <trans_char+0xc5>
  402e98:	ba 08 00 00 00       	mov    $0x8,%edx
  402e9d:	be 01 00 00 00       	mov    $0x1,%esi
  402ea2:	b8 00 00 00 00       	mov    $0x0,%eax
  402ea7:	e8 a4 e5 ff ff       	call   401450 <__sprintf_chk@plt>
  402eac:	0f b6 04 24          	movzbl (%rsp),%eax
  402eb0:	88 45 00             	mov    %al,0x0(%rbp)
  402eb3:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402eb8:	88 45 01             	mov    %al,0x1(%rbp)
  402ebb:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402ec0:	88 45 02             	mov    %al,0x2(%rbp)
  402ec3:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402ec7:	e9 57 ff ff ff       	jmp    402e23 <urlencode+0x37>
  402ecc:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402ed0:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402ed4:	e9 4a ff ff ff       	jmp    402e23 <urlencode+0x37>
  402ed9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ede:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402ee3:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402eea:	00 00 
  402eec:	75 09                	jne    402ef7 <urlencode+0x10b>
  402eee:	48 83 c4 10          	add    $0x10,%rsp
  402ef2:	5b                   	pop    %rbx
  402ef3:	5d                   	pop    %rbp
  402ef4:	41 5c                	pop    %r12
  402ef6:	c3                   	ret    
  402ef7:	e8 00 fb ff ff       	call   4029fc <__stack_chk_fail>

0000000000402efc <submitr>:
  402efc:	f3 0f 1e fa          	endbr64 
  402f00:	41 57                	push   %r15
  402f02:	41 56                	push   %r14
  402f04:	41 55                	push   %r13
  402f06:	41 54                	push   %r12
  402f08:	55                   	push   %rbp
  402f09:	53                   	push   %rbx
  402f0a:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402f11:	ff 
  402f12:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402f19:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402f1e:	4c 39 dc             	cmp    %r11,%rsp
  402f21:	75 ef                	jne    402f12 <submitr+0x16>
  402f23:	48 83 ec 68          	sub    $0x68,%rsp
  402f27:	49 89 fc             	mov    %rdi,%r12
  402f2a:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402f2e:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402f33:	49 89 cd             	mov    %rcx,%r13
  402f36:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402f3b:	4d 89 ce             	mov    %r9,%r14
  402f3e:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402f45:	00 
  402f46:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402f4d:	00 00 
  402f4f:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402f56:	00 
  402f57:	31 c0                	xor    %eax,%eax
  402f59:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402f60:	00 
  402f61:	ba 00 00 00 00       	mov    $0x0,%edx
  402f66:	be 01 00 00 00       	mov    $0x1,%esi
  402f6b:	bf 02 00 00 00       	mov    $0x2,%edi
  402f70:	e8 eb e4 ff ff       	call   401460 <socket@plt>
  402f75:	85 c0                	test   %eax,%eax
  402f77:	0f 88 a5 02 00 00    	js     403222 <submitr+0x326>
  402f7d:	89 c3                	mov    %eax,%ebx
  402f7f:	4c 89 e7             	mov    %r12,%rdi
  402f82:	e8 b9 e3 ff ff       	call   401340 <gethostbyname@plt>
  402f87:	48 85 c0             	test   %rax,%rax
  402f8a:	0f 84 de 02 00 00    	je     40326e <submitr+0x372>
  402f90:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402f95:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402f9c:	00 00 
  402f9e:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402fa5:	00 00 
  402fa7:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402fae:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402fb2:	48 8b 40 18          	mov    0x18(%rax),%rax
  402fb6:	48 8b 30             	mov    (%rax),%rsi
  402fb9:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402fbe:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402fc3:	e8 88 e3 ff ff       	call   401350 <__memmove_chk@plt>
  402fc8:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402fcd:	66 c1 c6 08          	rol    $0x8,%si
  402fd1:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402fd6:	ba 10 00 00 00       	mov    $0x10,%edx
  402fdb:	4c 89 fe             	mov    %r15,%rsi
  402fde:	89 df                	mov    %ebx,%edi
  402fe0:	e8 3b e4 ff ff       	call   401420 <connect@plt>
  402fe5:	85 c0                	test   %eax,%eax
  402fe7:	0f 88 f7 02 00 00    	js     4032e4 <submitr+0x3e8>
  402fed:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402ff4:	b8 00 00 00 00       	mov    $0x0,%eax
  402ff9:	48 89 f1             	mov    %rsi,%rcx
  402ffc:	4c 89 f7             	mov    %r14,%rdi
  402fff:	f2 ae                	repnz scas %es:(%rdi),%al
  403001:	48 89 ca             	mov    %rcx,%rdx
  403004:	48 f7 d2             	not    %rdx
  403007:	48 89 f1             	mov    %rsi,%rcx
  40300a:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40300f:	f2 ae                	repnz scas %es:(%rdi),%al
  403011:	48 f7 d1             	not    %rcx
  403014:	49 89 c8             	mov    %rcx,%r8
  403017:	48 89 f1             	mov    %rsi,%rcx
  40301a:	4c 89 ef             	mov    %r13,%rdi
  40301d:	f2 ae                	repnz scas %es:(%rdi),%al
  40301f:	48 f7 d1             	not    %rcx
  403022:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  403027:	48 89 f1             	mov    %rsi,%rcx
  40302a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40302f:	f2 ae                	repnz scas %es:(%rdi),%al
  403031:	48 89 c8             	mov    %rcx,%rax
  403034:	48 f7 d0             	not    %rax
  403037:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  40303c:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  403041:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  403048:	00 
  403049:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40304f:	0f 87 f7 02 00 00    	ja     40334c <submitr+0x450>
  403055:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  40305c:	00 
  40305d:	b9 00 04 00 00       	mov    $0x400,%ecx
  403062:	b8 00 00 00 00       	mov    $0x0,%eax
  403067:	48 89 f7             	mov    %rsi,%rdi
  40306a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40306d:	4c 89 f7             	mov    %r14,%rdi
  403070:	e8 77 fd ff ff       	call   402dec <urlencode>
  403075:	85 c0                	test   %eax,%eax
  403077:	0f 88 42 03 00 00    	js     4033bf <submitr+0x4c3>
  40307d:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  403084:	00 
  403085:	48 83 ec 08          	sub    $0x8,%rsp
  403089:	41 54                	push   %r12
  40308b:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  403092:	00 
  403093:	50                   	push   %rax
  403094:	41 55                	push   %r13
  403096:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  40309b:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  4030a0:	48 8d 0d 01 17 00 00 	lea    0x1701(%rip),%rcx        # 4047a8 <trans_char+0x38>
  4030a7:	ba 00 20 00 00       	mov    $0x2000,%edx
  4030ac:	be 01 00 00 00       	mov    $0x1,%esi
  4030b1:	4c 89 ff             	mov    %r15,%rdi
  4030b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4030b9:	e8 92 e3 ff ff       	call   401450 <__sprintf_chk@plt>
  4030be:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4030c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4030ca:	4c 89 ff             	mov    %r15,%rdi
  4030cd:	f2 ae                	repnz scas %es:(%rdi),%al
  4030cf:	48 f7 d1             	not    %rcx
  4030d2:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  4030d6:	48 83 c4 20          	add    $0x20,%rsp
  4030da:	4c 89 fe             	mov    %r15,%rsi
  4030dd:	89 df                	mov    %ebx,%edi
  4030df:	e8 82 fb ff ff       	call   402c66 <rio_writen>
  4030e4:	48 85 c0             	test   %rax,%rax
  4030e7:	0f 88 5d 03 00 00    	js     40344a <submitr+0x54e>
  4030ed:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  4030f2:	89 de                	mov    %ebx,%esi
  4030f4:	4c 89 e7             	mov    %r12,%rdi
  4030f7:	e8 22 fb ff ff       	call   402c1e <rio_readinitb>
  4030fc:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403103:	00 
  403104:	ba 00 20 00 00       	mov    $0x2000,%edx
  403109:	4c 89 e7             	mov    %r12,%rdi
  40310c:	e8 3a fc ff ff       	call   402d4b <rio_readlineb>
  403111:	48 85 c0             	test   %rax,%rax
  403114:	0f 8e 9c 03 00 00    	jle    4034b6 <submitr+0x5ba>
  40311a:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  40311f:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  403126:	00 
  403127:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  40312e:	00 
  40312f:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  403136:	00 
  403137:	48 8d 35 fe 16 00 00 	lea    0x16fe(%rip),%rsi        # 40483c <trans_char+0xcc>
  40313e:	b8 00 00 00 00       	mov    $0x0,%eax
  403143:	e8 58 e2 ff ff       	call   4013a0 <__isoc99_sscanf@plt>
  403148:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40314f:	00 
  403150:	b9 03 00 00 00       	mov    $0x3,%ecx
  403155:	48 8d 3d f7 16 00 00 	lea    0x16f7(%rip),%rdi        # 404853 <trans_char+0xe3>
  40315c:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40315e:	0f 97 c0             	seta   %al
  403161:	1c 00                	sbb    $0x0,%al
  403163:	84 c0                	test   %al,%al
  403165:	0f 84 cb 03 00 00    	je     403536 <submitr+0x63a>
  40316b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403172:	00 
  403173:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403178:	ba 00 20 00 00       	mov    $0x2000,%edx
  40317d:	e8 c9 fb ff ff       	call   402d4b <rio_readlineb>
  403182:	48 85 c0             	test   %rax,%rax
  403185:	7f c1                	jg     403148 <submitr+0x24c>
  403187:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40318e:	3a 20 43 
  403191:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403198:	20 75 6e 
  40319b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40319f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031a3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031aa:	74 6f 20 
  4031ad:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4031b4:	68 65 61 
  4031b7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4031bb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4031bf:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4031c6:	66 72 6f 
  4031c9:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  4031d0:	6f 6c 61 
  4031d3:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4031d7:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4031db:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  4031e2:	76 65 72 
  4031e5:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4031e9:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  4031ed:	89 df                	mov    %ebx,%edi
  4031ef:	e8 0c e1 ff ff       	call   401300 <close@plt>
  4031f4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031f9:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  403200:	00 
  403201:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  403208:	00 00 
  40320a:	0f 85 96 04 00 00    	jne    4036a6 <submitr+0x7aa>
  403210:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  403217:	5b                   	pop    %rbx
  403218:	5d                   	pop    %rbp
  403219:	41 5c                	pop    %r12
  40321b:	41 5d                	pop    %r13
  40321d:	41 5e                	pop    %r14
  40321f:	41 5f                	pop    %r15
  403221:	c3                   	ret    
  403222:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403229:	3a 20 43 
  40322c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403233:	20 75 6e 
  403236:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40323a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40323e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403245:	74 6f 20 
  403248:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40324f:	65 20 73 
  403252:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403256:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40325a:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403261:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403267:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40326c:	eb 8b                	jmp    4031f9 <submitr+0x2fd>
  40326e:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403275:	3a 20 44 
  403278:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  40327f:	20 75 6e 
  403282:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403286:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40328a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403291:	74 6f 20 
  403294:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40329b:	76 65 20 
  40329e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032a2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032a6:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4032ad:	61 62 20 
  4032b0:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  4032b7:	72 20 61 
  4032ba:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4032be:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4032c2:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  4032c9:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  4032cf:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  4032d3:	89 df                	mov    %ebx,%edi
  4032d5:	e8 26 e0 ff ff       	call   401300 <close@plt>
  4032da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032df:	e9 15 ff ff ff       	jmp    4031f9 <submitr+0x2fd>
  4032e4:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4032eb:	3a 20 55 
  4032ee:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4032f5:	20 74 6f 
  4032f8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032fc:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403300:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403307:	65 63 74 
  40330a:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  403311:	68 65 20 
  403314:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403318:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40331c:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403323:	61 62 20 
  403326:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40332a:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  403331:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  403337:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40333b:	89 df                	mov    %ebx,%edi
  40333d:	e8 be df ff ff       	call   401300 <close@plt>
  403342:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403347:	e9 ad fe ff ff       	jmp    4031f9 <submitr+0x2fd>
  40334c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403353:	3a 20 52 
  403356:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40335d:	20 73 74 
  403360:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403364:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403368:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40336f:	74 6f 6f 
  403372:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  403379:	65 2e 20 
  40337c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403380:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403384:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  40338b:	61 73 65 
  40338e:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  403395:	49 54 52 
  403398:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40339c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4033a0:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4033a7:	55 46 00 
  4033aa:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4033ae:	89 df                	mov    %ebx,%edi
  4033b0:	e8 4b df ff ff       	call   401300 <close@plt>
  4033b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033ba:	e9 3a fe ff ff       	jmp    4031f9 <submitr+0x2fd>
  4033bf:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4033c6:	3a 20 52 
  4033c9:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4033d0:	20 73 74 
  4033d3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4033d7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4033db:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4033e2:	63 6f 6e 
  4033e5:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4033ec:	20 61 6e 
  4033ef:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4033f3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4033f7:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4033fe:	67 61 6c 
  403401:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  403408:	6e 70 72 
  40340b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40340f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403413:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40341a:	6c 65 20 
  40341d:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403424:	63 74 65 
  403427:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40342b:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40342f:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  403435:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  403439:	89 df                	mov    %ebx,%edi
  40343b:	e8 c0 de ff ff       	call   401300 <close@plt>
  403440:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403445:	e9 af fd ff ff       	jmp    4031f9 <submitr+0x2fd>
  40344a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403451:	3a 20 43 
  403454:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40345b:	20 75 6e 
  40345e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403462:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403466:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40346d:	74 6f 20 
  403470:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  403477:	20 74 6f 
  40347a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40347e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403482:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  403489:	41 75 74 
  40348c:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  403493:	73 65 72 
  403496:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40349a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40349e:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  4034a5:	89 df                	mov    %ebx,%edi
  4034a7:	e8 54 de ff ff       	call   401300 <close@plt>
  4034ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034b1:	e9 43 fd ff ff       	jmp    4031f9 <submitr+0x2fd>
  4034b6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4034bd:	3a 20 43 
  4034c0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4034c7:	20 75 6e 
  4034ca:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034ce:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034d2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4034d9:	74 6f 20 
  4034dc:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  4034e3:	66 69 72 
  4034e6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4034ea:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4034ee:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4034f5:	61 64 65 
  4034f8:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  4034ff:	6d 20 41 
  403502:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403506:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40350a:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  403511:	62 20 73 
  403514:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403518:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  40351f:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  403525:	89 df                	mov    %ebx,%edi
  403527:	e8 d4 dd ff ff       	call   401300 <close@plt>
  40352c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403531:	e9 c3 fc ff ff       	jmp    4031f9 <submitr+0x2fd>
  403536:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40353d:	00 
  40353e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403543:	ba 00 20 00 00       	mov    $0x2000,%edx
  403548:	e8 fe f7 ff ff       	call   402d4b <rio_readlineb>
  40354d:	48 85 c0             	test   %rax,%rax
  403550:	0f 8e 96 00 00 00    	jle    4035ec <submitr+0x6f0>
  403556:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  40355b:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  403562:	0f 85 05 01 00 00    	jne    40366d <submitr+0x771>
  403568:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40356f:	00 
  403570:	48 89 ef             	mov    %rbp,%rdi
  403573:	e8 28 dd ff ff       	call   4012a0 <strcpy@plt>
  403578:	89 df                	mov    %ebx,%edi
  40357a:	e8 81 dd ff ff       	call   401300 <close@plt>
  40357f:	b9 04 00 00 00       	mov    $0x4,%ecx
  403584:	48 8d 3d c2 12 00 00 	lea    0x12c2(%rip),%rdi        # 40484d <trans_char+0xdd>
  40358b:	48 89 ee             	mov    %rbp,%rsi
  40358e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403590:	0f 97 c0             	seta   %al
  403593:	1c 00                	sbb    $0x0,%al
  403595:	0f be c0             	movsbl %al,%eax
  403598:	85 c0                	test   %eax,%eax
  40359a:	0f 84 59 fc ff ff    	je     4031f9 <submitr+0x2fd>
  4035a0:	b9 05 00 00 00       	mov    $0x5,%ecx
  4035a5:	48 8d 3d a5 12 00 00 	lea    0x12a5(%rip),%rdi        # 404851 <trans_char+0xe1>
  4035ac:	48 89 ee             	mov    %rbp,%rsi
  4035af:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4035b1:	0f 97 c0             	seta   %al
  4035b4:	1c 00                	sbb    $0x0,%al
  4035b6:	0f be c0             	movsbl %al,%eax
  4035b9:	85 c0                	test   %eax,%eax
  4035bb:	0f 84 38 fc ff ff    	je     4031f9 <submitr+0x2fd>
  4035c1:	b9 03 00 00 00       	mov    $0x3,%ecx
  4035c6:	48 8d 3d 89 12 00 00 	lea    0x1289(%rip),%rdi        # 404856 <trans_char+0xe6>
  4035cd:	48 89 ee             	mov    %rbp,%rsi
  4035d0:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4035d2:	0f 97 c0             	seta   %al
  4035d5:	1c 00                	sbb    $0x0,%al
  4035d7:	0f be c0             	movsbl %al,%eax
  4035da:	85 c0                	test   %eax,%eax
  4035dc:	0f 84 17 fc ff ff    	je     4031f9 <submitr+0x2fd>
  4035e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035e7:	e9 0d fc ff ff       	jmp    4031f9 <submitr+0x2fd>
  4035ec:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4035f3:	3a 20 43 
  4035f6:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4035fd:	20 75 6e 
  403600:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403604:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403608:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40360f:	74 6f 20 
  403612:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403619:	73 74 61 
  40361c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403620:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403624:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40362b:	65 73 73 
  40362e:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  403635:	72 6f 6d 
  403638:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40363c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403640:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403647:	6c 61 62 
  40364a:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403651:	65 72 00 
  403654:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403658:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40365c:	89 df                	mov    %ebx,%edi
  40365e:	e8 9d dc ff ff       	call   401300 <close@plt>
  403663:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403668:	e9 8c fb ff ff       	jmp    4031f9 <submitr+0x2fd>
  40366d:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  403674:	00 
  403675:	48 8d 0d 8c 11 00 00 	lea    0x118c(%rip),%rcx        # 404808 <trans_char+0x98>
  40367c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  403683:	be 01 00 00 00       	mov    $0x1,%esi
  403688:	48 89 ef             	mov    %rbp,%rdi
  40368b:	b8 00 00 00 00       	mov    $0x0,%eax
  403690:	e8 bb dd ff ff       	call   401450 <__sprintf_chk@plt>
  403695:	89 df                	mov    %ebx,%edi
  403697:	e8 64 dc ff ff       	call   401300 <close@plt>
  40369c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4036a1:	e9 53 fb ff ff       	jmp    4031f9 <submitr+0x2fd>
  4036a6:	e8 51 f3 ff ff       	call   4029fc <__stack_chk_fail>

00000000004036ab <init_timeout>:
  4036ab:	f3 0f 1e fa          	endbr64 
  4036af:	85 ff                	test   %edi,%edi
  4036b1:	74 26                	je     4036d9 <init_timeout+0x2e>
  4036b3:	53                   	push   %rbx
  4036b4:	89 fb                	mov    %edi,%ebx
  4036b6:	78 1a                	js     4036d2 <init_timeout+0x27>
  4036b8:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 402c30 <sigalrm_handler>
  4036bf:	bf 0e 00 00 00       	mov    $0xe,%edi
  4036c4:	e8 67 dc ff ff       	call   401330 <signal@plt>
  4036c9:	89 df                	mov    %ebx,%edi
  4036cb:	e8 20 dc ff ff       	call   4012f0 <alarm@plt>
  4036d0:	5b                   	pop    %rbx
  4036d1:	c3                   	ret    
  4036d2:	bb 00 00 00 00       	mov    $0x0,%ebx
  4036d7:	eb df                	jmp    4036b8 <init_timeout+0xd>
  4036d9:	c3                   	ret    

00000000004036da <init_driver>:
  4036da:	f3 0f 1e fa          	endbr64 
  4036de:	41 54                	push   %r12
  4036e0:	55                   	push   %rbp
  4036e1:	53                   	push   %rbx
  4036e2:	48 83 ec 20          	sub    $0x20,%rsp
  4036e6:	48 89 fd             	mov    %rdi,%rbp
  4036e9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4036f0:	00 00 
  4036f2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4036f7:	31 c0                	xor    %eax,%eax
  4036f9:	be 01 00 00 00       	mov    $0x1,%esi
  4036fe:	bf 0d 00 00 00       	mov    $0xd,%edi
  403703:	e8 28 dc ff ff       	call   401330 <signal@plt>
  403708:	be 01 00 00 00       	mov    $0x1,%esi
  40370d:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403712:	e8 19 dc ff ff       	call   401330 <signal@plt>
  403717:	be 01 00 00 00       	mov    $0x1,%esi
  40371c:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403721:	e8 0a dc ff ff       	call   401330 <signal@plt>
  403726:	ba 00 00 00 00       	mov    $0x0,%edx
  40372b:	be 01 00 00 00       	mov    $0x1,%esi
  403730:	bf 02 00 00 00       	mov    $0x2,%edi
  403735:	e8 26 dd ff ff       	call   401460 <socket@plt>
  40373a:	85 c0                	test   %eax,%eax
  40373c:	0f 88 9c 00 00 00    	js     4037de <init_driver+0x104>
  403742:	89 c3                	mov    %eax,%ebx
  403744:	48 8d 3d 0e 11 00 00 	lea    0x110e(%rip),%rdi        # 404859 <trans_char+0xe9>
  40374b:	e8 f0 db ff ff       	call   401340 <gethostbyname@plt>
  403750:	48 85 c0             	test   %rax,%rax
  403753:	0f 84 d1 00 00 00    	je     40382a <init_driver+0x150>
  403759:	49 89 e4             	mov    %rsp,%r12
  40375c:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  403763:	00 
  403764:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40376b:	00 00 
  40376d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403773:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403777:	48 8b 40 18          	mov    0x18(%rax),%rax
  40377b:	48 8b 30             	mov    (%rax),%rsi
  40377e:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  403783:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403788:	e8 c3 db ff ff       	call   401350 <__memmove_chk@plt>
  40378d:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  403794:	ba 10 00 00 00       	mov    $0x10,%edx
  403799:	4c 89 e6             	mov    %r12,%rsi
  40379c:	89 df                	mov    %ebx,%edi
  40379e:	e8 7d dc ff ff       	call   401420 <connect@plt>
  4037a3:	85 c0                	test   %eax,%eax
  4037a5:	0f 88 e7 00 00 00    	js     403892 <init_driver+0x1b8>
  4037ab:	89 df                	mov    %ebx,%edi
  4037ad:	e8 4e db ff ff       	call   401300 <close@plt>
  4037b2:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4037b8:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4037bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4037c1:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4037c6:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4037cd:	00 00 
  4037cf:	0f 85 10 01 00 00    	jne    4038e5 <init_driver+0x20b>
  4037d5:	48 83 c4 20          	add    $0x20,%rsp
  4037d9:	5b                   	pop    %rbx
  4037da:	5d                   	pop    %rbp
  4037db:	41 5c                	pop    %r12
  4037dd:	c3                   	ret    
  4037de:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4037e5:	3a 20 43 
  4037e8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4037ef:	20 75 6e 
  4037f2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4037f6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4037fa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403801:	74 6f 20 
  403804:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40380b:	65 20 73 
  40380e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403812:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403816:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40381d:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403823:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403828:	eb 97                	jmp    4037c1 <init_driver+0xe7>
  40382a:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403831:	3a 20 44 
  403834:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  40383b:	20 75 6e 
  40383e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403842:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403846:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40384d:	74 6f 20 
  403850:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403857:	76 65 20 
  40385a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40385e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403862:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  403869:	72 20 61 
  40386c:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403870:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  403877:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  40387d:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  403881:	89 df                	mov    %ebx,%edi
  403883:	e8 78 da ff ff       	call   401300 <close@plt>
  403888:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40388d:	e9 2f ff ff ff       	jmp    4037c1 <init_driver+0xe7>
  403892:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403899:	3a 20 55 
  40389c:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4038a3:	20 74 6f 
  4038a6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4038aa:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4038ae:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4038b5:	65 63 74 
  4038b8:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  4038bf:	65 72 76 
  4038c2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4038c6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4038ca:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4038d0:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4038d4:	89 df                	mov    %ebx,%edi
  4038d6:	e8 25 da ff ff       	call   401300 <close@plt>
  4038db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4038e0:	e9 dc fe ff ff       	jmp    4037c1 <init_driver+0xe7>
  4038e5:	e8 12 f1 ff ff       	call   4029fc <__stack_chk_fail>

00000000004038ea <driver_post>:
  4038ea:	f3 0f 1e fa          	endbr64 
  4038ee:	53                   	push   %rbx
  4038ef:	4c 89 cb             	mov    %r9,%rbx
  4038f2:	45 85 c0             	test   %r8d,%r8d
  4038f5:	75 18                	jne    40390f <driver_post+0x25>
  4038f7:	48 85 ff             	test   %rdi,%rdi
  4038fa:	74 05                	je     403901 <driver_post+0x17>
  4038fc:	80 3f 00             	cmpb   $0x0,(%rdi)
  4038ff:	75 37                	jne    403938 <driver_post+0x4e>
  403901:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403906:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40390a:	44 89 c0             	mov    %r8d,%eax
  40390d:	5b                   	pop    %rbx
  40390e:	c3                   	ret    
  40390f:	48 89 ca             	mov    %rcx,%rdx
  403912:	48 8d 35 50 0f 00 00 	lea    0xf50(%rip),%rsi        # 404869 <trans_char+0xf9>
  403919:	bf 01 00 00 00       	mov    $0x1,%edi
  40391e:	b8 00 00 00 00       	mov    $0x0,%eax
  403923:	e8 98 da ff ff       	call   4013c0 <__printf_chk@plt>
  403928:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40392d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403931:	b8 00 00 00 00       	mov    $0x0,%eax
  403936:	eb d5                	jmp    40390d <driver_post+0x23>
  403938:	48 83 ec 08          	sub    $0x8,%rsp
  40393c:	41 51                	push   %r9
  40393e:	49 89 c9             	mov    %rcx,%r9
  403941:	49 89 d0             	mov    %rdx,%r8
  403944:	48 89 f9             	mov    %rdi,%rcx
  403947:	48 89 f2             	mov    %rsi,%rdx
  40394a:	be 39 30 00 00       	mov    $0x3039,%esi
  40394f:	48 8d 3d 03 0f 00 00 	lea    0xf03(%rip),%rdi        # 404859 <trans_char+0xe9>
  403956:	e8 a1 f5 ff ff       	call   402efc <submitr>
  40395b:	48 83 c4 10          	add    $0x10,%rsp
  40395f:	eb ac                	jmp    40390d <driver_post+0x23>

0000000000403961 <check>:
  403961:	f3 0f 1e fa          	endbr64 
  403965:	89 f8                	mov    %edi,%eax
  403967:	c1 e8 1c             	shr    $0x1c,%eax
  40396a:	74 1d                	je     403989 <check+0x28>
  40396c:	b9 00 00 00 00       	mov    $0x0,%ecx
  403971:	83 f9 1f             	cmp    $0x1f,%ecx
  403974:	7f 0d                	jg     403983 <check+0x22>
  403976:	89 f8                	mov    %edi,%eax
  403978:	d3 e8                	shr    %cl,%eax
  40397a:	3c 0a                	cmp    $0xa,%al
  40397c:	74 11                	je     40398f <check+0x2e>
  40397e:	83 c1 08             	add    $0x8,%ecx
  403981:	eb ee                	jmp    403971 <check+0x10>
  403983:	b8 01 00 00 00       	mov    $0x1,%eax
  403988:	c3                   	ret    
  403989:	b8 00 00 00 00       	mov    $0x0,%eax
  40398e:	c3                   	ret    
  40398f:	b8 00 00 00 00       	mov    $0x0,%eax
  403994:	c3                   	ret    

0000000000403995 <gencookie>:
  403995:	f3 0f 1e fa          	endbr64 
  403999:	53                   	push   %rbx
  40399a:	83 c7 01             	add    $0x1,%edi
  40399d:	e8 ce d8 ff ff       	call   401270 <srandom@plt>
  4039a2:	e8 e9 d9 ff ff       	call   401390 <random@plt>
  4039a7:	48 89 c7             	mov    %rax,%rdi
  4039aa:	89 c3                	mov    %eax,%ebx
  4039ac:	e8 b0 ff ff ff       	call   403961 <check>
  4039b1:	85 c0                	test   %eax,%eax
  4039b3:	74 ed                	je     4039a2 <gencookie+0xd>
  4039b5:	89 d8                	mov    %ebx,%eax
  4039b7:	5b                   	pop    %rbx
  4039b8:	c3                   	ret    
  4039b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004039c0 <__libc_csu_init>:
  4039c0:	f3 0f 1e fa          	endbr64 
  4039c4:	41 57                	push   %r15
  4039c6:	4c 8d 3d 43 34 00 00 	lea    0x3443(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  4039cd:	41 56                	push   %r14
  4039cf:	49 89 d6             	mov    %rdx,%r14
  4039d2:	41 55                	push   %r13
  4039d4:	49 89 f5             	mov    %rsi,%r13
  4039d7:	41 54                	push   %r12
  4039d9:	41 89 fc             	mov    %edi,%r12d
  4039dc:	55                   	push   %rbp
  4039dd:	48 8d 2d 34 34 00 00 	lea    0x3434(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  4039e4:	53                   	push   %rbx
  4039e5:	4c 29 fd             	sub    %r15,%rbp
  4039e8:	48 83 ec 08          	sub    $0x8,%rsp
  4039ec:	e8 0f d6 ff ff       	call   401000 <_init>
  4039f1:	48 c1 fd 03          	sar    $0x3,%rbp
  4039f5:	74 1f                	je     403a16 <__libc_csu_init+0x56>
  4039f7:	31 db                	xor    %ebx,%ebx
  4039f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403a00:	4c 89 f2             	mov    %r14,%rdx
  403a03:	4c 89 ee             	mov    %r13,%rsi
  403a06:	44 89 e7             	mov    %r12d,%edi
  403a09:	41 ff 14 df          	call   *(%r15,%rbx,8)
  403a0d:	48 83 c3 01          	add    $0x1,%rbx
  403a11:	48 39 dd             	cmp    %rbx,%rbp
  403a14:	75 ea                	jne    403a00 <__libc_csu_init+0x40>
  403a16:	48 83 c4 08          	add    $0x8,%rsp
  403a1a:	5b                   	pop    %rbx
  403a1b:	5d                   	pop    %rbp
  403a1c:	41 5c                	pop    %r12
  403a1e:	41 5d                	pop    %r13
  403a20:	41 5e                	pop    %r14
  403a22:	41 5f                	pop    %r15
  403a24:	c3                   	ret    
  403a25:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403a2c:	00 00 00 00 

0000000000403a30 <__libc_csu_fini>:
  403a30:	f3 0f 1e fa          	endbr64 
  403a34:	c3                   	ret    

Disassembly of section .fini:

0000000000403a38 <_fini>:
  403a38:	f3 0f 1e fa          	endbr64 
  403a3c:	48 83 ec 08          	sub    $0x8,%rsp
  403a40:	48 83 c4 08          	add    $0x8,%rsp
  403a44:	c3                   	ret    
