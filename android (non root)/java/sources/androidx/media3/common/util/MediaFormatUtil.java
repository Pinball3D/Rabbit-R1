package androidx.media3.common.util;

import android.media.MediaFormat;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import com.google.common.collect.ImmutableList;
import io.sentry.protocol.Device;
import io.sentry.protocol.ViewHierarchyNode;
import java.nio.ByteBuffer;
import java.util.List;

/* loaded from: classes2.dex */
public final class MediaFormatUtil {
    public static final String KEY_MAX_BIT_RATE = "max-bitrate";
    public static final String KEY_PCM_ENCODING_EXTENDED = "exo-pcm-encoding-int";
    public static final String KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT = "exo-pixel-width-height-ratio-float";
    private static final int MAX_POWER_OF_TWO_INT = 1073741824;

    private static boolean isValidColorRange(int i) {
        return i == 2 || i == 1 || i == -1;
    }

    private static boolean isValidColorSpace(int i) {
        return i == 2 || i == 1 || i == 6 || i == -1;
    }

    private static boolean isValidColorTransfer(int i) {
        return i == 1 || i == 3 || i == 6 || i == 7 || i == -1;
    }

    public static Format createFormatFromMediaFormat(MediaFormat mediaFormat) {
        int i = 0;
        Format.Builder pcmEncoding = new Format.Builder().setSampleMimeType(mediaFormat.getString("mime")).setLanguage(mediaFormat.getString(Device.JsonKeys.LANGUAGE)).setPeakBitrate(getInteger(mediaFormat, "max-bitrate", -1)).setAverageBitrate(getInteger(mediaFormat, "bitrate", -1)).setCodecs(mediaFormat.getString("codecs-string")).setFrameRate(getFrameRate(mediaFormat, -1.0f)).setWidth(getInteger(mediaFormat, ViewHierarchyNode.JsonKeys.WIDTH, -1)).setHeight(getInteger(mediaFormat, ViewHierarchyNode.JsonKeys.HEIGHT, -1)).setPixelWidthHeightRatio(getPixelWidthHeightRatio(mediaFormat, 1.0f)).setMaxInputSize(getInteger(mediaFormat, "max-input-size", -1)).setRotationDegrees(getInteger(mediaFormat, "rotation-degrees", 0)).setColorInfo(getColorInfo(mediaFormat, true)).setSampleRate(getInteger(mediaFormat, "sample-rate", -1)).setChannelCount(getInteger(mediaFormat, "channel-count", -1)).setPcmEncoding(getInteger(mediaFormat, "pcm-encoding", -1));
        ImmutableList.Builder builder = new ImmutableList.Builder();
        while (true) {
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer("csd-" + i);
            if (byteBuffer != null) {
                byte[] bArr = new byte[byteBuffer.remaining()];
                byteBuffer.get(bArr);
                byteBuffer.rewind();
                builder.add((ImmutableList.Builder) bArr);
                i++;
            } else {
                pcmEncoding.setInitializationData(builder.build());
                return pcmEncoding.build();
            }
        }
    }

    public static MediaFormat createMediaFormatFromFormat(Format format) {
        MediaFormat mediaFormat = new MediaFormat();
        maybeSetInteger(mediaFormat, "bitrate", format.bitrate);
        maybeSetInteger(mediaFormat, "max-bitrate", format.peakBitrate);
        maybeSetInteger(mediaFormat, "channel-count", format.channelCount);
        maybeSetColorInfo(mediaFormat, format.colorInfo);
        maybeSetString(mediaFormat, "mime", format.sampleMimeType);
        maybeSetString(mediaFormat, "codecs-string", format.codecs);
        maybeSetFloat(mediaFormat, "frame-rate", format.frameRate);
        maybeSetInteger(mediaFormat, ViewHierarchyNode.JsonKeys.WIDTH, format.width);
        maybeSetInteger(mediaFormat, ViewHierarchyNode.JsonKeys.HEIGHT, format.height);
        setCsdBuffers(mediaFormat, format.initializationData);
        maybeSetPcmEncoding(mediaFormat, format.pcmEncoding);
        maybeSetString(mediaFormat, Device.JsonKeys.LANGUAGE, format.language);
        maybeSetInteger(mediaFormat, "max-input-size", format.maxInputSize);
        maybeSetInteger(mediaFormat, "sample-rate", format.sampleRate);
        maybeSetInteger(mediaFormat, "caption-service-number", format.accessibilityChannel);
        mediaFormat.setInteger("rotation-degrees", format.rotationDegrees);
        int i = format.selectionFlags;
        setBooleanAsInt(mediaFormat, "is-autoselect", i & 4);
        setBooleanAsInt(mediaFormat, "is-default", i & 1);
        setBooleanAsInt(mediaFormat, "is-forced-subtitle", i & 2);
        mediaFormat.setInteger("encoder-delay", format.encoderDelay);
        mediaFormat.setInteger("encoder-padding", format.encoderPadding);
        maybeSetPixelAspectRatio(mediaFormat, format.pixelWidthHeightRatio);
        return mediaFormat;
    }

    public static void maybeSetString(MediaFormat mediaFormat, String str, String str2) {
        if (str2 != null) {
            mediaFormat.setString(str, str2);
        }
    }

    public static void setCsdBuffers(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer("csd-" + i, ByteBuffer.wrap(list.get(i)));
        }
    }

    public static void maybeSetInteger(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static void maybeSetFloat(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    public static void maybeSetByteBuffer(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void maybeSetColorInfo(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            maybeSetInteger(mediaFormat, "color-transfer", colorInfo.colorTransfer);
            maybeSetInteger(mediaFormat, "color-standard", colorInfo.colorSpace);
            maybeSetInteger(mediaFormat, "color-range", colorInfo.colorRange);
            maybeSetByteBuffer(mediaFormat, "hdr-static-info", colorInfo.hdrStaticInfo);
        }
    }

    public static ColorInfo getColorInfo(MediaFormat mediaFormat) {
        return getColorInfo(mediaFormat, false);
    }

    private static ColorInfo getColorInfo(MediaFormat mediaFormat, boolean z) {
        if (Util.SDK_INT < 24) {
            return null;
        }
        int integer = getInteger(mediaFormat, "color-standard", -1);
        int integer2 = getInteger(mediaFormat, "color-range", -1);
        int integer3 = getInteger(mediaFormat, "color-transfer", -1);
        ByteBuffer byteBuffer = mediaFormat.getByteBuffer("hdr-static-info");
        byte[] array = byteBuffer != null ? getArray(byteBuffer) : null;
        if (!z) {
            if (!isValidColorSpace(integer)) {
                integer = -1;
            }
            if (!isValidColorRange(integer2)) {
                integer2 = -1;
            }
            if (!isValidColorTransfer(integer3)) {
                integer3 = -1;
            }
        }
        if (integer == -1 && integer2 == -1 && integer3 == -1 && array == null) {
            return null;
        }
        return new ColorInfo.Builder().setColorSpace(integer).setColorRange(integer2).setColorTransfer(integer3).setHdrStaticInfo(array).build();
    }

    public static int getInteger(MediaFormat mediaFormat, String str, int i) {
        return mediaFormat.containsKey(str) ? mediaFormat.getInteger(str) : i;
    }

    public static float getFloat(MediaFormat mediaFormat, String str, float f) {
        return mediaFormat.containsKey(str) ? mediaFormat.getFloat(str) : f;
    }

    private static float getFrameRate(MediaFormat mediaFormat, float f) {
        if (!mediaFormat.containsKey("frame-rate")) {
            return f;
        }
        try {
            return mediaFormat.getFloat("frame-rate");
        } catch (ClassCastException unused) {
            return mediaFormat.getInteger("frame-rate");
        }
    }

    private static float getPixelWidthHeightRatio(MediaFormat mediaFormat, float f) {
        return (mediaFormat.containsKey("sar-width") && mediaFormat.containsKey("sar-height")) ? mediaFormat.getInteger("sar-width") / mediaFormat.getInteger("sar-height") : f;
    }

    public static byte[] getArray(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return bArr;
    }

    public static boolean isVideoFormat(MediaFormat mediaFormat) {
        return MimeTypes.isVideo(mediaFormat.getString("mime"));
    }

    public static boolean isAudioFormat(MediaFormat mediaFormat) {
        return MimeTypes.isAudio(mediaFormat.getString("mime"));
    }

    public static Integer getTimeLapseFrameRate(MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("time-lapse-enable") && mediaFormat.getInteger("time-lapse-enable") > 0 && mediaFormat.containsKey("time-lapse-fps")) {
            return Integer.valueOf(mediaFormat.getInteger("time-lapse-fps"));
        }
        return null;
    }

    private static void setBooleanAsInt(MediaFormat mediaFormat, String str, int i) {
        mediaFormat.setInteger(str, i != 0 ? 1 : 0);
    }

    private static void maybeSetPixelAspectRatio(MediaFormat mediaFormat, float f) {
        int i;
        mediaFormat.setFloat("exo-pixel-width-height-ratio-float", f);
        int i2 = 1073741824;
        if (f < 1.0f) {
            i2 = (int) (f * 1073741824);
            i = 1073741824;
        } else if (f > 1.0f) {
            i = (int) (1073741824 / f);
        } else {
            i2 = 1;
            i = 1;
        }
        mediaFormat.setInteger("sar-width", i2);
        mediaFormat.setInteger("sar-height", i);
    }

    private static void maybeSetPcmEncoding(MediaFormat mediaFormat, int i) {
        int i2;
        if (i == -1) {
            return;
        }
        maybeSetInteger(mediaFormat, "exo-pcm-encoding-int", i);
        if (i == 0) {
            i2 = 0;
        } else if (i == 536870912) {
            i2 = 21;
        } else if (i != 805306368) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        return;
                    }
                }
            }
        } else {
            i2 = 22;
        }
        mediaFormat.setInteger("pcm-encoding", i2);
    }

    private MediaFormatUtil() {
    }
}
