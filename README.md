# EEG_tools
Miscellaneous Biosemi EEG tools and info

ActiView_bootloader.bat
  Loads preconfigured ActiView folders as needed. These are copies of the same/similar folders with different Default.cfg files. These full folders are not supplied here but available at (https://biosemi.com/download.htm). The included .cfg files may be used to replace the downloaded copy of Default.cfg with a renamed example.

  * Default_Biosemi.cfg - default as supplied by Biosemi (ActiView 9.02)
  
  * Default_32ch_512Hz.cfg - starts with a 32 channel setup (electrodes A1-A32) and recording-time decimation of 1/4 or 512 Hz.
  
  * Default_photodiode.cfg - contains options for using a connected photodiode to create digital triggers at recording.
  The following setup is as recommended/default by Biosemi here: (https://biosemi.com/faq/trigger_signals.htm)
    
    RespSwitch = "3" // This should be set to 3 for photodiode use
    
    TrigLength = "30" // Trigger will be held ON for 30 ms
    
    TrigLevel = "100" // Trigger when photodiode magnitude is >100 mV. Typical allowed range is -3000 mV to +3000 mV
    
    TrigWindow = "1" // 0: triggers are only created for signals above the TrigLevel. 1: triggers are created for signals above +TrigLevel and also below -TrigLevel
    
    TrigPol = "1" // 0: triggers are created for signals below the TrigLevel. 1: triggers are created above the TrigLevel
    
* Default_myovolt.cfg - Above settings used to work with triggering by the LED on a Myvolt vibration device. Following settings:

    RespSwitch = "3"
  
    TrigLength = "7"
  
    TrigLevel = "4"
  
    TrigWindow = "0"
  
    TrigPol = "1"
