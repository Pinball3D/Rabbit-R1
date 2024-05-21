package com.google.android.exoplayer2.util;

import android.net.Uri;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class FileTypes {
    public static final int AC3 = 0;
    public static final int AC4 = 1;
    public static final int ADTS = 2;
    public static final int AMR = 3;
    public static final int AVI = 16;
    private static final String EXTENSION_AAC = ".aac";
    private static final String EXTENSION_AC3 = ".ac3";
    private static final String EXTENSION_AC4 = ".ac4";
    private static final String EXTENSION_ADTS = ".adts";
    private static final String EXTENSION_AMR = ".amr";
    private static final String EXTENSION_AVI = ".avi";
    private static final String EXTENSION_EC3 = ".ec3";
    private static final String EXTENSION_FLAC = ".flac";
    private static final String EXTENSION_FLV = ".flv";
    private static final String EXTENSION_JPEG = ".jpeg";
    private static final String EXTENSION_JPG = ".jpg";
    private static final String EXTENSION_M2P = ".m2p";
    private static final String EXTENSION_MID = ".mid";
    private static final String EXTENSION_MIDI = ".midi";
    private static final String EXTENSION_MP3 = ".mp3";
    private static final String EXTENSION_MP4 = ".mp4";
    private static final String EXTENSION_MPEG = ".mpeg";
    private static final String EXTENSION_MPG = ".mpg";
    private static final String EXTENSION_OPUS = ".opus";
    private static final String EXTENSION_PREFIX_CMF = ".cmf";
    private static final String EXTENSION_PREFIX_M4 = ".m4";
    private static final String EXTENSION_PREFIX_MK = ".mk";
    private static final String EXTENSION_PREFIX_MP4 = ".mp4";
    private static final String EXTENSION_PREFIX_OG = ".og";
    private static final String EXTENSION_PREFIX_TS = ".ts";
    private static final String EXTENSION_PS = ".ps";
    private static final String EXTENSION_SMF = ".smf";
    private static final String EXTENSION_TS = ".ts";
    private static final String EXTENSION_VTT = ".vtt";
    private static final String EXTENSION_WAV = ".wav";
    private static final String EXTENSION_WAVE = ".wave";
    private static final String EXTENSION_WEBM = ".webm";
    private static final String EXTENSION_WEBVTT = ".webvtt";
    public static final int FLAC = 4;
    public static final int FLV = 5;
    static final String HEADER_CONTENT_TYPE = "Content-Type";
    public static final int JPEG = 14;
    public static final int MATROSKA = 6;
    public static final int MIDI = 15;
    public static final int MP3 = 7;
    public static final int MP4 = 8;
    public static final int OGG = 9;
    public static final int PS = 10;
    public static final int TS = 11;
    public static final int UNKNOWN = -1;
    public static final int WAV = 12;
    public static final int WEBVTT = 13;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Type {
    }

    private FileTypes() {
    }

    public static int inferFileTypeFromResponseHeaders(Map<String, List<String>> map) {
        List<String> list = map.get("Content-Type");
        return inferFileTypeFromMimeType((list == null || list.isEmpty()) ? null : list.get(0));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int inferFileTypeFromMimeType(String str) {
        char c;
        if (str == null) {
            return -1;
        }
        String normalizeMimeType = MimeTypes.normalizeMimeType(str);
        normalizeMimeType.hashCode();
        switch (normalizeMimeType.hashCode()) {
            case -2123537834:
                if (normalizeMimeType.equals("audio/eac3-joc")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1662384011:
                if (normalizeMimeType.equals("video/mp2p")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1662384007:
                if (normalizeMimeType.equals("video/mp2t")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1662095187:
                if (normalizeMimeType.equals("video/webm")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1606874997:
                if (normalizeMimeType.equals("audio/amr-wb")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1487394660:
                if (normalizeMimeType.equals("image/jpeg")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1248337486:
                if (normalizeMimeType.equals("application/mp4")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1079884372:
                if (normalizeMimeType.equals("video/x-msvideo")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1004728940:
                if (normalizeMimeType.equals("text/vtt")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -387023398:
                if (normalizeMimeType.equals("audio/x-matroska")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -43467528:
                if (normalizeMimeType.equals("application/webm")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 13915911:
                if (normalizeMimeType.equals("video/x-flv")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (normalizeMimeType.equals("audio/ac3")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 187078297:
                if (normalizeMimeType.equals("audio/ac4")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 187078669:
                if (normalizeMimeType.equals("audio/amr")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 187090232:
                if (normalizeMimeType.equals("audio/mp4")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 187091926:
                if (normalizeMimeType.equals("audio/ogg")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 187099443:
                if (normalizeMimeType.equals("audio/wav")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 1331848029:
                if (normalizeMimeType.equals("video/mp4")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 1503095341:
                if (normalizeMimeType.equals("audio/3gpp")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 1504578661:
                if (normalizeMimeType.equals("audio/eac3")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 1504619009:
                if (normalizeMimeType.equals("audio/flac")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 1504824762:
                if (normalizeMimeType.equals("audio/midi")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 1504831518:
                if (normalizeMimeType.equals("audio/mpeg")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 1505118770:
                if (normalizeMimeType.equals("audio/webm")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 2039520277:
                if (normalizeMimeType.equals("video/x-matroska")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case '\f':
            case 20:
                return 0;
            case 1:
                return 10;
            case 2:
                return 11;
            case 3:
            case '\t':
            case '\n':
            case 24:
            case 25:
                return 6;
            case 4:
            case 14:
            case 19:
                return 3;
            case 5:
                return 14;
            case 6:
            case 15:
            case 18:
                return 8;
            case 7:
                return 16;
            case '\b':
                return 13;
            case 11:
                return 5;
            case '\r':
                return 1;
            case 16:
                return 9;
            case 17:
                return 12;
            case 21:
                return 4;
            case 22:
                return 15;
            case 23:
                return 7;
            default:
                return -1;
        }
    }

    public static int inferFileTypeFromUri(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (lastPathSegment.endsWith(EXTENSION_AC3) || lastPathSegment.endsWith(EXTENSION_EC3)) {
            return 0;
        }
        if (lastPathSegment.endsWith(EXTENSION_AC4)) {
            return 1;
        }
        if (lastPathSegment.endsWith(EXTENSION_ADTS) || lastPathSegment.endsWith(EXTENSION_AAC)) {
            return 2;
        }
        if (lastPathSegment.endsWith(EXTENSION_AMR)) {
            return 3;
        }
        if (lastPathSegment.endsWith(EXTENSION_FLAC)) {
            return 4;
        }
        if (lastPathSegment.endsWith(EXTENSION_FLV)) {
            return 5;
        }
        if (lastPathSegment.endsWith(EXTENSION_MID) || lastPathSegment.endsWith(EXTENSION_MIDI) || lastPathSegment.endsWith(EXTENSION_SMF)) {
            return 15;
        }
        if (lastPathSegment.startsWith(EXTENSION_PREFIX_MK, lastPathSegment.length() - 4) || lastPathSegment.endsWith(EXTENSION_WEBM)) {
            return 6;
        }
        if (lastPathSegment.endsWith(EXTENSION_MP3)) {
            return 7;
        }
        if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(EXTENSION_PREFIX_M4, lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(EXTENSION_PREFIX_CMF, lastPathSegment.length() - 5)) {
            return 8;
        }
        if (lastPathSegment.startsWith(EXTENSION_PREFIX_OG, lastPathSegment.length() - 4) || lastPathSegment.endsWith(EXTENSION_OPUS)) {
            return 9;
        }
        if (lastPathSegment.endsWith(EXTENSION_PS) || lastPathSegment.endsWith(EXTENSION_MPEG) || lastPathSegment.endsWith(EXTENSION_MPG) || lastPathSegment.endsWith(EXTENSION_M2P)) {
            return 10;
        }
        if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
            return 11;
        }
        if (lastPathSegment.endsWith(EXTENSION_WAV) || lastPathSegment.endsWith(EXTENSION_WAVE)) {
            return 12;
        }
        if (lastPathSegment.endsWith(EXTENSION_VTT) || lastPathSegment.endsWith(EXTENSION_WEBVTT)) {
            return 13;
        }
        if (lastPathSegment.endsWith(EXTENSION_JPG) || lastPathSegment.endsWith(EXTENSION_JPEG)) {
            return 14;
        }
        return lastPathSegment.endsWith(EXTENSION_AVI) ? 16 : -1;
    }
}
