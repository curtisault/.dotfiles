Config { font = "xft:FontAwesome:pixelsize=20:antialias=true:hinting=true,JetBrainsMono:pixelsize=20:antialias=true:hinting=true"
       , additionalFonts = []
       , borderColor = "black"
       , border = TopB
       , bgColor = "#282c34"
       , fgColor = "#d9a0fc"
       , alpha = 255
       , position = Top
       , textOffset = -1
       , iconOffset = -1
       , lowerOnStart = True
       , pickBroadest = False
       , persistent = False
       , hideOnStart = False
       , iconRoot = "/home/curtis/.xmonad/xpm/"
       , allDesktops = True
       , overrideRedirect = True
       , commands = [Run Weather "KSAT" ["-t","San Antonio: <tempF>°"
                                       , "-L","35","-H","90"
                                       , "--normal","#05fa71"
                                       , "--high","darkorange"
                                       , "--low","#21dbde"] 
                                       36000
                    -- , Run Network "lo" ["-L","0","-H","32", "--normal","green","--high","red"] 10
                    , Run Network "eno2" ["-t", "   <rx>KB |  <tx>KB" , "-L", "0", "-H", "32", "--normal", "green", "--high", "green"] 10
                    , Run Cpu ["-t", " <vbar><total>%", "-L","3","-H","50", "--normal","green","--high","red"] 10
                    --, Run MultiCpu ["-t","Cpu: <total0>%<total1>%<total2>%<total3>%<total4>%<total5>%<total6>%<total7>%", "-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10
                    , Run MultiCoreTemp ["-t", " <avgvbar><avg>°C"
                                       , "-L", "60", "-H", "80"
                                       , "-l", "green"
                                       , "-n", "yellow"
                                       , "-h", "red",
                       "--", "--mintemp", "20", "--maxtemp", "100"] 50
                    , Run DiskU [("/", ":  <free> Free"), ("/sda1", ":  <free> Free")]
                                ["-L", "20", "-H", "50", "-m", "1", "-p", "3"]
                                20
                    , Run Memory ["-t","  <usedratio>%"] 10
                    , Run Swap [] 10
                    , Run Com "uname" ["-s", "-r"] "" 36000
                    , Run Date "%H:%M:%S | %Y-%m-%d %p" "date" 10
                    , Run UnsafeStdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "<icon=haskell_20.xpm/> %UnsafeStdinReader% } <fc=#C3FCA0>%date%</fc> \
       \{  %cpu%  /  %multicoretemp%  /  %memory%  /  %eno2%  /  %disku%  /  %KSAT%  /   %uname%"
       }
