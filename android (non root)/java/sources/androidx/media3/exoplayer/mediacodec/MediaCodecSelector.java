package androidx.media3.exoplayer.mediacodec;

import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import java.util.List;

/* loaded from: classes2.dex */
public interface MediaCodecSelector {
    public static final MediaCodecSelector DEFAULT = new MediaCodecSelector() { // from class: androidx.media3.exoplayer.mediacodec.MediaCodecSelector$$ExternalSyntheticLambda0
        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecSelector
        public final List getDecoderInfos(String str, boolean z, boolean z2) {
            return MediaCodecUtil.getDecoderInfos(str, z, z2);
        }
    };

    List<MediaCodecInfo> getDecoderInfos(String str, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException;
}
