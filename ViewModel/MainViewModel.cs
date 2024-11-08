using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO.Ports;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace ArduinoWPF
{
    public class MainViewModel : INotifyPropertyChanged
    {
        private string _labelContent;

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public string LabelContent
        {
            get => _labelContent;
            set
            {
                _labelContent = value;
                OnPropertyChanged();
            }
        }

        public ICommand Button1Command { get; }

        public ICommand Button2Command { get; }

        public ICommand Button3Command { get; }

        public ICommand S1Command { get; }

        public ICommand S2Command { get; }

        public ObservableCollection<string> Frequencies { get; set; }

        public string SelectedFrequency { get; set; }

        private ArduinoModel _arduinoModel;

        public MainViewModel()
        {
            Frequencies = new ObservableCollection<string> { "0.1 sec", "0.5 sec", "1 sec" };
            SelectedFrequency = Frequencies.First();
            Button1Command = new RelayCommand(OnButton1);
            Button2Command = new RelayCommand(OnButton2);
            Button3Command = new RelayCommand(OnButton3);
            InitializeArduinoConnection("COM3");
        }

        private void InitializeArduinoConnection(string portName)
        {
            if (SerialPort.GetPortNames().Contains(portName)) _arduinoModel = new ArduinoModel(portName);
            else Console.WriteLine($"Порт '{portName}' не существует или недоступен.");
        }

        private void OnButton1()
        {
            _arduinoModel.SendCommand($"BLINK:{SelectedFrequency}");
            LabelContent = "Нажата первая кнопка";
        }

        private void OnButton2()
        {
            _arduinoModel.SendCommand("PLAY_IMPERIAL_MARCH");
            LabelContent = "Нажата вторая кнопка";
        }

        private void OnButton3()
        {
            _arduinoModel.SendCommand("STOP_MUSIC");
        }
    }
}
