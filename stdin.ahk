;DllCall("AllocConsole")

stdin  := FileOpen("*", "r `n")
stdout := FileOpen("*", "w `n")

stdout.Write("Name: ")
stdout.Read(0)

name := RTrim(stdin.ReadLine(), "`n")

stdout.WriteLine("Hello, " name)
stdout.Read(0)

Sleep 5000
