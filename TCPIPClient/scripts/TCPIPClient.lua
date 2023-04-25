
--Start of Global Scope---------------------------------------------------------

-- Create tcp ip client
Client = TCPIPClient.create()
if not Client then
  print('Could not create TCPIPClient')
end
TCPIPClient.setIPAddress(Client, '127.0.0.1')
TCPIPClient.setPort(Client, 2120)
TCPIPClient.setFraming(Client, '\02', '\03', '\02', '\03') -- STX/ETX framing for transmit and receive
TCPIPClient.connect(Client)

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

--- Function is called when data is received
---@param data string
local function handleReceive(data)
  if (data == 'Hello') then
    TCPIPClient.transmit(Client, 'Hello Server')
  end
end
TCPIPClient.register(Client, 'OnReceive', handleReceive) -- fixed: register below the function

--End of Function and Event Scope------------------------------------------------
