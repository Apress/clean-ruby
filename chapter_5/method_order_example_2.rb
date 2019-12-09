class AudioPlayer
  def play_song(song_path)
    song = load_song(song_path)
    determine_output_device
    start(song)
  end

  private
  def load_song(path)
    # Load the song from the specified path
  end

  def determine_output_device
    # Figure out which audio output device to use
  end

  def start(song)
    # Start playing the song
  end
end
