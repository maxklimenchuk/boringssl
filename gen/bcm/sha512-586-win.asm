; This file is generated from a similarly-named Perl script in the BoringSSL
; source tree. Do not edit by hand.

%ifdef BORINGSSL_PREFIX
%include "boringssl_prefix_symbols_nasm.inc"
%endif
%ifidn __OUTPUT_FORMAT__, win32
%ifidn __OUTPUT_FORMAT__,obj
section	code	use32 class=code align=64
%elifidn __OUTPUT_FORMAT__,win32
$@feat.00 equ 1
section	.text	code align=64
%else
section	.text	code
%endif
;extern	_OPENSSL_ia32cap_P
global	_sha512_block_data_order
align	16
_sha512_block_data_order:
L$_sha512_block_data_order_begin:
	push	ebp
	push	ebx
	push	esi
	push	edi
	mov	esi,DWORD [20+esp]
	mov	edi,DWORD [24+esp]
	mov	eax,DWORD [28+esp]
	mov	ebx,esp
	call	L$000pic_point
L$000pic_point:
	pop	ebp
	lea	ebp,[(L$001K512-L$000pic_point)+ebp]
	sub	esp,16
	and	esp,-64
	shl	eax,7
	add	eax,edi
	mov	DWORD [esp],esi
	mov	DWORD [4+esp],edi
	mov	DWORD [8+esp],eax
	mov	DWORD [12+esp],ebx
	lea	edx,[_OPENSSL_ia32cap_P]
	mov	ecx,DWORD [edx]
	mov	edx,DWORD [4+edx]
	movq	mm0,[esi]
	and	ecx,16777216
	movq	mm1,[8+esi]
	and	edx,512
	movq	mm2,[16+esi]
	or	ecx,edx
	movq	mm3,[24+esi]
	movq	mm4,[32+esi]
	movq	mm5,[40+esi]
	movq	mm6,[48+esi]
	movq	mm7,[56+esi]
	cmp	ecx,16777728
	je	NEAR L$002SSSE3
	sub	esp,80
	jmp	NEAR L$003loop_sse2
align	16
L$003loop_sse2:
	movq	[8+esp],mm1
	movq	[16+esp],mm2
	movq	[24+esp],mm3
	movq	[40+esp],mm5
	movq	[48+esp],mm6
	pxor	mm2,mm1
	movq	[56+esp],mm7
	movq	mm3,mm0
	mov	eax,DWORD [edi]
	mov	ebx,DWORD [4+edi]
	add	edi,8
	mov	edx,15
	bswap	eax
	bswap	ebx
	jmp	NEAR L$00400_14_sse2
align	16
L$00400_14_sse2:
	movd	mm1,eax
	mov	eax,DWORD [edi]
	movd	mm7,ebx
	mov	ebx,DWORD [4+edi]
	add	edi,8
	bswap	eax
	bswap	ebx
	punpckldq	mm7,mm1
	movq	mm1,mm4
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[32+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	movq	mm0,mm3
	movq	[72+esp],mm7
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[56+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	paddq	mm7,[ebp]
	pxor	mm3,mm4
	movq	mm4,[24+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[8+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	sub	esp,8
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[40+esp]
	paddq	mm3,mm2
	movq	mm2,mm0
	add	ebp,8
	paddq	mm3,mm6
	movq	mm6,[48+esp]
	dec	edx
	jnz	NEAR L$00400_14_sse2
	movd	mm1,eax
	movd	mm7,ebx
	punpckldq	mm7,mm1
	movq	mm1,mm4
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[32+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	movq	mm0,mm3
	movq	[72+esp],mm7
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[56+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	paddq	mm7,[ebp]
	pxor	mm3,mm4
	movq	mm4,[24+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[8+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	sub	esp,8
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm7,[192+esp]
	paddq	mm3,mm2
	movq	mm2,mm0
	add	ebp,8
	paddq	mm3,mm6
	pxor	mm0,mm0
	mov	edx,32
	jmp	NEAR L$00516_79_sse2
align	16
L$00516_79_sse2:
	movq	mm5,[88+esp]
	movq	mm1,mm7
	psrlq	mm7,1
	movq	mm6,mm5
	psrlq	mm5,6
	psllq	mm1,56
	paddq	mm0,mm3
	movq	mm3,mm7
	psrlq	mm7,6
	pxor	mm3,mm1
	psllq	mm1,7
	pxor	mm3,mm7
	psrlq	mm7,1
	pxor	mm3,mm1
	movq	mm1,mm5
	psrlq	mm5,13
	pxor	mm7,mm3
	psllq	mm6,3
	pxor	mm1,mm5
	paddq	mm7,[200+esp]
	pxor	mm1,mm6
	psrlq	mm5,42
	paddq	mm7,[128+esp]
	pxor	mm1,mm5
	psllq	mm6,42
	movq	mm5,[40+esp]
	pxor	mm1,mm6
	movq	mm6,[48+esp]
	paddq	mm7,mm1
	movq	mm1,mm4
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[32+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	movq	[72+esp],mm7
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[56+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	paddq	mm7,[ebp]
	pxor	mm3,mm4
	movq	mm4,[24+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[8+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	sub	esp,8
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm7,[192+esp]
	paddq	mm2,mm6
	add	ebp,8
	movq	mm5,[88+esp]
	movq	mm1,mm7
	psrlq	mm7,1
	movq	mm6,mm5
	psrlq	mm5,6
	psllq	mm1,56
	paddq	mm2,mm3
	movq	mm3,mm7
	psrlq	mm7,6
	pxor	mm3,mm1
	psllq	mm1,7
	pxor	mm3,mm7
	psrlq	mm7,1
	pxor	mm3,mm1
	movq	mm1,mm5
	psrlq	mm5,13
	pxor	mm7,mm3
	psllq	mm6,3
	pxor	mm1,mm5
	paddq	mm7,[200+esp]
	pxor	mm1,mm6
	psrlq	mm5,42
	paddq	mm7,[128+esp]
	pxor	mm1,mm5
	psllq	mm6,42
	movq	mm5,[40+esp]
	pxor	mm1,mm6
	movq	mm6,[48+esp]
	paddq	mm7,mm1
	movq	mm1,mm4
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[32+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	movq	[72+esp],mm7
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[56+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	paddq	mm7,[ebp]
	pxor	mm3,mm4
	movq	mm4,[24+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[8+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	sub	esp,8
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm7,[192+esp]
	paddq	mm0,mm6
	add	ebp,8
	dec	edx
	jnz	NEAR L$00516_79_sse2
	paddq	mm0,mm3
	movq	mm1,[8+esp]
	movq	mm3,[24+esp]
	movq	mm5,[40+esp]
	movq	mm6,[48+esp]
	movq	mm7,[56+esp]
	pxor	mm2,mm1
	paddq	mm0,[esi]
	paddq	mm1,[8+esi]
	paddq	mm2,[16+esi]
	paddq	mm3,[24+esi]
	paddq	mm4,[32+esi]
	paddq	mm5,[40+esi]
	paddq	mm6,[48+esi]
	paddq	mm7,[56+esi]
	mov	eax,640
	movq	[esi],mm0
	movq	[8+esi],mm1
	movq	[16+esi],mm2
	movq	[24+esi],mm3
	movq	[32+esi],mm4
	movq	[40+esi],mm5
	movq	[48+esi],mm6
	movq	[56+esi],mm7
	lea	esp,[eax*1+esp]
	sub	ebp,eax
	cmp	edi,DWORD [88+esp]
	jb	NEAR L$003loop_sse2
	mov	esp,DWORD [92+esp]
	emms
	pop	edi
	pop	esi
	pop	ebx
	pop	ebp
	ret
align	32
L$002SSSE3:
	lea	edx,[esp-64]
	sub	esp,256
	movdqa	xmm1,[640+ebp]
	movdqu	xmm0,[edi]
db	102,15,56,0,193
	movdqa	xmm3,[ebp]
	movdqa	xmm2,xmm1
	movdqu	xmm1,[16+edi]
	paddq	xmm3,xmm0
db	102,15,56,0,202
	movdqa	[edx-128],xmm3
	movdqa	xmm4,[16+ebp]
	movdqa	xmm3,xmm2
	movdqu	xmm2,[32+edi]
	paddq	xmm4,xmm1
db	102,15,56,0,211
	movdqa	[edx-112],xmm4
	movdqa	xmm5,[32+ebp]
	movdqa	xmm4,xmm3
	movdqu	xmm3,[48+edi]
	paddq	xmm5,xmm2
db	102,15,56,0,220
	movdqa	[edx-96],xmm5
	movdqa	xmm6,[48+ebp]
	movdqa	xmm5,xmm4
	movdqu	xmm4,[64+edi]
	paddq	xmm6,xmm3
db	102,15,56,0,229
	movdqa	[edx-80],xmm6
	movdqa	xmm7,[64+ebp]
	movdqa	xmm6,xmm5
	movdqu	xmm5,[80+edi]
	paddq	xmm7,xmm4
db	102,15,56,0,238
	movdqa	[edx-64],xmm7
	movdqa	[edx],xmm0
	movdqa	xmm0,[80+ebp]
	movdqa	xmm7,xmm6
	movdqu	xmm6,[96+edi]
	paddq	xmm0,xmm5
db	102,15,56,0,247
	movdqa	[edx-48],xmm0
	movdqa	[16+edx],xmm1
	movdqa	xmm1,[96+ebp]
	movdqa	xmm0,xmm7
	movdqu	xmm7,[112+edi]
	paddq	xmm1,xmm6
db	102,15,56,0,248
	movdqa	[edx-32],xmm1
	movdqa	[32+edx],xmm2
	movdqa	xmm2,[112+ebp]
	movdqa	xmm0,[edx]
	paddq	xmm2,xmm7
	movdqa	[edx-16],xmm2
	nop
align	32
L$006loop_ssse3:
	movdqa	xmm2,[16+edx]
	movdqa	[48+edx],xmm3
	lea	ebp,[128+ebp]
	movq	[8+esp],mm1
	mov	ebx,edi
	movq	[16+esp],mm2
	lea	edi,[128+edi]
	movq	[24+esp],mm3
	cmp	edi,eax
	movq	[40+esp],mm5
	cmovb	ebx,edi
	movq	[48+esp],mm6
	mov	ecx,4
	pxor	mm2,mm1
	movq	[56+esp],mm7
	pxor	mm3,mm3
	jmp	NEAR L$00700_47_ssse3
align	32
L$00700_47_ssse3:
	movdqa	xmm3,xmm5
	movdqa	xmm1,xmm2
db	102,15,58,15,208,8
	movdqa	[edx],xmm4
db	102,15,58,15,220,8
	movdqa	xmm4,xmm2
	psrlq	xmm2,7
	paddq	xmm0,xmm3
	movdqa	xmm3,xmm4
	psrlq	xmm4,1
	psllq	xmm3,56
	pxor	xmm2,xmm4
	psrlq	xmm4,7
	pxor	xmm2,xmm3
	psllq	xmm3,7
	pxor	xmm2,xmm4
	movdqa	xmm4,xmm7
	pxor	xmm2,xmm3
	movdqa	xmm3,xmm7
	psrlq	xmm4,6
	paddq	xmm0,xmm2
	movdqa	xmm2,xmm7
	psrlq	xmm3,19
	psllq	xmm2,3
	pxor	xmm4,xmm3
	psrlq	xmm3,42
	pxor	xmm4,xmm2
	psllq	xmm2,42
	pxor	xmm4,xmm3
	movdqa	xmm3,[32+edx]
	pxor	xmm4,xmm2
	movdqa	xmm2,[ebp]
	movq	mm1,mm4
	paddq	xmm0,xmm4
	movq	mm7,[edx-128]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[32+esp],mm4
	paddq	xmm2,xmm0
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[56+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[24+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[8+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[32+esp]
	paddq	mm2,mm6
	movq	mm6,[40+esp]
	movq	mm1,mm4
	movq	mm7,[edx-120]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[24+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[56+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[48+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[16+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[24+esp]
	paddq	mm0,mm6
	movq	mm6,[32+esp]
	movdqa	[edx-128],xmm2
	movdqa	xmm4,xmm6
	movdqa	xmm2,xmm3
db	102,15,58,15,217,8
	movdqa	[16+edx],xmm5
db	102,15,58,15,229,8
	movdqa	xmm5,xmm3
	psrlq	xmm3,7
	paddq	xmm1,xmm4
	movdqa	xmm4,xmm5
	psrlq	xmm5,1
	psllq	xmm4,56
	pxor	xmm3,xmm5
	psrlq	xmm5,7
	pxor	xmm3,xmm4
	psllq	xmm4,7
	pxor	xmm3,xmm5
	movdqa	xmm5,xmm0
	pxor	xmm3,xmm4
	movdqa	xmm4,xmm0
	psrlq	xmm5,6
	paddq	xmm1,xmm3
	movdqa	xmm3,xmm0
	psrlq	xmm4,19
	psllq	xmm3,3
	pxor	xmm5,xmm4
	psrlq	xmm4,42
	pxor	xmm5,xmm3
	psllq	xmm3,42
	pxor	xmm5,xmm4
	movdqa	xmm4,[48+edx]
	pxor	xmm5,xmm3
	movdqa	xmm3,[16+ebp]
	movq	mm1,mm4
	paddq	xmm1,xmm5
	movq	mm7,[edx-112]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[16+esp],mm4
	paddq	xmm3,xmm1
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[48+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[40+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[8+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[56+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[16+esp]
	paddq	mm2,mm6
	movq	mm6,[24+esp]
	movq	mm1,mm4
	movq	mm7,[edx-104]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[8+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[40+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[32+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[48+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[8+esp]
	paddq	mm0,mm6
	movq	mm6,[16+esp]
	movdqa	[edx-112],xmm3
	movdqa	xmm5,xmm7
	movdqa	xmm3,xmm4
db	102,15,58,15,226,8
	movdqa	[32+edx],xmm6
db	102,15,58,15,238,8
	movdqa	xmm6,xmm4
	psrlq	xmm4,7
	paddq	xmm2,xmm5
	movdqa	xmm5,xmm6
	psrlq	xmm6,1
	psllq	xmm5,56
	pxor	xmm4,xmm6
	psrlq	xmm6,7
	pxor	xmm4,xmm5
	psllq	xmm5,7
	pxor	xmm4,xmm6
	movdqa	xmm6,xmm1
	pxor	xmm4,xmm5
	movdqa	xmm5,xmm1
	psrlq	xmm6,6
	paddq	xmm2,xmm4
	movdqa	xmm4,xmm1
	psrlq	xmm5,19
	psllq	xmm4,3
	pxor	xmm6,xmm5
	psrlq	xmm5,42
	pxor	xmm6,xmm4
	psllq	xmm4,42
	pxor	xmm6,xmm5
	movdqa	xmm5,[edx]
	pxor	xmm6,xmm4
	movdqa	xmm4,[32+ebp]
	movq	mm1,mm4
	paddq	xmm2,xmm6
	movq	mm7,[edx-96]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[esp],mm4
	paddq	xmm4,xmm2
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[32+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[24+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[56+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[40+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[esp]
	paddq	mm2,mm6
	movq	mm6,[8+esp]
	movq	mm1,mm4
	movq	mm7,[edx-88]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[56+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[24+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[16+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[48+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[32+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[56+esp]
	paddq	mm0,mm6
	movq	mm6,[esp]
	movdqa	[edx-96],xmm4
	movdqa	xmm6,xmm0
	movdqa	xmm4,xmm5
db	102,15,58,15,235,8
	movdqa	[48+edx],xmm7
db	102,15,58,15,247,8
	movdqa	xmm7,xmm5
	psrlq	xmm5,7
	paddq	xmm3,xmm6
	movdqa	xmm6,xmm7
	psrlq	xmm7,1
	psllq	xmm6,56
	pxor	xmm5,xmm7
	psrlq	xmm7,7
	pxor	xmm5,xmm6
	psllq	xmm6,7
	pxor	xmm5,xmm7
	movdqa	xmm7,xmm2
	pxor	xmm5,xmm6
	movdqa	xmm6,xmm2
	psrlq	xmm7,6
	paddq	xmm3,xmm5
	movdqa	xmm5,xmm2
	psrlq	xmm6,19
	psllq	xmm5,3
	pxor	xmm7,xmm6
	psrlq	xmm6,42
	pxor	xmm7,xmm5
	psllq	xmm5,42
	pxor	xmm7,xmm6
	movdqa	xmm6,[16+edx]
	pxor	xmm7,xmm5
	movdqa	xmm5,[48+ebp]
	movq	mm1,mm4
	paddq	xmm3,xmm7
	movq	mm7,[edx-80]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[48+esp],mm4
	paddq	xmm5,xmm3
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[16+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[8+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[40+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[24+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[48+esp]
	paddq	mm2,mm6
	movq	mm6,[56+esp]
	movq	mm1,mm4
	movq	mm7,[edx-72]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[40+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[8+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[32+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[16+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[40+esp]
	paddq	mm0,mm6
	movq	mm6,[48+esp]
	movdqa	[edx-80],xmm5
	movdqa	xmm7,xmm1
	movdqa	xmm5,xmm6
db	102,15,58,15,244,8
	movdqa	[edx],xmm0
db	102,15,58,15,248,8
	movdqa	xmm0,xmm6
	psrlq	xmm6,7
	paddq	xmm4,xmm7
	movdqa	xmm7,xmm0
	psrlq	xmm0,1
	psllq	xmm7,56
	pxor	xmm6,xmm0
	psrlq	xmm0,7
	pxor	xmm6,xmm7
	psllq	xmm7,7
	pxor	xmm6,xmm0
	movdqa	xmm0,xmm3
	pxor	xmm6,xmm7
	movdqa	xmm7,xmm3
	psrlq	xmm0,6
	paddq	xmm4,xmm6
	movdqa	xmm6,xmm3
	psrlq	xmm7,19
	psllq	xmm6,3
	pxor	xmm0,xmm7
	psrlq	xmm7,42
	pxor	xmm0,xmm6
	psllq	xmm6,42
	pxor	xmm0,xmm7
	movdqa	xmm7,[32+edx]
	pxor	xmm0,xmm6
	movdqa	xmm6,[64+ebp]
	movq	mm1,mm4
	paddq	xmm4,xmm0
	movq	mm7,[edx-64]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[32+esp],mm4
	paddq	xmm6,xmm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[56+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[24+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[8+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[32+esp]
	paddq	mm2,mm6
	movq	mm6,[40+esp]
	movq	mm1,mm4
	movq	mm7,[edx-56]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[24+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[56+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[48+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[16+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[24+esp]
	paddq	mm0,mm6
	movq	mm6,[32+esp]
	movdqa	[edx-64],xmm6
	movdqa	xmm0,xmm2
	movdqa	xmm6,xmm7
db	102,15,58,15,253,8
	movdqa	[16+edx],xmm1
db	102,15,58,15,193,8
	movdqa	xmm1,xmm7
	psrlq	xmm7,7
	paddq	xmm5,xmm0
	movdqa	xmm0,xmm1
	psrlq	xmm1,1
	psllq	xmm0,56
	pxor	xmm7,xmm1
	psrlq	xmm1,7
	pxor	xmm7,xmm0
	psllq	xmm0,7
	pxor	xmm7,xmm1
	movdqa	xmm1,xmm4
	pxor	xmm7,xmm0
	movdqa	xmm0,xmm4
	psrlq	xmm1,6
	paddq	xmm5,xmm7
	movdqa	xmm7,xmm4
	psrlq	xmm0,19
	psllq	xmm7,3
	pxor	xmm1,xmm0
	psrlq	xmm0,42
	pxor	xmm1,xmm7
	psllq	xmm7,42
	pxor	xmm1,xmm0
	movdqa	xmm0,[48+edx]
	pxor	xmm1,xmm7
	movdqa	xmm7,[80+ebp]
	movq	mm1,mm4
	paddq	xmm5,xmm1
	movq	mm7,[edx-48]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[16+esp],mm4
	paddq	xmm7,xmm5
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[48+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[40+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[8+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[56+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[16+esp]
	paddq	mm2,mm6
	movq	mm6,[24+esp]
	movq	mm1,mm4
	movq	mm7,[edx-40]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[8+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[40+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[32+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[48+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[8+esp]
	paddq	mm0,mm6
	movq	mm6,[16+esp]
	movdqa	[edx-48],xmm7
	movdqa	xmm1,xmm3
	movdqa	xmm7,xmm0
db	102,15,58,15,198,8
	movdqa	[32+edx],xmm2
db	102,15,58,15,202,8
	movdqa	xmm2,xmm0
	psrlq	xmm0,7
	paddq	xmm6,xmm1
	movdqa	xmm1,xmm2
	psrlq	xmm2,1
	psllq	xmm1,56
	pxor	xmm0,xmm2
	psrlq	xmm2,7
	pxor	xmm0,xmm1
	psllq	xmm1,7
	pxor	xmm0,xmm2
	movdqa	xmm2,xmm5
	pxor	xmm0,xmm1
	movdqa	xmm1,xmm5
	psrlq	xmm2,6
	paddq	xmm6,xmm0
	movdqa	xmm0,xmm5
	psrlq	xmm1,19
	psllq	xmm0,3
	pxor	xmm2,xmm1
	psrlq	xmm1,42
	pxor	xmm2,xmm0
	psllq	xmm0,42
	pxor	xmm2,xmm1
	movdqa	xmm1,[edx]
	pxor	xmm2,xmm0
	movdqa	xmm0,[96+ebp]
	movq	mm1,mm4
	paddq	xmm6,xmm2
	movq	mm7,[edx-32]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[esp],mm4
	paddq	xmm0,xmm6
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[32+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[24+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[56+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[40+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[esp]
	paddq	mm2,mm6
	movq	mm6,[8+esp]
	movq	mm1,mm4
	movq	mm7,[edx-24]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[56+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[24+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[16+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[48+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[32+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[56+esp]
	paddq	mm0,mm6
	movq	mm6,[esp]
	movdqa	[edx-32],xmm0
	movdqa	xmm2,xmm4
	movdqa	xmm0,xmm1
db	102,15,58,15,207,8
	movdqa	[48+edx],xmm3
db	102,15,58,15,211,8
	movdqa	xmm3,xmm1
	psrlq	xmm1,7
	paddq	xmm7,xmm2
	movdqa	xmm2,xmm3
	psrlq	xmm3,1
	psllq	xmm2,56
	pxor	xmm1,xmm3
	psrlq	xmm3,7
	pxor	xmm1,xmm2
	psllq	xmm2,7
	pxor	xmm1,xmm3
	movdqa	xmm3,xmm6
	pxor	xmm1,xmm2
	movdqa	xmm2,xmm6
	psrlq	xmm3,6
	paddq	xmm7,xmm1
	movdqa	xmm1,xmm6
	psrlq	xmm2,19
	psllq	xmm1,3
	pxor	xmm3,xmm2
	psrlq	xmm2,42
	pxor	xmm3,xmm1
	psllq	xmm1,42
	pxor	xmm3,xmm2
	movdqa	xmm2,[16+edx]
	pxor	xmm3,xmm1
	movdqa	xmm1,[112+ebp]
	movq	mm1,mm4
	paddq	xmm7,xmm3
	movq	mm7,[edx-16]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[48+esp],mm4
	paddq	xmm1,xmm7
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[16+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[8+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[40+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[24+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[48+esp]
	paddq	mm2,mm6
	movq	mm6,[56+esp]
	movq	mm1,mm4
	movq	mm7,[edx-8]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[40+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[8+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[32+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[16+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[40+esp]
	paddq	mm0,mm6
	movq	mm6,[48+esp]
	movdqa	[edx-16],xmm1
	lea	ebp,[128+ebp]
	dec	ecx
	jnz	NEAR L$00700_47_ssse3
	movdqa	xmm1,[ebp]
	lea	ebp,[ebp-640]
	movdqu	xmm0,[ebx]
db	102,15,56,0,193
	movdqa	xmm3,[ebp]
	movdqa	xmm2,xmm1
	movdqu	xmm1,[16+ebx]
	paddq	xmm3,xmm0
db	102,15,56,0,202
	movq	mm1,mm4
	movq	mm7,[edx-128]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[32+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[56+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[24+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[8+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[32+esp]
	paddq	mm2,mm6
	movq	mm6,[40+esp]
	movq	mm1,mm4
	movq	mm7,[edx-120]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[24+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[56+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[48+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[16+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[24+esp]
	paddq	mm0,mm6
	movq	mm6,[32+esp]
	movdqa	[edx-128],xmm3
	movdqa	xmm4,[16+ebp]
	movdqa	xmm3,xmm2
	movdqu	xmm2,[32+ebx]
	paddq	xmm4,xmm1
db	102,15,56,0,211
	movq	mm1,mm4
	movq	mm7,[edx-112]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[16+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[48+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[40+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[8+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[56+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[16+esp]
	paddq	mm2,mm6
	movq	mm6,[24+esp]
	movq	mm1,mm4
	movq	mm7,[edx-104]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[8+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[40+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[32+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[48+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[8+esp]
	paddq	mm0,mm6
	movq	mm6,[16+esp]
	movdqa	[edx-112],xmm4
	movdqa	xmm5,[32+ebp]
	movdqa	xmm4,xmm3
	movdqu	xmm3,[48+ebx]
	paddq	xmm5,xmm2
db	102,15,56,0,220
	movq	mm1,mm4
	movq	mm7,[edx-96]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[32+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[24+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[56+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[40+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[esp]
	paddq	mm2,mm6
	movq	mm6,[8+esp]
	movq	mm1,mm4
	movq	mm7,[edx-88]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[56+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[24+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[16+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[48+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[32+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[56+esp]
	paddq	mm0,mm6
	movq	mm6,[esp]
	movdqa	[edx-96],xmm5
	movdqa	xmm6,[48+ebp]
	movdqa	xmm5,xmm4
	movdqu	xmm4,[64+ebx]
	paddq	xmm6,xmm3
db	102,15,56,0,229
	movq	mm1,mm4
	movq	mm7,[edx-80]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[48+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[16+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[8+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[40+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[24+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[48+esp]
	paddq	mm2,mm6
	movq	mm6,[56+esp]
	movq	mm1,mm4
	movq	mm7,[edx-72]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[40+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[8+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[32+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[16+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[40+esp]
	paddq	mm0,mm6
	movq	mm6,[48+esp]
	movdqa	[edx-80],xmm6
	movdqa	xmm7,[64+ebp]
	movdqa	xmm6,xmm5
	movdqu	xmm5,[80+ebx]
	paddq	xmm7,xmm4
db	102,15,56,0,238
	movq	mm1,mm4
	movq	mm7,[edx-64]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[32+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[56+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[24+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[8+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[32+esp]
	paddq	mm2,mm6
	movq	mm6,[40+esp]
	movq	mm1,mm4
	movq	mm7,[edx-56]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[24+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[56+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[48+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[16+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[24+esp]
	paddq	mm0,mm6
	movq	mm6,[32+esp]
	movdqa	[edx-64],xmm7
	movdqa	[edx],xmm0
	movdqa	xmm0,[80+ebp]
	movdqa	xmm7,xmm6
	movdqu	xmm6,[96+ebx]
	paddq	xmm0,xmm5
db	102,15,56,0,247
	movq	mm1,mm4
	movq	mm7,[edx-48]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[16+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[48+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[40+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[8+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[56+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[16+esp]
	paddq	mm2,mm6
	movq	mm6,[24+esp]
	movq	mm1,mm4
	movq	mm7,[edx-40]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[8+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[40+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[32+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[48+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[8+esp]
	paddq	mm0,mm6
	movq	mm6,[16+esp]
	movdqa	[edx-48],xmm0
	movdqa	[16+edx],xmm1
	movdqa	xmm1,[96+ebp]
	movdqa	xmm0,xmm7
	movdqu	xmm7,[112+ebx]
	paddq	xmm1,xmm6
db	102,15,56,0,248
	movq	mm1,mm4
	movq	mm7,[edx-32]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[32+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[24+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[56+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[40+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[esp]
	paddq	mm2,mm6
	movq	mm6,[8+esp]
	movq	mm1,mm4
	movq	mm7,[edx-24]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[56+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[24+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[16+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[48+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[32+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[56+esp]
	paddq	mm0,mm6
	movq	mm6,[esp]
	movdqa	[edx-32],xmm1
	movdqa	[32+edx],xmm2
	movdqa	xmm2,[112+ebp]
	movdqa	xmm0,[edx]
	paddq	xmm2,xmm7
	movq	mm1,mm4
	movq	mm7,[edx-16]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[48+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm0,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[16+esp],mm0
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[8+esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[40+esp]
	paddq	mm3,mm7
	movq	mm5,mm0
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm0
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[24+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm0,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm2,mm0
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm2,mm1
	pxor	mm6,mm7
	movq	mm5,[48+esp]
	paddq	mm2,mm6
	movq	mm6,[56+esp]
	movq	mm1,mm4
	movq	mm7,[edx-8]
	pxor	mm5,mm6
	psrlq	mm1,14
	movq	[40+esp],mm4
	pand	mm5,mm4
	psllq	mm4,23
	paddq	mm2,mm3
	movq	mm3,mm1
	psrlq	mm1,4
	pxor	mm5,mm6
	pxor	mm3,mm4
	psllq	mm4,23
	pxor	mm3,mm1
	movq	[8+esp],mm2
	paddq	mm7,mm5
	pxor	mm3,mm4
	psrlq	mm1,23
	paddq	mm7,[esp]
	pxor	mm3,mm1
	psllq	mm4,4
	pxor	mm3,mm4
	movq	mm4,[32+esp]
	paddq	mm3,mm7
	movq	mm5,mm2
	psrlq	mm5,28
	paddq	mm4,mm3
	movq	mm6,mm2
	movq	mm7,mm5
	psllq	mm6,25
	movq	mm1,[16+esp]
	psrlq	mm5,6
	pxor	mm7,mm6
	psllq	mm6,5
	pxor	mm7,mm5
	pxor	mm2,mm1
	psrlq	mm5,5
	pxor	mm7,mm6
	pand	mm0,mm2
	psllq	mm6,6
	pxor	mm7,mm5
	pxor	mm0,mm1
	pxor	mm6,mm7
	movq	mm5,[40+esp]
	paddq	mm0,mm6
	movq	mm6,[48+esp]
	movdqa	[edx-16],xmm2
	movq	mm1,[8+esp]
	paddq	mm0,mm3
	movq	mm3,[24+esp]
	movq	mm7,[56+esp]
	pxor	mm2,mm1
	paddq	mm0,[esi]
	paddq	mm1,[8+esi]
	paddq	mm2,[16+esi]
	paddq	mm3,[24+esi]
	paddq	mm4,[32+esi]
	paddq	mm5,[40+esi]
	paddq	mm6,[48+esi]
	paddq	mm7,[56+esi]
	movq	[esi],mm0
	movq	[8+esi],mm1
	movq	[16+esi],mm2
	movq	[24+esi],mm3
	movq	[32+esi],mm4
	movq	[40+esi],mm5
	movq	[48+esi],mm6
	movq	[56+esi],mm7
	cmp	edi,eax
	jb	NEAR L$006loop_ssse3
	mov	esp,DWORD [76+edx]
	emms
	pop	edi
	pop	esi
	pop	ebx
	pop	ebp
	ret
align	64
L$001K512:
dd	3609767458,1116352408
dd	602891725,1899447441
dd	3964484399,3049323471
dd	2173295548,3921009573
dd	4081628472,961987163
dd	3053834265,1508970993
dd	2937671579,2453635748
dd	3664609560,2870763221
dd	2734883394,3624381080
dd	1164996542,310598401
dd	1323610764,607225278
dd	3590304994,1426881987
dd	4068182383,1925078388
dd	991336113,2162078206
dd	633803317,2614888103
dd	3479774868,3248222580
dd	2666613458,3835390401
dd	944711139,4022224774
dd	2341262773,264347078
dd	2007800933,604807628
dd	1495990901,770255983
dd	1856431235,1249150122
dd	3175218132,1555081692
dd	2198950837,1996064986
dd	3999719339,2554220882
dd	766784016,2821834349
dd	2566594879,2952996808
dd	3203337956,3210313671
dd	1034457026,3336571891
dd	2466948901,3584528711
dd	3758326383,113926993
dd	168717936,338241895
dd	1188179964,666307205
dd	1546045734,773529912
dd	1522805485,1294757372
dd	2643833823,1396182291
dd	2343527390,1695183700
dd	1014477480,1986661051
dd	1206759142,2177026350
dd	344077627,2456956037
dd	1290863460,2730485921
dd	3158454273,2820302411
dd	3505952657,3259730800
dd	106217008,3345764771
dd	3606008344,3516065817
dd	1432725776,3600352804
dd	1467031594,4094571909
dd	851169720,275423344
dd	3100823752,430227734
dd	1363258195,506948616
dd	3750685593,659060556
dd	3785050280,883997877
dd	3318307427,958139571
dd	3812723403,1322822218
dd	2003034995,1537002063
dd	3602036899,1747873779
dd	1575990012,1955562222
dd	1125592928,2024104815
dd	2716904306,2227730452
dd	442776044,2361852424
dd	593698344,2428436474
dd	3733110249,2756734187
dd	2999351573,3204031479
dd	3815920427,3329325298
dd	3928383900,3391569614
dd	566280711,3515267271
dd	3454069534,3940187606
dd	4000239992,4118630271
dd	1914138554,116418474
dd	2731055270,174292421
dd	3203993006,289380356
dd	320620315,460393269
dd	587496836,685471733
dd	1086792851,852142971
dd	365543100,1017036298
dd	2618297676,1126000580
dd	3409855158,1288033470
dd	4234509866,1501505948
dd	987167468,1607167915
dd	1246189591,1816402316
dd	67438087,66051
dd	202182159,134810123
db	83,72,65,53,49,50,32,98,108,111,99,107,32,116,114,97
db	110,115,102,111,114,109,32,102,111,114,32,120,56,54,44,32
db	67,82,89,80,84,79,71,65,77,83,32,98,121,32,60,97
db	112,112,114,111,64,111,112,101,110,115,115,108,46,111,114,103
db	62,0
segment	.bss
common	_OPENSSL_ia32cap_P 16
%else
; Work around https://bugzilla.nasm.us/show_bug.cgi?id=3392738
ret
%endif
