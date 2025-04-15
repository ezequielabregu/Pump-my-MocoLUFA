	.file	"dualMoco.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RingBuffer_Remove,"ax",@progbits
	.type	RingBuffer_Remove, @function
RingBuffer_Remove:
.LVL0:
.LFB78:
	.file 1 "Lib/LightweightRingBuff.h"
	.loc 1 183 3 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 183 3 is_stmt 0 view .LVU1
	movw r18,r24
	.loc 1 184 4 is_stmt 1 view .LVU2
	.loc 1 184 34 is_stmt 0 view .LVU3
	movw r26,r24
	subi r26,126
	sbci r27,-1
	.loc 1 184 20 view .LVU4
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ld r24,Z+
.LVL1:
	.loc 1 186 4 is_stmt 1 view .LVU5
	.loc 1 186 25 is_stmt 0 view .LVU6
	movw r20,r18
	subi r20,-128
	sbci r21,-1
	.loc 1 186 7 view .LVU7
	cp r30,r20
	cpc r31,r21
	breq .L2
	st X+,r30
	st X,r31
.L3:
	.loc 1 189 4 is_stmt 1 view .LVU8
.LBB41:
	.loc 1 189 4 view .LVU9
	in r20,__SREG__
.LVL2:
.LBB42:
.LBI42:
	.file 2 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/util/atomic.h"
	.loc 2 48 27 view .LVU10
.LBB43:
	.loc 2 50 5 view .LVU11
/* #APP */
 ;  50 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
	.loc 2 51 5 view .LVU12
.LVL3:
	.loc 2 51 5 is_stmt 0 view .LVU13
/* #NOAPP */
.LBE43:
.LBE42:
	.loc 1 189 4 is_stmt 1 view .LVU14
	.loc 1 191 5 view .LVU15
	.loc 1 191 18 is_stmt 0 view .LVU16
	movw r30,r18
	subi r30,124
	sbci r31,-1
	ld r25,Z
	subi r25,lo8(-(-1))
	st Z,r25
	.loc 1 189 4 is_stmt 1 view .LVU17
.LVL4:
	.loc 1 189 4 view .LVU18
.LBB44:
.LBI44:
	.loc 2 68 24 view .LVU19
.LBB45:
	.loc 2 70 5 view .LVU20
	.loc 2 70 10 is_stmt 0 view .LVU21
	out __SREG__,r20
	.loc 2 71 5 is_stmt 1 view .LVU22
.LVL5:
	.loc 2 71 5 is_stmt 0 view .LVU23
.LBE45:
.LBE44:
.LBE41:
	.loc 1 194 4 is_stmt 1 view .LVU24
/* epilogue start */
	.loc 1 195 3 is_stmt 0 view .LVU25
	ret
.LVL6:
.L2:
	.loc 1 187 6 is_stmt 1 view .LVU26
	.loc 1 187 18 is_stmt 0 view .LVU27
	st X+,r18
	st X,r19
	rjmp .L3
	.cfi_endproc
.LFE78:
	.size	RingBuffer_Remove, .-RingBuffer_Remove
	.section	.text.parseUSBMidiMessage,"ax",@progbits
.global	parseUSBMidiMessage
	.type	parseUSBMidiMessage, @function
parseUSBMidiMessage:
.LVL7:
.LFB91:
	.file 3 "dualMoco.c"
	.loc 3 113 50 is_stmt 1 view -0
	.cfi_startproc
	.loc 3 113 50 is_stmt 0 view .LVU29
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	lds r18,uwptr
	.loc 3 113 50 view .LVU30
	movw r30,r24
	add r24,r22
.LVL8:
.L10:
	.loc 3 114 3 is_stmt 1 view .LVU31
	.loc 3 114 16 is_stmt 0 view .LVU32
	ld r19,Z
.LVL9:
	.loc 3 115 3 is_stmt 1 view .LVU33
	.loc 3 117 3 view .LVU34
	.loc 3 117 6 is_stmt 0 view .LVU35
	mov r25,r19
	andi r25,lo8(14)
	breq .L5
	.loc 3 114 9 view .LVU36
	mov r20,r19
	andi r20,lo8(15)
.LVL10:
	.loc 3 114 9 view .LVU37
	movw r28,r30
	adiw r28,1
	.loc 3 118 12 view .LVU38
	ldi r25,lo8(1)
	.loc 3 127 5 view .LVU39
	andi r19,lo8(11)
	.loc 3 128 17 view .LVU40
	ldi r21,lo8(-12)
	add r21,r20
.L8:
.LVL11:
	.loc 3 119 7 is_stmt 1 view .LVU41
	.loc 3 119 25 is_stmt 0 view .LVU42
	ld r22,Y+
	.loc 3 119 19 view .LVU43
	mov r26,r18
	ldi r27,0
	.loc 3 119 23 view .LVU44
	subi r26,lo8(-(tx_buf))
	sbci r27,hi8(-(tx_buf))
	st X,r22
	.loc 3 120 7 is_stmt 1 view .LVU45
	.loc 3 119 19 is_stmt 0 view .LVU46
	subi r18,lo8(-(1))
	.loc 3 120 13 view .LVU47
	andi r18,lo8(31)
	.loc 3 121 7 is_stmt 1 view .LVU48
	.loc 3 121 10 is_stmt 0 view .LVU49
	cpi r25,lo8(1)
	brne .L6
.LVL12:
	.loc 3 122 2 is_stmt 1 view .LVU50
	.loc 3 122 5 is_stmt 0 view .LVU51
	cpi r20,lo8(5)
	breq .L5
	.loc 3 122 17 discriminator 1 view .LVU52
	cpi r20,lo8(15)
	brne .L7
.LVL13:
.L5:
	.loc 3 136 3 is_stmt 1 view .LVU53
	.loc 3 136 6 is_stmt 0 view .LVU54
	mov r25,r24
	sub r25,r30
	cpi r25,lo8(5)
	brlo .L9
	.loc 3 137 5 is_stmt 1 view .LVU55
	adiw r30,4
.LVL14:
	.loc 3 137 5 is_stmt 0 view .LVU56
	rjmp .L10
.LVL15:
.L6:
	.loc 3 126 7 is_stmt 1 view .LVU57
	.loc 3 126 10 is_stmt 0 view .LVU58
	cpi r25,lo8(2)
	brne .L7
	.loc 3 127 2 is_stmt 1 view .LVU59
	.loc 3 127 5 is_stmt 0 view .LVU60
	cpi r19,lo8(2)
	breq .L5
	.loc 3 128 17 view .LVU61
	cpi r21,lo8(2)
	brlo .L5
.LVL16:
.L7:
	.loc 3 118 26 is_stmt 1 discriminator 2 view .LVU62
	.loc 3 118 27 is_stmt 0 discriminator 2 view .LVU63
	subi r25,lo8(-(1))
.LVL17:
	.loc 3 118 18 is_stmt 1 discriminator 2 view .LVU64
	.loc 3 118 5 is_stmt 0 discriminator 2 view .LVU65
	cpi r25,lo8(4)
	brne .L8
	rjmp .L5
.LVL18:
.L9:
	.loc 3 118 5 discriminator 2 view .LVU66
	sts uwptr,r18
/* epilogue start */
	.loc 3 139 1 view .LVU67
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE91:
	.size	parseUSBMidiMessage, .-parseUSBMidiMessage
	.section	.text.parseSerialMidiMessage,"ax",@progbits
.global	parseSerialMidiMessage
	.type	parseSerialMidiMessage, @function
parseSerialMidiMessage:
.LVL19:
.LFB92:
	.loc 3 141 44 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 141 44 is_stmt 0 view .LVU69
	mov r25,r24
	.loc 3 142 3 is_stmt 1 view .LVU70
	.loc 3 143 3 view .LVU71
	.loc 3 144 3 view .LVU72
	.loc 3 145 3 view .LVU73
	.loc 3 164 3 view .LVU74
	.loc 3 164 6 is_stmt 0 view .LVU75
	lds r24,SysEx.3233
.LVL20:
	.loc 3 164 5 view .LVU76
	tst r24
	breq .L25
	.loc 3 165 5 is_stmt 1 view .LVU77
	lds r24,sysExCnt.3234
	ldi r18,lo8(1)
	add r18,r24
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(utx_buf))
	sbci r31,hi8(-(utx_buf))
	.loc 3 166 23 is_stmt 0 view .LVU78
	sts sysExCnt.3234,r18
	.loc 3 166 27 view .LVU79
	st Z,r25
	.loc 3 165 7 view .LVU80
	cpi r25,lo8(-9)
	brne .L26
	.loc 3 166 7 is_stmt 1 view .LVU81
	.loc 3 167 7 view .LVU82
	.loc 3 167 29 is_stmt 0 view .LVU83
	subi r24,lo8(-(4))
	.loc 3 167 18 view .LVU84
	sts utx_buf,r24
	.loc 3 168 7 is_stmt 1 view .LVU85
	.loc 3 168 13 is_stmt 0 view .LVU86
	sts SysEx.3233,__zero_reg__
	.loc 3 169 7 is_stmt 1 view .LVU87
	.loc 3 169 10 is_stmt 0 view .LVU88
	sts PC.3232,__zero_reg__
	.loc 3 170 7 is_stmt 1 view .LVU89
.L34:
.LBB46:
	.loc 3 212 7 view .LVU90
	.loc 3 212 14 is_stmt 0 view .LVU91
	ldi r24,lo8(1)
/* epilogue start */
.LBE46:
	.loc 3 216 1 view .LVU92
	ret
.L26:
	.loc 3 172 7 is_stmt 1 view .LVU93
	.loc 3 173 7 view .LVU94
	.loc 3 173 10 is_stmt 0 view .LVU95
	cpi r18,lo8(4)
	breq .L28
.L33:
	.loc 3 179 12 view .LVU96
	ldi r24,0
	ret
.L28:
	.loc 3 174 2 is_stmt 1 view .LVU97
	.loc 3 174 13 is_stmt 0 view .LVU98
	sts utx_buf,r18
	.loc 3 175 2 is_stmt 1 view .LVU99
	.loc 3 175 11 is_stmt 0 view .LVU100
	ldi r24,lo8(1)
	sts sysExCnt.3234,r24
	.loc 3 176 2 is_stmt 1 view .LVU101
	.loc 3 176 9 is_stmt 0 view .LVU102
	ret
.L25:
	.loc 3 181 3 is_stmt 1 view .LVU103
	.loc 3 181 6 is_stmt 0 view .LVU104
	cpi r25,lo8(-8)
	brlo .L29
	.loc 3 182 5 is_stmt 1 view .LVU105
	.loc 3 182 16 is_stmt 0 view .LVU106
	ldi r24,lo8(15)
	sts utx_buf,r24
	.loc 3 183 5 is_stmt 1 view .LVU107
	.loc 3 183 16 is_stmt 0 view .LVU108
	sts utx_buf+1,r25
	.loc 3 184 5 is_stmt 1 view .LVU109
	.loc 3 184 16 is_stmt 0 view .LVU110
	sts utx_buf+2,__zero_reg__
	.loc 3 185 5 is_stmt 1 view .LVU111
	.loc 3 185 16 is_stmt 0 view .LVU112
	sts utx_buf+3,__zero_reg__
	.loc 3 186 5 is_stmt 1 view .LVU113
	rjmp .L34
.L29:
	.loc 3 189 3 view .LVU114
	.loc 3 189 5 is_stmt 0 view .LVU115
	sbrs r25,7
	rjmp .L30
	.loc 3 190 5 is_stmt 1 view .LVU116
	.loc 3 190 7 is_stmt 0 view .LVU117
	cpi r25,lo8(-16)
	brne .L31
	.loc 3 191 7 is_stmt 1 view .LVU118
	.loc 3 191 13 is_stmt 0 view .LVU119
	ldi r18,lo8(1)
	sts SysEx.3233,r18
	.loc 3 192 7 is_stmt 1 view .LVU120
	.loc 3 192 18 is_stmt 0 view .LVU121
	sts utx_buf+1,r25
	.loc 3 193 7 is_stmt 1 view .LVU122
	.loc 3 193 16 is_stmt 0 view .LVU123
	ldi r25,lo8(2)
.LVL21:
	.loc 3 193 16 view .LVU124
	sts sysExCnt.3234,r25
	.loc 3 194 7 is_stmt 1 view .LVU125
	.loc 3 194 14 is_stmt 0 view .LVU126
	ret
.LVL22:
.L31:
	.loc 3 196 5 is_stmt 1 view .LVU127
	.loc 3 196 8 is_stmt 0 view .LVU128
	sts PC.3232,__zero_reg__
.L30:
	.loc 3 199 3 is_stmt 1 view .LVU129
	.loc 3 199 10 is_stmt 0 view .LVU130
	lds r24,PC.3232
	.loc 3 199 6 view .LVU131
	cpse r24,__zero_reg__
	rjmp .L32
	.loc 3 200 5 is_stmt 1 view .LVU132
	.loc 3 200 26 is_stmt 0 view .LVU133
	mov r19,r25
	swap r19
	andi r19,lo8(15)
	.loc 3 200 8 view .LVU134
	mov r18,r19
	andi r18,lo8(7)
	subi r18,lo8(-(1))
	lsl r18
	sts PC.3232,r18
	.loc 3 203 5 is_stmt 1 view .LVU135
	.loc 3 203 15 is_stmt 0 view .LVU136
	sts rx_buf,r19
	.loc 3 204 5 is_stmt 1 view .LVU137
	.loc 3 204 15 is_stmt 0 view .LVU138
	sts rx_buf+1,r25
	.loc 3 205 5 is_stmt 1 view .LVU139
	.loc 3 205 15 is_stmt 0 view .LVU140
	sts rx_buf+3,__zero_reg__
	ret
.L32:
.LBB47:
	.loc 3 207 5 is_stmt 1 view .LVU141
	.loc 3 207 31 is_stmt 0 view .LVU142
	mov r30,r24
	ldi r31,0
	.loc 3 207 11 view .LVU143
	subi r30,lo8(-(stateTransTable.3235))
	sbci r31,hi8(-(stateTransTable.3235))
	ld r20,Z
.LVL23:
	.loc 3 208 5 is_stmt 1 view .LVU144
	.loc 3 208 16 is_stmt 0 view .LVU145
	mov r18,r24
	andi r18,1
	ldi r19,0
	.loc 3 208 26 view .LVU146
	subi r18,lo8(-(rx_buf))
	sbci r19,hi8(-(rx_buf))
	movw r30,r18
	std Z+2,r25
	.loc 3 209 5 is_stmt 1 view .LVU147
	.loc 3 209 13 is_stmt 0 view .LVU148
	mov r24,r20
	andi r24,lo8(15)
	.loc 3 209 8 view .LVU149
	sts PC.3232,r24
	.loc 3 210 5 is_stmt 1 view .LVU150
	.loc 3 210 8 is_stmt 0 view .LVU151
	sbrs r20,7
	rjmp .L33
	.loc 3 211 7 is_stmt 1 view .LVU152
	ldi r24,lo8(4)
	ldi r30,lo8(rx_buf)
	ldi r31,hi8(rx_buf)
	ldi r26,lo8(utx_buf)
	ldi r27,hi8(utx_buf)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	rjmp .L34
.LBE47:
	.cfi_endproc
.LFE92:
	.size	parseSerialMidiMessage, .-parseSerialMidiMessage
	.section	.text.processMIDI,"ax",@progbits
.global	processMIDI
	.type	processMIDI, @function
processMIDI:
.LFB94:
	.loc 3 232 20 view -0
	.cfi_startproc
	push r28
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
	rcall .
.LCFI4:
	.cfi_def_cfa_offset 8
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI5:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	.loc 3 234 3 view .LVU154
	.loc 3 236 3 view .LVU155
/* #APP */
 ;  236 "dualMoco.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.LBB57:
	.loc 3 243 35 is_stmt 0 view .LVU156
	ldi r17,lo8(3)
	.loc 3 285 6 view .LVU157
	ldi r24,lo8(40)
	mov r15,r24
	.loc 3 286 8 view .LVU158
	ldi r16,lo8(2)
.L51:
.LBE57:
	.loc 3 238 3 is_stmt 1 view .LVU159
.LBB66:
	.loc 3 240 5 view .LVU160
	.loc 3 240 9 is_stmt 0 view .LVU161
	lds r24,200
	.loc 3 240 7 view .LVU162
	sbrs r24,7
	rjmp .L36
	lds r14,utxrdy
	.loc 3 241 7 is_stmt 1 view .LVU163
	.loc 3 241 17 is_stmt 0 view .LVU164
	lds r24,206
	call parseSerialMidiMessage
.LVL24:
	.loc 3 241 14 view .LVU165
	or r24,r14
	sts utxrdy,r24
	.loc 3 242 7 is_stmt 1 view .LVU166
.LVL25:
.LBB58:
.LBI58:
	.file 4 "./Board/LEDs.h"
	.loc 4 73 23 view .LVU167
.LBB59:
	.loc 4 75 5 view .LVU168
	.loc 4 75 11 is_stmt 0 view .LVU169
	cbi 0xb,5
.LVL26:
	.loc 4 75 11 view .LVU170
.LBE59:
.LBE58:
	.loc 3 243 7 is_stmt 1 view .LVU171
	.loc 3 243 35 is_stmt 0 view .LVU172
	sts PulseMSRemaining,r17
.L36:
	.loc 3 247 5 is_stmt 1 view .LVU173
	.loc 3 247 7 is_stmt 0 view .LVU174
	lds r24,utxrdy
	tst r24
	breq .L38
	.loc 3 248 7 is_stmt 1 view .LVU175
	ldi r22,lo8(utx_buf)
	ldi r23,hi8(utx_buf)
	ldi r24,lo8(Keyboard_MIDI_Interface)
	ldi r25,hi8(Keyboard_MIDI_Interface)
	call MIDI_Device_SendEventPacket
.LVL27:
	.loc 3 249 7 view .LVU176
	ldi r24,lo8(Keyboard_MIDI_Interface)
	ldi r25,hi8(Keyboard_MIDI_Interface)
	call MIDI_Device_Flush
.LVL28:
	.loc 3 250 7 view .LVU177
	.loc 3 250 14 is_stmt 0 view .LVU178
	sts utxrdy,__zero_reg__
.L38:
	.loc 3 255 11 is_stmt 1 view .LVU179
	.loc 3 255 12 is_stmt 0 view .LVU180
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(Keyboard_MIDI_Interface)
	ldi r25,hi8(Keyboard_MIDI_Interface)
	call MIDI_Device_ReceiveEventPacket
.LVL29:
	.loc 3 255 11 view .LVU181
	cpse r24,__zero_reg__
	rjmp .L39
	.loc 3 263 5 is_stmt 1 view .LVU182
	.loc 3 263 10 is_stmt 0 view .LVU183
	lds r24,200
	.loc 3 263 7 view .LVU184
	sbrs r24,5
	rjmp .L40
	.loc 3 263 39 discriminator 1 view .LVU185
	lds r30,irptr
	.loc 3 263 31 discriminator 1 view .LVU186
	lds r24,uwptr
	cp r24,r30
	breq .L40
	.loc 3 264 7 is_stmt 1 view .LVU187
	.loc 3 264 26 is_stmt 0 view .LVU188
	ldi r24,lo8(1)
	add r24,r30
	sts irptr,r24
	ldi r31,0
	.loc 3 264 20 view .LVU189
	subi r30,lo8(-(tx_buf))
	sbci r31,hi8(-(tx_buf))
	ld r24,Z
	.loc 3 264 12 view .LVU190
	sts 206,r24
	.loc 3 265 7 is_stmt 1 view .LVU191
	.loc 3 265 13 is_stmt 0 view .LVU192
	lds r24,irptr
	andi r24,lo8(31)
	sts irptr,r24
.L40:
	.loc 3 268 5 is_stmt 1 view .LVU193
	.loc 3 268 8 is_stmt 0 view .LVU194
	sbis 0x15,0
	rjmp .L42
	.loc 3 269 7 is_stmt 1 view .LVU195
	.loc 3 269 13 is_stmt 0 view .LVU196
	sbi 0x15,0
	.loc 3 271 7 is_stmt 1 view .LVU197
	.loc 3 271 27 is_stmt 0 view .LVU198
	lds r24,PulseMSRemaining
	.loc 3 271 10 view .LVU199
	tst r24
	breq .L44
	.loc 3 271 62 discriminator 1 view .LVU200
	lds r24,PulseMSRemaining
	.loc 3 271 44 discriminator 1 view .LVU201
	subi r24,lo8(-(-1))
	.loc 3 271 39 discriminator 1 view .LVU202
	sts PulseMSRemaining,r24
	cpse r24,__zero_reg__
	rjmp .L44
	.loc 3 272 2 is_stmt 1 view .LVU203
.LVL30:
.LBB60:
.LBI60:
	.loc 4 78 23 view .LVU204
.LBB61:
	.loc 4 80 5 view .LVU205
	.loc 4 80 11 is_stmt 0 view .LVU206
	sbi 0xb,5
.LVL31:
.L44:
	.loc 4 80 11 view .LVU207
.LBE61:
.LBE60:
	.loc 3 275 7 is_stmt 1 view .LVU208
	.loc 3 275 27 is_stmt 0 view .LVU209
	lds r24,PulseMSRemaining+1
	.loc 3 275 10 view .LVU210
	tst r24
	breq .L42
	.loc 3 275 62 discriminator 1 view .LVU211
	lds r24,PulseMSRemaining+1
	.loc 3 275 44 discriminator 1 view .LVU212
	subi r24,lo8(-(-1))
	.loc 3 275 39 discriminator 1 view .LVU213
	sts PulseMSRemaining+1,r24
	cpse r24,__zero_reg__
	rjmp .L42
	.loc 3 276 2 is_stmt 1 view .LVU214
.LVL32:
.LBB62:
.LBI62:
	.loc 4 78 23 view .LVU215
.LBB63:
	.loc 4 80 5 view .LVU216
	.loc 4 80 11 is_stmt 0 view .LVU217
	sbi 0xb,4
.LVL33:
.L42:
	.loc 4 80 11 view .LVU218
.LBE63:
.LBE62:
	.loc 3 279 5 is_stmt 1 view .LVU219
	.loc 3 279 5 is_stmt 0 view .LVU220
.LBE66:
	.file 5 "LUFA-100807/LUFA/Drivers/USB/Class/Device/MIDI.h"
	.loc 5 163 5 is_stmt 1 view .LVU221
.LBB67:
	.loc 3 280 5 view .LVU222
	call USB_USBTask
.LVL34:
	.loc 3 282 5 view .LVU223
	.loc 3 282 8 is_stmt 0 view .LVU224
	lds r24,highSpeed
	cpi r24,lo8(1)
	breq .+2
	rjmp .L51
	.loc 3 283 7 is_stmt 1 view .LVU225
	.loc 3 283 10 is_stmt 0 view .LVU226
	lds r24,cnt.3242
	ldi r25,lo8(-1)
	add r25,r24
	.loc 3 284 7 is_stmt 1 view .LVU227
	.loc 3 284 10 is_stmt 0 view .LVU228
	cpi r24,lo8(1)
	breq .L49
	.loc 3 283 10 view .LVU229
	sts cnt.3242,r25
	rjmp .L51
.LVL35:
.L39:
	.loc 3 257 7 is_stmt 1 view .LVU230
	ldi r22,lo8(4)
	movw r24,r28
	adiw r24,1
	call parseUSBMidiMessage
.LVL36:
	.loc 3 258 7 view .LVU231
.LBB64:
.LBI64:
	.loc 4 73 23 view .LVU232
.LBB65:
	.loc 4 75 5 view .LVU233
	.loc 4 75 11 is_stmt 0 view .LVU234
	cbi 0xb,4
.LVL37:
	.loc 4 75 11 view .LVU235
.LBE65:
.LBE64:
	.loc 3 259 7 is_stmt 1 view .LVU236
	.loc 3 259 35 is_stmt 0 view .LVU237
	sts PulseMSRemaining+1,r17
	rjmp .L38
.LVL38:
.L49:
	.loc 3 285 2 is_stmt 1 view .LVU238
	.loc 3 285 6 is_stmt 0 view .LVU239
	sts cnt.3242,r15
	.loc 3 286 2 is_stmt 1 view .LVU240
	.loc 3 286 8 is_stmt 0 view .LVU241
	in r24,0x5
	eor r24,r16
	out 0x5,r24
.LBE67:
	.loc 3 238 9 is_stmt 1 view .LVU242
	.loc 3 238 11 is_stmt 0 view .LVU243
	rjmp .L51
	.cfi_endproc
.LFE94:
	.size	processMIDI, .-processMIDI
	.section	.text.processSerial,"ax",@progbits
.global	processSerial
	.type	processSerial, @function
processSerial:
.LFB95:
	.loc 3 293 26 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 295 3 view .LVU245
.LVL39:
.LBB126:
.LBI126:
	.loc 1 85 22 view .LVU246
.LBE126:
	.loc 1 87 4 view .LVU247
.LBB132:
.LBB127:
	.loc 1 87 4 view .LVU248
	in r18,__SREG__
.LVL40:
.LBB128:
.LBI128:
	.loc 2 48 27 view .LVU249
.LBB129:
	.loc 2 50 5 view .LVU250
/* #APP */
 ;  50 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
	.loc 2 51 5 view .LVU251
.LVL41:
	.loc 2 51 5 is_stmt 0 view .LVU252
/* #NOAPP */
.LBE129:
.LBE128:
	.loc 1 87 4 is_stmt 1 view .LVU253
	.loc 1 89 5 view .LVU254
	.loc 1 89 17 is_stmt 0 view .LVU255
	ldi r24,lo8(USBtoUSART_Buffer)
	ldi r25,hi8(USBtoUSART_Buffer)
	sts USBtoUSART_Buffer+128+1,r25
	sts USBtoUSART_Buffer+128,r24
	.loc 1 90 5 is_stmt 1 view .LVU256
	.loc 1 90 17 is_stmt 0 view .LVU257
	sts USBtoUSART_Buffer+130+1,r25
	sts USBtoUSART_Buffer+130,r24
	.loc 1 87 4 is_stmt 1 view .LVU258
.LVL42:
	.loc 1 87 4 view .LVU259
.LBB130:
.LBI130:
	.loc 2 68 24 view .LVU260
.LBB131:
	.loc 2 70 5 view .LVU261
	.loc 2 70 10 is_stmt 0 view .LVU262
	out __SREG__,r18
	.loc 2 71 5 is_stmt 1 view .LVU263
.LVL43:
	.loc 2 71 5 is_stmt 0 view .LVU264
.LBE131:
.LBE130:
.LBE127:
.LBE132:
	.loc 3 296 3 is_stmt 1 view .LVU265
.LBB133:
.LBI133:
	.loc 1 85 22 view .LVU266
.LBE133:
	.loc 1 87 4 view .LVU267
.LBB139:
.LBB134:
	.loc 1 87 4 view .LVU268
	in r18,__SREG__
.LVL44:
.LBB135:
.LBI135:
	.loc 2 48 27 view .LVU269
.LBB136:
	.loc 2 50 5 view .LVU270
/* #APP */
 ;  50 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
	.loc 2 51 5 view .LVU271
.LVL45:
	.loc 2 51 5 is_stmt 0 view .LVU272
/* #NOAPP */
.LBE136:
.LBE135:
	.loc 1 87 4 is_stmt 1 view .LVU273
	.loc 1 89 5 view .LVU274
	.loc 1 89 17 is_stmt 0 view .LVU275
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	.loc 1 90 5 is_stmt 1 view .LVU276
	.loc 1 90 17 is_stmt 0 view .LVU277
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
	.loc 1 87 4 is_stmt 1 view .LVU278
.LVL46:
	.loc 1 87 4 view .LVU279
.LBB137:
.LBI137:
	.loc 2 68 24 view .LVU280
.LBB138:
	.loc 2 70 5 view .LVU281
	.loc 2 70 10 is_stmt 0 view .LVU282
	out __SREG__,r18
	.loc 2 71 5 is_stmt 1 view .LVU283
.LVL47:
	.loc 2 71 5 is_stmt 0 view .LVU284
.LBE138:
.LBE137:
.LBE134:
.LBE139:
	.loc 3 298 3 is_stmt 1 view .LVU285
/* #APP */
 ;  298 "dualMoco.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.LBB140:
.LBB141:
.LBB142:
.LBB143:
.LBB144:
	.loc 1 113 11 is_stmt 0 view .LVU286
	ldi r16,lo8(USBtoUSART_Buffer)
	ldi r17,hi8(USBtoUSART_Buffer)
.LBE144:
.LBE143:
.LBE142:
.LBE141:
	.loc 3 320 34 view .LVU287
	ldi r29,lo8(3)
.LVL48:
.L78:
	.loc 3 320 34 view .LVU288
.LBE140:
	.loc 3 300 3 is_stmt 1 view .LVU289
.LBB193:
	.loc 3 303 7 view .LVU290
.LBB152:
.LBI141:
	.loc 1 127 22 view .LVU291
	.loc 1 127 22 is_stmt 0 view .LVU292
.LBE152:
.LBE193:
	.loc 1 129 4 is_stmt 1 view .LVU293
.LBB194:
.LBB153:
.LBB151:
.LBI142:
	.loc 1 107 34 view .LVU294
.LBB150:
	.loc 1 109 4 view .LVU295
	.loc 1 111 4 view .LVU296
.LBB149:
	.loc 1 111 4 view .LVU297
	in r25,__SREG__
.LVL49:
.LBB145:
.LBI145:
	.loc 2 48 27 view .LVU298
.LBB146:
	.loc 2 50 5 view .LVU299
/* #APP */
 ;  50 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
	.loc 2 51 5 view .LVU300
.LVL50:
	.loc 2 51 5 is_stmt 0 view .LVU301
/* #NOAPP */
.LBE146:
.LBE145:
	.loc 1 111 4 is_stmt 1 view .LVU302
	.loc 1 113 5 view .LVU303
	.loc 1 113 11 is_stmt 0 view .LVU304
	lds r24,USBtoUSART_Buffer+132
.LVL51:
	.loc 1 111 4 is_stmt 1 view .LVU305
	.loc 1 111 4 view .LVU306
.LBB147:
.LBI147:
	.loc 2 68 24 view .LVU307
.LBB148:
	.loc 2 70 5 view .LVU308
	.loc 2 70 10 is_stmt 0 view .LVU309
	out __SREG__,r25
	.loc 2 71 5 is_stmt 1 view .LVU310
.LVL52:
	.loc 2 71 5 is_stmt 0 view .LVU311
.LBE148:
.LBE147:
.LBE149:
	.loc 1 116 4 is_stmt 1 view .LVU312
	.loc 1 116 4 is_stmt 0 view .LVU313
.LBE150:
.LBE151:
.LBE153:
	.loc 3 303 10 view .LVU314
	cpi r24,lo8(-128)
	breq .L63
.LBB154:
	.loc 3 305 4 is_stmt 1 view .LVU315
	.loc 3 305 27 is_stmt 0 view .LVU316
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ReceiveByte
.LVL53:
	.loc 3 308 4 is_stmt 1 view .LVU317
	.loc 3 308 7 is_stmt 0 view .LVU318
	sbrc r25,7
	rjmp .L63
	.loc 3 309 6 is_stmt 1 view .LVU319
.LVL54:
.LBB155:
.LBI155:
	.loc 1 158 22 view .LVU320
.LBB156:
	.loc 1 161 4 view .LVU321
	.loc 1 161 11 is_stmt 0 view .LVU322
	lds r30,USBtoUSART_Buffer+128
	lds r31,USBtoUSART_Buffer+128+1
.LBE156:
.LBE155:
	.loc 3 309 6 view .LVU323
	st Z,r24
.LBB164:
.LBB162:
	.loc 1 163 4 is_stmt 1 view .LVU324
	.loc 1 163 8 is_stmt 0 view .LVU325
	lds r24,USBtoUSART_Buffer+128
	lds r25,USBtoUSART_Buffer+128+1
.LVL55:
	.loc 1 163 8 view .LVU326
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	.loc 1 163 7 view .LVU327
	subi r24,lo8(USBtoUSART_Buffer+127)
	sbci r25,hi8(USBtoUSART_Buffer+127)
	brne .+2
	rjmp .L65
	sts USBtoUSART_Buffer+128+1,r19
	sts USBtoUSART_Buffer+128,r18
.L66:
	.loc 1 166 4 is_stmt 1 view .LVU328
.LBB157:
	.loc 1 166 4 view .LVU329
	in r25,__SREG__
.LVL56:
.LBB158:
.LBI158:
	.loc 2 48 27 view .LVU330
.LBB159:
	.loc 2 50 5 view .LVU331
/* #APP */
 ;  50 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
	.loc 2 51 5 view .LVU332
.LVL57:
	.loc 2 51 5 is_stmt 0 view .LVU333
/* #NOAPP */
.LBE159:
.LBE158:
	.loc 1 166 4 is_stmt 1 view .LVU334
	.loc 1 168 5 view .LVU335
	.loc 1 168 18 is_stmt 0 view .LVU336
	lds r24,USBtoUSART_Buffer+132
	subi r24,lo8(-(1))
	sts USBtoUSART_Buffer+132,r24
	.loc 1 166 4 is_stmt 1 view .LVU337
.LVL58:
	.loc 1 166 4 view .LVU338
.LBB160:
.LBI160:
	.loc 2 68 24 view .LVU339
.LBB161:
	.loc 2 70 5 view .LVU340
	.loc 2 70 10 is_stmt 0 view .LVU341
	out __SREG__,r25
	.loc 2 71 5 is_stmt 1 view .LVU342
.LVL59:
.L63:
	.loc 2 71 5 is_stmt 0 view .LVU343
.LBE161:
.LBE160:
.LBE157:
.LBE162:
.LBE164:
.LBE154:
	.loc 3 313 7 is_stmt 1 view .LVU344
.LBB166:
.LBI166:
	.loc 1 107 34 view .LVU345
.LBB167:
	.loc 1 109 4 view .LVU346
	.loc 1 111 4 view .LVU347
.LBB168:
	.loc 1 111 4 view .LVU348
	in r24,__SREG__
.LVL60:
.LBB169:
.LBI169:
	.loc 2 48 27 view .LVU349
.LBB170:
	.loc 2 50 5 view .LVU350
/* #APP */
 ;  50 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
	.loc 2 51 5 view .LVU351
.LVL61:
	.loc 2 51 5 is_stmt 0 view .LVU352
/* #NOAPP */
.LBE170:
.LBE169:
	.loc 1 111 4 is_stmt 1 view .LVU353
	.loc 1 113 5 view .LVU354
	.loc 1 113 11 is_stmt 0 view .LVU355
	lds r28,USARTtoUSB_Buffer+132
.LVL62:
	.loc 1 111 4 is_stmt 1 view .LVU356
	.loc 1 111 4 view .LVU357
.LBB171:
.LBI171:
	.loc 2 68 24 view .LVU358
.LBB172:
	.loc 2 70 5 view .LVU359
	.loc 2 70 10 is_stmt 0 view .LVU360
	out __SREG__,r24
	.loc 2 71 5 is_stmt 1 view .LVU361
.LVL63:
	.loc 2 71 5 is_stmt 0 view .LVU362
.LBE172:
.LBE171:
.LBE168:
	.loc 1 116 4 is_stmt 1 view .LVU363
	.loc 1 116 4 is_stmt 0 view .LVU364
.LBE167:
.LBE166:
	.loc 3 314 7 is_stmt 1 view .LVU365
	.loc 3 314 10 is_stmt 0 view .LVU366
	sbic 0x15,0
	rjmp .L67
	.loc 3 314 33 discriminator 1 view .LVU367
	cpi r28,lo8(97)
	brlo .L68
.L67:
	.loc 3 316 4 is_stmt 1 view .LVU368
	.loc 3 316 10 is_stmt 0 view .LVU369
	sbi 0x15,0
	.loc 3 318 4 is_stmt 1 view .LVU370
	.loc 3 318 7 is_stmt 0 view .LVU371
	lds r24,USARTtoUSB_Buffer+132
	tst r24
	breq .L70
	.loc 3 319 6 is_stmt 1 view .LVU372
.LVL64:
.LBB173:
.LBI173:
	.loc 4 73 23 view .LVU373
.LBB174:
	.loc 4 75 5 view .LVU374
	.loc 4 75 11 is_stmt 0 view .LVU375
	cbi 0xb,5
.LVL65:
	.loc 4 75 11 view .LVU376
.LBE174:
.LBE173:
	.loc 3 320 6 is_stmt 1 view .LVU377
	.loc 3 320 34 is_stmt 0 view .LVU378
	sts PulseMSRemaining,r29
.L70:
	.loc 3 324 10 is_stmt 1 view .LVU379
	.loc 3 324 22 is_stmt 0 view .LVU380
.LVL66:
	subi r28,1
	brcc .L71
	.loc 3 328 4 is_stmt 1 view .LVU381
	.loc 3 328 24 is_stmt 0 view .LVU382
	lds r24,PulseMSRemaining
	.loc 3 328 7 view .LVU383
	tst r24
	breq .L73
	.loc 3 328 59 discriminator 1 view .LVU384
	lds r24,PulseMSRemaining
	.loc 3 328 41 discriminator 1 view .LVU385
	subi r24,lo8(-(-1))
	.loc 3 328 36 discriminator 1 view .LVU386
	sts PulseMSRemaining,r24
	cpse r24,__zero_reg__
	rjmp .L73
	.loc 3 329 6 is_stmt 1 view .LVU387
.LVL67:
.LBB175:
.LBI175:
	.loc 4 78 23 view .LVU388
.LBB176:
	.loc 4 80 5 view .LVU389
	.loc 4 80 11 is_stmt 0 view .LVU390
	sbi 0xb,5
.LVL68:
.L73:
	.loc 4 80 11 view .LVU391
.LBE176:
.LBE175:
	.loc 3 332 4 is_stmt 1 view .LVU392
	.loc 3 332 24 is_stmt 0 view .LVU393
	lds r24,PulseMSRemaining+1
	.loc 3 332 7 view .LVU394
	tst r24
	breq .L68
	.loc 3 332 59 discriminator 1 view .LVU395
	lds r24,PulseMSRemaining+1
	.loc 3 332 41 discriminator 1 view .LVU396
	subi r24,lo8(-(-1))
	.loc 3 332 36 discriminator 1 view .LVU397
	sts PulseMSRemaining+1,r24
	cpse r24,__zero_reg__
	rjmp .L68
	.loc 3 333 6 is_stmt 1 view .LVU398
.LVL69:
.LBB177:
.LBI177:
	.loc 4 78 23 view .LVU399
.LBB178:
	.loc 4 80 5 view .LVU400
	.loc 4 80 11 is_stmt 0 view .LVU401
	sbi 0xb,4
.LVL70:
.L68:
	.loc 4 80 11 view .LVU402
.LBE178:
.LBE177:
	.loc 3 337 7 is_stmt 1 view .LVU403
.LBB179:
.LBI179:
	.loc 1 144 22 view .LVU404
	.loc 1 144 22 is_stmt 0 view .LVU405
.LBE179:
.LBE194:
	.loc 1 146 4 is_stmt 1 view .LVU406
.LBB195:
.LBB187:
.LBB180:
.LBI180:
	.loc 1 107 34 view .LVU407
.LBB181:
	.loc 1 109 4 view .LVU408
	.loc 1 111 4 view .LVU409
.LBB182:
	.loc 1 111 4 view .LVU410
	in r25,__SREG__
.LVL71:
.LBB183:
.LBI183:
	.loc 2 48 27 view .LVU411
.LBB184:
	.loc 2 50 5 view .LVU412
/* #APP */
 ;  50 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
	.loc 2 51 5 view .LVU413
.LVL72:
	.loc 2 51 5 is_stmt 0 view .LVU414
/* #NOAPP */
.LBE184:
.LBE183:
	.loc 1 111 4 is_stmt 1 view .LVU415
	.loc 1 113 5 view .LVU416
	.loc 1 113 11 is_stmt 0 view .LVU417
	lds r24,USBtoUSART_Buffer+132
.LVL73:
	.loc 1 111 4 is_stmt 1 view .LVU418
	.loc 1 111 4 view .LVU419
.LBB185:
.LBI185:
	.loc 2 68 24 view .LVU420
.LBB186:
	.loc 2 70 5 view .LVU421
	.loc 2 70 10 is_stmt 0 view .LVU422
	out __SREG__,r25
	.loc 2 71 5 is_stmt 1 view .LVU423
.LVL74:
	.loc 2 71 5 is_stmt 0 view .LVU424
.LBE186:
.LBE185:
.LBE182:
	.loc 1 116 4 is_stmt 1 view .LVU425
	.loc 1 116 4 is_stmt 0 view .LVU426
.LBE181:
.LBE180:
.LBE187:
	.loc 3 337 10 view .LVU427
	tst r24
	breq .L76
	.loc 3 338 2 is_stmt 1 view .LVU428
	.loc 3 338 16 is_stmt 0 view .LVU429
	ldi r24,lo8(USBtoUSART_Buffer)
	ldi r25,hi8(USBtoUSART_Buffer)
	call RingBuffer_Remove
.LVL75:
.LBB188:
.LBI188:
	.file 6 "LUFA-100807/LUFA/Drivers/Peripheral/Serial.h"
	.loc 6 140 23 is_stmt 1 view .LVU430
.LBB189:
	.loc 6 142 5 view .LVU431
.L77:
	.loc 6 142 37 view .LVU432
	.loc 6 142 11 view .LVU433
	.loc 6 142 14 is_stmt 0 view .LVU434
	lds r25,200
	.loc 6 142 11 view .LVU435
	sbrs r25,5
	rjmp .L77
	.loc 6 143 5 is_stmt 1 view .LVU436
	.loc 6 143 10 is_stmt 0 view .LVU437
	sts 206,r24
.LVL76:
	.loc 6 143 10 view .LVU438
.LBE189:
.LBE188:
	.loc 3 340 2 is_stmt 1 view .LVU439
.LBB190:
.LBI190:
	.loc 4 73 23 view .LVU440
.LBB191:
	.loc 4 75 5 view .LVU441
	.loc 4 75 11 is_stmt 0 view .LVU442
	cbi 0xb,4
.LVL77:
	.loc 4 75 11 view .LVU443
.LBE191:
.LBE190:
	.loc 3 341 2 is_stmt 1 view .LVU444
	.loc 3 341 30 is_stmt 0 view .LVU445
	sts PulseMSRemaining+1,r29
.L76:
	.loc 3 344 7 is_stmt 1 view .LVU446
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_USBTask
.LVL78:
	.loc 3 345 7 view .LVU447
	call USB_USBTask
.LVL79:
.LBE195:
	.loc 3 300 9 view .LVU448
	.loc 3 301 5 is_stmt 0 view .LVU449
	rjmp .L78
.LVL80:
.L65:
.LBB196:
.LBB192:
.LBB165:
.LBB163:
	.loc 1 164 6 is_stmt 1 view .LVU450
	.loc 1 164 17 is_stmt 0 view .LVU451
	sts USBtoUSART_Buffer+128+1,r17
	sts USBtoUSART_Buffer+128,r16
	rjmp .L66
.LVL81:
.L71:
	.loc 1 164 17 view .LVU452
.LBE163:
.LBE165:
.LBE192:
	.loc 3 325 6 is_stmt 1 view .LVU453
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	call RingBuffer_Remove
.LVL82:
	mov r22,r24
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_SendByte
.LVL83:
	rjmp .L70
.LBE196:
	.cfi_endproc
.LFE95:
	.size	processSerial, .-processSerial
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB96:
	.loc 3 351 26 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 353 3 view .LVU455
	.loc 3 353 9 is_stmt 0 view .LVU456
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
	.loc 3 354 3 is_stmt 1 view .LVU457
.LBB203:
.LBI203:
	.file 7 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/avr/wdt.h"
	.loc 7 447 6 view .LVU458
.LBE203:
	.loc 7 449 2 view .LVU459
.LBB205:
.LBB204:
	.loc 7 469 9 view .LVU460
	.loc 7 470 3 view .LVU461
/* #APP */
 ;  470 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/avr/wdt.h" 1
	in __tmp_reg__,__SREG__
	cli
	wdr
	lds r24,96
	ori r24,24
	sts 96,r24
	sts 96,__zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
/* #NOAPP */
.LBE204:
.LBE205:
	.loc 3 357 3 view .LVU462
	.loc 3 357 8 is_stmt 0 view .LVU463
	ldi r24,lo8(2)
	out 0x4,r24
	.loc 3 358 3 is_stmt 1 view .LVU464
	.loc 3 358 9 is_stmt 0 view .LVU465
	ldi r24,lo8(12)
	out 0x5,r24
	.loc 3 360 3 is_stmt 1 view .LVU466
	.loc 3 360 6 is_stmt 0 view .LVU467
	sbic 0x3,2
	rjmp .L91
	.loc 3 361 5 is_stmt 1 view .LVU468
	.loc 3 361 14 is_stmt 0 view .LVU469
	sts mocoMode,__zero_reg__
	.loc 3 362 5 is_stmt 1 view .LVU470
.LBB206:
.LBI206:
	.loc 6 99 23 view .LVU471
.LVL84:
.LBB207:
	.loc 6 102 5 view .LVU472
	.loc 6 102 12 is_stmt 0 view .LVU473
	ldi r24,lo8(103)
	ldi r25,0
	sts 204+1,r25
	sts 204,r24
	.loc 6 104 5 is_stmt 1 view .LVU474
	.loc 6 104 12 is_stmt 0 view .LVU475
	ldi r24,lo8(6)
	sts 202,r24
	.loc 6 105 5 is_stmt 1 view .LVU476
	.loc 6 105 12 is_stmt 0 view .LVU477
	sts 200,__zero_reg__
	.loc 6 106 5 is_stmt 1 view .LVU478
	.loc 6 106 12 is_stmt 0 view .LVU479
	ldi r24,lo8(24)
	sts 201,r24
	.loc 6 108 5 is_stmt 1 view .LVU480
	.loc 6 108 11 is_stmt 0 view .LVU481
	sbi 0xa,3
	.loc 6 109 5 is_stmt 1 view .LVU482
	.loc 6 109 11 is_stmt 0 view .LVU483
	sbi 0xb,2
.LVL85:
.L92:
	.loc 6 109 11 view .LVU484
.LBE207:
.LBE206:
	.loc 3 377 3 is_stmt 1 view .LVU485
	.loc 3 377 10 is_stmt 0 view .LVU486
	ldi r24,lo8(4)
	out 0x25,r24
	.loc 3 380 3 is_stmt 1 view .LVU487
	call USB_Init
.LVL86:
	.loc 3 381 3 view .LVU488
.LBB208:
.LBI208:
	.loc 4 67 23 view .LVU489
.LBB209:
	.loc 4 69 5 view .LVU490
	.loc 4 69 11 is_stmt 0 view .LVU491
	in r24,0xa
	ori r24,lo8(48)
	out 0xa,r24
	.loc 4 70 5 is_stmt 1 view .LVU492
	.loc 4 70 11 is_stmt 0 view .LVU493
	in r24,0xb
	ori r24,lo8(48)
	out 0xb,r24
.LBE209:
.LBE208:
	.loc 3 383 3 is_stmt 1 view .LVU494
	.loc 3 383 6 is_stmt 0 view .LVU495
	lds r24,mocoMode
	cpse r24,__zero_reg__
	rjmp .L90
	.loc 3 385 5 is_stmt 1 view .LVU496
	.loc 3 385 25 is_stmt 0 view .LVU497
	sbi 0xb,7
	.loc 3 386 5 is_stmt 1 view .LVU498
	.loc 3 386 25 is_stmt 0 view .LVU499
	sbi 0xa,7
.L90:
/* epilogue start */
	.loc 3 388 1 view .LVU500
	ret
.L91:
	.loc 3 364 5 is_stmt 1 view .LVU501
	.loc 3 364 14 is_stmt 0 view .LVU502
	ldi r24,lo8(1)
	sts mocoMode,r24
	.loc 3 365 5 is_stmt 1 view .LVU503
	.loc 3 365 8 is_stmt 0 view .LVU504
	sbic 0x3,3
	rjmp .L93
	.loc 3 366 7 is_stmt 1 view .LVU505
	.loc 3 366 17 is_stmt 0 view .LVU506
	sts highSpeed,r24
	.loc 3 368 7 is_stmt 1 view .LVU507
	.loc 3 368 14 is_stmt 0 view .LVU508
	sts 204,__zero_reg__
.L94:
	.loc 3 372 5 is_stmt 1 view .LVU509
	.loc 3 372 12 is_stmt 0 view .LVU510
	ldi r24,lo8(24)
	sts 201,r24
	.loc 3 373 5 is_stmt 1 view .LVU511
	.loc 3 373 11 is_stmt 0 view .LVU512
	ldi r24,lo8(14)
	out 0x5,r24
	rjmp .L92
.L93:
	.loc 3 370 7 is_stmt 1 view .LVU513
	.loc 3 370 14 is_stmt 0 view .LVU514
	ldi r24,lo8(31)
	sts 204,r24
	rjmp .L94
	.cfi_endproc
.LFE96:
	.size	SetupHardware, .-SetupHardware
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB93:
	.loc 3 221 16 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 222 3 view .LVU516
	call SetupHardware
.LVL87:
	.loc 3 224 3 view .LVU517
	.loc 3 224 6 is_stmt 0 view .LVU518
	lds r24,mocoMode
	cpi r24,lo8(1)
	brne .L97
	.loc 3 225 5 is_stmt 1 view .LVU519
	call processMIDI
.LVL88:
.L97:
	.loc 3 227 5 view .LVU520
	call processSerial
.LVL89:
	.cfi_endproc
.LFE93:
	.size	main, .-main
	.section	.text.EVENT_USB_Device_Connect,"ax",@progbits
.global	EVENT_USB_Device_Connect
	.type	EVENT_USB_Device_Connect, @function
EVENT_USB_Device_Connect:
.LFB97:
	.loc 3 391 37 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 392 1 view .LVU522
/* epilogue start */
	ret
	.cfi_endproc
.LFE97:
	.size	EVENT_USB_Device_Connect, .-EVENT_USB_Device_Connect
	.section	.text.EVENT_USB_Device_Disconnect,"ax",@progbits
.global	EVENT_USB_Device_Disconnect
	.type	EVENT_USB_Device_Disconnect, @function
EVENT_USB_Device_Disconnect:
.LFB108:
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.cfi_endproc
.LFE108:
	.size	EVENT_USB_Device_Disconnect, .-EVENT_USB_Device_Disconnect
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB99:
	.loc 3 399 50 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 400 3 view .LVU524
	.loc 3 400 6 is_stmt 0 view .LVU525
	lds r24,mocoMode
	cpi r24,lo8(1)
	brne .L101
.LBB210:
	.loc 3 401 5 is_stmt 1 view .LVU526
.LVL90:
	.loc 3 402 5 view .LVU527
	.loc 3 402 22 is_stmt 0 view .LVU528
	ldi r24,lo8(Keyboard_MIDI_Interface)
	ldi r25,hi8(Keyboard_MIDI_Interface)
	jmp MIDI_Device_ConfigureEndpoints
.LVL91:
.L101:
	.loc 3 402 22 view .LVU529
.LBE210:
	.loc 3 404 5 is_stmt 1 view .LVU530
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	jmp CDC_Device_ConfigureEndpoints
.LVL92:
	.cfi_endproc
.LFE99:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_ControlRequest,"ax",@progbits
.global	EVENT_USB_Device_ControlRequest
	.type	EVENT_USB_Device_ControlRequest, @function
EVENT_USB_Device_ControlRequest:
.LFB110:
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.cfi_endproc
.LFE110:
	.size	EVENT_USB_Device_ControlRequest, .-EVENT_USB_Device_ControlRequest
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB101:
	.loc 3 416 53 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 417 3 view .LVU532
	.loc 3 417 6 is_stmt 0 view .LVU533
	lds r24,mocoMode
	cpse r24,__zero_reg__
	rjmp .L103
	.loc 3 418 5 is_stmt 1 view .LVU534
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	jmp CDC_Device_ProcessControlRequest
.LVL93:
.L103:
/* epilogue start */
	.loc 3 422 1 is_stmt 0 view .LVU535
	ret
	.cfi_endproc
.LFE101:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_CDC_Device_LineEncodingChanged,"ax",@progbits
.global	EVENT_CDC_Device_LineEncodingChanged
	.type	EVENT_CDC_Device_LineEncodingChanged, @function
EVENT_CDC_Device_LineEncodingChanged:
.LVL94:
.LFB102:
	.loc 3 428 95 is_stmt 1 view -0
	.cfi_startproc
	.loc 3 428 95 is_stmt 0 view .LVU537
	push r8
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r15
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI12:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI13:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI14:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
	rcall .
	rcall .
	push __tmp_reg__
.LCFI15:
	.cfi_def_cfa_offset 16
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI16:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 5 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r16,r24
	.loc 3 429 3 is_stmt 1 view .LVU538
.LVL95:
	.loc 3 431 3 view .LVU539
	.loc 3 431 47 is_stmt 0 view .LVU540
	movw r26,r24
	adiw r26,20
	ld r24,X
.LVL96:
	.loc 3 431 3 view .LVU541
	ldi r25,lo8(48)
	mov r15,r25
	cpi r24,lo8(1)
	breq .L106
	.loc 3 437 18 view .LVU542
	ldi r18,lo8(32)
	mov r15,r18
	.loc 3 431 3 view .LVU543
	cpi r24,lo8(2)
	breq .L106
	.loc 3 429 11 view .LVU544
	mov r15,__zero_reg__
.L106:
.LVL97:
	.loc 3 441 3 is_stmt 1 view .LVU545
	.loc 3 441 6 is_stmt 0 view .LVU546
	movw r30,r16
	ldd r24,Z+19
	cpi r24,lo8(2)
	brne .L107
	.loc 3 442 5 is_stmt 1 view .LVU547
	.loc 3 442 16 is_stmt 0 view .LVU548
	set
	bld r15,3
.LVL98:
.L107:
	.loc 3 444 3 is_stmt 1 view .LVU549
	.loc 3 444 47 is_stmt 0 view .LVU550
	movw r26,r16
	adiw r26,21
	ld r24,X
	.loc 3 444 3 view .LVU551
	cpi r24,lo8(7)
	brne .+2
	rjmp .L108
	.loc 3 444 3 view .LVU552
	cpi r24,lo8(8)
	brne .+2
	rjmp .L109
	cpi r24,lo8(6)
	brne .L110
	.loc 3 447 7 is_stmt 1 view .LVU553
	.loc 3 447 18 is_stmt 0 view .LVU554
	set
	bld r15,1
.LVL99:
	.loc 3 448 7 is_stmt 1 view .LVU555
.L110:
	.loc 3 458 3 view .LVU556
	.loc 3 458 10 is_stmt 0 view .LVU557
	sts 201,__zero_reg__
	.loc 3 459 3 is_stmt 1 view .LVU558
	.loc 3 459 10 is_stmt 0 view .LVU559
	sts 200,__zero_reg__
	.loc 3 460 3 is_stmt 1 view .LVU560
	.loc 3 460 10 is_stmt 0 view .LVU561
	sts 202,__zero_reg__
	.loc 3 463 3 is_stmt 1 view .LVU562
	.loc 3 463 49 is_stmt 0 view .LVU563
	movw r30,r16
	ldd r18,Z+15
	ldd r19,Z+16
	ldd r20,Z+17
	ldd r21,Z+18
	.loc 3 463 10 view .LVU564
	cp r18,__zero_reg__
	ldi r31,-31
	cpc r19,r31
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .+2
	rjmp .L115
	.loc 3 465 7 discriminator 2 view .LVU565
	movw r8,r18
	movw r10,r20
	lsr r11
	ror r10
	ror r9
	ror r8
	movw r26,r10
	movw r24,r8
	subi r24,-128
	sbci r25,123
	sbci r26,-31
	sbci r27,-1
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	movw r22,r24
	movw r24,r26
	call __udivmodsi4
	.loc 3 463 10 discriminator 2 view .LVU566
	subi r18,1
	sbc r19,__zero_reg__
.L111:
	.loc 3 463 10 discriminator 4 view .LVU567
	sts 204+1,r19
	sts 204,r18
	.loc 3 467 3 is_stmt 1 discriminator 4 view .LVU568
	.loc 3 467 10 is_stmt 0 discriminator 4 view .LVU569
	sts 202,r15
	.loc 3 468 3 is_stmt 1 discriminator 4 view .LVU570
	.loc 3 468 10 is_stmt 0 discriminator 4 view .LVU571
	movw r30,r16
	ldd r24,Z+15
	ldd r25,Z+16
	ldd r26,Z+17
	ldd r27,Z+18
	cp r24,__zero_reg__
	sbci r25,-31
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L116
	.loc 3 468 10 view .LVU572
	ldi r24,lo8(2)
.L112:
	.loc 3 468 10 discriminator 4 view .LVU573
	sts 200,r24
	.loc 3 469 3 is_stmt 1 discriminator 4 view .LVU574
	.loc 3 469 10 is_stmt 0 discriminator 4 view .LVU575
	ldi r24,lo8(-104)
	sts 201,r24
/* epilogue start */
	.loc 3 470 1 discriminator 4 view .LVU576
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL100:
	.loc 3 470 1 discriminator 4 view .LVU577
	pop r15
.LVL101:
	.loc 3 470 1 discriminator 4 view .LVU578
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.LVL102:
.L108:
	.loc 3 450 7 is_stmt 1 view .LVU579
	.loc 3 450 18 is_stmt 0 view .LVU580
	set
	bld r15,2
.LVL103:
	.loc 3 451 7 is_stmt 1 view .LVU581
	rjmp .L110
.L109:
	.loc 3 453 7 view .LVU582
	.loc 3 453 18 is_stmt 0 view .LVU583
	mov r27,r15
	ori r27,lo8(6)
	mov r15,r27
.LVL104:
	.loc 3 454 7 is_stmt 1 view .LVU584
	rjmp .L110
.L115:
	.loc 3 463 10 is_stmt 0 view .LVU585
	ldi r18,lo8(16)
	ldi r19,0
	rjmp .L111
.L116:
	.loc 3 468 10 view .LVU586
	ldi r24,0
	rjmp .L112
	.cfi_endproc
.LFE102:
	.size	EVENT_CDC_Device_LineEncodingChanged, .-EVENT_CDC_Device_LineEncodingChanged
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
.LFB103:
	.loc 3 475 32 is_stmt 1 view -0
	.cfi_startproc
	__gcc_isr 1
	push r24
.LCFI17:
	.cfi_def_cfa_offset 3
	.cfi_offset 24, -2
	push r25
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 25, -3
	push r30
.LCFI19:
	.cfi_def_cfa_offset 5
	.cfi_offset 30, -4
	push r31
.LCFI20:
	.cfi_def_cfa_offset 6
	.cfi_offset 31, -5
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 4...8 */
.L__stack_usage = 4 + __gcc_isr.n_pushed
	.loc 3 476 3 view .LVU588
	.loc 3 476 6 is_stmt 0 view .LVU589
	lds r24,mocoMode
	cpse r24,__zero_reg__
	rjmp .L117
.LBB219:
	.loc 3 477 5 is_stmt 1 view .LVU590
	.loc 3 477 13 is_stmt 0 view .LVU591
	lds r24,206
.LVL105:
	.loc 3 479 5 is_stmt 1 view .LVU592
	.loc 3 479 9 is_stmt 0 view .LVU593
	in r25,0x1e
	.loc 3 479 8 view .LVU594
	cpi r25,lo8(4)
	brne .L117
	.loc 3 480 7 is_stmt 1 view .LVU595
.LVL106:
.LBB220:
.LBI220:
	.loc 1 158 22 view .LVU596
.LBB221:
	.loc 1 161 4 view .LVU597
	.loc 1 161 11 is_stmt 0 view .LVU598
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	.loc 1 161 16 view .LVU599
	st Z,r24
	.loc 1 163 4 is_stmt 1 view .LVU600
	.loc 1 163 8 is_stmt 0 view .LVU601
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	movw r24,r30
.LVL107:
	.loc 1 163 8 view .LVU602
	adiw r24,1
	.loc 1 163 7 view .LVU603
	ldi r18,hi8(USARTtoUSB_Buffer+127)
	cpi r30,lo8(USARTtoUSB_Buffer+127)
	cpc r31,r18
	breq .L119
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
.L120:
	.loc 1 166 4 is_stmt 1 view .LVU604
.LBB222:
	.loc 1 166 4 view .LVU605
	in r25,__SREG__
.LVL108:
.LBB223:
.LBI223:
	.loc 2 48 27 view .LVU606
.LBB224:
	.loc 2 50 5 view .LVU607
/* #APP */
 ;  50 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
	.loc 2 51 5 view .LVU608
.LVL109:
	.loc 2 51 5 is_stmt 0 view .LVU609
/* #NOAPP */
.LBE224:
.LBE223:
	.loc 1 166 4 is_stmt 1 view .LVU610
	.loc 1 168 5 view .LVU611
	.loc 1 168 18 is_stmt 0 view .LVU612
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
	.loc 1 166 4 is_stmt 1 view .LVU613
.LVL110:
	.loc 1 166 4 view .LVU614
.LBB225:
.LBI225:
	.loc 2 68 24 view .LVU615
.LBB226:
	.loc 2 70 5 view .LVU616
	.loc 2 70 10 is_stmt 0 view .LVU617
	out __SREG__,r25
	.loc 2 71 5 is_stmt 1 view .LVU618
.LVL111:
.L117:
/* epilogue start */
	.loc 2 71 5 is_stmt 0 view .LVU619
.LBE226:
.LBE225:
.LBE222:
.LBE221:
.LBE220:
.LBE219:
	.loc 3 482 1 view .LVU620
	pop r31
	pop r30
	pop r25
	pop r24
	__gcc_isr 2
	reti
.LVL112:
.L119:
.LBB229:
.LBB228:
.LBB227:
	.loc 1 164 6 is_stmt 1 view .LVU621
	.loc 1 164 17 is_stmt 0 view .LVU622
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
	.loc 1 164 17 view .LVU623
	rjmp .L120
	__gcc_isr 0,r18
.LBE227:
.LBE228:
.LBE229:
	.cfi_endproc
.LFE103:
	.size	__vector_23, .-__vector_23
	.section	.text.EVENT_CDC_Device_ControLineStateChanged,"ax",@progbits
.global	EVENT_CDC_Device_ControLineStateChanged
	.type	EVENT_CDC_Device_ControLineStateChanged, @function
EVENT_CDC_Device_ControLineStateChanged:
.LVL113:
.LFB104:
	.loc 3 488 98 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 489 3 view .LVU625
	.loc 3 491 3 view .LVU626
	.loc 3 491 6 is_stmt 0 view .LVU627
	movw r30,r24
	ldd r24,Z+13
.LVL114:
	.loc 3 491 6 view .LVU628
	sbrs r24,0
	rjmp .L122
	.loc 3 492 5 is_stmt 1 view .LVU629
	.loc 3 492 25 is_stmt 0 view .LVU630
	cbi 0xb,7
	ret
.L122:
	.loc 3 494 5 is_stmt 1 view .LVU631
	.loc 3 494 25 is_stmt 0 view .LVU632
	sbi 0xb,7
/* epilogue start */
	.loc 3 495 1 view .LVU633
	ret
	.cfi_endproc
.LFE104:
	.size	EVENT_CDC_Device_ControLineStateChanged, .-EVENT_CDC_Device_ControLineStateChanged
	.data
	.type	cnt.3242, @object
	.size	cnt.3242, 1
cnt.3242:
	.byte	40
	.section	.rodata
	.type	stateTransTable.3235, @object
	.size	stateTransTable.3235, 16
stateTransTable.3235:
	.string	""
	.string	""
	.string	"\003\202\005\204\007\206\t\210\212"
	.string	"\214"
	.ascii	"\017\216"
	.local	PC.3232
	.comm	PC.3232,1,1
	.local	sysExCnt.3234
	.comm	sysExCnt.3234,1,1
	.local	SysEx.3233
	.comm	SysEx.3233,1,1
.global	Keyboard_MIDI_Interface
	.data
	.type	Keyboard_MIDI_Interface, @object
	.size	Keyboard_MIDI_Interface, 9
Keyboard_MIDI_Interface:
	.byte	1
	.byte	2
	.word	64
	.byte	0
	.byte	1
	.word	64
	.byte	0
.global	VirtualSerial_CDC_Interface
	.type	VirtualSerial_CDC_Interface, @object
	.size	VirtualSerial_CDC_Interface, 22
VirtualSerial_CDC_Interface:
	.byte	0
	.byte	3
	.word	64
	.byte	0
	.byte	4
	.word	64
	.byte	0
	.byte	2
	.word	8
	.byte	0
	.zero	9
	.local	tx_buf
	.comm	tx_buf,32,1
	.local	irptr
	.comm	irptr,1,1
	.local	uwptr
	.comm	uwptr,1,1
	.local	utx_buf
	.comm	utx_buf,8,1
	.local	rx_buf
	.comm	rx_buf,8,1
	.local	utxrdy
	.comm	utxrdy,1,1
	.comm	PulseMSRemaining,3,1
	.comm	USARTtoUSB_Buffer,133,1
	.comm	USBtoUSART_Buffer,133,1
.global	highSpeed
	.section .bss
	.type	highSpeed, @object
	.size	highSpeed, 1
highSpeed:
	.zero	1
.global	mocoMode
	.data
	.type	mocoMode, @object
	.size	mocoMode, 1
mocoMode:
	.byte	1
	.text
.Letext0:
	.file 8 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/stdint.h"
	.file 9 "LUFA-100807/LUFA/Drivers/USB/HighLevel/../LowLevel/../HighLevel/StdRequestType.h"
	.file 10 "LUFA-100807/LUFA/Drivers/USB/HighLevel/../LowLevel/../HighLevel/DeviceStandardReq.h"
	.file 11 "LUFA-100807/LUFA/Drivers/USB/HighLevel/USBTask.h"
	.file 12 "LUFA-100807/LUFA/Drivers/USB/HighLevel/../LowLevel/Device.h"
	.file 13 "LUFA-100807/LUFA/Drivers/USB/Class/Device/../Common/CDC.h"
	.file 14 "/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/avr/include/stdio.h"
	.file 15 "LUFA-100807/LUFA/Drivers/USB/Class/Device/CDC.h"
	.file 16 "LUFA-100807/LUFA/Drivers/USB/Class/Device/../Common/MIDI.h"
	.file 17 "dualMoco.h"
	.file 18 "LUFA-100807/LUFA/Drivers/USB/HighLevel/../LowLevel/USBController.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1529
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF153
	.byte	0xc
	.long	.LASF154
	.long	.LASF155
	.long	.Ldebug_ranges0+0x168
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x8
	.byte	0x7e
	.byte	0x16
	.long	0x41
	.uleb128 0x4
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x8
	.byte	0x7f
	.byte	0x14
	.long	0x54
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x8
	.byte	0x80
	.byte	0x16
	.long	0x67
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x8
	.byte	0x82
	.byte	0x16
	.long	0x86
	.uleb128 0x4
	.long	0x75
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.long	.LASF29
	.byte	0x7
	.byte	0x1
	.long	0x41
	.byte	0xc
	.byte	0x72
	.byte	0x9
	.long	0xd2
	.uleb128 0x7
	.long	.LASF11
	.byte	0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.uleb128 0x7
	.long	.LASF14
	.byte	0x3
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.uleb128 0x7
	.long	.LASF16
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0xa2
	.byte	0xc
	.long	0x127
	.uleb128 0x9
	.long	.LASF17
	.byte	0x9
	.byte	0xa4
	.byte	0xe
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x9
	.byte	0xa5
	.byte	0xe
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF19
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF20
	.byte	0x9
	.byte	0xa7
	.byte	0xe
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF21
	.byte	0x9
	.byte	0xa8
	.byte	0xe
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF22
	.byte	0x9
	.byte	0xa9
	.byte	0x6
	.long	0xd2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xa
	.byte	0x64
	.byte	0x13
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF24
	.byte	0xa
	.byte	0x75
	.byte	0x11
	.long	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF25
	.uleb128 0xb
	.long	0x14f
	.uleb128 0x4
	.long	0x14f
	.uleb128 0xa
	.long	.LASF26
	.byte	0xa
	.byte	0x7f
	.byte	0x11
	.long	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF27
	.byte	0xb
	.byte	0x53
	.byte	0x19
	.long	0x156
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xb
	.byte	0x5b
	.byte	0x21
	.long	0x127
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x6
	.long	.LASF30
	.byte	0x7
	.byte	0x1
	.long	0x41
	.byte	0xd
	.byte	0x9b
	.byte	0x8
	.long	0x1b1
	.uleb128 0x7
	.long	.LASF31
	.byte	0
	.uleb128 0x7
	.long	.LASF32
	.byte	0x1
	.uleb128 0x7
	.long	.LASF33
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF34
	.byte	0x7
	.byte	0x1
	.long	0x41
	.byte	0xd
	.byte	0xa3
	.byte	0x8
	.long	0x1e2
	.uleb128 0x7
	.long	.LASF35
	.byte	0
	.uleb128 0x7
	.long	.LASF36
	.byte	0x1
	.uleb128 0x7
	.long	.LASF37
	.byte	0x2
	.uleb128 0x7
	.long	.LASF38
	.byte	0x3
	.uleb128 0x7
	.long	.LASF39
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF156
	.byte	0xe
	.byte	0xe
	.byte	0xf4
	.byte	0x8
	.long	0x26d
	.uleb128 0xe
	.string	"buf"
	.byte	0xe
	.byte	0xf5
	.byte	0x8
	.long	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF40
	.byte	0xe
	.byte	0xf6
	.byte	0x10
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF41
	.byte	0xe
	.byte	0xf7
	.byte	0xa
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xf
	.long	.LASF42
	.byte	0xe
	.word	0x107
	.byte	0x6
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"len"
	.byte	0xe
	.word	0x108
	.byte	0x6
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.string	"put"
	.byte	0xe
	.word	0x109
	.byte	0x8
	.long	0x29a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"get"
	.byte	0xe
	.word	0x10a
	.byte	0x8
	.long	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.long	.LASF43
	.byte	0xe
	.word	0x10b
	.byte	0x8
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x273
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF44
	.uleb128 0x4
	.long	0x273
	.uleb128 0x12
	.byte	0x1
	.long	0x54
	.long	0x294
	.uleb128 0x13
	.long	0x273
	.uleb128 0x13
	.long	0x294
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x1e2
	.uleb128 0x11
	.byte	0x2
	.long	0x27f
	.uleb128 0x12
	.byte	0x1
	.long	0x54
	.long	0x2b0
	.uleb128 0x13
	.long	0x294
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x2a0
	.uleb128 0x14
	.long	0x294
	.long	0x2c1
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.long	.LASF45
	.byte	0xe
	.word	0x197
	.byte	0x17
	.long	0x2b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0xd
	.byte	0xf
	.byte	0x64
	.byte	0xb
	.long	0x370
	.uleb128 0x9
	.long	.LASF46
	.byte	0xf
	.byte	0x66
	.byte	0xf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF47
	.byte	0xf
	.byte	0x68
	.byte	0xf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF48
	.byte	0xf
	.byte	0x69
	.byte	0xf
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF49
	.byte	0xf
	.byte	0x6a
	.byte	0xf
	.long	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF50
	.byte	0xf
	.byte	0x6c
	.byte	0xf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF51
	.byte	0xf
	.byte	0x6d
	.byte	0xf
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.long	.LASF52
	.byte	0xf
	.byte	0x6e
	.byte	0xf
	.long	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF53
	.byte	0xf
	.byte	0x70
	.byte	0xf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.long	.LASF54
	.byte	0xf
	.byte	0x71
	.byte	0xf
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF55
	.byte	0xf
	.byte	0x72
	.byte	0xf
	.long	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.long	0x2d0
	.uleb128 0x8
	.byte	0x2
	.byte	0xf
	.byte	0x78
	.byte	0x6
	.long	0x39d
	.uleb128 0x9
	.long	.LASF56
	.byte	0xf
	.byte	0x7a
	.byte	0xf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF57
	.byte	0xf
	.byte	0x7d
	.byte	0xf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x8
	.byte	0x7
	.byte	0xf
	.byte	0x83
	.byte	0x6
	.long	0x3e3
	.uleb128 0x9
	.long	.LASF58
	.byte	0xf
	.byte	0x85
	.byte	0x10
	.long	0x75
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF59
	.byte	0xf
	.byte	0x86
	.byte	0x10
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF60
	.byte	0xf
	.byte	0x89
	.byte	0x10
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF61
	.byte	0xf
	.byte	0x8c
	.byte	0x10
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x8
	.byte	0x9
	.byte	0xf
	.byte	0x76
	.byte	0x5
	.long	0x40b
	.uleb128 0x9
	.long	.LASF62
	.byte	0xf
	.byte	0x81
	.byte	0x8
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF63
	.byte	0xf
	.byte	0x8d
	.byte	0x8
	.long	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.byte	0x16
	.byte	0xf
	.byte	0x62
	.byte	0xc
	.long	0x433
	.uleb128 0x9
	.long	.LASF64
	.byte	0xf
	.byte	0x73
	.byte	0x7
	.long	0x370
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF65
	.byte	0xf
	.byte	0x90
	.byte	0x7
	.long	0x3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.long	.LASF66
	.byte	0xf
	.byte	0x93
	.byte	0x6
	.long	0x40b
	.uleb128 0x8
	.byte	0x4
	.byte	0x10
	.byte	0xae
	.byte	0xb
	.long	0x49a
	.uleb128 0x17
	.long	.LASF67
	.byte	0x10
	.byte	0xb0
	.byte	0x12
	.long	0x41
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.long	.LASF68
	.byte	0x10
	.byte	0xb1
	.byte	0x12
	.long	0x41
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x10
	.byte	0xb3
	.byte	0xc
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF70
	.byte	0x10
	.byte	0xb4
	.byte	0xc
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF71
	.byte	0x10
	.byte	0xb5
	.byte	0xc
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF72
	.byte	0x10
	.byte	0xb6
	.byte	0x5
	.long	0x43f
	.uleb128 0x8
	.byte	0x9
	.byte	0x5
	.byte	0x52
	.byte	0xb
	.long	0x519
	.uleb128 0x9
	.long	.LASF73
	.byte	0x5
	.byte	0x54
	.byte	0xf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x5
	.byte	0x56
	.byte	0xf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF48
	.byte	0x5
	.byte	0x57
	.byte	0xf
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF49
	.byte	0x5
	.byte	0x58
	.byte	0xf
	.long	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF50
	.byte	0x5
	.byte	0x5a
	.byte	0xf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF51
	.byte	0x5
	.byte	0x5b
	.byte	0xf
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.long	.LASF52
	.byte	0x5
	.byte	0x5c
	.byte	0xf
	.long	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.long	0x4a6
	.uleb128 0x18
	.byte	0
	.byte	0x5
	.byte	0x60
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.byte	0x5
	.byte	0x50
	.byte	0xc
	.long	0x54b
	.uleb128 0x9
	.long	.LASF64
	.byte	0x5
	.byte	0x5d
	.byte	0x7
	.long	0x519
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF65
	.byte	0x5
	.byte	0x63
	.byte	0x7
	.long	0x51e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.long	.LASF74
	.byte	0x5
	.byte	0x66
	.byte	0x6
	.long	0x523
	.uleb128 0x8
	.byte	0x85
	.byte	0x1
	.byte	0x46
	.byte	0xb
	.long	0x59f
	.uleb128 0x9
	.long	.LASF75
	.byte	0x1
	.byte	0x48
	.byte	0x15
	.long	0x59f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"In"
	.byte	0x1
	.byte	0x49
	.byte	0x15
	.long	0x5af
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"Out"
	.byte	0x1
	.byte	0x4a
	.byte	0x15
	.long	0x5af
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF76
	.byte	0x1
	.byte	0x4b
	.byte	0x15
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0x14
	.long	0x30
	.long	0x5af
	.uleb128 0x19
	.long	0x67
	.byte	0x7f
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x30
	.uleb128 0x3
	.long	.LASF77
	.byte	0x1
	.byte	0x4c
	.byte	0x5
	.long	0x557
	.uleb128 0x3
	.long	.LASF78
	.byte	0x11
	.byte	0x4e
	.byte	0x13
	.long	0x30
	.uleb128 0xa
	.long	.LASF79
	.byte	0x11
	.byte	0x65
	.byte	0x10
	.long	0x5c1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	0x5cd
	.byte	0x3
	.byte	0x31
	.byte	0x7
	.byte	0x5
	.byte	0x3
	.long	mocoMode
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x3
	.byte	0x32
	.byte	0x7
	.long	0x5c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	highSpeed
	.uleb128 0x1b
	.long	.LASF81
	.byte	0x3
	.byte	0x36
	.byte	0xc
	.long	0x5b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x3
	.byte	0x39
	.byte	0xc
	.long	0x5b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x8
	.byte	0x3
	.byte	0x3
	.byte	0x3c
	.byte	0xa
	.long	0x659
	.uleb128 0x9
	.long	.LASF83
	.byte	0x3
	.byte	0x3d
	.byte	0xb
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF84
	.byte	0x3
	.byte	0x3e
	.byte	0xb
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF85
	.byte	0x3
	.byte	0x3f
	.byte	0xb
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.long	0x622
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x3
	.byte	0x40
	.byte	0x3
	.long	0x659
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PulseMSRemaining
	.uleb128 0x1c
	.long	.LASF87
	.byte	0x3
	.byte	0x43
	.byte	0xe
	.long	0x5c1
	.byte	0x5
	.byte	0x3
	.long	utxrdy
	.uleb128 0x14
	.long	0x5c1
	.long	0x693
	.uleb128 0x19
	.long	0x67
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.long	.LASF88
	.byte	0x3
	.byte	0x44
	.byte	0xe
	.long	0x683
	.byte	0x5
	.byte	0x3
	.long	rx_buf
	.uleb128 0x1c
	.long	.LASF89
	.byte	0x3
	.byte	0x45
	.byte	0xe
	.long	0x683
	.byte	0x5
	.byte	0x3
	.long	utx_buf
	.uleb128 0x1c
	.long	.LASF90
	.byte	0x3
	.byte	0x49
	.byte	0xe
	.long	0x5c1
	.byte	0x5
	.byte	0x3
	.long	uwptr
	.uleb128 0x1c
	.long	.LASF91
	.byte	0x3
	.byte	0x49
	.byte	0x19
	.long	0x5c1
	.byte	0x5
	.byte	0x3
	.long	irptr
	.uleb128 0x14
	.long	0x5c1
	.long	0x6eb
	.uleb128 0x19
	.long	0x67
	.byte	0x1f
	.byte	0
	.uleb128 0x1c
	.long	.LASF92
	.byte	0x3
	.byte	0x4a
	.byte	0xe
	.long	0x6db
	.byte	0x5
	.byte	0x3
	.long	tx_buf
	.uleb128 0x1b
	.long	.LASF93
	.byte	0x3
	.byte	0x51
	.byte	0x1c
	.long	0x433
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.uleb128 0x1b
	.long	.LASF94
	.byte	0x3
	.byte	0x63
	.byte	0x1d
	.long	0x54b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_MIDI_Interface
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF96
	.byte	0x3
	.word	0x1e8
	.byte	0x6
	.byte	0x1
	.long	.LFB104
	.long	.LFE104
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x76a
	.uleb128 0x1e
	.long	.LASF100
	.byte	0x3
	.word	0x1e8
	.byte	0x50
	.long	0x770
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x1f
	.long	.LASF95
	.byte	0x3
	.word	0x1e9
	.byte	0x8
	.long	0x14f
	.long	.LLST59
	.long	.LVUS59
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x433
	.uleb128 0x4
	.long	0x76a
	.uleb128 0x20
	.byte	0x1
	.long	.LASF97
	.byte	0x3
	.word	0x1db
	.byte	0x1
	.byte	0x1
	.long	.LFB103
	.long	.LFE103
	.long	.LLST52
	.byte	0x1
	.long	0x832
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x138
	.uleb128 0x1f
	.long	.LASF98
	.byte	0x3
	.word	0x1dd
	.byte	0xd
	.long	0x30
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x22
	.long	0x12e3
	.long	.LBI220
	.byte	.LVU596
	.long	.Ldebug_ranges0+0x150
	.byte	0x3
	.word	0x1e0
	.byte	0x7
	.uleb128 0x23
	.long	0x12fd
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x24
	.long	0x12f1
	.uleb128 0x25
	.long	0x1309
	.long	.LBB222
	.long	.LBE222
	.uleb128 0x26
	.long	0x130a
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x26
	.long	0x1316
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x27
	.long	0x143e
	.long	.LBI223
	.byte	.LVU606
	.long	.LBB223
	.long	.LBE223
	.byte	0x1
	.byte	0xa6
	.byte	0x4
	.uleb128 0x28
	.long	0x141d
	.long	.LBI225
	.byte	.LVU615
	.long	.LBB225
	.long	.LBE225
	.byte	0x1
	.byte	0xa6
	.byte	0x4
	.uleb128 0x23
	.long	0x142b
	.long	.LLST57
	.long	.LVUS57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF99
	.byte	0x3
	.word	0x1ac
	.byte	0x6
	.byte	0x1
	.long	.LFB102
	.long	.LFE102
	.long	.LLST49
	.byte	0x1
	.long	0x879
	.uleb128 0x1e
	.long	.LASF100
	.byte	0x3
	.word	0x1ac
	.byte	0x4d
	.long	0x770
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x1f
	.long	.LASF101
	.byte	0x3
	.word	0x1ad
	.byte	0xb
	.long	0x30
	.long	.LLST51
	.long	.LVUS51
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF102
	.byte	0x3
	.word	0x1a0
	.byte	0x6
	.byte	0x1
	.long	.LFB101
	.long	.LFE101
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x8af
	.uleb128 0x29
	.long	.LVL93
	.byte	0x1
	.long	0x1490
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF105
	.byte	0x3
	.word	0x199
	.byte	0x6
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF103
	.byte	0x3
	.word	0x18f
	.byte	0x6
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x92c
	.uleb128 0x2c
	.long	.LBB210
	.long	.LBE210
	.long	0x912
	.uleb128 0x1f
	.long	.LASF104
	.byte	0x3
	.word	0x191
	.byte	0xa
	.long	0x14f
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x29
	.long	.LVL91
	.byte	0x1
	.long	0x149e
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_MIDI_Interface
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LVL92
	.byte	0x1
	.long	0x14ac
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF106
	.byte	0x3
	.word	0x18b
	.byte	0x6
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF157
	.byte	0x3
	.word	0x187
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF107
	.byte	0x3
	.word	0x15f
	.byte	0x6
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x9de
	.uleb128 0x2e
	.long	0x144c
	.long	.LBI203
	.byte	.LVU458
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.word	0x162
	.byte	0x3
	.long	0x989
	.uleb128 0x25
	.long	0x146e
	.long	.LBB204
	.long	.LBE204
	.uleb128 0x2f
	.long	0x146f
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x11c0
	.long	.LBI206
	.byte	.LVU471
	.long	.LBB206
	.long	.LBE206
	.byte	0x3
	.word	0x16a
	.byte	0x5
	.long	0x9be
	.uleb128 0x23
	.long	0x11ce
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x23
	.long	0x11da
	.long	.LLST47
	.long	.LVUS47
	.byte	0
	.uleb128 0x31
	.long	0x121d
	.long	.LBI208
	.byte	.LVU489
	.long	.LBB208
	.long	.LBE208
	.byte	0x3
	.word	0x17d
	.byte	0x3
	.uleb128 0x32
	.long	.LVL86
	.long	0x14ba
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF108
	.byte	0x3
	.word	0x125
	.byte	0x6
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xedb
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x68
	.long	0xde6
	.uleb128 0x1f
	.long	.LASF109
	.byte	0x3
	.word	0x139
	.byte	0x18
	.long	0x30
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x33
	.long	.Ldebug_ranges0+0xd0
	.long	0xad8
	.uleb128 0x1f
	.long	.LASF98
	.byte	0x3
	.word	0x131
	.byte	0xc
	.long	0x48
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x2e
	.long	0x12e3
	.long	.LBI155
	.byte	.LVU320
	.long	.Ldebug_ranges0+0xe8
	.byte	0x3
	.word	0x135
	.byte	0x6
	.long	0xabf
	.uleb128 0x23
	.long	0x12fd
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x24
	.long	0x12f1
	.uleb128 0x25
	.long	0x1309
	.long	.LBB157
	.long	.LBE157
	.uleb128 0x26
	.long	0x130a
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x26
	.long	0x1316
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x27
	.long	0x143e
	.long	.LBI158
	.byte	.LVU330
	.long	.LBB158
	.long	.LBE158
	.byte	0x1
	.byte	0xa6
	.byte	0x4
	.uleb128 0x28
	.long	0x141d
	.long	.LBI160
	.byte	.LVU339
	.long	.LBB160
	.long	.LBE160
	.byte	0x1
	.byte	0xa6
	.byte	0x4
	.uleb128 0x23
	.long	0x142b
	.long	.LLST32
	.long	.LVUS32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LVL53
	.long	0x14c9
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x1343
	.long	.LBI141
	.byte	.LVU291
	.long	.Ldebug_ranges0+0x98
	.byte	0x3
	.word	0x12f
	.byte	0xd
	.long	0xb7a
	.uleb128 0x24
	.long	0x1355
	.uleb128 0x35
	.long	0x1362
	.long	.LBI142
	.byte	.LVU294
	.long	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0x81
	.byte	0xc
	.uleb128 0x24
	.long	0x1374
	.uleb128 0x21
	.long	.Ldebug_ranges0+0xb8
	.uleb128 0x26
	.long	0x1380
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x36
	.long	0x138c
	.long	.Ldebug_ranges0+0xb8
	.uleb128 0x26
	.long	0x138d
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x26
	.long	0x1399
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x27
	.long	0x143e
	.long	.LBI145
	.byte	.LVU298
	.long	.LBB145
	.long	.LBE145
	.byte	0x1
	.byte	0x6f
	.byte	0x4
	.uleb128 0x28
	.long	0x141d
	.long	.LBI147
	.byte	.LVU307
	.long	.LBB147
	.long	.LBE147
	.byte	0x1
	.byte	0x6f
	.byte	0x4
	.uleb128 0x23
	.long	0x142b
	.long	.LLST27
	.long	.LVUS27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x1362
	.long	.LBI166
	.byte	.LVU345
	.long	.LBB166
	.long	.LBE166
	.byte	0x3
	.word	0x139
	.byte	0x26
	.long	0xc07
	.uleb128 0x24
	.long	0x1374
	.uleb128 0x26
	.long	0x1380
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x25
	.long	0x138c
	.long	.LBB168
	.long	.LBE168
	.uleb128 0x26
	.long	0x138d
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x26
	.long	0x1399
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x27
	.long	0x143e
	.long	.LBI169
	.byte	.LVU349
	.long	.LBB169
	.long	.LBE169
	.byte	0x1
	.byte	0x6f
	.byte	0x4
	.uleb128 0x28
	.long	0x141d
	.long	.LBI171
	.byte	.LVU358
	.long	.LBB171
	.long	.LBE171
	.byte	0x1
	.byte	0x6f
	.byte	0x4
	.uleb128 0x23
	.long	0x142b
	.long	.LLST36
	.long	.LVUS36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x1202
	.long	.LBI173
	.byte	.LVU373
	.long	.LBB173
	.long	.LBE173
	.byte	0x3
	.word	0x13f
	.byte	0x6
	.long	0xc2f
	.uleb128 0x23
	.long	0x1210
	.long	.LLST37
	.long	.LVUS37
	.byte	0
	.uleb128 0x30
	.long	0x11e7
	.long	.LBI175
	.byte	.LVU388
	.long	.LBB175
	.long	.LBE175
	.byte	0x3
	.word	0x149
	.byte	0x6
	.long	0xc57
	.uleb128 0x23
	.long	0x11f5
	.long	.LLST38
	.long	.LVUS38
	.byte	0
	.uleb128 0x30
	.long	0x11e7
	.long	.LBI177
	.byte	.LVU399
	.long	.LBB177
	.long	.LBE177
	.byte	0x3
	.word	0x14d
	.byte	0x6
	.long	0xc7f
	.uleb128 0x23
	.long	0x11f5
	.long	.LLST39
	.long	.LVUS39
	.byte	0
	.uleb128 0x2e
	.long	0x1324
	.long	.LBI179
	.byte	.LVU404
	.long	.Ldebug_ranges0+0x108
	.byte	0x3
	.word	0x151
	.byte	0xd
	.long	0xd23
	.uleb128 0x24
	.long	0x1336
	.uleb128 0x28
	.long	0x1362
	.long	.LBI180
	.byte	.LVU407
	.long	.LBB180
	.long	.LBE180
	.byte	0x1
	.byte	0x92
	.byte	0xc
	.uleb128 0x24
	.long	0x1374
	.uleb128 0x26
	.long	0x1380
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x25
	.long	0x138c
	.long	.LBB182
	.long	.LBE182
	.uleb128 0x26
	.long	0x138d
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x26
	.long	0x1399
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x27
	.long	0x143e
	.long	.LBI183
	.byte	.LVU411
	.long	.LBB183
	.long	.LBE183
	.byte	0x1
	.byte	0x6f
	.byte	0x4
	.uleb128 0x28
	.long	0x141d
	.long	.LBI185
	.byte	.LVU420
	.long	.LBB185
	.long	.LBE185
	.byte	0x1
	.byte	0x6f
	.byte	0x4
	.uleb128 0x23
	.long	0x142b
	.long	.LLST43
	.long	.LVUS43
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x11a5
	.long	.LBI188
	.byte	.LVU430
	.long	.LBB188
	.long	.LBE188
	.byte	0x3
	.word	0x152
	.byte	0x2
	.long	0xd4b
	.uleb128 0x23
	.long	0x11b3
	.long	.LLST44
	.long	.LVUS44
	.byte	0
	.uleb128 0x30
	.long	0x1202
	.long	.LBI190
	.byte	.LVU440
	.long	.LBB190
	.long	.LBE190
	.byte	0x3
	.word	0x154
	.byte	0x2
	.long	0xd73
	.uleb128 0x23
	.long	0x1210
	.long	.LLST45
	.long	.LVUS45
	.byte	0
	.uleb128 0x37
	.long	.LVL75
	.long	0x1227
	.long	0xd8c
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.long	.LVL78
	.long	0x14d8
	.long	0xda8
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0
	.uleb128 0x32
	.long	.LVL79
	.long	0x14e6
	.uleb128 0x37
	.long	.LVL82
	.long	0x1227
	.long	0xdcd
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0
	.uleb128 0x34
	.long	.LVL83
	.long	0x14f4
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x13a7
	.long	.LBI126
	.byte	.LVU246
	.long	.Ldebug_ranges0+0x38
	.byte	0x3
	.word	0x127
	.byte	0x3
	.long	0xe62
	.uleb128 0x24
	.long	0x13b5
	.uleb128 0x25
	.long	0x13c1
	.long	.LBB127
	.long	.LBE127
	.uleb128 0x26
	.long	0x13c2
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x26
	.long	0x13ce
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x27
	.long	0x143e
	.long	.LBI128
	.byte	.LVU249
	.long	.LBB128
	.long	.LBE128
	.byte	0x1
	.byte	0x57
	.byte	0x4
	.uleb128 0x28
	.long	0x141d
	.long	.LBI130
	.byte	.LVU260
	.long	.LBB130
	.long	.LBE130
	.byte	0x1
	.byte	0x57
	.byte	0x4
	.uleb128 0x23
	.long	0x142b
	.long	.LLST19
	.long	.LVUS19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x13a7
	.long	.LBI133
	.byte	.LVU266
	.long	.Ldebug_ranges0+0x50
	.byte	0x3
	.word	0x128
	.byte	0x3
	.uleb128 0x24
	.long	0x13b5
	.uleb128 0x25
	.long	0x13c1
	.long	.LBB134
	.long	.LBE134
	.uleb128 0x26
	.long	0x13c2
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x26
	.long	0x13ce
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x27
	.long	0x143e
	.long	.LBI135
	.byte	.LVU269
	.long	.LBB135
	.long	.LBE135
	.byte	0x1
	.byte	0x57
	.byte	0x4
	.uleb128 0x28
	.long	0x141d
	.long	.LBI137
	.byte	.LVU280
	.long	.LBB137
	.long	.LBE137
	.byte	0x1
	.byte	0x57
	.byte	0x4
	.uleb128 0x23
	.long	0x142b
	.long	.LLST22
	.long	.LVUS22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF110
	.byte	0x3
	.byte	0xe8
	.byte	0x6
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.long	.LLST12
	.byte	0x1
	.long	0x1056
	.uleb128 0x39
	.string	"cnt"
	.byte	0x3
	.byte	0xea
	.byte	0x12
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	cnt.3242
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x3
	.byte	0xfe
	.byte	0x18
	.long	0x49a
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x3a
	.long	0x1202
	.long	.LBI58
	.byte	.LVU167
	.long	.LBB58
	.long	.LBE58
	.byte	0x3
	.byte	0xf2
	.byte	0x7
	.long	0xf43
	.uleb128 0x23
	.long	0x1210
	.long	.LLST13
	.long	.LVUS13
	.byte	0
	.uleb128 0x30
	.long	0x11e7
	.long	.LBI60
	.byte	.LVU204
	.long	.LBB60
	.long	.LBE60
	.byte	0x3
	.word	0x110
	.byte	0x2
	.long	0xf6b
	.uleb128 0x23
	.long	0x11f5
	.long	.LLST14
	.long	.LVUS14
	.byte	0
	.uleb128 0x30
	.long	0x11e7
	.long	.LBI62
	.byte	.LVU215
	.long	.LBB62
	.long	.LBE62
	.byte	0x3
	.word	0x114
	.byte	0x2
	.long	0xf93
	.uleb128 0x23
	.long	0x11f5
	.long	.LLST15
	.long	.LVUS15
	.byte	0
	.uleb128 0x30
	.long	0x1202
	.long	.LBI64
	.byte	.LVU232
	.long	.LBB64
	.long	.LBE64
	.byte	0x3
	.word	0x102
	.byte	0x7
	.long	0xfbb
	.uleb128 0x23
	.long	0x1210
	.long	.LLST16
	.long	.LVUS16
	.byte	0
	.uleb128 0x32
	.long	.LVL24
	.long	0x1091
	.uleb128 0x37
	.long	.LVL27
	.long	0x1502
	.long	0xfee
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_MIDI_Interface
	.uleb128 0x2a
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	utx_buf
	.byte	0
	.uleb128 0x37
	.long	.LVL28
	.long	0x1510
	.long	0x100a
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_MIDI_Interface
	.byte	0
	.uleb128 0x37
	.long	.LVL29
	.long	0x151e
	.long	0x1031
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_MIDI_Interface
	.uleb128 0x2a
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0x32
	.long	.LVL34
	.long	0x14e6
	.uleb128 0x34
	.long	.LVL36
	.long	0x1135
	.uleb128 0x2a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF112
	.byte	0x3
	.byte	0xdd
	.byte	0x5
	.byte	0x1
	.long	0x54
	.long	.LFB93
	.long	.LFE93
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1091
	.uleb128 0x32
	.long	.LVL87
	.long	0x943
	.uleb128 0x32
	.long	.LVL88
	.long	0xedb
	.uleb128 0x32
	.long	.LVL89
	.long	0x9de
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF113
	.byte	0x3
	.byte	0x8d
	.byte	0x7
	.byte	0x1
	.long	0x5c1
	.long	.LFB92
	.long	.LFE92
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1125
	.uleb128 0x3c
	.long	.LASF114
	.byte	0x3
	.byte	0x8d
	.byte	0x24
	.long	0x5c1
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x39
	.string	"PC"
	.byte	0x3
	.byte	0x8e
	.byte	0x10
	.long	0x5c1
	.byte	0x5
	.byte	0x3
	.long	PC.3232
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x3
	.byte	0x8f
	.byte	0x10
	.long	0x5c1
	.byte	0x5
	.byte	0x3
	.long	SysEx.3233
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x3
	.byte	0x90
	.byte	0x10
	.long	0x5c1
	.byte	0x5
	.byte	0x3
	.long	sysExCnt.3234
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x3
	.byte	0x91
	.byte	0x10
	.long	0x1125
	.byte	0x5
	.byte	0x3
	.long	stateTransTable.3235
	.uleb128 0x21
	.long	.Ldebug_ranges0+0
	.uleb128 0x3d
	.string	"tt"
	.byte	0x3
	.byte	0xcf
	.byte	0xb
	.long	0x5c1
	.long	.LLST11
	.long	.LVUS11
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x5c1
	.long	0x1135
	.uleb128 0x19
	.long	0x67
	.byte	0xf
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF118
	.byte	0x3
	.byte	0x71
	.byte	0x6
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.long	.LLST5
	.byte	0x1
	.long	0x119f
	.uleb128 0x3c
	.long	.LASF119
	.byte	0x3
	.byte	0x71
	.byte	0x21
	.long	0x119f
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x3e
	.string	"len"
	.byte	0x3
	.byte	0x71
	.byte	0x2d
	.long	0x5c1
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x3d
	.string	"cin"
	.byte	0x3
	.byte	0x72
	.byte	0x9
	.long	0x5c1
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x3d
	.string	"i"
	.byte	0x3
	.byte	0x73
	.byte	0x9
	.long	0x5c1
	.long	.LLST9
	.long	.LVUS9
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x5c1
	.uleb128 0x3f
	.long	.LASF120
	.byte	0x6
	.byte	0x8c
	.byte	0x17
	.byte	0x1
	.byte	0x3
	.long	0x11c0
	.uleb128 0x40
	.long	.LASF122
	.byte	0x6
	.byte	0x8c
	.byte	0x30
	.long	0x27a
	.byte	0
	.uleb128 0x3f
	.long	.LASF121
	.byte	0x6
	.byte	0x63
	.byte	0x17
	.byte	0x1
	.byte	0x3
	.long	0x11e7
	.uleb128 0x40
	.long	.LASF123
	.byte	0x6
	.byte	0x63
	.byte	0x32
	.long	0x81
	.uleb128 0x40
	.long	.LASF124
	.byte	0x6
	.byte	0x64
	.byte	0x2e
	.long	0x15b
	.byte	0
	.uleb128 0x3f
	.long	.LASF125
	.byte	0x4
	.byte	0x4e
	.byte	0x17
	.byte	0x1
	.byte	0x3
	.long	0x1202
	.uleb128 0x40
	.long	.LASF126
	.byte	0x4
	.byte	0x4e
	.byte	0x36
	.long	0x3c
	.byte	0
	.uleb128 0x3f
	.long	.LASF127
	.byte	0x4
	.byte	0x49
	.byte	0x17
	.byte	0x1
	.byte	0x3
	.long	0x121d
	.uleb128 0x40
	.long	.LASF126
	.byte	0x4
	.byte	0x49
	.byte	0x35
	.long	0x3c
	.byte	0
	.uleb128 0x41
	.long	.LASF158
	.byte	0x4
	.byte	0x43
	.byte	0x17
	.byte	0x1
	.byte	0x3
	.uleb128 0x42
	.long	.LASF159
	.byte	0x1
	.byte	0xb6
	.byte	0x21
	.byte	0x1
	.long	0x30
	.long	.LFB78
	.long	.LFE78
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x12d8
	.uleb128 0x3c
	.long	.LASF75
	.byte	0x1
	.byte	0xb6
	.byte	0x45
	.long	0x12de
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x43
	.long	.LASF128
	.byte	0x1
	.byte	0xb8
	.byte	0x14
	.long	0x30
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x44
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x43
	.long	.LASF129
	.byte	0x1
	.byte	0xbd
	.byte	0x4
	.long	0x30
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x43
	.long	.LASF130
	.byte	0x1
	.byte	0xbd
	.byte	0x4
	.long	0x30
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x27
	.long	0x143e
	.long	.LBI42
	.byte	.LVU10
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.byte	0xbd
	.byte	0x4
	.uleb128 0x28
	.long	0x141d
	.long	.LBI44
	.byte	.LVU19
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.byte	0xbd
	.byte	0x4
	.uleb128 0x23
	.long	0x142b
	.long	.LLST4
	.long	.LVUS4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x5b5
	.uleb128 0x4
	.long	0x12d8
	.uleb128 0x3f
	.long	.LASF131
	.byte	0x1
	.byte	0x9e
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.long	0x1324
	.uleb128 0x40
	.long	.LASF75
	.byte	0x1
	.byte	0x9e
	.byte	0x3a
	.long	0x12de
	.uleb128 0x40
	.long	.LASF128
	.byte	0x1
	.byte	0x9f
	.byte	0x3e
	.long	0x3c
	.uleb128 0x45
	.uleb128 0x46
	.long	.LASF129
	.byte	0x1
	.byte	0xa6
	.byte	0x4
	.long	0x30
	.uleb128 0x46
	.long	.LASF130
	.byte	0x1
	.byte	0xa6
	.byte	0x4
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	.LASF132
	.byte	0x1
	.byte	0x90
	.byte	0x16
	.byte	0x1
	.long	0x14f
	.byte	0x3
	.long	0x1343
	.uleb128 0x40
	.long	.LASF75
	.byte	0x1
	.byte	0x90
	.byte	0x3b
	.long	0x12de
	.byte	0
	.uleb128 0x47
	.long	.LASF133
	.byte	0x1
	.byte	0x7f
	.byte	0x16
	.byte	0x1
	.long	0x14f
	.byte	0x3
	.long	0x1362
	.uleb128 0x40
	.long	.LASF75
	.byte	0x1
	.byte	0x7f
	.byte	0x3a
	.long	0x12de
	.byte	0
	.uleb128 0x47
	.long	.LASF134
	.byte	0x1
	.byte	0x6b
	.byte	0x22
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x13a7
	.uleb128 0x40
	.long	.LASF75
	.byte	0x1
	.byte	0x6b
	.byte	0x48
	.long	0x12de
	.uleb128 0x46
	.long	.LASF76
	.byte	0x1
	.byte	0x6d
	.byte	0x15
	.long	0x30
	.uleb128 0x45
	.uleb128 0x46
	.long	.LASF129
	.byte	0x1
	.byte	0x6f
	.byte	0x4
	.long	0x30
	.uleb128 0x46
	.long	.LASF130
	.byte	0x1
	.byte	0x6f
	.byte	0x4
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	.LASF135
	.byte	0x1
	.byte	0x55
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.long	0x13dc
	.uleb128 0x40
	.long	.LASF75
	.byte	0x1
	.byte	0x55
	.byte	0x3e
	.long	0x12de
	.uleb128 0x45
	.uleb128 0x46
	.long	.LASF129
	.byte	0x1
	.byte	0x57
	.byte	0x4
	.long	0x30
	.uleb128 0x46
	.long	.LASF130
	.byte	0x1
	.byte	0x57
	.byte	0x4
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	.LASF136
	.byte	0x5
	.byte	0xac
	.byte	0x17
	.byte	0x1
	.byte	0x3
	.long	0x13f7
	.uleb128 0x40
	.long	.LASF137
	.byte	0x5
	.byte	0xac
	.byte	0x5c
	.long	0x13fd
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x54b
	.uleb128 0x4
	.long	0x13f7
	.uleb128 0x3f
	.long	.LASF138
	.byte	0x5
	.byte	0xa1
	.byte	0x17
	.byte	0x1
	.byte	0x3
	.long	0x141d
	.uleb128 0x40
	.long	.LASF137
	.byte	0x5
	.byte	0xa1
	.byte	0x4e
	.long	0x13fd
	.byte	0
	.uleb128 0x3f
	.long	.LASF139
	.byte	0x2
	.byte	0x44
	.byte	0x18
	.byte	0x1
	.byte	0x3
	.long	0x1438
	.uleb128 0x48
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.byte	0x33
	.long	0x1438
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x3c
	.uleb128 0x49
	.long	.LASF160
	.byte	0x2
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x4a
	.long	.LASF140
	.byte	0x7
	.word	0x1bf
	.byte	0x6
	.byte	0x1
	.byte	0x3
	.long	0x147e
	.uleb128 0x4b
	.long	0x146e
	.uleb128 0x4c
	.long	.LASF141
	.byte	0x7
	.word	0x1c3
	.byte	0x1a
	.long	0x30
	.byte	0
	.uleb128 0x45
	.uleb128 0x4c
	.long	.LASF141
	.byte	0x7
	.word	0x1d5
	.byte	0x1a
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	0x937
	.long	.LFB97
	.long	.LFE97
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF142
	.long	.LASF142
	.byte	0xf
	.byte	0xa5
	.byte	0x9
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF143
	.long	.LASF143
	.byte	0x5
	.byte	0x71
	.byte	0x9
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF144
	.long	.LASF144
	.byte	0xf
	.byte	0x9e
	.byte	0x9
	.uleb128 0x4f
	.byte	0x1
	.byte	0x1
	.long	.LASF145
	.long	.LASF145
	.byte	0x12
	.word	0x123
	.byte	0x9
	.uleb128 0x4f
	.byte	0x1
	.byte	0x1
	.long	.LASF146
	.long	.LASF146
	.byte	0xf
	.word	0x106
	.byte	0xc
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF147
	.long	.LASF147
	.byte	0xf
	.byte	0xac
	.byte	0x9
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF148
	.long	.LASF148
	.byte	0xb
	.byte	0xb2
	.byte	0x9
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF149
	.long	.LASF149
	.byte	0xf
	.byte	0xe9
	.byte	0xc
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF150
	.long	.LASF150
	.byte	0x5
	.byte	0x7f
	.byte	0xc
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF151
	.long	.LASF151
	.byte	0x5
	.byte	0x8a
	.byte	0xc
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF152
	.long	.LASF152
	.byte	0x5
	.byte	0x97
	.byte	0x9
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS58:
	.uleb128 0
	.uleb128 .LVU628
	.uleb128 .LVU628
	.uleb128 0
.LLST58:
	.long	.LVL113
	.long	.LVL114
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL114
	.long	.LFE104
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LVUS59:
	.uleb128 .LVU626
	.uleb128 .LVU628
	.uleb128 .LVU628
	.uleb128 0
.LLST59:
	.long	.LVL113
	.long	.LVL114
	.word	0x7
	.byte	0x88
	.sleb128 13
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	.LVL114
	.long	.LFE104
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LFB103
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI20
	.long	.LFE103
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LVUS53:
	.uleb128 .LVU592
	.uleb128 .LVU602
.LLST53:
	.long	.LVL105
	.long	.LVL107
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS54:
	.uleb128 .LVU596
	.uleb128 .LVU602
.LLST54:
	.long	.LVL106
	.long	.LVL107
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS55:
	.uleb128 .LVU606
	.uleb128 .LVU619
.LLST55:
	.long	.LVL108
	.long	.LVL111
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LVUS56:
	.uleb128 .LVU609
	.uleb128 .LVU614
	.uleb128 .LVU614
	.uleb128 .LVU619
.LLST56:
	.long	.LVL109
	.long	.LVL110
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL110
	.long	.LVL111
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS57:
	.uleb128 .LVU616
	.uleb128 .LVU619
.LLST57:
	.long	.LVL110
	.long	.LVL111
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2012
	.sleb128 0
	.long	0
	.long	0
.LLST49:
	.long	.LFB102
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI16
	.long	.LFE102
	.word	0x2
	.byte	0x8c
	.sleb128 16
	.long	0
	.long	0
.LVUS50:
	.uleb128 0
	.uleb128 .LVU541
	.uleb128 .LVU541
	.uleb128 .LVU577
	.uleb128 .LVU577
	.uleb128 .LVU579
	.uleb128 .LVU579
	.uleb128 0
.LLST50:
	.long	.LVL94
	.long	.LVL96
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL96
	.long	.LVL100
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL100
	.long	.LVL102
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL102
	.long	.LFE102
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LVUS51:
	.uleb128 .LVU539
	.uleb128 .LVU545
	.uleb128 .LVU545
	.uleb128 .LVU578
	.uleb128 .LVU579
	.uleb128 0
.LLST51:
	.long	.LVL95
	.long	.LVL97
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL97
	.long	.LVL101
	.word	0x1
	.byte	0x5f
	.long	.LVL102
	.long	.LFE102
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LVUS48:
	.uleb128 .LVU527
	.uleb128 .LVU529
.LLST48:
	.long	.LVL90
	.long	.LVL91
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LVUS46:
	.uleb128 .LVU472
	.uleb128 .LVU484
.LLST46:
	.long	.LVL84
	.long	.LVL85
	.word	0x4
	.byte	0xa
	.word	0x2580
	.byte	0x9f
	.long	0
	.long	0
.LVUS47:
	.uleb128 .LVU472
	.uleb128 .LVU484
.LLST47:
	.long	.LVL84
	.long	.LVL85
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS23:
	.uleb128 .LVU364
	.uleb128 .LVU450
	.uleb128 .LVU452
	.uleb128 0
.LLST23:
	.long	.LVL63
	.long	.LVL80
	.word	0x1
	.byte	0x6c
	.long	.LVL81
	.long	.LFE95
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LVUS28:
	.uleb128 .LVU317
	.uleb128 .LVU326
.LLST28:
	.long	.LVL53
	.long	.LVL55
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LVUS29:
	.uleb128 .LVU320
	.uleb128 .LVU326
.LLST29:
	.long	.LVL54
	.long	.LVL55
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS30:
	.uleb128 .LVU330
	.uleb128 .LVU343
.LLST30:
	.long	.LVL56
	.long	.LVL59
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LVUS31:
	.uleb128 .LVU333
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 .LVU343
.LLST31:
	.long	.LVL57
	.long	.LVL58
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS32:
	.uleb128 .LVU340
	.uleb128 .LVU343
.LLST32:
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2667
	.sleb128 0
	.long	0
	.long	0
.LVUS24:
	.uleb128 .LVU305
	.uleb128 .LVU313
.LLST24:
	.long	.LVL51
	.long	.LVL52
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS25:
	.uleb128 .LVU298
	.uleb128 .LVU311
.LLST25:
	.long	.LVL49
	.long	.LVL52
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LVUS26:
	.uleb128 .LVU301
	.uleb128 .LVU306
	.uleb128 .LVU306
	.uleb128 0
.LLST26:
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL51
	.long	.LFE95
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS27:
	.uleb128 .LVU308
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 .LVU343
	.uleb128 .LVU358
	.uleb128 .LVU420
	.uleb128 .LVU420
	.uleb128 .LVU450
	.uleb128 .LVU450
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 0
.LLST27:
	.long	.LVL51
	.long	.LVL58
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2852
	.sleb128 0
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2667
	.sleb128 0
	.long	.LVL62
	.long	.LVL73
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2995
	.sleb128 0
	.long	.LVL73
	.long	.LVL80
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3278
	.sleb128 0
	.long	.LVL80
	.long	.LVL81
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2852
	.sleb128 0
	.long	.LVL81
	.long	.LFE95
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2995
	.sleb128 0
	.long	0
	.long	0
.LVUS33:
	.uleb128 .LVU356
	.uleb128 .LVU364
.LLST33:
	.long	.LVL62
	.long	.LVL63
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LVUS34:
	.uleb128 .LVU349
	.uleb128 .LVU362
.LLST34:
	.long	.LVL60
	.long	.LVL63
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS35:
	.uleb128 .LVU352
	.uleb128 .LVU357
	.uleb128 .LVU357
	.uleb128 .LVU450
	.uleb128 .LVU452
	.uleb128 0
.LLST35:
	.long	.LVL61
	.long	.LVL62
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL62
	.long	.LVL80
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL81
	.long	.LFE95
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS36:
	.uleb128 .LVU359
	.uleb128 .LVU420
	.uleb128 .LVU420
	.uleb128 .LVU450
	.uleb128 .LVU452
	.uleb128 0
.LLST36:
	.long	.LVL62
	.long	.LVL73
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2995
	.sleb128 0
	.long	.LVL73
	.long	.LVL80
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3278
	.sleb128 0
	.long	.LVL81
	.long	.LFE95
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2995
	.sleb128 0
	.long	0
	.long	0
.LVUS37:
	.uleb128 .LVU373
	.uleb128 .LVU376
.LLST37:
	.long	.LVL64
	.long	.LVL65
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LVUS38:
	.uleb128 .LVU388
	.uleb128 .LVU391
.LLST38:
	.long	.LVL67
	.long	.LVL68
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LVUS39:
	.uleb128 .LVU399
	.uleb128 .LVU402
.LLST39:
	.long	.LVL69
	.long	.LVL70
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LVUS40:
	.uleb128 .LVU418
	.uleb128 .LVU426
.LLST40:
	.long	.LVL73
	.long	.LVL74
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS41:
	.uleb128 .LVU411
	.uleb128 .LVU424
.LLST41:
	.long	.LVL71
	.long	.LVL74
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LVUS42:
	.uleb128 .LVU414
	.uleb128 .LVU419
	.uleb128 .LVU419
	.uleb128 .LVU450
.LLST42:
	.long	.LVL72
	.long	.LVL73
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL73
	.long	.LVL80
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS43:
	.uleb128 .LVU421
	.uleb128 .LVU450
.LLST43:
	.long	.LVL73
	.long	.LVL80
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3278
	.sleb128 0
	.long	0
	.long	0
.LVUS44:
	.uleb128 .LVU430
	.uleb128 .LVU438
.LLST44:
	.long	.LVL75
	.long	.LVL76
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS45:
	.uleb128 .LVU440
	.uleb128 .LVU443
.LLST45:
	.long	.LVL76
	.long	.LVL77
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LVUS17:
	.uleb128 .LVU249
	.uleb128 .LVU264
.LLST17:
	.long	.LVL40
	.long	.LVL43
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LVUS18:
	.uleb128 .LVU252
	.uleb128 .LVU259
	.uleb128 .LVU259
	.uleb128 0
.LLST18:
	.long	.LVL41
	.long	.LVL42
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL42
	.long	.LFE95
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS19:
	.uleb128 .LVU261
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 .LVU288
	.uleb128 .LVU307
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 .LVU343
	.uleb128 .LVU358
	.uleb128 .LVU420
	.uleb128 .LVU420
	.uleb128 .LVU450
	.uleb128 .LVU450
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 0
.LLST19:
	.long	.LVL42
	.long	.LVL46
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3598
	.sleb128 0
	.long	.LVL46
	.long	.LVL48
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3718
	.sleb128 0
	.long	.LVL51
	.long	.LVL58
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2852
	.sleb128 0
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2667
	.sleb128 0
	.long	.LVL62
	.long	.LVL73
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2995
	.sleb128 0
	.long	.LVL73
	.long	.LVL80
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3278
	.sleb128 0
	.long	.LVL80
	.long	.LVL81
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2852
	.sleb128 0
	.long	.LVL81
	.long	.LFE95
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2995
	.sleb128 0
	.long	0
	.long	0
.LVUS20:
	.uleb128 .LVU269
	.uleb128 .LVU284
.LLST20:
	.long	.LVL44
	.long	.LVL47
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LVUS21:
	.uleb128 .LVU272
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 0
.LLST21:
	.long	.LVL45
	.long	.LVL46
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL46
	.long	.LFE95
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS22:
	.uleb128 .LVU281
	.uleb128 .LVU288
	.uleb128 .LVU307
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 .LVU343
	.uleb128 .LVU358
	.uleb128 .LVU420
	.uleb128 .LVU420
	.uleb128 .LVU450
	.uleb128 .LVU450
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 0
.LLST22:
	.long	.LVL46
	.long	.LVL48
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3718
	.sleb128 0
	.long	.LVL51
	.long	.LVL58
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2852
	.sleb128 0
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2667
	.sleb128 0
	.long	.LVL62
	.long	.LVL73
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2995
	.sleb128 0
	.long	.LVL73
	.long	.LVL80
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3278
	.sleb128 0
	.long	.LVL80
	.long	.LVL81
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2852
	.sleb128 0
	.long	.LVL81
	.long	.LFE95
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2995
	.sleb128 0
	.long	0
	.long	0
.LLST12:
	.long	.LFB94
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI5
	.long	.LFE94
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	0
	.long	0
.LVUS13:
	.uleb128 .LVU167
	.uleb128 .LVU170
.LLST13:
	.long	.LVL25
	.long	.LVL26
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LVUS14:
	.uleb128 .LVU204
	.uleb128 .LVU207
.LLST14:
	.long	.LVL30
	.long	.LVL31
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LVUS15:
	.uleb128 .LVU215
	.uleb128 .LVU218
.LLST15:
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LVUS16:
	.uleb128 .LVU232
	.uleb128 .LVU235
.LLST16:
	.long	.LVL36
	.long	.LVL37
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 0
.LLST10:
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x68
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x69
	.long	.LVL21
	.long	.LVL22
	.word	0x5
	.byte	0x3
	.long	utx_buf+1
	.long	.LVL22
	.long	.LFE92
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LVUS11:
	.uleb128 .LVU144
	.uleb128 0
.LLST11:
	.long	.LVL23
	.long	.LFE92
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST5:
	.long	.LFB91
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LFE91
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST6:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LFE91
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST7:
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x66
	.long	.LVL8
	.long	.LFE91
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LVUS8:
	.uleb128 .LVU33
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 0
.LLST8:
	.long	.LVL9
	.long	.LVL10
	.word	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL10
	.long	.LVL13
	.word	0x1
	.byte	0x64
	.long	.LVL13
	.long	.LVL14
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x7
	.byte	0x8e
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL15
	.long	.LVL18
	.word	0x1
	.byte	0x64
	.long	.LVL18
	.long	.LFE91
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LVUS9:
	.uleb128 .LVU41
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU53
	.uleb128 .LVU57
	.uleb128 .LVU62
	.uleb128 .LVU64
	.uleb128 .LVU66
.LLST9:
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x69
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x69
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LFE78
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LVUS1:
	.uleb128 .LVU5
	.uleb128 0
.LLST1:
	.long	.LVL1
	.long	.LFE78
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS2:
	.uleb128 .LVU10
	.uleb128 .LVU23
.LLST2:
	.long	.LVL2
	.long	.LVL5
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LVUS3:
	.uleb128 .LVU13
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU26
.LLST3:
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL4
	.long	.LVL6
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS4:
	.uleb128 .LVU20
	.uleb128 .LVU26
.LLST4:
	.long	.LVL4
	.long	.LVL6
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4726
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	.LFB101
	.long	.LFE101-.LFB101
	.long	.LFB102
	.long	.LFE102-.LFB102
	.long	.LFB103
	.long	.LFE103-.LFB103
	.long	.LFB104
	.long	.LFE104-.LFB104
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB46
	.long	.LBE46
	.long	.LBB47
	.long	.LBE47
	.long	0
	.long	0
	.long	.LBB57
	.long	.LBE57
	.long	.LBB66
	.long	.LBE66
	.long	.LBB67
	.long	.LBE67
	.long	0
	.long	0
	.long	.LBB126
	.long	.LBE126
	.long	.LBB132
	.long	.LBE132
	.long	0
	.long	0
	.long	.LBB133
	.long	.LBE133
	.long	.LBB139
	.long	.LBE139
	.long	0
	.long	0
	.long	.LBB140
	.long	.LBE140
	.long	.LBB193
	.long	.LBE193
	.long	.LBB194
	.long	.LBE194
	.long	.LBB195
	.long	.LBE195
	.long	.LBB196
	.long	.LBE196
	.long	0
	.long	0
	.long	.LBB141
	.long	.LBE141
	.long	.LBB152
	.long	.LBE152
	.long	.LBB153
	.long	.LBE153
	.long	0
	.long	0
	.long	.LBB142
	.long	.LBE142
	.long	.LBB151
	.long	.LBE151
	.long	0
	.long	0
	.long	.LBB154
	.long	.LBE154
	.long	.LBB192
	.long	.LBE192
	.long	0
	.long	0
	.long	.LBB155
	.long	.LBE155
	.long	.LBB164
	.long	.LBE164
	.long	.LBB165
	.long	.LBE165
	.long	0
	.long	0
	.long	.LBB179
	.long	.LBE179
	.long	.LBB187
	.long	.LBE187
	.long	0
	.long	0
	.long	.LBB203
	.long	.LBE203
	.long	.LBB205
	.long	.LBE205
	.long	0
	.long	0
	.long	.LBB219
	.long	.LBE219
	.long	.LBB229
	.long	.LBE229
	.long	0
	.long	0
	.long	.LBB220
	.long	.LBE220
	.long	.LBB228
	.long	.LBE228
	.long	0
	.long	0
	.long	.LFB78
	.long	.LFE78
	.long	.LFB91
	.long	.LFE91
	.long	.LFB92
	.long	.LFE92
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB96
	.long	.LFE96
	.long	.LFB93
	.long	.LFE93
	.long	.LFB97
	.long	.LFE97
	.long	.LFB99
	.long	.LFE99
	.long	.LFB101
	.long	.LFE101
	.long	.LFB102
	.long	.LFE102
	.long	.LFB103
	.long	.LFE103
	.long	.LFB104
	.long	.LFE104
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"wIndex"
.LASF123:
	.string	"BaudRate"
.LASF147:
	.string	"CDC_Device_USBTask"
.LASF93:
	.string	"VirtualSerial_CDC_Interface"
.LASF63:
	.string	"LineEncoding"
.LASF110:
	.string	"processMIDI"
.LASF89:
	.string	"utx_buf"
.LASF103:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF39:
	.string	"CDC_PARITY_Space"
.LASF41:
	.string	"flags"
.LASF15:
	.string	"DEVICE_STATE_Configured"
.LASF114:
	.string	"RxByte"
.LASF81:
	.string	"USBtoUSART_Buffer"
.LASF5:
	.string	"unsigned int"
.LASF58:
	.string	"BaudRateBPS"
.LASF17:
	.string	"bmRequestType"
.LASF115:
	.string	"SysEx"
.LASF158:
	.string	"LEDs_Init"
.LASF88:
	.string	"rx_buf"
.LASF40:
	.string	"unget"
.LASF135:
	.string	"RingBuffer_InitBuffer"
.LASF61:
	.string	"DataBits"
.LASF65:
	.string	"State"
.LASF49:
	.string	"DataINEndpointDoubleBank"
.LASF100:
	.string	"CDCInterfaceInfo"
.LASF47:
	.string	"DataINEndpointNumber"
.LASF154:
	.string	"dualMoco.c"
.LASF19:
	.string	"wValue"
.LASF14:
	.string	"DEVICE_STATE_Addressed"
.LASF128:
	.string	"Data"
.LASF7:
	.string	"uint32_t"
.LASF52:
	.string	"DataOUTEndpointDoubleBank"
.LASF109:
	.string	"BufferCount"
.LASF127:
	.string	"LEDs_TurnOnLEDs"
.LASF102:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF74:
	.string	"USB_ClassInfo_MIDI_Device_t"
.LASF50:
	.string	"DataOUTEndpointNumber"
.LASF54:
	.string	"NotificationEndpointSize"
.LASF55:
	.string	"NotificationEndpointDoubleBank"
.LASF3:
	.string	"int16_t"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"DEVICE_STATE_Default"
.LASF143:
	.string	"MIDI_Device_ConfigureEndpoints"
.LASF157:
	.string	"EVENT_USB_Device_Connect"
.LASF30:
	.string	"CDC_LineEncodingFormats_t"
.LASF91:
	.string	"irptr"
.LASF64:
	.string	"Config"
.LASF53:
	.string	"NotificationEndpointNumber"
.LASF150:
	.string	"MIDI_Device_SendEventPacket"
.LASF111:
	.string	"ReceivedMIDIEvent"
.LASF57:
	.string	"DeviceToHost"
.LASF146:
	.string	"CDC_Device_ReceiveByte"
.LASF151:
	.string	"MIDI_Device_Flush"
.LASF121:
	.string	"Serial_Init"
.LASF23:
	.string	"USB_ConfigurationNumber"
.LASF79:
	.string	"mocoMode"
.LASF25:
	.string	"_Bool"
.LASF24:
	.string	"USB_RemoteWakeupEnabled"
.LASF86:
	.string	"PulseMSRemaining"
.LASF124:
	.string	"DoubleSpeed"
.LASF132:
	.string	"RingBuffer_IsEmpty"
.LASF116:
	.string	"sysExCnt"
.LASF76:
	.string	"Count"
.LASF92:
	.string	"tx_buf"
.LASF51:
	.string	"DataOUTEndpointSize"
.LASF101:
	.string	"ConfigMask"
.LASF29:
	.string	"USB_Device_States_t"
.LASF131:
	.string	"RingBuffer_Insert"
.LASF44:
	.string	"char"
.LASF155:
	.string	"/Users/ezequielabregu/code/personal/pump_my_mocolufa/firmware"
.LASF138:
	.string	"MIDI_Device_USBTask"
.LASF119:
	.string	"data"
.LASF2:
	.string	"uint8_t"
.LASF27:
	.string	"USB_IsInitialized"
.LASF82:
	.string	"USARTtoUSB_Buffer"
.LASF122:
	.string	"DataByte"
.LASF113:
	.string	"parseSerialMidiMessage"
.LASF84:
	.string	"RxLEDPulse"
.LASF145:
	.string	"USB_Init"
.LASF56:
	.string	"HostToDevice"
.LASF148:
	.string	"USB_USBTask"
.LASF9:
	.string	"long long int"
.LASF106:
	.string	"EVENT_USB_Device_Disconnect"
.LASF95:
	.string	"CurrentDTRState"
.LASF137:
	.string	"MIDIInterfaceInfo"
.LASF139:
	.string	"__iRestore"
.LASF134:
	.string	"RingBuffer_GetCount"
.LASF126:
	.string	"LEDMask"
.LASF153:
	.string	"GNU C99 9.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr35 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fno-inline-small-functions -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF11:
	.string	"DEVICE_STATE_Unattached"
.LASF125:
	.string	"LEDs_TurnOffLEDs"
.LASF104:
	.string	"ConfigSuccess"
.LASF156:
	.string	"__file"
.LASF42:
	.string	"size"
.LASF94:
	.string	"Keyboard_MIDI_Interface"
.LASF46:
	.string	"ControlInterfaceNumber"
.LASF141:
	.string	"temp_reg"
.LASF78:
	.string	"uchar"
.LASF136:
	.string	"MIDI_Device_ProcessControlRequest"
.LASF31:
	.string	"CDC_LINEENCODING_OneStopBit"
.LASF36:
	.string	"CDC_PARITY_Odd"
.LASF85:
	.string	"PingPongLEDPulse"
.LASF129:
	.string	"sreg_save"
.LASF4:
	.string	"uint16_t"
.LASF152:
	.string	"MIDI_Device_ReceiveEventPacket"
.LASF77:
	.string	"RingBuff_t"
.LASF69:
	.string	"Data1"
.LASF70:
	.string	"Data2"
.LASF71:
	.string	"Data3"
.LASF133:
	.string	"RingBuffer_IsFull"
.LASF108:
	.string	"processSerial"
.LASF45:
	.string	"__iob"
.LASF75:
	.string	"Buffer"
.LASF6:
	.string	"long int"
.LASF26:
	.string	"USB_CurrentlySelfPowered"
.LASF48:
	.string	"DataINEndpointSize"
.LASF142:
	.string	"CDC_Device_ProcessControlRequest"
.LASF12:
	.string	"DEVICE_STATE_Powered"
.LASF21:
	.string	"wLength"
.LASF67:
	.string	"Command"
.LASF159:
	.string	"RingBuffer_Remove"
.LASF83:
	.string	"TxLEDPulse"
.LASF18:
	.string	"bRequest"
.LASF35:
	.string	"CDC_PARITY_None"
.LASF37:
	.string	"CDC_PARITY_Even"
.LASF120:
	.string	"Serial_TxByte"
.LASF107:
	.string	"SetupHardware"
.LASF118:
	.string	"parseUSBMidiMessage"
.LASF8:
	.string	"long unsigned int"
.LASF99:
	.string	"EVENT_CDC_Device_LineEncodingChanged"
.LASF105:
	.string	"EVENT_USB_Device_ControlRequest"
.LASF32:
	.string	"CDC_LINEENCODING_OneAndAHalfStopBits"
.LASF28:
	.string	"USB_ControlRequest"
.LASF1:
	.string	"unsigned char"
.LASF149:
	.string	"CDC_Device_SendByte"
.LASF16:
	.string	"DEVICE_STATE_Suspended"
.LASF68:
	.string	"CableNumber"
.LASF90:
	.string	"uwptr"
.LASF72:
	.string	"MIDI_EventPacket_t"
.LASF80:
	.string	"highSpeed"
.LASF66:
	.string	"USB_ClassInfo_CDC_Device_t"
.LASF117:
	.string	"stateTransTable"
.LASF38:
	.string	"CDC_PARITY_Mark"
.LASF98:
	.string	"ReceivedByte"
.LASF0:
	.string	"signed char"
.LASF33:
	.string	"CDC_LINEENCODING_TwoStopBits"
.LASF112:
	.string	"main"
.LASF34:
	.string	"CDC_LineEncodingParity_t"
.LASF22:
	.string	"USB_Request_Header_t"
.LASF160:
	.string	"__iCliRetVal"
.LASF130:
	.string	"__ToDo"
.LASF43:
	.string	"udata"
.LASF60:
	.string	"ParityType"
.LASF144:
	.string	"CDC_Device_ConfigureEndpoints"
.LASF140:
	.string	"wdt_disable"
.LASF73:
	.string	"StreamingInterfaceNumber"
.LASF62:
	.string	"ControlLineStates"
.LASF97:
	.string	"__vector_23"
.LASF96:
	.string	"EVENT_CDC_Device_ControLineStateChanged"
.LASF59:
	.string	"CharFormat"
.LASF87:
	.string	"utxrdy"
	.ident	"GCC: (Homebrew AVR GCC 9.4.0_1) 9.4.0"
.global __do_copy_data
.global __do_clear_bss
