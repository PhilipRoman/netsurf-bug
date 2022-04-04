0x0010b4f9      [rpush]   push rdi
0x0010b4fa      [mov]     mov r8d, ebx
0x0010b4fd      [lea]     lea rdi, str.content_handlers_image_image_cache.c ; 0x1eac1e ; "content/handlers/image/image_cache.c" ; int64_t arg1
0x0010b504      [div]     div ebx
0x0010b506      [xor]     xor edx, edx
0x0010b508      [rpush]   push rax
0x0010b509      [mul]     imul eax, r11d, 0x64
0x0010b50d      [div]     div ebx
0x0010b50f      [xor]     xor edx, edx
0x0010b511      [rpush]   push rax
0x0010b512      [mul]     imul eax, r9d, 0x64
0x0010b516      [div]     div ebx
0x0010b518      [mov]     mov edx, 0x1d6                   ; int64_t arg3
0x0010b51d      [rpush]   push rax
0x0010b51e      [xor]     xor eax, eax
0x0010b520      [rpush]   push r10
0x0010b522      [rpush]   push r11
0x0010b524      [call]    call sym.nslog_log
0x0010b52a      [mov]     mov r9, qword [0x0038ea10]       ; [0x38ea10:8]=0
0x0010b531      [xor]     xor edx, edx
0x0010b533      [mov]     mov r8, rbp
0x0010b536      [lea]     lea rsi, str.image_cache_fini    ; 0x1eafa0 ; "image_cache_fini" ; int64_t arg2
0x0010b53d      [lea]     lea rdi, str.content_handlers_image_image_cache.c ; 0x1eac1e ; "content/handlers/image/image_cache.c" ; int64_t arg1
0x0010b544      [mov]     mov rbx, qword [r9 + 0x80]
0x0010b54b      [mov]     mov rcx, qword [r9 + 0x60]
0x0010b54f      [add]     add rsp, 0x28
0x0010b553      [mov]     mov r9, qword [r9 + 0x70]
0x0010b557      [mul]     imul rax, rbx, 0x64
;-- ===> DIVIDE BY ZERO <===
0x0010b55b      [div]     div rbp
0x0010b55e      [xor]     xor edx, edx
0x0010b560      [rpush]   push rax
0x0010b561      [mul]     imul rax, rcx, 0x64
0x0010b565      [div]     div rbp
0x0010b568      [xor]     xor edx, edx
0x0010b56a      [rpush]   push rax
0x0010b56b      [mul]     imul rax, r9, 0x64
0x0010b56f      [div]     div rbp
0x0010b572      [mov]     mov edx, 0x1df                   ; int64_t arg3
0x0010b577      [rpush]   push rax
; DATA XREF from sym.dukky_window___proto @ 0xd2471
0x0010b578      [xor]     xor eax, eax
0x0010b57a      [rpush]   push rbx
0x0010b57b      [rpush]   push rcx
0x0010b57c      [lea]     lea rcx, str.Cache_total_hit_miss_fail__size___lu__lu__lu__lu__100____ld____ld____ld___ ; 0x1eace1 ; "Cache total/hit/miss/fail (size) %lu/%lu/%lu/%l
0x0010b583      [call]    call sym.nslog_log
