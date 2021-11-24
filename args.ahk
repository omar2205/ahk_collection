argc = %0%
if (argc < 2) {
  msgbox need args %test%
  OutputDebug, "te"
  return
}  

p = 

loop % A_Args.length()
  if (A_index == 1)
    continue
  else
    p := p . " " . A_Args[A_index]

msgbox %p%
