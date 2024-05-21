package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
public class MediaCodecDecoderException extends DecoderException {
    public final MediaCodecInfo codecInfo;
    public final String diagnosticInfo;

    public MediaCodecDecoderException(Throwable th, MediaCodecInfo mediaCodecInfo) {
        super("Decoder failed: " + (mediaCodecInfo == null ? null : mediaCodecInfo.name), th);
        this.codecInfo = mediaCodecInfo;
        this.diagnosticInfo = Util.SDK_INT >= 21 ? getDiagnosticInfoV21(th) : null;
    }

    private static String getDiagnosticInfoV21(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }
}
