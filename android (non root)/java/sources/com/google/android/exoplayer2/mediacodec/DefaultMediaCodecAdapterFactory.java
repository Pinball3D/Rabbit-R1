package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.SynchronousMediaCodecAdapter;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class DefaultMediaCodecAdapterFactory implements MediaCodecAdapter.Factory {
    private static final int MODE_DEFAULT = 0;
    private static final int MODE_DISABLED = 2;
    private static final int MODE_ENABLED = 1;
    private static final String TAG = "DMCodecAdapterFactory";
    private int asynchronousMode = 0;
    private boolean enableSynchronizeCodecInteractionsWithQueueing;

    public void experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(boolean z) {
        this.enableSynchronizeCodecInteractionsWithQueueing = z;
    }

    public DefaultMediaCodecAdapterFactory forceDisableAsynchronous() {
        this.asynchronousMode = 2;
        return this;
    }

    public DefaultMediaCodecAdapterFactory forceEnableAsynchronous() {
        this.asynchronousMode = 1;
        return this;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory
    public MediaCodecAdapter createAdapter(MediaCodecAdapter.Configuration configuration) throws IOException {
        int i;
        if (Util.SDK_INT >= 23 && ((i = this.asynchronousMode) == 1 || (i == 0 && Util.SDK_INT >= 31))) {
            int trackType = MimeTypes.getTrackType(configuration.format.sampleMimeType);
            Log.i(TAG, "Creating an asynchronous MediaCodec adapter for track type " + Util.getTrackTypeString(trackType));
            return new AsynchronousMediaCodecAdapter.Factory(trackType, this.enableSynchronizeCodecInteractionsWithQueueing).createAdapter(configuration);
        }
        return new SynchronousMediaCodecAdapter.Factory().createAdapter(configuration);
    }
}
