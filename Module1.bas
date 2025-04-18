
Private Function Proc_1_0_45B780(arg_C, arg_10, arg_14) '45B780
  push ebp
  mov ebp, esp
  sub esp, 00000008h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  sub esp, 00000018h
  push ebx
  push esi
  push edi
  mov var_8, esp
  mov var_4, 00402FD0h
  mov ebx, arg_C
  mov esi, [00401188h]
  xor eax, eax
  lea edx, var_1C
  mov ecx, [ebx]
  mov var_18, eax
  mov var_1C, eax
  mov var_20, eax
  lea eax, var_18
  push eax
  push ecx
  push edx
  call global_00401188
  push eax
  mov eax, arg_8
  mov ecx, [eax]
  push ecx
  call 00419424h ; RegCreateKey(%x1v, %x2v, %x3v)
  mov edi, [00401054h]
  call edi
  mov edx, var_1C
  push edx
  push ebx
  mov ebx, [004010F4h]
  call ebx
  lea ecx, var_1C
  call [004011CCh]
  mov eax, arg_14
  mov ecx, [eax]
  push ecx
  call [00401018h]
  mov edx, arg_14
  push eax
  lea ecx, var_20
  mov eax, [edx]
  push eax
  push ecx
  call global_00401188
  mov edx, arg_10
  push eax
  push 00000001h
  push 00000000h
  mov eax, [edx]
  lea ecx, var_1C
  push eax
  push ecx
  call global_00401188
  mov edx, var_18
  push eax
  push edx
  call 00418FA0h ; RegSetValueEx(%x1v, %x2v, %x3v, %x4v, %x5v, %x6v)
  call edi
  mov eax, var_1C
  mov ecx, arg_10
  push eax
  push ecx
  call ebx
  mov edx, var_20
  mov eax, arg_14
  push edx
  push eax
  call ebx
  lea ecx, var_20
  lea edx, var_1C
  push ecx
  push edx
  push 00000002h
  call [00401150h]
  mov eax, var_18
  add esp, 0000000Ch
  push eax
  call 00418FE4h ; RegCloseKey(%x1v)
  call edi
  push 0045B878h
  jmp 0045B877h
  lea ecx, var_20
  lea edx, var_1C
  push ecx
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, var_10
  pop edi
  pop esi
  mov fs:[00000000h], ecx
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0010h
End Function

Private Sub Proc_1_1_45B890() '45B890
  push ebp
  mov ebp, esp
  sub esp, 0000000Ch
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  sub esp, 0000003Ch
  push ebx
  push esi
  push edi
  mov var_C, esp
  mov var_8, 00402FE0h
  mov esi, [00401148h]
  xor edi, edi
  mov edx, 0043A3E8h ; "SeBackupPrivilege"
  lea ecx, var_28
  mov var_24, edi
  mov var_28, edi
  mov var_2C, edi
  mov var_3C, edi
  mov var_40, edi
  mov var_44, edi
  call global_00401148
  lea eax, var_28
  push eax
  call 0045BA20h
  xor ebx, ebx
  cmp ax, FFFFFFh
  setz bl
  lea ecx, var_28
  neg ebx
  call [004011CCh]
  cmp bx, di
  jz 0045B9BBh
  mov edi, [0040114Ch]
  push 0041C1DCh
  call edi
  mov edx, 0043A45Ch ; "UACDisableNotify"
  lea ecx, var_2C
  mov var_44, eax
  call global_00401148
  mov edx, 0043A410h ; "SOFTWARE\Microsoft\Security Center"
  lea ecx, var_28
  call global_00401148
  lea ecx, var_44
  lea edx, var_2C
  push ecx
  lea eax, var_28
  push edx
  lea ecx, var_40
  push eax
  lea edx, var_3C
  push ecx
  push edx
  mov var_40, 80000002h
  call 0045BB50h
  mov ebx, [00401150h]
  lea eax, var_2C
  lea ecx, var_28
  push eax
  push ecx
  push 00000002h
  call ebx
  add esp, 0000000Ch
  lea ecx, var_3C
  call [00401014h]
  push 0041C1DCh
  call edi
  mov edx, 0043A4FCh ; "EnableLUA"
  lea ecx, var_2C
  mov var_44, eax
  call global_00401148
  mov edx, 0043A484h ; "SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
  lea ecx, var_28
  call global_00401148
  lea edx, var_44
  lea eax, var_2C
  push edx
  lea ecx, var_28
  push eax
  lea edx, var_40
  push ecx
  lea eax, var_3C
  push edx
  push eax
  mov var_40, 80000002h
  call 0045BB50h
  lea ecx, var_2C
  lea edx, var_28
  push ecx
  push edx
  push 00000002h
  call ebx
  add esp, 0000000Ch
  lea ecx, var_3C
  call [00401014h]
  push 0045B9EFh
  jmp 0045B9EEh
  test var_4, 04h
  jz 0045B9D1h
  lea ecx, var_24
  call [00401014h]
  lea eax, var_2C
  lea ecx, var_28
  push eax
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  lea ecx, var_3C
  call [00401014h]
  ret
  ret
  mov eax, arg_8
  mov ecx, var_24
  mov edx, eax
  pop edi
  pop esi
  pop ebx
  mov [edx], ecx
  mov ecx, var_20
  mov [edx+00000004h], ecx
  mov ecx, var_1C
  mov [edx+00000008h], ecx
  mov ecx, var_18
  mov [edx+0000000Ch], ecx
  mov ecx, var_14
  mov fs:[00000000h], ecx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub
