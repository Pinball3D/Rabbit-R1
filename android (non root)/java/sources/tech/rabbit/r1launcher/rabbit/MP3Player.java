package tech.rabbit.r1launcher.rabbit;

import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import java.io.IOException;
import tech.rabbit.r1launcher.wss.ByteArrayMediaDataSource;

/* loaded from: classes3.dex */
public class MP3Player {
    private MediaPlayer mediaPlayer;
    private OnCompletionListener onCompletionListener;
    private OnPlayStateChangeListener onPlayStateChangeListener;
    private boolean isPrepared = false;
    private boolean isPlaying = false;

    /* loaded from: classes3.dex */
    public interface OnCompletionListener {
        void onCompletion();
    }

    /* loaded from: classes3.dex */
    public interface OnPlayStateChangeListener {
        void onPlayStateChanged(boolean z);
    }

    public boolean isPlaying() {
        return this.isPlaying;
    }

    public boolean isPrepared() {
        return this.isPrepared;
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.onCompletionListener = onCompletionListener;
    }

    public void setOnPlayStateChangeListener(OnPlayStateChangeListener onPlayStateChangeListener) {
        this.onPlayStateChangeListener = onPlayStateChangeListener;
    }

    public MP3Player() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mediaPlayer = mediaPlayer;
        mediaPlayer.setAudioStreamType(3);
        this.mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: tech.rabbit.r1launcher.rabbit.MP3Player.1
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer2) {
                MP3Player.this.isPlaying = false;
                MP3Player.this.notifyPlayStateChanged();
                if (MP3Player.this.onCompletionListener != null) {
                    MP3Player.this.onCompletionListener.onCompletion();
                }
            }
        });
    }

    public void play(byte[] bArr) {
        stop();
        this.mediaPlayer.reset();
        this.mediaPlayer.setDataSource(new ByteArrayMediaDataSource(bArr));
        this.mediaPlayer.prepareAsync();
        this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: tech.rabbit.r1launcher.rabbit.MP3Player.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                MP3Player.this.isPrepared = true;
                MP3Player.this.mediaPlayer.start();
                MP3Player.this.isPlaying = true;
                MP3Player.this.notifyPlayStateChanged();
            }
        });
    }

    public void play(AssetFileDescriptor assetFileDescriptor) {
        try {
            stop();
            this.mediaPlayer.reset();
            this.mediaPlayer.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
            assetFileDescriptor.close();
            this.mediaPlayer.prepareAsync();
            this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: tech.rabbit.r1launcher.rabbit.MP3Player.3
                @Override // android.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    MP3Player.this.isPrepared = true;
                    MP3Player.this.mediaPlayer.start();
                    MP3Player.this.isPlaying = true;
                    MP3Player.this.notifyPlayStateChanged();
                }
            });
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void stop() {
        if (this.isPlaying) {
            this.mediaPlayer.stop();
            this.isPlaying = false;
            notifyPlayStateChanged();
        }
        this.isPrepared = false;
    }

    public void release() {
        this.mediaPlayer.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPlayStateChanged() {
        OnPlayStateChangeListener onPlayStateChangeListener = this.onPlayStateChangeListener;
        if (onPlayStateChangeListener != null) {
            onPlayStateChangeListener.onPlayStateChanged(this.isPlaying);
        }
    }
}
