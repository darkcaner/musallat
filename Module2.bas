
Private Sub Proc_2_0_45BA20() '45BA20
  push ebp
  mov ebp, esp
  sub esp, 00000008h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  sub esp, 0000004Ch
  push ebx
  push esi
  push edi
  mov var_8, esp
  mov var_4, 00402FF0h
  xor eax, eax
  xor ecx, ecx
  mov var_20, eax
  mov var_30, ecx
  mov var_1C, eax
  mov var_2C, ecx
  xor edx, edx
  mov var_18, eax
  mov var_28, ecx
  xor ebx, ebx
  mov var_3C, edx
  mov var_14, eax
  mov var_24, ecx
  mov var_34, ebx
  mov var_38, edx
  mov var_44, ebx
  mov var_48, ebx
  mov var_4C, ebx
  call 00419120h ; GetCurrentProcess()
  mov esi, [00401054h]
  mov edi, eax
  call global_00401054
  lea eax, var_34
  push eax
  push 00000028h
  push edi
  call 004190D4h ; OpenProcessToken(%x1v, %x2v, %x3v)
  mov edi, eax
  call global_00401054
  cmp edi, ebx
  jz 0045BB1Ch
  mov edi, arg_8
  lea ecx, var_3C
  push ecx
  lea eax, var_4C
  mov edx, [edi]
  push edx
  push eax
  call [00401188h]
  push eax
  push ebx
  call 00419084h ; LookupPrivilegeValue(%x1v, %x2v, %x3v)
  mov ebx, eax
  call global_00401054
  mov ecx, var_4C
  push ecx
  push edi
  call [004010F4h]
  lea ecx, var_4C
  call [004011CCh]
  test ebx, ebx
  jz 0045BB1Ch
  lea edx, var_3C
  lea eax, var_2C
  push edx
  push eax
  push 00000008h
  mov var_30, 00000001h
  mov var_24, 00000002h
  call [00401040h]
  lea ecx, var_48
  lea edx, var_20
  push ecx
  mov ecx, var_34
  push edx
  lea eax, var_30
  push 00000010h
  push eax
  push 00000000h
  push ecx
  call 00419034h ; AdjustTokenPrivileges(%x1v, %x2v, %x3v, %x4v, %x5v, %x6v)
  mov edi, eax
  call global_00401054
  xor edx, edx
  test edi, edi
  setnz dl
  neg edx
  mov var_44, edx
  push 0045BB2Eh
  jmp 0045BB2Dh
  lea ecx, var_4C
  call [004011CCh]
  ret
  ret
  mov ecx, var_10
  mov ax, var_44
  pop edi
  pop esi
  mov fs:[00000000h], ecx
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Private Function Proc_2_1_45BB50(arg_C, arg_10, arg_14, arg_18) '45BB50
  push ebp
  mov ebp, esp
  sub esp, 0000000Ch
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  sub esp, 00000048h
  push ebx
  push esi
  push edi
  mov var_C, esp
  mov var_8, 00403000h
  mov edi, [00401170h]
  lea eax, var_24
  xor esi, esi
  push eax
  mov var_24, esi
  mov var_34, esi
  mov var_38, esi
  mov var_48, esi
  mov var_4C, esi
  call edi
  mov edx, arg_10
  lea ecx, var_4C
  mov var_4C, eax
  push ecx
  mov eax, [edx]
  push 00020006h
  push esi
  lea ecx, var_38
  push eax
  push ecx
  call [00401188h]
  mov edx, arg_C
  push eax
  mov eax, [edx]
  push eax
  call 00418F58h ; RegOpenKeyEx(%x1v, %x2v, %x3v, %x4v, %x5v)
  mov ebx, [00401054h]
  mov var_50, eax
  call ebx
  mov ecx, var_38
  mov edx, arg_10
  push ecx
  push edx
  call [004010F4h]
  mov eax, var_4C
  lea edx, var_48
  lea ecx, var_24
  mov var_40, eax
  mov var_48, 00000003h
  call [00401194h]
  mov eax, var_50
  xor ecx, ecx
  cmp eax, esi
  setz cl
  neg ecx
  mov var_54, ecx
  lea ecx, var_38
  call [004011CCh]
  cmp var_54, si
  jz 0045BC74h
  mov edx, arg_18
  mov eax, arg_14
  push 00000004h
  push edx
  mov ecx, [eax]
  push 00000004h
  push esi
  lea edx, var_38
  push ecx
  push edx
  call [00401188h]
  push eax
  lea eax, var_24
  push eax
  call edi
  push eax
  call 00418FA0h ; RegSetValueEx(%x1v, %x2v, %x3v, %x4v, %x5v, %x6v)
  mov var_4C, eax
  call ebx
  mov ecx, var_38
  mov edx, arg_14
  push ecx
  push edx
  call [004010F4h]
  mov edx, var_4C
  xor eax, eax
  cmp edx, esi
  lea ecx, var_38
  setz al
  neg eax
  mov var_54, eax
  call [004011CCh]
  cmp var_54, si
  jz 0045BC74h
  lea ecx, var_24
  push ecx
  call edi
  push eax
  call 00418FE4h ; RegCloseKey(%x1v)
  call ebx
  push 0045BC9Eh
  jmp 0045BC94h
  test var_4, 04h
  jz 0045BC8Ah
  lea ecx, var_34
  call [00401014h]
  lea ecx, var_38
  call [004011CCh]
  ret
  lea ecx, var_24
  call [00401014h]
  ret
  mov eax, arg_8
  mov ecx, var_34
  mov edx, eax
  pop edi
  pop esi
  pop ebx
  mov [edx], ecx
  mov ecx, var_30
  mov [edx+00000004h], ecx
  mov ecx, var_2C
  mov [edx+00000008h], ecx
  mov ecx, var_28
  mov [edx+0000000Ch], ecx
  mov ecx, var_14
  mov fs:[00000000h], ecx
  mov esp, ebp
  pop ebp
  retn 0014h
End Function

Private Sub Proc_2_2_45BCD0() '45BCD0
  push ebp
  mov ebp, esp
  sub esp, 00000008h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  sub esp, 00000074h
  push ebx
  push esi
  push edi
  mov var_8, esp
  mov var_4, 00403010h
  mov ecx, 0000000Ah
  xor eax, eax
  lea edi, var_38
  xor ebx, ebx
  repz stosd
  mov ecx, 0000000Ah
  lea edi, var_80
  repz stosd
  mov eax, [00460558h]
  mov var_3C, ebx
  cmp eax, ebx
  mov var_40, ebx
  mov var_44, ebx
  mov var_38, 00006008h
  jnz 0045BD3Ah
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov esi, [00460558h]
  lea ecx, var_40
  push ecx
  push esi
  mov eax, [esi]
  call [eax+00000014h]
  cmp eax, ebx
  fnclex
  jge 0045BD63h
  mov edi, [00401058h]
  push 00000014h
  push 00418ED0h
  push esi
  push eax
  call edi
  jmp 0045BD69h
  mov edi, [00401058h]
  mov eax, var_40
  lea ecx, var_44
  push ecx
  push eax
  mov edx, [eax]
  mov esi, eax
  call [edx+00000100h]
  cmp eax, ebx
  fnclex
  jge 0045BD8Fh
  push 00000100h
  push 00418EF0h
  push esi
  push eax
  call edi
  mov edx, var_44
  mov ebx, [004011D4h]
  lea ecx, var_40
  mov var_28, edx
  call ebx
  push 0045BF20h
  call 0045BF50h
  mov esi, [00401148h]
  mov edx, 0043A530h ; "#103"
  lea ecx, var_18
  mov var_34, eax
  call global_00401148
  mov edx, 0043A540h ; "RegEdit_RegEdit"
  lea ecx, var_14
  call global_00401148
  lea eax, var_38
  lea ecx, var_80
  push eax
  push ecx
  push 00419148h
  call [004010D4h]
  push eax
  call 004191D0h ; RegisterClass(%x1v)
  mov var_44, eax
  call [00401054h]
  lea edx, var_80
  lea eax, var_38
  push edx
  push eax
  push 00419148h
  call [00401038h]
  mov esi, var_44
  xor ecx, ecx
  test esi, esi
  setnz cl
  lea edx, var_80
  neg ecx
  push edx
  push 00419148h
  mov si, cx
  call [004011A0h]
  test si, si
  jz 0045BEC7h
  mov eax, [00460558h]
  test eax, eax
  jnz 0045BE3Ch
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov esi, [00460558h]
  lea ecx, var_40
  push ecx
  push esi
  mov eax, [esi]
  call [eax+00000014h]
  test eax, eax
  fnclex
  jge 0045BE5Dh
  push 00000014h
  push 00418ED0h
  push esi
  push eax
  call edi
  mov eax, var_40
  lea ecx, var_44
  push ecx
  push eax
  mov edx, [eax]
  mov esi, eax
  call [edx+00000100h]
  test eax, eax
  fnclex
  jge 0045BE83h
  push 00000100h
  push 00418EF0h
  push esi
  push eax
  call edi
  mov edx, var_44
  push 00000000h
  push edx
  push 00000000h
  push 00000000h
  push 00000000h
  push 00000000h
  push 00000000h
  push 00000000h
  push 00000000h
  push 00000000h
  lea eax, var_3C
  push 0043A540h ; "RegEdit_RegEdit"
  push eax
  call [00401188h]
  push eax
  push 00040000h
  call 00419188h ; CreateWindowEx(%x1v, %x2v, %x3v, %x4v, %x5v, %x6v, %x7v, %x8v, %x9v, %x10v, %x11v, %x12v)
  call [00401054h]
  lea ecx, var_3C
  call [004011CCh]
  lea ecx, var_40
  call ebx
  push 0045BF00h
  jmp 0045BEE1h
  lea ecx, var_3C
  call [004011CCh]
  lea ecx, var_40
  call [004011D4h]
  ret
  lea ecx, var_80
  push ecx
  push 00419148h
  call [004011A0h]
  lea edx, var_38
  push edx
  push 00419148h
  call [00401050h]
  ret
  mov ecx, var_10
  pop edi
  pop esi
  mov fs:[00000000h], ecx
  pop ebx
  mov esp, ebp
  pop ebp
  ret
  nop
End Sub
