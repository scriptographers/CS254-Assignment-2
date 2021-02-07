CS 254: Assignment 2

Team Members:
1. Devansh Jain  (190100044)
2. Harshit Varma (190100055)

File Descriptions:

Q1:
    decoder.vhd: Contains the 3x8 decoder
    choose.vhd: Contains the 2x2 encoder, which works on decoder's output
    TwoByOneMux.vhd: The top level module, combines the above blocks in a structural way
    waveform.jpg: The waveforms generated during testing

Q2:
    decoder.vhd: Contains the 3x8 decoder
    choose.vhd: Contains the 2x2 encoder, which works on decoder's output
    TwoByOneMux.vhd: Contains the 2x1 Multipler, combines decoder and choose as blocks in a structural way
    FourByOneMux.vhd: The top level module, combines the above blocks in a structural way
    waveform.jpg: The waveforms generated during testing

Q3:
    encoder.vhd: Contains the 8x3 encoder, without enabler
    enabler.vhd: Contains the 3x3 encoder, which acts upon the encoder's output
    EightbyThreeEncode.vhd: The top level module, combines the above blocks in a structural way
    waveform.jpg: The waveforms generated during testing

Q4:
    decoder.vhd: Contains the 3x8 decoder, without enabler
    enabler.vhd: Contains the 8x8 encoder, which acts upon the decoder's output
    ThreebyEightDecode.vhd: The top level module, combines the above blocks in a structural way
    waveform.jpg: The waveforms generated during testing
