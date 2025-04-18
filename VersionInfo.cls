VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "VersionInfo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Private Type UDT_1_0043A5FC
  bStruc(52) As Byte ' String fields: 0
End Type


Public Property Let FileName(Value) '45BF60
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000014h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403020h
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov eax, Value
  mov edx, [eax]
  mov ecx, Me
  add ecx, 00000038h
  call [00401148h]
  mov var_4, 00000004h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000090h]
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileName(arg_C) '45C010
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000018h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403058h
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov ecx, Me
  mov edx, [ecx+00000038h]
  lea ecx, var_24
  call [00401148h]
  push 0045C0A1h
  jmp 0045C0A0h
  lea ecx, var_24
  call [004011CCh]
  ret
  ret
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_24
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Let ModuleName(Value) '45C0D0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000014h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403088h
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov eax, Value
  mov edx, [eax]
  mov ecx, Me
  add ecx, 00000034h
  call [00401148h]
  mov var_4, 00000004h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000090h]
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get ModuleName(arg_C) '45C180
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000018h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004030C0h
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov ecx, Me
  mov edx, [ecx+00000034h]
  lea ecx, var_24
  call [00401148h]
  push 0045C211h
  jmp 0045C210h
  lea ecx, var_24
  call [004011CCh]
  ret
  ret
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_24
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get Language(arg_C) '45C240
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000020h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004030F0h ; Chr(37)
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov eax, Me
  mov ecx, [eax+00000040h]
  push ecx
  call [00401018h]
  cmp eax, 00000008h
  jnz 0045C314h
  mov var_4, 00000004h
  push 0043A37Ch ; "&H"
  push 00000004h
  mov edx, Me
  mov eax, [edx+00000040h]
  push eax
  call [0040119Ch]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  call [004011D8h]
  call [00401190h]
  mov var_24, eax
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  fwait
  push 0045C331h
  jmp 0045C330h
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_24
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get CodePage(arg_C) '45C360
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000020h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403128h ; Chr(37)
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov eax, Me
  mov ecx, [eax+00000040h]
  push ecx
  call [00401018h]
  cmp eax, 00000008h
  jnz 0045C434h
  mov var_4, 00000004h
  push 0043A37Ch ; "&H"
  push 00000004h
  mov edx, Me
  mov eax, [edx+00000040h]
  push eax
  call [004011B0h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  call [004011D8h]
  call [00401190h]
  mov var_24, eax
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  fwait
  push 0045C451h
  jmp 0045C450h
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_24
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get CompanyName(arg_C) '45C480
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403160h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 0042C81Ch ; "CompanyName"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045C566h
  jmp 0045C565h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045C551h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileDescription(arg_C) '45C590
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403190h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 0042C488h ; "FileDescription"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045C676h
  jmp 0045C675h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045C661h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileVersion(arg_C) '45C6A0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004031C0h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 0042C0FCh ; "FileVersion"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045C786h
  jmp 0045C785h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045C771h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get InternalName(arg_C) '45C7B0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004031F0h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 0042BD2Ch ; "InternalName"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045C896h
  jmp 0045C895h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045C881h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get LegalCopyright(arg_C) '45C8C0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403220h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 0042B3C4h ; "LegalCopyright"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045C9A6h
  jmp 0045C9A5h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045C991h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get OriginalFileName(arg_C) '45C9D0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403250h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 0042AC48h ; "OriginalFileName"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045CAB6h
  jmp 0045CAB5h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045CAA1h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get ProductName(arg_C) '45CAE0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403280h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 00429468h ; "ProductName"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045CBC6h
  jmp 0045CBC5h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045CBB1h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get ProductVersion(arg_C) '45CBF0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004032B0h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 00428EC8h ; "ProductVersion"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045CCD6h
  jmp 0045CCD5h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045CCC1h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get LegalTrademarks(arg_C) '45CD00
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004032E0h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 00428CE8h ; "LegalTrademarks"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045CDE6h
  jmp 0045CDE5h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045CDD1h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get LegalTrademarks1(arg_C) '45CE10
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403310h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 00427FC0h ; "LegalTrademarks1"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045CEF6h
  jmp 0045CEF5h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045CEE1h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get LegalTrademarks2(arg_C) '45CF20
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403340h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 00427DE8h ; "LegalTrademarks2"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045D006h
  jmp 0045D005h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045CFF1h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get Comments(arg_C) '45D030
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403370h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 00429290h ; "Comments"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045D116h
  jmp 0045D115h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045D101h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get PrivateBuild(arg_C) '45D140
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004033A0h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 00428380h ; "PrivateBuild"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045D226h
  jmp 0045D225h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045D211h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get SpecialBuild(arg_C) '45D250
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004033D0h ; "-"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 004281A0h ; "SpecialBuild"
  lea ecx, var_28
  call [00401148h]
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000008Ch]
  mov eax, var_2C
  mov var_44, eax
  mov var_2C, 00000000h
  mov edx, var_44
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  push 0045D336h
  jmp 0045D335h
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045D321h
  lea ecx, var_24
  call [004011CCh]
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  ret
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000008h]
  mov ecx, arg_C
  mov edx, var_24
  mov [ecx], edx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileFlagsRaw(arg_C) '45D360
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000018h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403400h
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov eax, Me
  mov ecx, Me
  mov edx, [eax+00000060h]
  and edx, [ecx+0000005Ch]
  mov var_24, edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000008h]
  mov eax, arg_C
  mov ecx, var_24
  mov [eax], ecx
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileFlags(arg_C) '45D400
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000020h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403430h ; "+"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov ecx, Me
  mov edx, Me
  mov eax, [ecx+00000060h]
  and eax, [edx+0000005Ch]
  mov var_2C, eax
  mov var_4, 00000004h
  mov ecx, var_2C
  and ecx, 00000001h
  test ecx, ecx
  jz 0045D4B1h
  mov var_4, 00000005h
  mov edx, var_24
  push edx
  push 0042A358h ; "Debug "
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  mov var_4, 00000007h
  mov eax, var_2C
  and eax, 00000004h
  test eax, eax
  jz 0045D4E3h
  mov var_4, 00000008h
  mov ecx, var_24
  push ecx
  push 004290B0h ; "Patched "
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  mov var_4, 0000000Ah
  mov edx, var_2C
  and edx, 00000002h
  test edx, edx
  jz 0045D515h
  mov var_4, 0000000Bh
  mov eax, var_24
  push eax
  push 00427C18h ; "Pre-release "
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  mov var_4, 0000000Dh
  mov ecx, var_2C
  and ecx, 00000008h
  test ecx, ecx
  jz 0045D547h
  mov var_4, 0000000Eh
  mov edx, var_24
  push edx
  push 00427A40h ; "Private "
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  mov var_4, 00000010h
  mov eax, var_2C
  and eax, 00000020h
  test eax, eax
  jz 0045D579h
  mov var_4, 00000011h
  mov ecx, var_24
  push ecx
  push 004276A0h ; "Special "
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  mov var_4, 00000013h
  mov edx, var_24
  lea ecx, var_28
  call [00401148h]
  push 0045D5A7h
  jmp 0045D59Dh
  lea ecx, var_28
  call [004011CCh]
  ret
  lea ecx, var_24
  call [004011CCh]
  ret
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_28
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileOSRaw(arg_C) '45D5E0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000018h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004034A0h
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov eax, Me
  mov ecx, [eax+00000064h]
  mov var_24, ecx
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_24
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileOS(arg_C) '45D680
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000020h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004034D0h ; "+"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov ecx, Me
  mov edx, [ecx+00000064h]
  mov var_28, edx
  mov var_4, 00000004h
  mov eax, var_28
  and eax, 00000001h
  test eax, eax
  jz 0045D724h
  mov var_4, 00000005h
  mov edx, 004274B8h ; "Win16 API"
  lea ecx, var_24
  call [00401148h]
  jmp 0045D7B1h
  mov var_4, 00000006h
  mov ecx, var_28
  and ecx, 00000002h
  test ecx, ecx
  jz 0045D74Ch
  mov var_4, 00000007h
  mov edx, 004267D0h ; "PM16 API"
  lea ecx, var_24
  call [00401148h]
  jmp 0045D7B1h
  mov var_4, 00000008h
  mov edx, var_28
  and edx, 00000003h
  test edx, edx
  jz 0045D774h
  mov var_4, 00000009h
  mov edx, 004265F0h ; "PM32 API"
  lea ecx, var_24
  call [00401148h]
  jmp 0045D7B1h
  mov var_4, 0000000Ah
  mov eax, var_28
  and eax, 00000004h
  test eax, eax
  jz 0045D79Ch
  mov var_4, 0000000Bh
  mov edx, 00426414h ; "Win32 API"
  lea ecx, var_24
  call [00401148h]
  jmp 0045D7B1h
  mov var_4, 0000000Dh
  mov edx, 0042605Ch ; "Unknown API"
  lea ecx, var_24
  call [00401148h]
  mov var_4, 0000000Fh
  mov ecx, var_28
  and ecx, 00010000h
  test ecx, ecx
  jz 0045D7EBh
  mov var_4, 00000010h
  mov edx, var_24
  push edx
  push 0042A178h ; " on DOS"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  jmp 0045D889h
  mov var_4, 00000011h
  mov eax, var_28
  and eax, 00020000h
  test eax, eax
  jz 0045D821h
  mov var_4, 00000012h
  mov ecx, var_24
  push ecx
  push 004256E0h ; " on OS2/16"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  jmp 0045D889h
  mov var_4, 00000013h
  mov edx, var_28
  and edx, 00030000h
  test edx, edx
  jz 0045D858h
  mov var_4, 00000014h
  mov eax, var_24
  push eax
  push 00424B84h ; " on OS2/32"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  jmp 0045D889h
  mov var_4, 00000015h
  cmp var_28, 00040000h
  jnz 0045D889h
  mov var_4, 00000016h
  mov ecx, var_24
  push ecx
  push 00422D88h ; " on Windows NT"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  mov var_4, 00000018h
  mov edx, var_24
  lea ecx, var_2C
  call [00401148h]
  push 0045D8B7h
  jmp 0045D8ADh
  lea ecx, var_2C
  call [004011CCh]
  ret
  lea ecx, var_24
  call [004011CCh]
  ret
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_2C
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileTypeRaw(arg_C) '45D8F0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000018h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403558h
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov eax, Me
  mov ecx, [eax+00000068h]
  mov var_24, ecx
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_24
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileType(arg_C) '45D990
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000024h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403588h ; "+"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov ecx, Me
  mov edx, [ecx+00000068h]
  mov var_2C, edx
  mov eax, var_2C
  mov var_44, eax
  cmp var_44, 00000007h
  ja 0045DACAh
  mov ecx, var_44
  jmp [ecx*4+0045DB22h]
  jmp 0045DACAh
  mov var_4, 00000005h
  mov edx, 004247BCh ; "Application"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DACAh
  mov var_4, 00000007h
  mov edx, 004256FCh ; "DLL"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DACAh
  mov var_4, 00000009h
  mov edx, 00429BD8h ; "Driver"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DACAh
  mov var_4, 0000000Bh
  mov edx, 00427A58h ; "Font"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DACAh
  mov var_4, 0000000Dh
  mov edx, 00422420h ; "Static-link library"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DACAh
  mov var_4, 0000000Fh
  mov edx, 00428B18h ; "Unknown"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DACAh
  mov var_4, 00000011h
  mov edx, 004274D0h ; "VXD"
  lea ecx, var_24
  call [00401148h]
  mov var_4, 00000013h
  mov edx, var_24
  lea ecx, var_28
  call [00401148h]
  push 0045DAF8h
  jmp 0045DAEEh
  lea ecx, var_28
  call [004011CCh]
  ret
  lea ecx, var_24
  call [004011CCh]
  ret
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_28
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileSubTypeRaw(arg_C) '45DB50
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000018h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004035F8h
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov eax, Me
  mov ecx, [eax+0000006Ch]
  mov var_24, ecx
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_24
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Public Property Get FileSubType(arg_C) '45DBF0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000034h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403628h ; "+"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov eax, arg_C
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 00428B18h ; "Unknown"
  lea ecx, var_24
  call [00401148h]
  mov var_4, 00000004h
  mov ecx, Me
  mov edx, [ecx+00000068h]
  mov var_2C, edx
  mov eax, var_2C
  mov var_4C, eax
  cmp var_4C, 00000003h
  jz 0045DCB2h
  cmp var_4C, 00000004h
  jz 0045DE0Ah
  cmp var_4C, 00000005h
  jz 0045DE92h
  jmp 0045DEB1h
  jmp 0045DEB1h
  jmp 0045DEB1h
  jmp 0045DEB1h
  mov var_4, 00000008h
  mov ecx, Me
  mov edx, [ecx+0000006Ch]
  mov var_30, edx
  mov eax, var_30
  mov var_50, eax
  cmp var_50, 0000000Bh
  ja 0045DE05h
  mov ecx, var_50
  jmp [ecx*4+0045DF09h]
  jmp 0045DE05h
  mov var_4, 0000000Ah
  mov edx, 004229C4h ; "Communications"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 0000000Ch
  mov edx, 00426F3Ch ; "Display"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 0000000Eh
  mov edx, 00421190h ; "Input Method"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 00000010h
  mov edx, 004238C4h ; "Installable"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 00000012h
  mov edx, 00425334h ; "Keyboard"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 00000014h
  mov edx, 00424404h ; "Language"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 00000016h
  mov edx, 0042C838h ; "Mouse"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 00000018h
  mov edx, 004269B0h ; "Network"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 0000001Ah
  mov edx, 00426B8Ch ; "Printer"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 0000001Ch
  mov edx, 00429A00h ; "Sound"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 0000001Eh
  mov edx, 00424228h ; "System"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE05h
  mov var_4, 00000020h
  mov edx, 00428B18h ; "Unknown"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DEB1h
  mov var_4, 00000023h
  mov edx, Me
  mov eax, [edx+0000006Ch]
  mov var_34, eax
  mov ecx, var_34
  mov var_54, ecx
  cmp var_54, 00000003h
  ja 0045DE8Ch
  mov edx, var_54
  jmp [edx*4+0045DF39h]
  jmp 0045DE8Ch
  mov var_4, 00000025h
  mov edx, 00423C8Ch ; "Raster"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE8Ch
  mov var_4, 00000027h
  mov edx, 00420DECh ; "TrueType"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE8Ch
  mov var_4, 00000029h
  mov edx, 00423158h ; "Vector"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DE8Ch
  mov var_4, 0000002Bh
  mov edx, 00428B18h ; "Unknown"
  lea ecx, var_24
  call [00401148h]
  jmp 0045DEB1h
  jmp 0045DEB1h
  jmp 0045DEB1h
  mov var_4, 00000030h
  mov eax, Me
  mov ecx, [eax+0000006Ch]
  push ecx
  call [0040100Ch]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  mov var_4, 00000032h
  mov edx, var_24
  lea ecx, var_28
  call [00401148h]
  push 0045DEDFh
  jmp 0045DED5h
  lea ecx, var_28
  call [004011CCh]
  ret
  lea ecx, var_24
  call [004011CCh]
  ret
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov edx, arg_C
  mov eax, var_28
  mov [edx], eax
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub

Private Sub Proc_4_28_45DF50(arg_C, arg_10) '45DF50
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 0000004Ch
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403718h ; "."
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov var_4, 00000001h
  mov eax, arg_10
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000004h
  push 00420300h ; "\StringFileInfo\"
  mov ecx, Me
  mov edx, [ecx+00000040h]
  push edx
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  mov eax, arg_C
  mov ecx, [eax]
  push ecx
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  lea edx, var_40
  push edx
  lea eax, var_3C
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000005h
  mov ecx, Me
  mov edx, [ecx+0000003Ch]
  push edx
  lea eax, var_38
  push eax
  call [0040117Ch]
  cmp var_38, 00000000h
  jz 0045E079h
  mov ecx, var_38
  cmp [ecx], 0001h
  jnz 0045E079h
  mov edx, var_38
  xor eax, eax
  sub eax, [edx+00000014h]
  mov var_48, eax
  mov ecx, var_38
  mov edx, var_48
  cmp edx, [ecx+00000010h]
  jae 0045E068h
  mov var_68, 00000000h
  jmp 0045E071h
  call [004010ACh]
  mov var_68, eax
  mov eax, var_48
  mov var_6C, eax
  jmp 0045E082h
  call [004010ACh]
  mov var_6C, eax
  lea ecx, var_24
  push ecx
  lea edx, var_2C
  push edx
  mov eax, var_30
  push eax
  lea ecx, var_3C
  push ecx
  call [00401188h]
  push eax
  mov edx, var_38
  mov eax, [edx+0000000Ch]
  add eax, var_6C
  push eax
  call 0043A760h ; VerQueryValue(%x1v, %x2v, %x3v, %x4v)
  mov var_44, eax
  call [00401054h]
  lea ecx, var_38
  push ecx
  call [004011C4h]
  mov edx, var_3C
  push edx
  lea eax, var_30
  push eax
  call [004010F4h]
  xor ecx, ecx
  cmp var_44, 00000000h
  setnz cl
  neg ecx
  mov var_4C, cx
  lea ecx, var_3C
  call [004011CCh]
  movsx edx, var_4C
  test edx, edx
  jz 0045E185h
  mov var_4, 00000006h
  mov eax, var_24
  sub eax, 00000001h
  jo 0045E200h
  push eax
  call [00401098h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  mov var_4, 00000007h
  mov ecx, var_2C
  push ecx
  mov edx, var_28
  push edx
  lea eax, var_3C
  push eax
  call [00401188h]
  push eax
  call 0043A7A4h ; lstrcpy(%x1v, %x2v)
  call [00401054h]
  mov ecx, var_3C
  push ecx
  lea edx, var_28
  push edx
  call [004010F4h]
  lea ecx, var_3C
  call [004011CCh]
  mov var_4, 00000008h
  lea eax, var_3C
  push eax
  lea ecx, var_28
  push ecx
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000094h]
  mov edx, var_3C
  mov var_64, edx
  mov var_3C, 00000000h
  mov edx, var_64
  lea ecx, var_28
  call [004011ACh]
  mov var_4, 0000000Bh
  mov edx, var_28
  lea ecx, var_34
  call [00401148h]
  push 0045E1E3h
  jmp 0045E1D0h
  mov eax, var_10
  and eax, 00000004h
  test eax, eax
  jz 0045E1B2h
  lea ecx, var_34
  call [004011CCh]
  lea ecx, var_38
  push ecx
  call [004011C4h]
  lea edx, var_40
  push edx
  lea eax, var_3C
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  ret
  lea ecx, var_28
  call [004011CCh]
  lea ecx, var_30
  call [004011CCh]
  ret
  mov ecx, arg_10
  mov edx, var_34
  mov [ecx], edx
  xor eax, eax
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 000Ch
End Sub

Private Sub Proc_4_29_45E210() '45E210
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000138h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403770h ; "&"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov eax, Me
  mov ecx, [eax+00000034h]
  push ecx
  call [00401018h]
  test eax, eax
  jle 0045E393h
  mov var_4, 00000004h
  mov edx, Me
  mov eax, [edx+00000034h]
  push eax
  lea ecx, var_48
  push ecx
  call [00401188h]
  push eax
  call 0043A66Ch ; GetModuleHandle(%x1v)
  mov var_E4, eax
  call [00401054h]
  mov edx, var_48
  push edx
  mov eax, Me
  add eax, 00000034h
  push eax
  call [004010F4h]
  mov ecx, var_E4
  mov var_30, ecx
  lea ecx, var_48
  call [004011CCh]
  mov var_4, 00000005h
  mov var_4, 00000007h
  push 00000104h
  lea edx, var_A0
  push edx
  call [004010A4h]
  lea eax, var_A0
  push eax
  call [0040101Ch]
  mov edx, eax
  lea ecx, var_48
  call [004011ACh]
  mov edx, eax
  mov ecx, Me
  add ecx, 00000038h
  call [00401148h]
  lea ecx, var_48
  call [004011CCh]
  lea ecx, var_A0
  call [00401014h]
  mov var_4, 00000008h
  mov ecx, Me
  mov edx, [ecx+00000038h]
  push edx
  call [00401018h]
  push eax
  mov eax, Me
  mov ecx, [eax+00000038h]
  push ecx
  lea edx, var_48
  push edx
  call [00401188h]
  push eax
  mov eax, var_30
  push eax
  call 0043A620h ; GetModuleFileName(%x1v, %x2v, %x3v)
  mov var_E4, eax
  call [00401054h]
  mov ecx, var_48
  push ecx
  mov edx, Me
  add edx, 00000038h
  push edx
  call [004010F4h]
  xor eax, eax
  cmp var_E4, 00000000h
  setz al
  neg eax
  mov var_E8, ax
  lea ecx, var_48
  call [004011CCh]
  mov var_4, 0000000Bh
  mov edx, Me
  mov eax, [edx+00000038h]
  push eax
  call [00401018h]
  mov var_4, 0000000Dh
  lea ecx, var_34
  push ecx
  mov edx, Me
  mov eax, [edx+00000038h]
  push eax
  lea ecx, var_48
  push ecx
  call [00401188h]
  push eax
  call 0043A6CCh ; GetFileVersionInfoSize(%x1v, %x2v)
  mov var_E4, eax
  call [00401054h]
  mov edx, var_48
  push edx
  mov eax, Me
  add eax, 00000038h
  push eax
  call [004010F4h]
  mov ecx, var_E4
  mov var_24, ecx
  lea ecx, var_48
  call [004011CCh]
  mov var_4, 0000000Eh
  mov var_4, 00000010h
  push 00000000h
  mov edx, var_24
  sub edx, 00000001h
  jo 0045ED3Eh
  push edx
  push 00000001h
  push 00000011h
  mov eax, Me
  add eax, 0000003Ch
  push eax
  push 00000001h
  push 00000080h
  call [004010D0h]
  add esp, 0000001Ch
  mov var_4, 00000011h
  mov ecx, Me
  mov edx, [ecx+0000003Ch]
  push edx
  lea eax, var_38
  push eax
  call [0040117Ch]
  cmp var_38, 00000000h
  jz 0045E499h
  mov ecx, var_38
  cmp [ecx], 0001h
  jnz 0045E499h
  mov edx, var_38
  xor eax, eax
  sub eax, [edx+00000014h]
  mov var_E8, eax
  mov ecx, var_38
  mov edx, var_E8
  cmp edx, [ecx+00000010h]
  jae 0045E47Fh
  mov var_11C, 00000000h
  jmp 0045E48Bh
  call [004010ACh]
  mov var_11C, eax
  mov eax, var_E8
  mov var_120, eax
  jmp 0045E4A5h
  call [004010ACh]
  mov var_120, eax
  mov ecx, var_38
  mov edx, [ecx+0000000Ch]
  add edx, var_120
  push edx
  mov eax, var_24
  push eax
  push 00000000h
  mov ecx, Me
  mov edx, [ecx+00000038h]
  push edx
  lea eax, var_48
  push eax
  call [00401188h]
  push eax
  call 0043A718h ; GetFileVersionInfo(%x1v, %x2v, %x3v, %x4v)
  mov var_E4, eax
  call [00401054h]
  mov ecx, var_48
  push ecx
  mov edx, Me
  add edx, 00000038h
  push edx
  call [004010F4h]
  lea eax, var_38
  push eax
  call [004011C4h]
  xor ecx, ecx
  cmp var_E4, 00000000h
  setz cl
  neg ecx
  mov var_EC, cx
  lea ecx, var_48
  call [004011CCh]
  mov var_4, 00000013h
  mov eax, Me
  mov ecx, [eax+0000003Ch]
  push ecx
  lea edx, var_38
  push edx
  call [0040117Ch]
  cmp var_38, 00000000h
  jz 0045E57Dh
  mov eax, var_38
  cmp [eax], 0001h
  jnz 0045E57Dh
  mov ecx, var_38
  xor edx, edx
  sub edx, [ecx+00000014h]
  mov var_E8, edx
  mov eax, var_38
  mov ecx, var_E8
  cmp ecx, [eax+00000010h]
  jae 0045E563h
  mov var_124, 00000000h
  jmp 0045E56Fh
  call [004010ACh]
  mov var_124, eax
  mov edx, var_E8
  mov var_128, edx
  jmp 0045E589h
  call [004010ACh]
  mov var_128, eax
  lea eax, var_24
  push eax
  lea ecx, var_2C
  push ecx
  push 0043A970h ; "\VarFileInfo\Translation"
  lea edx, var_48
  push edx
  call [00401188h]
  push eax
  mov eax, var_38
  mov ecx, [eax+0000000Ch]
  add ecx, var_128
  push ecx
  call 0043A760h ; VerQueryValue(%x1v, %x2v, %x3v, %x4v)
  mov var_E4, eax
  call [00401054h]
  lea edx, var_38
  push edx
  call [004011C4h]
  xor eax, eax
  cmp var_E4, 00000000h
  setz al
  neg eax
  mov var_EC, ax
  lea ecx, var_48
  call [004011CCh]
  mov var_4, 00000015h
  push 00000000h
  mov edx, var_24
  sub edx, 00000001h
  jo 0045ED3Eh
  push edx
  push 00000001h
  push 00000011h
  lea eax, var_28
  push eax
  push 00000001h
  push 00000080h
  call [004010D0h]
  add esp, 0000001Ch
  mov var_4, 00000016h
  mov ecx, var_28
  push ecx
  lea edx, var_38
  push edx
  call [0040117Ch]
  cmp var_38, 00000000h
  jz 0045E67Bh
  mov eax, var_38
  cmp [eax], 0001h
  jnz 0045E67Bh
  mov ecx, var_38
  xor edx, edx
  sub edx, [ecx+00000014h]
  mov var_E8, edx
  mov eax, var_38
  mov ecx, var_E8
  cmp ecx, [eax+00000010h]
  jae 0045E661h
  mov var_12C, 00000000h
  jmp 0045E66Dh
  call [004010ACh]
  mov var_12C, eax
  mov edx, var_E8
  mov var_130, edx
  jmp 0045E687h
  call [004010ACh]
  mov var_130, eax
  mov eax, var_24
  push eax
  mov ecx, var_2C
  push ecx
  mov edx, var_38
  mov eax, [edx+0000000Ch]
  add eax, var_130
  push eax
  call 0043A7ECh ; CopyMemory(%x1v, %x2v, %x3v)
  call [00401054h]
  lea ecx, var_38
  push ecx
  call [004011C4h]
  mov var_4, 00000017h
  mov edx, var_28
  push edx
  lea eax, var_38
  push eax
  call [0040117Ch]
  cmp var_38, 00000000h
  jz 0045E71Ah
  mov ecx, var_38
  cmp [ecx], 0001h
  jnz 0045E71Ah
  mov edx, var_38
  mov eax, 00000001h
  sub eax, [edx+00000014h]
  mov var_E8, eax
  mov ecx, var_38
  mov edx, var_E8
  cmp edx, [ecx+00000010h]
  jae 0045E700h
  mov var_134, 00000000h
  jmp 0045E70Ch
  call [004010ACh]
  mov var_134, eax
  mov eax, var_E8
  mov var_138, eax
  jmp 0045E726h
  call [004010ACh]
  mov var_138, eax
  mov ecx, var_38
  mov edx, [ecx+0000000Ch]
  add edx, var_138
  mov var_A8, edx
  mov var_B0, 00004011h
  lea eax, var_B0
  push eax
  call [00401140h]
  mov edx, eax
  lea ecx, var_48
  call [004011ACh]
  lea ecx, var_38
  push ecx
  call [004011C4h]
  mov edx, var_28
  push edx
  lea eax, var_3C
  push eax
  call [0040117Ch]
  cmp var_3C, 00000000h
  jz 0045E7C3h
  mov ecx, var_3C
  cmp [ecx], 0001h
  jnz 0045E7C3h
  mov edx, var_3C
  xor eax, eax
  sub eax, [edx+00000014h]
  mov var_EC, eax
  mov ecx, var_3C
  mov edx, var_EC
  cmp edx, [ecx+00000010h]
  jae 0045E7A9h
  mov var_13C, 00000000h
  jmp 0045E7B5h
  call [004010ACh]
  mov var_13C, eax
  mov eax, var_EC
  mov var_140, eax
  jmp 0045E7CFh
  call [004010ACh]
  mov var_140, eax
  mov ecx, var_3C
  mov edx, [ecx+0000000Ch]
  add edx, var_140
  mov var_B8, edx
  mov var_C0, 00004011h
  lea eax, var_C0
  push eax
  call [00401140h]
  mov edx, eax
  lea ecx, var_58
  call [004011ACh]
  lea ecx, var_3C
  push ecx
  call [004011C4h]
  mov edx, var_28
  push edx
  lea eax, var_40
  push eax
  call [0040117Ch]
  cmp var_40, 00000000h
  jz 0045E86Fh
  mov ecx, var_40
  cmp [ecx], 0001h
  jnz 0045E86Fh
  mov edx, var_40
  mov eax, 00000003h
  sub eax, [edx+00000014h]
  mov var_F0, eax
  mov ecx, var_40
  mov edx, var_F0
  cmp edx, [ecx+00000010h]
  jae 0045E855h
  mov var_144, 00000000h
  jmp 0045E861h
  call [004010ACh]
  mov var_144, eax
  mov eax, var_F0
  mov var_148, eax
  jmp 0045E87Bh
  call [004010ACh]
  mov var_148, eax
  mov ecx, var_40
  mov edx, [ecx+0000000Ch]
  add edx, var_148
  mov var_C8, edx
  mov var_D0, 00004011h
  lea eax, var_D0
  push eax
  call [00401140h]
  mov edx, eax
  lea ecx, var_68
  call [004011ACh]
  lea ecx, var_40
  push ecx
  call [004011C4h]
  mov edx, var_28
  push edx
  lea eax, var_44
  push eax
  call [0040117Ch]
  cmp var_44, 00000000h
  jz 0045E91Bh
  mov ecx, var_44
  cmp [ecx], 0001h
  jnz 0045E91Bh
  mov edx, var_44
  mov eax, 00000002h
  sub eax, [edx+00000014h]
  mov var_F4, eax
  mov ecx, var_44
  mov edx, var_F4
  cmp edx, [ecx+00000010h]
  jae 0045E901h
  mov var_14C, 00000000h
  jmp 0045E90Dh
  call [004010ACh]
  mov var_14C, eax
  mov eax, var_F4
  mov var_150, eax
  jmp 0045E927h
  call [004010ACh]
  mov var_150, eax
  mov ecx, var_44
  mov edx, [ecx+0000000Ch]
  add edx, var_150
  mov var_D8, edx
  mov var_E0, 00004011h
  lea eax, var_E0
  push eax
  call [00401140h]
  mov edx, eax
  lea ecx, var_7C
  call [004011ACh]
  lea ecx, var_44
  push ecx
  call [004011C4h]
  push 00000002h
  call [00401000h]
  mov edx, eax
  lea ecx, var_50
  call [004011ACh]
  mov edx, var_48
  mov var_10C, edx
  mov var_48, 00000000h
  mov edx, var_10C
  lea ecx, var_4C
  call [004011ACh]
  lea eax, var_54
  push eax
  lea ecx, var_50
  push ecx
  lea edx, var_4C
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000098h]
  push 00000002h
  call [00401000h]
  mov edx, eax
  lea ecx, var_60
  call [004011ACh]
  mov eax, var_58
  mov var_110, eax
  mov var_58, 00000000h
  mov edx, var_110
  lea ecx, var_5C
  call [004011ACh]
  lea ecx, var_64
  push ecx
  lea edx, var_60
  push edx
  lea eax, var_5C
  push eax
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000098h]
  push 00000002h
  call [00401000h]
  mov edx, eax
  lea ecx, var_70
  call [004011ACh]
  mov ecx, var_68
  mov var_114, ecx
  mov var_68, 00000000h
  mov edx, var_114
  lea ecx, var_6C
  call [004011ACh]
  lea edx, var_74
  push edx
  lea eax, var_70
  push eax
  lea ecx, var_6C
  push ecx
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000098h]
  push 00000002h
  call [00401000h]
  mov edx, eax
  lea ecx, var_84
  call [004011ACh]
  mov edx, var_7C
  mov var_118, edx
  mov var_7C, 00000000h
  mov edx, var_118
  lea ecx, var_80
  call [004011ACh]
  lea eax, var_88
  push eax
  lea ecx, var_84
  push ecx
  lea edx, var_80
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000098h]
  mov eax, var_54
  push eax
  mov ecx, var_64
  push ecx
  call [00401044h]
  mov edx, eax
  lea ecx, var_78
  call [004011ACh]
  push eax
  mov edx, var_74
  push edx
  call [00401044h]
  mov edx, eax
  lea ecx, var_8C
  call [004011ACh]
  push eax
  mov eax, var_88
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_90
  call [004011ACh]
  mov edx, eax
  mov ecx, Me
  add ecx, 00000040h
  call [00401148h]
  lea ecx, var_90
  push ecx
  lea edx, var_88
  push edx
  lea eax, var_8C
  push eax
  lea ecx, var_84
  push ecx
  lea edx, var_80
  push edx
  lea eax, var_74
  push eax
  lea ecx, var_78
  push ecx
  lea edx, var_70
  push edx
  lea eax, var_6C
  push eax
  lea ecx, var_64
  push ecx
  lea edx, var_54
  push edx
  lea eax, var_60
  push eax
  lea ecx, var_5C
  push ecx
  lea edx, var_50
  push edx
  lea eax, var_4C
  push eax
  push 0000000Fh
  call [00401150h]
  add esp, 00000040h
  mov var_4, 00000018h
  mov ecx, Me
  mov edx, [ecx+00000040h]
  push edx
  push 0043A9A8h ; "00000000"
  call [004010B0h]
  test eax, eax
  jnz 0045EB86h
  mov var_4, 00000019h
  mov edx, 0043A9C0h ; "040904E4"
  mov ecx, Me
  add ecx, 00000040h
  call [00401148h]
  mov var_4, 0000001Bh
  mov eax, Me
  mov ecx, [eax+0000003Ch]
  push ecx
  lea edx, var_38
  push edx
  call [0040117Ch]
  cmp var_38, 00000000h
  jz 0045EBEFh
  mov eax, var_38
  cmp [eax], 0001h
  jnz 0045EBEFh
  mov ecx, var_38
  xor edx, edx
  sub edx, [ecx+00000014h]
  mov var_E8, edx
  mov eax, var_38
  mov ecx, var_E8
  cmp ecx, [eax+00000010h]
  jae 0045EBD5h
  mov var_154, 00000000h
  jmp 0045EBE1h
  call [004010ACh]
  mov var_154, eax
  mov edx, var_E8
  mov var_158, edx
  jmp 0045EBFBh
  call [004010ACh]
  mov var_158, eax
  lea eax, var_24
  push eax
  lea ecx, var_2C
  push ecx
  push 00418DA4h ; "\"
  lea edx, var_48
  push edx
  call [00401188h]
  push eax
  mov eax, var_38
  mov ecx, [eax+0000000Ch]
  add ecx, var_158
  push ecx
  call 0043A760h ; VerQueryValue(%x1v, %x2v, %x3v, %x4v)
  mov var_E4, eax
  call [00401054h]
  lea edx, var_38
  push edx
  call [004011C4h]
  xor eax, eax
  cmp var_E4, 00000000h
  setz al
  neg eax
  mov var_EC, ax
  lea ecx, var_48
  call [004011CCh]
  mov var_4, 0000001Dh
  mov edx, var_24
  push edx
  mov eax, var_2C
  push eax
  mov ecx, Me
  add ecx, 00000044h
  push ecx
  call 0043A7ECh ; CopyMemory(%x1v, %x2v, %x3v)
  call [00401054h]
  push 0045ED29h
  jmp 0045ED1Ch
  lea edx, var_38
  push edx
  call [004011C4h]
  lea eax, var_3C
  push eax
  call [004011C4h]
  lea ecx, var_40
  push ecx
  call [004011C4h]
  lea edx, var_44
  push edx
  call [004011C4h]
  lea eax, var_90
  push eax
  lea ecx, var_8C
  push ecx
  lea edx, var_88
  push edx
  lea eax, var_84
  push eax
  lea ecx, var_80
  push ecx
  lea edx, var_7C
  push edx
  lea eax, var_78
  push eax
  lea ecx, var_74
  push ecx
  lea edx, var_70
  push edx
  lea eax, var_6C
  push eax
  lea ecx, var_68
  push ecx
  lea edx, var_64
  push edx
  lea eax, var_60
  push eax
  lea ecx, var_5C
  push ecx
  lea edx, var_58
  push edx
  lea eax, var_54
  push eax
  lea ecx, var_50
  push ecx
  lea edx, var_4C
  push edx
  lea eax, var_48
  push eax
  push 00000013h
  call [00401150h]
  add esp, 00000050h
  lea ecx, var_A0
  call [00401014h]
  ret
  lea ecx, var_28
  push ecx
  push 00000000h
  call [00401068h]
  ret
  xor eax, eax
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Private Sub Proc_4_30_45ED50(arg_C, arg_10) '45ED50
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000020h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403808h
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov var_4, 00000001h
  mov eax, arg_10
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  push 00000001h
  mov ecx, arg_C
  mov edx, [ecx]
  push edx
  push 0043A9D8h
  push 00000000h
  call [00401130h]
  mov ecx, eax
  call [004010BCh]
  mov var_28, ax
  mov var_4, 00000004h
  mov ax, var_28
  mov var_2C, ax
  mov var_4, 00000005h
  cmp var_2C, 0001h
  jle 0045EE24h
  mov var_4, 00000006h
  mov cx, var_28
  sub cx, 0001h
  jo 0045EE99h
  movsx edx, cx
  push edx
  mov eax, arg_C
  mov ecx, [eax]
  push ecx
  call [0040119Ch]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  jmp 0045EE6Ah
  mov var_4, 00000007h
  movsx edx, var_2C
  test edx, edx
  jnz 0045EE4Ah
  mov var_4, 00000008h
  mov eax, arg_C
  mov edx, [eax]
  lea ecx, var_24
  call [00401148h]
  jmp 0045EE6Ah
  mov var_4, 00000009h
  cmp var_2C, 0001h
  jnz 0045EE6Ah
  mov var_4, 0000000Ah
  xor edx, edx
  lea ecx, var_24
  call [00401148h]
  push 0045EE7Ch
  jmp 0045EE7Bh
  lea ecx, var_24
  call [004011CCh]
  ret
  ret
  mov ecx, arg_10
  mov edx, var_24
  mov [ecx], edx
  xor eax, eax
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 000Ch
End Sub

Private Function Proc_4_31_45EEA0(arg_C, arg_10, arg_14) '45EEA0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 0000006Ch
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00403858h
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov var_4, 00000001h
  mov eax, arg_14
  mov [eax], 00000000h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov var_60, 0041C1DCh
  mov var_68, 00000008h
  lea edx, var_68
  lea ecx, var_38
  call [0040118Ch]
  lea ecx, var_38
  push ecx
  mov edx, arg_10
  mov eax, [edx]
  push eax
  call [0040114Ch]
  push eax
  lea ecx, var_48
  push ecx
  call [00401100h]
  mov edx, arg_C
  mov eax, [edx]
  mov var_70, eax
  mov var_78, 00000008h
  mov ecx, arg_10
  mov edx, [ecx]
  push edx
  call [0040114Ch]
  push eax
  lea eax, var_48
  push eax
  lea ecx, var_78
  push ecx
  lea edx, var_58
  push edx
  call [0040111Ch]
  push eax
  lea eax, var_28
  push eax
  call [00401118h]
  push eax
  call [004011B0h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  lea ecx, var_28
  call [004011CCh]
  lea ecx, var_58
  push ecx
  lea edx, var_48
  push edx
  lea eax, var_38
  push eax
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  push 0045EFE0h
  jmp 0045EFDFh
  mov ecx, var_10
  and ecx, 00000004h
  test ecx, ecx
  jz 0045EFBEh
  lea ecx, var_24
  call [004011CCh]
  lea ecx, var_28
  call [004011CCh]
  lea edx, var_58
  push edx
  lea eax, var_48
  push eax
  lea ecx, var_38
  push ecx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  ret
  ret
  mov edx, arg_14
  mov eax, var_24
  mov [edx], eax
  xor eax, eax
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0010h
End Function
