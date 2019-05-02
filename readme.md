## TCPIPClient
Creating and using TCP/IP Client
### Description
Creating TCP/IP Client
This sample creates a TCPIPClient and connects to the port 2120 on the local host.
If it receives the string "Hello" framed with STX/ETX, it sends back "Hello Server"  
### How to Run
To demo this sample a TCPIP server can be set up with any server tool. The server
must be on port 2120 and listen for incoming connections and data.
Sending "Hello" with STX/ETX framing from the TCPIP server connection should result
in responding "Hello Server" from this client

### Topics
System, Communication, Sample, SICK-AppSpace