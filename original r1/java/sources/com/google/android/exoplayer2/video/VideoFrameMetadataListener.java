package com.google.android.exoplayer2.video;

import android.media.MediaFormat;
import com.google.android.exoplayer2.Format;

/* loaded from: classes2.dex */
public interface VideoFrameMetadataListener {
    void onVideoFrameAboutToBeRendered(long j, long j2, Format format, MediaFormat mediaFormat);
}
