sleep 20s
killall conky
cd "/home/YOUR_SYSTEM/.conky"
conky -c "/home/YOUR_SYSTEM/.conky/.conkyrc1" &
cd "/home/YOUR_SYSTEM/.conky"
conky -c "/home/YOUR_SYSTEM/.conky/.conkyrc2" &
cd "/home/YOUR_SYSTEM/.conky/CPUPanel"
conky -c "/home/YOUR_SYSTEM/.conky/CPUPanel/CPUPanel - 4 Core CPU" &
cd "/home/YOUR_SYSTEM/.conky/Gotham"
conky -c "/home/YOUR_SYSTEM/.conky/Gotham/Gotham" &
