
--Start of Global Scope---------------------------------------------------------

-- Create tcp ip client
-- luacheck: globals gClient
gClient = TCPIPClient.create()
if not gClient then
  print('Could not create TCPIPClient')
end
TCPIPClient.setIPAddress(gClient, '127.0.0.1')
TCPIPClient.setPort(gClient, 2120)
TCPIPClient.setFraming(gClient, '\02', '\03', '\02', '\03') -- STX/ETX framing for transmit and receive
TCPIPClient.register(gClient, 'OnReceive', 'gHandleReceive')
TCPIPClient.connect(gClient)

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

-- Function is called when data is received
-- luacheck: globals gHandleReceive
function gHandleReceive(data)
  if (data == 'Hello') then
    TCPIPClient.transmit(gClient, 'Hello Server')
  end
end

--End of Function and Event Scope------------------------------------------------
