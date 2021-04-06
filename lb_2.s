extern printf

SECTION .data
        max:   dw 0
        min:   dw 0

        x:     dw 210, 41, 56, 43, 32, 52, 30, 10, 65, 10

        fmt1:  db "max=%u", 10, 0
        fmt2:  db "min=%u", 10, 0

SECTION .text
global main
main:

        mov ecx, 9
        mov esi, x
        mov eax, [esi]

        _loop1:
                dec ecx
                add esi, 2
                mov ebx,[esi]

                cmp bx, ax
                ja _bigger1
                je _notbigger1
                jl _notbigger1

                _bigger1:
                mov ax, bx
                _notbigger1:
                cmp ecx, 0
                ja _loop1
                je _endloop1
        _endloop1:

        mov [max], eax

        mov ecx, 9
        mov esi, x
        mov eax, [esi]

        _loop2:
                dec ecx
                add esi, 2
                mov ebx,[esi]

                cmp ax, bx
                ja _bigger2
                je _notbigger2
                jl _notbigger2

                _bigger2:
                mov ax, bx
                _notbigger2:
                cmp ecx, 0
                ja _loop2
                je _endloop2
        _endloop2:

        mov [min], eax

        push ebp
        mov ebp,esp

        push word [max]
        push dword fmt1
        call printf

        add esp, 8

        push word [min]
        push dword fmt2
        call printf

        add esp, 8
        mov esp, ebp
        pop ebp

    mov eax,0
    ret
