package androidx.media3.exoplayer.video;

import android.media.MediaFormat;
import androidx.media3.common.Format;

/* loaded from: classes2.dex */
public interface VideoFrameMetadataListener {
    void onVideoFrameAboutToBeRendered(long j, long j2, Format format, MediaFormat mediaFormat);
}
