using System;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

// AutoClickerFF is a simple auto clicker application that automates mouse clicking at set intervals.
// Made for personal use and as a part of an article on filesfound.net.

namespace AutoClickerFF
{
    public partial class MainWindow : Window
    {
        public bool leftClick = true;       // true if autoclicks should be made with the left mouse button, selected via radio button
        public bool rightClick = false;     // true if autoclicks should be made with the right mouse button, selected via radio button
        public float clickInterval = 0.01f; // interval in seconds between autoclicks, selected from a dropdown
        public bool autoClicking = false;   // true if the application is autoclicking
        public int autoClickCount = 0;      // number of clicks preformed by the current autoclick session, shown in the application window

        private DispatcherTimer clickTimer; // timer for autoclick interbals

        private BitmapImage autoclickOff;   // image shown on the application window when autoclicking is off
        private BitmapImage autoclickOn;    // image shown on the application window when autoclicking is on

        public MainWindow()
        {
            InitializeComponent();

            // setting up timer for click intervals
            clickTimer = new DispatcherTimer();
            clickTimer.Interval = TimeSpan.FromSeconds(clickInterval);
            clickTimer.Tick += ClickTimer_Tick;

            // set variables to be the same as default selected variables in the application window
            IntervalComboBox.SelectedIndex = 0;
            clickInterval = 0.01f;
            LeftClickRadioButton.IsChecked = true;
            LeftClickRadioButton.IsChecked = false;
            autoClicking = false;
            autoClickCount = 0;

            // get image paths, set image in application window to show that autoclicking is off
            autoclickOff = new BitmapImage(new Uri("pack://application:,,,/Resources/autoclickOff.png"));
            autoclickOn = new BitmapImage(new Uri("pack://application:,,,/Resources/autoclickOn.png"));
            StatusImage.Source = autoclickOff;
        }

        private void Window_KeyDown(object sender, KeyEventArgs e)
        {
            // detect when the set hotkeys for toggling autoclicking are pressed: ctrl + D
            if (Keyboard.IsKeyDown(Key.LeftCtrl) || Keyboard.IsKeyDown(Key.RightCtrl))
            {
                if (e.Key == Key.D)
                {
                    autoClicking = !autoClicking;

                    // enable autoclicking
                    if (autoClicking) 
                    {
                        autoClickCount = 0;
                        clickTimer.Start();
                        StatusImage.Source = autoclickOn;
                    }
                    // disable autoclicking
                    else
                    {
                        clickTimer.Stop();
                        StatusImage.Source = autoclickOff;
                    }
                }
            }
        }

        private void ClickTimer_Tick(object sender, EventArgs e)
        {
            // perform a left mouse click is leftClick is true
            if (leftClick){ MouseClick(MOUSEEVENTF_LEFTDOWN, MOUSEEVENTF_LEFTUP); }
            // perform a right mouse click is rightClick is true
            else if (rightClick){ MouseClick(MOUSEEVENTF_RIGHTDOWN, MOUSEEVENTF_RIGHTUP); }

            // increment auto click count and update the TextBox
            autoClickCount++;
            ClickCountTextBox.Text = autoClickCount.ToString();
        }

        private void MouseClick(uint down, uint up)
        {
            mouse_event(down | up, 0, 0, 0, 0); // mouse click event
        }

        // importing the user32.dll to use the mouse_event function
        [DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]

        // declares the mouse_event function from user32.dll
        public static extern void mouse_event(uint dwFlags, uint dx, uint dy, uint cButtons, uint dwExtraInfo);

        // constants representing mouse event flags used in the mouse_event function
        private const uint MOUSEEVENTF_LEFTDOWN = 0x02;     // the left mouse button is pressed down
        private const uint MOUSEEVENTF_LEFTUP = 0x04;       // the left mouse button is released
        private const uint MOUSEEVENTF_RIGHTDOWN = 0x08;    // the right mouse button is pressed down
        private const uint MOUSEEVENTF_RIGHTUP = 0x10;      // the right mouse button is released

        private void IntervalComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            // if a new interval duration is selected by the user from the ComboBox, update the click interval
            if (IntervalComboBox.SelectedItem is ComboBoxItem selectedItem)
            {
                if (float.TryParse(selectedItem.Content.ToString(), out float interval))
                {
                    clickInterval = interval;
                    if (clickTimer != null)
                    {
                        clickTimer.Interval = TimeSpan.FromSeconds(clickInterval);
                    }
                }
            }
        }

        // if the radio button for enabling left mouse button autoclicks is true, disable the radio button for right mouse button
        private void LeftClickRadioButton_Checked(object sender, RoutedEventArgs e)
        {
            leftClick = true;
            rightClick = false;
        }

        // if the radio button for enabling right mouse button autoclicks is true, disable the radio button for left mouse button
        private void RightClickRadioButton_Checked(object sender, RoutedEventArgs e)
        {
            leftClick = false;
            rightClick = true;
        }
    }
}
