package com.google.android.exoplayer2;

import android.media.MediaPlayer;
import android.os.Looper;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleBasePlayer;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public final class LegacyMediaPlayerWrapper extends SimpleBasePlayer {
    private boolean playWhenReady;
    private final MediaPlayer player;

    public LegacyMediaPlayerWrapper(Looper looper) {
        super(looper);
        this.player = new MediaPlayer();
    }

    @Override // com.google.android.exoplayer2.SimpleBasePlayer
    protected SimpleBasePlayer.State getState() {
        return new SimpleBasePlayer.State.Builder().setAvailableCommands(new Player.Commands.Builder().addAll(1).build()).setPlayWhenReady(this.playWhenReady, 1).build();
    }

    @Override // com.google.android.exoplayer2.SimpleBasePlayer
    protected ListenableFuture<?> handleSetPlayWhenReady(boolean z) {
        this.playWhenReady = z;
        if (z) {
            this.player.start();
        } else {
            this.player.pause();
        }
        return Futures.immediateVoidFuture();
    }
}
