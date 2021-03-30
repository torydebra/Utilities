## Change key mapping for keyboard

In this example, I am inverting the number with the symbol above, so the shift pressing behaviour is inverted

```bash
xmodmap -e "keycode  10 = exclam 1 exclam 1 onesuperior exclamdown onesuperior exclamdown 1 exclam"
xmodmap -e "keycode  11 = quotedbl 2 quotedbl 2 twosuperior oneeighth twosuperior dead_doubleacute 2 at"
xmodmap -e "keycode  12 = section 3 sterling 3 threesuperior sterling threesuperior dead_tilde 3 numbersign"
xmodmap -e "keycode  13 = dollar 4 dollar 4 onequarter currency onequarter oneeighth 4 dollar"
xmodmap -e "keycode  14 = percent 5 percent 5 onehalf threeeighths onehalf threeeighths 5 percent"
xmodmap -e "keycode  15 = ampersand 6 ampersand 6 notsign fiveeighths notsign fiveeighths 6 asciicircum"
xmodmap -e "keycode  16 = slash 7 slash 7 braceleft seveneighths braceleft seveneighths 7 ampersand"
xmodmap -e "keycode  17 = parenleft 8 parenleft 8 bracketleft trademark bracketleft trademark 8 asterisk"
xmodmap -e "keycode  18 = parenright 9 parenright 9 bracketright plusminus bracketright plusminus 9 parenleft"
xmodmap -e "keycode  19 = equal 0 equal 0 braceright degree braceright dead_ogonek 0 parenright"

xmodmap -e "keycode  48 = agrave numbersign agrave numbersign degree"


xbindkeys

```

To know keycodes, run `xev -event keyboard` and press keys with that window active, read them in the terminal
