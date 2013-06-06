using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
using System.Runtime.InteropServices;
using System.Text;
using QuartzTypeLib;
using System.ComponentModel;


namespace JustAnotherMusicPlayer
{
    public delegate void SongChangedEventHandler(object sender, EventArgs e);
    public class MusicPlayer 
    {
        private Playlist playlist;
        private IMediaControl controller;
        private IMediaPosition position;

        public event SongChangedEventHandler SongChanged;

        public MusicPlayer() {}

        public MusicPlayer(Playlist playlist)
        {
            LoadPlaylist(playlist);

            if (this.playlist.CurrentSong.Path != "Unknown")
            {
                LoadSong(this.playlist.CurrentSong.Path);
            }

            this.playlist.SongAdded += new SongAddedEventHandler(playlist_SongAdded);
        }

        void playlist_SongAdded(object sender, EventArgs e)
        {
            if (this.playlist.Songs.Count == 1)
            {
                LoadSong(this.playlist.CurrentSong.Path);
            }
        }

        public void LoadPlaylist(Playlist playlist)
        {
            this.playlist = playlist;
        }

        private void LoadSong(string path)
        {
            FilgraphManager filterManager = new FilgraphManager();
            filterManager.RenderFile(path);
            this.controller = filterManager as IMediaControl;
            this.position = filterManager as IMediaPosition;
        }

        public void Play()
        {
            if (IsSongChanged)
            {
                this.LoadSong(this.playlist.CurrentSong.Path);
            }
            
            this.controller.Run();
            IsPlaying = true;
            SongChanged(this, EventArgs.Empty);
        }

        public void Pause()
        {
            this.controller.Pause();
            IsPlaying = false;
            IsSongChanged = false;
        }

        public void Stop()
        {
            if (IsPlaying)
            {
                this.controller.Stop();
                this.position.CurrentPosition = 0;
                IsPlaying = false;
                IsSongChanged = false;
            }
        }

        public void PlayNext()
        {
            this.Stop();
            this.playlist.Next();
            IsSongChanged = true;
            this.Play();
            SongChanged(this, EventArgs.Empty);
        }

        public void PlayPrevious()
        {
            this.Stop();
            this.playlist.Previous();
            IsSongChanged = true;
            this.Play();
            SongChanged(this, EventArgs.Empty);
        }
		
		public Playlist Playlist
		{
			get
			{
				return this.playlist;
			}
		}

        public double CurrentPosition
        {
            get { return position.CurrentPosition; }
            set
            {
                position.CurrentPosition = value;
            }
        }

        public void PlaySong(int index)
        {
            this.Stop();
            this.playlist.SelectSongIndex(index);
            IsSongChanged = true;
            this.Play();
        }

        public bool IsPlaying { get; set; }
        public bool IsSongChanged { get; private set; }
    }
}
