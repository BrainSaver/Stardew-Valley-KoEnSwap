#Requires AutoHotkey v1+
#SingleInstance force

; Stardew Valley 또는 Stardew Valley (SMAPI) 창이 활성화되어 있을 때만 아래 매크로를 실행
#If WinActive("Stardew Valley (SMAPI)") or WinActive("Stardew Valley")

toggle_allowed := true  ; T키로 한영키 토글 가능 여부 변수

~t::
    if (toggle_allowed) {
        Send {vk15}  ; 한영키 토글
        toggle_allowed := false  ; 다시 못 누르게 잠금
    }
return

~Enter::
    SendInput {Enter}
    Sleep 50
    Send {vk15}  ; 한영키 토글 (영어 모드로 전환)
    toggle_allowed := true  ; 다시 T키로 토글 허용
return

#If ; 조건부 매크로 블록을 여기서 종료합니다.