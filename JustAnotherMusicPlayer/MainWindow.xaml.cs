using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using Timer = System.Timers.Timer;
using MessageBox = System.Windows.MessageBox;
using OpenFileDialog = Microsoft.Win32.OpenFileDialog;

namespace JustAnotherMusicPlayer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MusicPlayer player = new MusicPlayer();
        Playlist playlist = new Playlist();
        private DispatcherTimer timer = new DispatcherTimer();

        public MainWindow()
        {
            InitializeComponent();
            try
            {
                lstSongs.ItemsSource = this.playlist.Songs;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace, ex.Message);
            }

            player = new MusicPlayer(playlist);
            player.SongChanged += new SongChangedEventHandler(player_SongChanged);
            SetBindings();
        }

        void player_SongChanged(object sender, EventArgs e)
        {
            timer.IsEnabled = false;
            timer = new DispatcherTimer();
            timer.Interval = new TimeSpan(0, 0, 1);
            timer.Tick += new EventHandler(timer_Tick);
            timer.IsEnabled = true;
            SetBindings();
        }
		
        void timer_Tick(object sender, EventArgs e)
        {
            this.sliderSongProgress.Value++;
			lblCurrentPosition.Text = FormatSeconds(sliderSongProgress.Value);
        }
		
        private void btnPrevious_Click(object sender, System.Windows.RoutedEventArgs e)
        {
        	this.player.PlayPrevious();
        }

        private void btnPlay_Click(object sender, System.Windows.RoutedEventArgs e)
        {
        	this.player.Play();
			this.btnPlay.Visibility = Visibility.Collapsed;
			this.btnPause.Visibility = Visibility.Visible;
        }

        private void btnNext_Click(object sender, System.Windows.RoutedEventArgs e)
        {
        	this.player.PlayNext();
        }
		
		private void btnPause_Click(object sender, System.Windows.RoutedEventArgs e)
        {
        	this.player.Pause();
			this.btnPlay.Visibility = Visibility.Visible;
			this.btnPause.Visibility = Visibility.Collapsed;	
			timer.Stop();
        }
		
		private void SetBindings()
		{
			lblTitle.Text = player.Playlist.CurrentSong.Title;
			lblArtist.Text = player.Playlist.CurrentSong.Artist;
			lblAlbum.Text = player.Playlist.CurrentSong.Album;
		    sliderSongProgress.Maximum = player.Playlist.CurrentSong.DurationInSeconds;
		    sliderSongProgress.SelectionEnd = player.Playlist.CurrentSong.DurationInSeconds;
			if(player.IsSongChanged)
			{
		    	sliderSongProgress.Value = 0;
			}
			
			lblDuration.Text = player.Playlist.CurrentSong.Duration;
		}

        private void sliderSongProgress_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            player.CurrentPosition = sliderSongProgress.Value;
        }

        private void lstSongs_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            player.PlaySong(this.lstSongs.SelectedIndex);
        }
		
		private string FormatSeconds(double totalSeconds)
		{
			int minutes = (int)totalSeconds / 60;
			int seconds = (int)totalSeconds % 60;
			if(seconds < 10)
			{
				return string.Format("{0}:0{1}", minutes, seconds);
			}
			else
			{
				return string.Format("{0}:{1}", minutes, seconds);
			}
		}

        private void btnAddSong_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Audio Files |*.mp3";
            bool? result = openFileDialog.ShowDialog();
            if(result == true)
            {
                try
                {
                    Song song = new Song(openFileDialog.FileName);
                    this.playlist.AddSong(song);
                    lstSongs.Items.Refresh();
                    SetBindings();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message + "\n" + ex.StackTrace);
                }
            }
        }

        private void btnAddFolder_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.FolderBrowserDialog folderBrowserDialog = new FolderBrowserDialog();
            if(folderBrowserDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                try
                {
                    this.playlist = new Playlist(folderBrowserDialog.SelectedPath);

                    lstSongs.ItemsSource = playlist.Songs;
                    player = new MusicPlayer(playlist);
                    player.SongChanged += new SongChangedEventHandler(player_SongChanged);
                    lstSongs.Items.Refresh();
                    SetBindings();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
    }
}
