# batch converting audio formats using ffmpeg 
# you need to be in the directory where the source files are. 
# the code below assume that ffmpeg is in Applications. modify ffmpeg's directory according to where it is on your computer. 

# .wav to .mp3, use 1 audio channel (=mono), set sample rate to 22050Hz 
for f in *.wav; do /Applications/ffmpeg -i $f -ac 1 -ar 22050 ${f%.*}.mp3; done;  


# .wav to .mp3, use 1 audio channel, set bit rate for 64kbps and sample rate to 22050Hz 
for f in *.wav; do /Applications/ffmpeg -i $f -ac 1 -ab 64000 -ar 22050 ${f%.*}.mp3; done;  


# .wav to aiff 
for f in *.wav; do /Applications/ffmpeg -i $f -f aiff -ab 128000 -ar 44100 ${f%.*}.aiff; done; 




# to convert files individually, go to the directory that contains files to be converted, and simply name each file, for example;  
/Applications/ffmpeg -i input.wav -ac 1 -ab 64000 -ar 22050 output.mp3  