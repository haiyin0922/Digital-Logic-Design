import wave , struct , math , sys

# parameter pno = 480726;
# parameter gtr = 110464;
# parameter violin = 232234;

arg = int(sys.argv[1])
SampleRateTable = [24000 , 24000 , 22000 , 22000 , 22000 , 22000]
DurationTable = [20 , 20 ,  5,  5, 11 , 11]
FrequencyTable = [24.0 , 24.0 , 22.0 , 22.0 , 22.0 , 22.0]
FileTable = ['pno-noised.dat' , 'pno.dat' , 'gtr-noised.dat' , 'gtr.dat' , 'vio-noised.dat' , 'vio.dat']
WAVTable = ['piano_noise.wav' , 'pno.wav' , 'gtr_noise.wav' , 'gtr.wav' , 'vio_noise.wav' , 'vio.wav']
try:
    SampleRate = SampleRateTable[arg]  # hertz
    Duration = DurationTable[arg]      # seconds
    Frequency = FrequencyTable[arg]    # hertz
    Filename = FileTable[arg]          # .dat name
    WAVname = WAVTable[arg]            # .wav name
    print("write " + WAVname + "...")
except:
    print("wrong argument")
    sys.exit()

try:
    WaveFile = wave.open(WAVname ,'w')
    WaveFile.setnchannels(1) # mono
    WaveFile.setsampwidth(2) 
    WaveFile.setframerate(SampleRate)
except:
    print("close " + WAVname)
    sys.exit()
    
try:
    Dat = open(Filename , 'r')
except:
    print(Filename + " doesn't exist")
    sys.exit()

for i in range(int(Duration * SampleRate)):
    Str = Dat.readline()
    if Str[0] == '0':
        RawVal = float(int(Str , 2))
    else:
        RawVal = float(int(Str , 2) - 65536)
    Val = int(RawVal*math.cos(Frequency*math.pi*float(i)/float(SampleRate)))
    try:
        WriteData = struct.pack('<h', Val)
        WaveFile.writeframesraw(WriteData)
    except:
        print("Something Error!")
        sys.exit()
    
WaveFile.close()
print("Success")
