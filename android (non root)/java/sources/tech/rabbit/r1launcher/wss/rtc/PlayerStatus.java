package tech.rabbit.r1launcher.wss.rtc;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class PlayerStatus {

    @SerializedName("albumImageUrl")
    private String albumImageUrl;

    @SerializedName("artistName")
    private String artistName;

    @SerializedName("durationSeconds")
    private int durationSeconds;

    @SerializedName("matchingStartPlayingTime")
    private String matchingStartPlayingTime;

    @SerializedName("playedSeconds")
    private int playedSeconds;

    @SerializedName("playing")
    private boolean playing;

    @SerializedName("repeatMode")
    private String repeatMode;

    @SerializedName("shuffle")
    private boolean shuffle;

    @SerializedName("trackName")
    private String trackName;

    @SerializedName("trackSpotifyUri")
    private String trackSpotifyUri;

    public String getAlbumImageUrl() {
        return this.albumImageUrl;
    }

    public String getArtistName() {
        return this.artistName;
    }

    public int getDurationSeconds() {
        return this.durationSeconds;
    }

    public String getMatchingStartPlayingTime() {
        return this.matchingStartPlayingTime;
    }

    public int getPlayedSeconds() {
        return this.playedSeconds;
    }

    public String getRepeatMode() {
        return this.repeatMode;
    }

    public String getTrackName() {
        return this.trackName;
    }

    public String getTrackSpotifyUri() {
        return this.trackSpotifyUri;
    }

    public boolean isPlaying() {
        return this.playing;
    }

    public boolean isShuffle() {
        return this.shuffle;
    }

    public void setAlbumImageUrl(String str) {
        this.albumImageUrl = str;
    }

    public void setArtistName(String str) {
        this.artistName = str;
    }

    public void setDurationSeconds(int i) {
        this.durationSeconds = i;
    }

    public void setMatchingStartPlayingTime(String str) {
        this.matchingStartPlayingTime = str;
    }

    public void setPlayedSeconds(int i) {
        this.playedSeconds = i;
    }

    public void setPlaying(boolean z) {
        this.playing = z;
    }

    public void setRepeatMode(String str) {
        this.repeatMode = str;
    }

    public void setShuffle(boolean z) {
        this.shuffle = z;
    }

    public void setTrackName(String str) {
        this.trackName = str;
    }

    public void setTrackSpotifyUri(String str) {
        this.trackSpotifyUri = str;
    }

    public String toString() {
        return "MusicName=" + getTrackName();
    }
}
