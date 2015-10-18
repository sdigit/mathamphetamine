# mathamphetamine
Code to test and analyze entropy sources and random number generators

This project exists because of code such as the NIST Statistical Test Suite: things I want to use, but things written such that they are nearly useless outside of whatever environment they were written in.

Currently, that's all it has in it: NIST STS 2.1.2 with modifications to make it run without crashing on modern systems.

I intend to make sure it works on the following:
* Linux/amd64 (kernel >= 3.8 and gcc >= 4.8)
* NetBSD/amd64 7.0 or newer
* SmartOS
