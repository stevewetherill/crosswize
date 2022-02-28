
draw_backdrop:
		ld	(save_stack), sp ; store stack away somewhere
		ld	iy, 0
		ld	c, 2
		ld	de, 401Fh	; last byte of first row

loc_0_8635:
		ld	hl, 0

loc_0_8638:

		nop			; SMC -	this is	dec e or ???
		ld	b, 8		; 8 scan lines

loc_0_863B:
		ld	sp, hl
		ld	hl, 10		; 5 reg	pairs, 10 bytes
		add	hl, sp
		exx
		pop	af			; grab the 5 source reg	pairs
		pop	bc
		pop	de
		pop	iy
		pop	ix
		exx
		ex	de, hl
		ld	sp, hl
		ex	de, hl
		exx
		ld	hl, 0		; blank blocks

loc_0_8650:
		jp	0			; self modified jump into push buffer


push_buffer_0:
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0

loc_0_866F:
		exx
		inc	d		; step down a line
		djnz	loc_0_863B

		ld	de, 403Fh
		dec	c
		jp	nz, loc_0_8638

		ld	c, 2
		ld	de, 405Fh

loc_0_867F:
		ld	hl, 0

loc_0_8682:
		nop			; SMC
		ld	b, 8

loc_0_8685:
		ld	sp, hl
		ld	hl, 10
		add	hl, sp
		exx
		pop	af
		pop	bc
		pop	de
		pop	iy
		pop	ix
		exx
		ex	de, hl
		ld	sp, hl
		ex	de, hl
		exx
		ld	hl, 0

loc_0_869A:
		jp	0

push_buffer_1
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0

loc_0_86B9:
		exx
		inc	d
		djnz	loc_0_8685

		ld	de, 407Fh
		dec	c
		jp	nz, loc_0_8682

		ld	c, 2
		ld	de, 409Fh

loc_0_86C9:
		ld	hl, 0

loc_0_86CC:
		nop			; SMC
		ld	b, 8

loc_0_86CF:
		ld	sp, hl
		ld	hl, 10
		add	hl, sp
		exx
		pop	af
		pop	bc
		pop	de
		pop	iy
		pop	ix
		exx
		ex	de, hl
		ld	sp, hl
		ex	de, hl
		exx
		ld	hl, 0

loc_0_86E4:
		jp	0

push_buffer_2:
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0

		exx
		inc	d
		djnz	loc_0_86CF

		ld	de, 40BFh
		dec	c
		jp	nz, loc_0_86CC

		ld	c, 2
		ld	de, 40DFh

loc_0_8713:
		ld	hl, 0

loc_0_8716:
		nop			; SMC
		ld	b, 8

loc_0_8719:
		ld	sp, hl
		ld	hl, 10
		add	hl, sp
		exx
		pop	af
		pop	bc
		pop	de
		pop	iy
		pop	ix
		exx
		ex	de, hl
		ld	sp, hl
		ex	de, hl
		exx
		ld	hl, 0

loc_0_872E:
		jp	0

push_buffer_3:
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0

		exx
		inc	d
		djnz	loc_0_8719

		ld	de, 40FFh
		dec	c
		jp	nz, loc_0_8716

		ld	c, 2
		ld	de, 481Fh

loc_0_875D:
		ld	hl, 0

loc_0_8760:
		nop			; SMC
		ld	b, 8

loc_0_8763:
		ld	sp, hl
		ld	hl, 0Ah
		add	hl, sp
		exx
		pop	af
		pop	bc
		pop	de
		pop	iy
		pop	ix
		exx
		ex	de, hl
		ld	sp, hl
		ex	de, hl
		exx
		ld	hl, 0

loc_0_8778:
		jp	0

push_buffer_4:
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0

		exx
		inc	d
		djnz	loc_0_8763

		ld	de, 483Fh
		dec	c
		jp	nz, loc_0_8760

		ld	c, 2
		ld	de, 485Fh

loc_0_87A7:
		ld	hl, 0

loc_0_87AA:

		nop			; SMC
		ld	b, 8

loc_0_87AD:
		ld	sp, hl
		ld	hl, 0Ah
		add	hl, sp
		exx
		pop	af
		pop	bc
		pop	de
		pop	iy
		pop	ix
		exx
		ex	de, hl
		ld	sp, hl
		ex	de, hl
		exx
		ld	hl, 0

loc_0_87C2:
		jp	0

push_buffer_6:
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0

		exx
		inc	d
		djnz	loc_0_87AD

		ld	de, 487Fh
		dec	c
		jp	nz, loc_0_87AA

		ld	c, 2
		ld	de, 489Fh

loc_0_87F1:
		ld	hl, 0

loc_0_87F4:
		nop			; SMC
		ld	b, 8

loc_0_87F7:
		ld	sp, hl
		ld	hl, 0Ah
		add	hl, sp
		exx
		pop	af
		pop	bc
		pop	de
		pop	iy
		pop	ix
		exx
		ex	de, hl
		ld	sp, hl
		ex	de, hl
		exx
		ld	hl, 0

loc_0_880C:
		jp	0

push_buffer_7:
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0

loc_0_882B:
		exx
		inc	d
		djnz	loc_0_87F7

		ld	de, 48BFh
		dec	c
		jp	nz, loc_0_87F4

		ld	c, 2
		ld	de, 48DFh

loc_0_883B:
		ld	hl, 0

loc_0_883E:
		nop			; SMC
		ld	b, 8

loc_0_8841:
		ld	sp, hl
		ld	hl, 0Ah
		add	hl, sp
		exx
		pop	af
		pop	bc
		pop	de
		pop	iy
		pop	ix
		exx
		ex	de, hl
		ld	sp, hl
		ex	de, hl
		exx
		ld	hl, 0

loc_0_8856:
		jp	0


push_buffer_8:
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0
		.db 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0

		exx
		inc	d
		djnz	loc_0_8841

		ld	de, 48FFh
		dec	c
		jp	nz, loc_0_883E

		ld	sp, (save_stack) ; restore stack
		ret
