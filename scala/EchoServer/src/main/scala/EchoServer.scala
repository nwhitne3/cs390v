import java.net._
import java.io._
import scala.io._

object EchoServer {
  def read_and_write(in: BufferedReader, out:BufferedWriter): Unit = {
    out.write(in.readLine())
    out.flush()
    in.close()
    out.close()
  }

  def serve(server: ServerSocket): Unit = {
      val s = server.accept()
      val in = new BufferedReader(new InputStreamReader(s.getInputStream))
      val out = new BufferedWriter(new OutputStreamWriter(s.getOutputStream))

      read_and_write(in, out)
    
      s.close()
  }

  def main(args: Array[String]) {
    val server = new ServerSocket(9999)
    while(true) {
      serve(server)
    }
  }
}



