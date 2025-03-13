MaMe82's Python port of infamous hak5 DuckEncoder

Added in additional commandline parameters to pipe in STDIN.

-p (--passthru) could be used to pipe in DuckyScript from STDIN. Example

    cat duckyscript.txt | python duckencoder.py -p -l de > inject.bin

-r (--rawpassthru) could be used to pipe thru raw ASCII to a keyboard device. Example


    cat text.txt | python duckencoder.py -r -l de > /dev/hidg0

Usage

    Duckencoder python port 1.0 by MaMe82
    =====================================
    
    Creds to:	hak5Darren for original duckencoder
    		https://github.com/hak5darren/USB-Rubber-Ducky
    
    Converts payload created by DuckEncoder to sourcefile for DigiSpark Sketch
    
    Usage: python duckencoder.py -i [file ..]			        Encode DuckyScript source given by -i file
       or: python duckencoder.py -i [file ..] -o [outfile ..]	Encode DuckyScript source to outputfile given by -o
    
    Arguments:
       -i [file ..]      	Input file in DuckyScript format
       -o [file ..] 	    Output File for encoded payload, defaults to inject.bin
       -l <layout name>	    Keyboard Layout (us/fr/pt/de ...)
       -p, --pastthru	    Read script from stdin and print result on stdout (ignore -i, -o)
       -r, --rawpassthru    Like passthru, but input is read as STRING instead of duckyscript
       -h			        Print this help screen
