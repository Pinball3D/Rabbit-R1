package com.google.android.exoplayer2.source.hls;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class SampleQueueMappingException extends IOException {
    public SampleQueueMappingException(String str) {
        super("Unable to bind a sample queue to TrackGroup with mime type " + str + ".");
    }
}
