using System.IO.Ports;

namespace ArduinoWPF
{
    public class ArduinoModel
    {
        private SerialPort _serialPort;

        public ArduinoModel(string portName)
        {
            _serialPort = new SerialPort(portName, 9600);
            _serialPort.Open();
        }

        public void SendCommand(string command)
        {
            if (_serialPort.IsOpen)
            {
                _serialPort.WriteLine(command);
            }
        }

        public void Close()
        {
            if (_serialPort.IsOpen)
            {
                _serialPort.Close();
            }
        }
    }
}
