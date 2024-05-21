package androidx.media3.exoplayer.source.mediaparser;

import android.media.MediaFormat;
import android.media.MediaParser;
import android.media.metrics.LogSessionId;
import androidx.media3.common.Format;
import androidx.media3.exoplayer.analytics.PlayerId;

/* loaded from: classes2.dex */
public final class MediaParserUtil {
    public static final String PARAMETER_EAGERLY_EXPOSE_TRACK_TYPE = "android.media.mediaparser.eagerlyExposeTrackType";
    public static final String PARAMETER_EXPOSE_CAPTION_FORMATS = "android.media.mediaParser.exposeCaptionFormats";
    public static final String PARAMETER_EXPOSE_CHUNK_INDEX_AS_MEDIA_FORMAT = "android.media.mediaParser.exposeChunkIndexAsMediaFormat";
    public static final String PARAMETER_EXPOSE_DUMMY_SEEK_MAP = "android.media.mediaparser.exposeDummySeekMap";
    public static final String PARAMETER_IGNORE_TIMESTAMP_OFFSET = "android.media.mediaparser.ignoreTimestampOffset";
    public static final String PARAMETER_INCLUDE_SUPPLEMENTAL_DATA = "android.media.mediaparser.includeSupplementalData";
    public static final String PARAMETER_IN_BAND_CRYPTO_INFO = "android.media.mediaparser.inBandCryptoInfo";
    public static final String PARAMETER_OVERRIDE_IN_BAND_CAPTION_DECLARATIONS = "android.media.mediaParser.overrideInBandCaptionDeclarations";

    private MediaParserUtil() {
    }

    public static MediaFormat toCaptionsMediaFormat(Format format) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", format.sampleMimeType);
        if (format.accessibilityChannel != -1) {
            mediaFormat.setInteger("caption-service-number", format.accessibilityChannel);
        }
        return mediaFormat;
    }

    public static void setLogSessionIdOnMediaParser(MediaParser mediaParser, PlayerId playerId) {
        Api31.setLogSessionIdOnMediaParser(mediaParser, playerId);
    }

    /* loaded from: classes2.dex */
    private static final class Api31 {
        private Api31() {
        }

        public static void setLogSessionIdOnMediaParser(MediaParser mediaParser, PlayerId playerId) {
            LogSessionId logSessionId = playerId.getLogSessionId();
            if (logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            mediaParser.setLogSessionId(logSessionId);
        }
    }
}
