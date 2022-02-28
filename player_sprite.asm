player_sprite:
		ld	(save_stack), sp
		ld	sp, hl		; de ->	source data
		ex	de, hl		; hl ->	screen
		ld	bc, 720h	; preload for screen step
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_97BD

		ex	af, af'
		inc	a		; a = count of collisions detected
		ex	af, af'

loc_0_97BD:
		or	e
		ld	(hl), a		; line 0, byte 0
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_97CA

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_97CA:
		or	e
		ld	(hl), a		; line 0, byte 1
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_97D7

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_97D7:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_97E4

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_97E4:
		or	e
		ld	(hl), a		; line 0, byte 2
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_97F6

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_97F6

		ld	a, h
		sub	8
		ld	h, a

loc_0_97F6:
					; player_sprite+45j
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a		; line 1, byte 3
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a		; line 1, byte 2
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a		; line 1, byte 1
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a		; line 1, byte 0
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_981D

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_981D

		ld	a, h
		sub	8
		ld	h, a

loc_0_981D:
					; player_sprite+6Cj
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9827

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9827:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9834

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9834:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9841

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9841:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_984E

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_984E:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9860

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9860

		ld	a, h
		sub	8
		ld	h, a

loc_0_9860:
					; player_sprite+AFj
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9887

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9887

		ld	a, h
		sub	8
		ld	h, a

loc_0_9887:
					; player_sprite+D6j
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9891

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9891:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_989E

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_989E:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_98AB

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_98AB:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_98B8

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_98B8:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_98CA

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_98CA

		ld	a, h
		sub	8
		ld	h, a

loc_0_98CA:
					; player_sprite+119j
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_98F1

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_98F1

		ld	a, h
		sub	8
		ld	h, a

loc_0_98F1:
					; player_sprite+140j
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_98FB

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_98FB:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9908

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9908:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9915

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9915:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9922

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9922:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9934

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9934

		ld	a, h
		sub	8
		ld	h, a

loc_0_9934:
					; player_sprite+183j
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_995B

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_995B

		ld	a, h
		sub	8
		ld	h, a

loc_0_995B:
					; player_sprite+1A4j ...
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9965

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9965:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9972

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9972:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_997F

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_997F:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_998C

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_998C:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_999E

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_999E

		ld	a, h
		sub	8
		ld	h, a

loc_0_999E:
					; player_sprite+1EDj
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_99C5

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_99C5

		ld	a, h
		sub	8
		ld	h, a

loc_0_99C5:
					; player_sprite+214j
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_99CF

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_99CF:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_99DC

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_99DC:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_99E9

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_99E9:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_99F6

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_99F6:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9A08

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9A08

		ld	a, h
		sub	8
		ld	h, a

loc_0_9A08:
					; player_sprite+257j
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9A2F

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9A2F

		ld	a, h
		sub	8
		ld	h, a

loc_0_9A2F:
					; player_sprite+27Ej
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9A39

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9A39:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9A46

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9A46:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9A53

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9A53:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9A60

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9A60:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9A72

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9A72

		ld	a, h
		sub	8
		ld	h, a

loc_0_9A72:
					; player_sprite+2C1j
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9A99

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9A99

		ld	a, h
		sub	8
		ld	h, a

loc_0_9A99:
					; player_sprite+2E8j
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9AA3

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9AA3:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9AB0

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9AB0:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9ABD

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9ABD:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9ACA

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9ACA:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9ADC

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9ADC

		ld	a, h
		sub	8
		ld	h, a

loc_0_9ADC:
					; player_sprite+32Bj
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9B03

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9B03

		ld	a, h
		sub	8
		ld	h, a

loc_0_9B03:
					; player_sprite+352j
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9B0D

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9B0D:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9B1A

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9B1A:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9B27

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9B27:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9B34

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9B34:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9B46

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9B46

		ld	a, h
		sub	8
		ld	h, a

loc_0_9B46:
					; player_sprite+395j
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9B6D

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9B6D

		ld	a, h
		sub	8
		ld	h, a

loc_0_9B6D:
					; player_sprite+3BCj
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9B77

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9B77:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9B84

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9B84:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9B91

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9B91:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9B9E

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9B9E:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9BB0

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9BB0

		ld	a, h
		sub	8
		ld	h, a

loc_0_9BB0:
					; player_sprite+3FFj
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9BD7

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9BD7

		ld	a, h
		sub	8
		ld	h, a

loc_0_9BD7:
					; player_sprite+426j
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9BE1

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9BE1:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9BEE

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9BEE:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9BFB

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9BFB:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9C08

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9C08:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9C1A

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9C1A

		ld	a, h
		sub	8
		ld	h, a

loc_0_9C1A:
					; player_sprite+469j
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9C41

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9C41

		ld	a, h
		sub	8
		ld	h, a

loc_0_9C41:
					; player_sprite+48Aj ...
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9C4B

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9C4B:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9C58

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9C58:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9C65

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9C65:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9C72

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9C72:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9C84

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9C84

		ld	a, h
		sub	8
		ld	h, a

loc_0_9C84:
					; player_sprite+4D3j
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9CAB

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9CAB

		ld	a, h
		sub	8
		ld	h, a

loc_0_9CAB:
					; player_sprite+4FAj
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9CB5

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9CB5:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9CC2

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9CC2:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9CCF

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9CCF:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9CDC

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9CDC:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9CEE

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9CEE

		ld	a, h
		sub	8
		ld	h, a

loc_0_9CEE:
					; player_sprite+53Dj
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9D15

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9D15

		ld	a, h
		sub	8
		ld	h, a

loc_0_9D15:
					; player_sprite+564j
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9D1F

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9D1F:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9D2C

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9D2C:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9D39

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9D39:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9D46

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9D46:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9D58

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9D58

		ld	a, h
		sub	8
		ld	h, a

loc_0_9D58:
					; player_sprite+5A7j
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9D7F

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9D7F

		ld	a, h
		sub	8
		ld	h, a

loc_0_9D7F:
					; player_sprite+5CEj
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9D89

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9D89:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9D96

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9D96:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9DA3

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9DA3:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9DB0

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9DB0:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9DC2

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9DC2

		ld	a, h
		sub	8
		ld	h, a

loc_0_9DC2:
					; player_sprite+611j
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9DE9

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9DE9

		ld	a, h
		sub	8
		ld	h, a

loc_0_9DE9:
					; player_sprite+638j
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9DF3

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9DF3:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9E00

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9E00:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9E0D

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9E0D:
		or	e
		ld	(hl), a
		inc	l
		pop	de
		ld	a, (hl)
		and	d
		cp	(hl)
		jp	z, loc_0_9E1A

		ex	af, af'
		inc	a
		ex	af, af'

loc_0_9E1A:
		or	e
		ld	(hl), a
		inc	h
		ld	a, h
		and	b
		jp	nz, loc_0_9E2C

		ld	a, l
		add	a, c
		ld	l, a
		jp	c, loc_0_9E2C

		ld	a, h
		sub	8
		ld	h, a

loc_0_9E2C:
					; player_sprite+67Bj
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		dec	l
		pop	de
		ld	a, (hl)
		and	d
		or	e
		ld	(hl), a
		ld	sp, (save_stack)
		ret
		