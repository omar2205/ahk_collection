
argc = %0%
if (argc < 2)
  return

; init empty string to append to
toast_body := ""

loop % A_Args.length()
  ; we don't want to append the title (arg1)
  if (A_index == 1)
    continue
  else
    toast_body := toast_body . " " . A_Args[A_index]

TrayTip %1%,%toast_body%

