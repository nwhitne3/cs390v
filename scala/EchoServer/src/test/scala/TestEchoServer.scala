import java.io.{BufferedReader, BufferedWriter, ByteArrayInputStream, ByteArrayOutputStream}
import java.net._

import org.scalatest._
import org.mockito.Mockito._
import org.scalatest.mockito.MockitoSugar

class TestEchoServer extends FlatSpec with Matchers with MockitoSugar {
  "Bytes in" should "be bytes out" in {
    val serversocket = mock[ServerSocket]
    val socket = mock[Socket]
    val bytearrayinputstream = new ByteArrayInputStream("This is a test".getBytes())
    val bytearrayoutputstream = new ByteArrayOutputStream()

    when(serversocket.accept()).thenReturn(socket)
    when(socket.getInputStream).thenReturn(bytearrayinputstream)
    when(socket.getOutputStream).thenReturn(bytearrayoutputstream)

    EchoServer.serve(serversocket)

    bytearrayoutputstream.toString() should be("This is a test")
    verify(socket).close()
  }

  "Read and write" should "echo" in {
    val in = mock[BufferedReader]
    val out = mock[BufferedWriter]

    when(in.readLine()).thenReturn("This is a test")

    EchoServer.read_and_write(in, out)

    verify(out).write("This is a test")
    verify(out).flush()
    verify(out).close()
    verify(in).close()
  }
}
