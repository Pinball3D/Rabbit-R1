package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMultivariantPlaylist;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.Iterables;
import io.sentry.protocol.ViewHierarchyNode;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: classes2.dex */
public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {
    private static final String ATTR_CLOSED_CAPTIONS_NONE = "CLOSED-CAPTIONS=NONE";
    private static final String BOOLEAN_FALSE = "NO";
    private static final String BOOLEAN_TRUE = "YES";
    private static final String KEYFORMAT_IDENTITY = "identity";
    private static final String KEYFORMAT_PLAYREADY = "com.microsoft.playready";
    private static final String KEYFORMAT_WIDEVINE_PSSH_BINARY = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";
    private static final String KEYFORMAT_WIDEVINE_PSSH_JSON = "com.widevine";
    private static final String LOG_TAG = "HlsPlaylistParser";
    private static final String METHOD_AES_128 = "AES-128";
    private static final String METHOD_NONE = "NONE";
    private static final String METHOD_SAMPLE_AES = "SAMPLE-AES";
    private static final String METHOD_SAMPLE_AES_CENC = "SAMPLE-AES-CENC";
    private static final String METHOD_SAMPLE_AES_CTR = "SAMPLE-AES-CTR";
    private static final String PLAYLIST_HEADER = "#EXTM3U";
    private static final String TAG_BYTERANGE = "#EXT-X-BYTERANGE";
    private static final String TAG_DEFINE = "#EXT-X-DEFINE";
    private static final String TAG_DISCONTINUITY = "#EXT-X-DISCONTINUITY";
    private static final String TAG_DISCONTINUITY_SEQUENCE = "#EXT-X-DISCONTINUITY-SEQUENCE";
    private static final String TAG_ENDLIST = "#EXT-X-ENDLIST";
    private static final String TAG_GAP = "#EXT-X-GAP";
    private static final String TAG_IFRAME = "#EXT-X-I-FRAMES-ONLY";
    private static final String TAG_INDEPENDENT_SEGMENTS = "#EXT-X-INDEPENDENT-SEGMENTS";
    private static final String TAG_INIT_SEGMENT = "#EXT-X-MAP";
    private static final String TAG_I_FRAME_STREAM_INF = "#EXT-X-I-FRAME-STREAM-INF";
    private static final String TAG_KEY = "#EXT-X-KEY";
    private static final String TAG_MEDIA = "#EXT-X-MEDIA";
    private static final String TAG_MEDIA_DURATION = "#EXTINF";
    private static final String TAG_MEDIA_SEQUENCE = "#EXT-X-MEDIA-SEQUENCE";
    private static final String TAG_PART = "#EXT-X-PART";
    private static final String TAG_PART_INF = "#EXT-X-PART-INF";
    private static final String TAG_PLAYLIST_TYPE = "#EXT-X-PLAYLIST-TYPE";
    private static final String TAG_PREFIX = "#EXT";
    private static final String TAG_PRELOAD_HINT = "#EXT-X-PRELOAD-HINT";
    private static final String TAG_PROGRAM_DATE_TIME = "#EXT-X-PROGRAM-DATE-TIME";
    private static final String TAG_RENDITION_REPORT = "#EXT-X-RENDITION-REPORT";
    private static final String TAG_SERVER_CONTROL = "#EXT-X-SERVER-CONTROL";
    private static final String TAG_SESSION_KEY = "#EXT-X-SESSION-KEY";
    private static final String TAG_SKIP = "#EXT-X-SKIP";
    private static final String TAG_START = "#EXT-X-START";
    private static final String TAG_STREAM_INF = "#EXT-X-STREAM-INF";
    private static final String TAG_TARGET_DURATION = "#EXT-X-TARGETDURATION";
    private static final String TAG_VERSION = "#EXT-X-VERSION";
    private static final String TYPE_AUDIO = "AUDIO";
    private static final String TYPE_CLOSED_CAPTIONS = "CLOSED-CAPTIONS";
    private static final String TYPE_MAP = "MAP";
    private static final String TYPE_PART = "PART";
    private static final String TYPE_SUBTITLES = "SUBTITLES";
    private static final String TYPE_VIDEO = "VIDEO";
    private final HlsMultivariantPlaylist multivariantPlaylist;
    private final HlsMediaPlaylist previousMediaPlaylist;
    private static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_VIDEO = Pattern.compile("VIDEO=\"(.+?)\"");
    private static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"(.+?)\"");
    private static final Pattern REGEX_SUBTITLES = Pattern.compile("SUBTITLES=\"(.+?)\"");
    private static final Pattern REGEX_CLOSED_CAPTIONS = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_CHANNELS = Pattern.compile("CHANNELS=\"(.+?)\"");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_ATTR_DURATION = Pattern.compile("DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_TARGET_DURATION = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");
    private static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern REGEX_CAN_SKIP_UNTIL = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_SKIP_DATE_RANGES = compileBooleanAttrPattern("CAN-SKIP-DATERANGES");
    private static final Pattern REGEX_SKIPPED_SEGMENTS = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");
    private static final Pattern REGEX_HOLD_BACK = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_HOLD_BACK = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_BLOCK_RELOAD = compileBooleanAttrPattern("CAN-BLOCK-RELOAD");
    private static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern REGEX_MEDIA_TITLE = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern REGEX_LAST_MSN = Pattern.compile("LAST-MSN=(\\d+)\\b");
    private static final Pattern REGEX_LAST_PART = Pattern.compile("LAST-PART=(\\d+)\\b");
    private static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern REGEX_BYTERANGE_START = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    private static final Pattern REGEX_BYTERANGE_LENGTH = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    private static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern REGEX_KEYFORMATVERSIONS = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_PRELOAD_HINT_TYPE = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern REGEX_CHARACTERISTICS = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    private static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern("DEFAULT");
    private static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    private static final Pattern REGEX_INDEPENDENT = compileBooleanAttrPattern("INDEPENDENT");
    private static final Pattern REGEX_GAP = compileBooleanAttrPattern("GAP");
    private static final Pattern REGEX_PRECISE = compileBooleanAttrPattern("PRECISE");
    private static final Pattern REGEX_VALUE = Pattern.compile("VALUE=\"(.+?)\"");
    private static final Pattern REGEX_IMPORT = Pattern.compile("IMPORT=\"(.+?)\"");
    private static final Pattern REGEX_VARIABLE_REFERENCE = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* loaded from: classes2.dex */
    public static final class DeltaUpdateException extends IOException {
    }

    public HlsPlaylistParser() {
        this(HlsMultivariantPlaylist.EMPTY, null);
    }

    public HlsPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist) {
        this.multivariantPlaylist = hlsMultivariantPlaylist;
        this.previousMediaPlaylist = hlsMediaPlaylist;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!checkPlaylistHeader(bufferedReader)) {
                throw ParserException.createForMalformedManifest("Input does not start with the #EXTM3U header.", null);
            }
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    trim = readLine.trim();
                    if (!trim.isEmpty()) {
                        if (trim.startsWith(TAG_STREAM_INF)) {
                            arrayDeque.add(trim);
                            return parseMultivariantPlaylist(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                        }
                        if (trim.startsWith(TAG_TARGET_DURATION) || trim.startsWith(TAG_MEDIA_SEQUENCE) || trim.startsWith(TAG_MEDIA_DURATION) || trim.startsWith(TAG_KEY) || trim.startsWith(TAG_BYTERANGE) || trim.equals(TAG_DISCONTINUITY) || trim.equals(TAG_DISCONTINUITY_SEQUENCE) || trim.equals(TAG_ENDLIST)) {
                            break;
                        }
                        arrayDeque.add(trim);
                    }
                } else {
                    Util.closeQuietly(bufferedReader);
                    throw ParserException.createForMalformedManifest("Failed to parse the playlist, could not identify any tags.", null);
                }
            }
            arrayDeque.add(trim);
            return parseMediaPlaylist(this.multivariantPlaylist, this.previousMediaPlaylist, new LineIterator(arrayDeque, bufferedReader), uri.toString());
        } finally {
            Util.closeQuietly(bufferedReader);
        }
    }

    private static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        if (read == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            read = bufferedReader.read();
        }
        int skipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, read);
        for (int i = 0; i < 7; i++) {
            if (skipIgnorableWhitespace != PLAYLIST_HEADER.charAt(i)) {
                return false;
            }
            skipIgnorableWhitespace = bufferedReader.read();
        }
        return Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, skipIgnorableWhitespace));
    }

    private static int skipIgnorableWhitespace(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:85:0x0356. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    private static HlsMultivariantPlaylist parseMultivariantPlaylist(LineIterator lineIterator, String str) throws IOException {
        char c;
        Format format;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        ArrayList arrayList3;
        int parseInt;
        String str3;
        String str4;
        boolean z;
        int i;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        int i2;
        int i3;
        ArrayList arrayList9;
        ArrayList arrayList10;
        Uri resolveToUri;
        HashMap hashMap;
        int i4;
        String str5 = str;
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        ArrayList arrayList16 = new ArrayList();
        ArrayList arrayList17 = new ArrayList();
        ArrayList arrayList18 = new ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            String str6 = "application/x-mpegURL";
            if (lineIterator.hasNext()) {
                String next = lineIterator.next();
                if (next.startsWith(TAG_PREFIX)) {
                    arrayList18.add(next);
                }
                boolean startsWith = next.startsWith(TAG_I_FRAME_STREAM_INF);
                boolean z4 = z2;
                if (next.startsWith(TAG_DEFINE)) {
                    hashMap3.put(parseStringAttr(next, REGEX_NAME, hashMap3), parseStringAttr(next, REGEX_VALUE, hashMap3));
                } else {
                    if (next.equals(TAG_INDEPENDENT_SEGMENTS)) {
                        hashMap = hashMap2;
                        arrayList10 = arrayList16;
                        arrayList9 = arrayList12;
                        arrayList8 = arrayList13;
                        arrayList7 = arrayList14;
                        arrayList5 = arrayList15;
                        arrayList6 = arrayList18;
                        arrayList4 = arrayList17;
                        z2 = true;
                    } else if (next.startsWith(TAG_MEDIA)) {
                        arrayList16.add(next);
                    } else if (next.startsWith(TAG_SESSION_KEY)) {
                        DrmInitData.SchemeData parseDrmSchemeData = parseDrmSchemeData(next, parseOptionalStringAttr(next, REGEX_KEYFORMAT, KEYFORMAT_IDENTITY, hashMap3), hashMap3);
                        if (parseDrmSchemeData != null) {
                            arrayList17.add(new DrmInitData(parseEncryptionScheme(parseStringAttr(next, REGEX_METHOD, hashMap3)), parseDrmSchemeData));
                        }
                    } else if (next.startsWith(TAG_STREAM_INF) || startsWith) {
                        boolean contains = z3 | next.contains(ATTR_CLOSED_CAPTIONS_NONE);
                        if (startsWith) {
                            i = 16384;
                            z = contains;
                        } else {
                            z = contains;
                            i = 0;
                        }
                        int parseIntAttr = parseIntAttr(next, REGEX_BANDWIDTH);
                        arrayList4 = arrayList17;
                        arrayList5 = arrayList15;
                        int parseOptionalIntAttr = parseOptionalIntAttr(next, REGEX_AVERAGE_BANDWIDTH, -1);
                        String parseOptionalStringAttr = parseOptionalStringAttr(next, REGEX_CODECS, hashMap3);
                        arrayList6 = arrayList18;
                        String parseOptionalStringAttr2 = parseOptionalStringAttr(next, REGEX_RESOLUTION, hashMap3);
                        if (parseOptionalStringAttr2 != null) {
                            arrayList7 = arrayList14;
                            String[] split = Util.split(parseOptionalStringAttr2, ViewHierarchyNode.JsonKeys.X);
                            int parseInt2 = Integer.parseInt(split[0]);
                            int parseInt3 = Integer.parseInt(split[1]);
                            if (parseInt2 <= 0 || parseInt3 <= 0) {
                                parseInt3 = -1;
                                i4 = -1;
                            } else {
                                i4 = parseInt2;
                            }
                            arrayList8 = arrayList13;
                            i3 = parseInt3;
                            i2 = i4;
                        } else {
                            arrayList7 = arrayList14;
                            arrayList8 = arrayList13;
                            i2 = -1;
                            i3 = -1;
                        }
                        String parseOptionalStringAttr3 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, hashMap3);
                        float parseFloat = parseOptionalStringAttr3 != null ? Float.parseFloat(parseOptionalStringAttr3) : -1.0f;
                        arrayList9 = arrayList12;
                        String parseOptionalStringAttr4 = parseOptionalStringAttr(next, REGEX_VIDEO, hashMap3);
                        arrayList10 = arrayList16;
                        String parseOptionalStringAttr5 = parseOptionalStringAttr(next, REGEX_AUDIO, hashMap3);
                        HashMap hashMap4 = hashMap2;
                        String parseOptionalStringAttr6 = parseOptionalStringAttr(next, REGEX_SUBTITLES, hashMap3);
                        String parseOptionalStringAttr7 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, hashMap3);
                        if (startsWith) {
                            resolveToUri = UriUtil.resolveToUri(str5, parseStringAttr(next, REGEX_URI, hashMap3));
                        } else {
                            if (!lineIterator.hasNext()) {
                                throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                            }
                            resolveToUri = UriUtil.resolveToUri(str5, replaceVariableReferences(lineIterator.next(), hashMap3));
                        }
                        arrayList11.add(new HlsMultivariantPlaylist.Variant(resolveToUri, new Format.Builder().setId(arrayList11.size()).setContainerMimeType("application/x-mpegURL").setCodecs(parseOptionalStringAttr).setAverageBitrate(parseOptionalIntAttr).setPeakBitrate(parseIntAttr).setWidth(i2).setHeight(i3).setFrameRate(parseFloat).setRoleFlags(i).build(), parseOptionalStringAttr4, parseOptionalStringAttr5, parseOptionalStringAttr6, parseOptionalStringAttr7));
                        hashMap = hashMap4;
                        ArrayList arrayList19 = (ArrayList) hashMap.get(resolveToUri);
                        if (arrayList19 == null) {
                            arrayList19 = new ArrayList();
                            hashMap.put(resolveToUri, arrayList19);
                        }
                        arrayList19.add(new HlsTrackMetadataEntry.VariantInfo(parseOptionalIntAttr, parseIntAttr, parseOptionalStringAttr4, parseOptionalStringAttr5, parseOptionalStringAttr6, parseOptionalStringAttr7));
                        z2 = z4;
                        z3 = z;
                    }
                    hashMap2 = hashMap;
                    arrayList17 = arrayList4;
                    arrayList15 = arrayList5;
                    arrayList18 = arrayList6;
                    arrayList14 = arrayList7;
                    arrayList13 = arrayList8;
                    arrayList12 = arrayList9;
                    arrayList16 = arrayList10;
                    str5 = str;
                }
                hashMap = hashMap2;
                arrayList10 = arrayList16;
                arrayList9 = arrayList12;
                arrayList8 = arrayList13;
                arrayList7 = arrayList14;
                arrayList5 = arrayList15;
                arrayList6 = arrayList18;
                arrayList4 = arrayList17;
                z2 = z4;
                hashMap2 = hashMap;
                arrayList17 = arrayList4;
                arrayList15 = arrayList5;
                arrayList18 = arrayList6;
                arrayList14 = arrayList7;
                arrayList13 = arrayList8;
                arrayList12 = arrayList9;
                arrayList16 = arrayList10;
                str5 = str;
            } else {
                HashMap hashMap5 = hashMap2;
                ArrayList arrayList20 = arrayList16;
                ArrayList arrayList21 = arrayList12;
                ArrayList arrayList22 = arrayList13;
                ArrayList arrayList23 = arrayList14;
                ArrayList arrayList24 = arrayList15;
                ArrayList arrayList25 = arrayList18;
                boolean z5 = z2;
                ArrayList arrayList26 = arrayList17;
                ArrayList arrayList27 = new ArrayList();
                HashSet hashSet = new HashSet();
                for (int i5 = 0; i5 < arrayList11.size(); i5++) {
                    HlsMultivariantPlaylist.Variant variant = (HlsMultivariantPlaylist.Variant) arrayList11.get(i5);
                    if (hashSet.add(variant.url)) {
                        Assertions.checkState(variant.format.metadata == null);
                        arrayList27.add(variant.copyWithFormat(variant.format.buildUpon().setMetadata(new Metadata(new HlsTrackMetadataEntry(null, null, (List) Assertions.checkNotNull((ArrayList) hashMap5.get(variant.url))))).build()));
                    }
                }
                Uri uri = null;
                ArrayList arrayList28 = null;
                Format format2 = null;
                int i6 = 0;
                while (i6 < arrayList20.size()) {
                    ArrayList arrayList29 = arrayList20;
                    String str7 = (String) arrayList29.get(i6);
                    String parseStringAttr = parseStringAttr(str7, REGEX_GROUP_ID, hashMap3);
                    String parseStringAttr2 = parseStringAttr(str7, REGEX_NAME, hashMap3);
                    Format.Builder language = new Format.Builder().setId(parseStringAttr + ":" + parseStringAttr2).setLabel(parseStringAttr2).setContainerMimeType(str6).setSelectionFlags(parseSelectionFlags(str7)).setRoleFlags(parseRoleFlags(str7, hashMap3)).setLanguage(parseOptionalStringAttr(str7, REGEX_LANGUAGE, hashMap3));
                    String parseOptionalStringAttr8 = parseOptionalStringAttr(str7, REGEX_URI, hashMap3);
                    Uri resolveToUri2 = parseOptionalStringAttr8 == null ? uri : UriUtil.resolveToUri(str, parseOptionalStringAttr8);
                    arrayList20 = arrayList29;
                    String str8 = str6;
                    Metadata metadata = new Metadata(new HlsTrackMetadataEntry(parseStringAttr, parseStringAttr2, Collections.emptyList()));
                    String parseStringAttr3 = parseStringAttr(str7, REGEX_TYPE, hashMap3);
                    parseStringAttr3.hashCode();
                    switch (parseStringAttr3.hashCode()) {
                        case -959297733:
                            if (parseStringAttr3.equals(TYPE_SUBTITLES)) {
                                c = 0;
                                break;
                            }
                            break;
                        case -333210994:
                            if (parseStringAttr3.equals(TYPE_CLOSED_CAPTIONS)) {
                                c = 1;
                                break;
                            }
                            break;
                        case 62628790:
                            if (parseStringAttr3.equals(TYPE_AUDIO)) {
                                c = 2;
                                break;
                            }
                            break;
                        case 81665115:
                            if (parseStringAttr3.equals(TYPE_VIDEO)) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    c = 65535;
                    switch (c) {
                        case 0:
                            format = format2;
                            arrayList = arrayList22;
                            arrayList2 = arrayList21;
                            HlsMultivariantPlaylist.Variant variantWithSubtitleGroup = getVariantWithSubtitleGroup(arrayList11, parseStringAttr);
                            if (variantWithSubtitleGroup != null) {
                                String codecsOfType = Util.getCodecsOfType(variantWithSubtitleGroup.format.codecs, 3);
                                language.setCodecs(codecsOfType);
                                str2 = MimeTypes.getMediaMimeType(codecsOfType);
                            } else {
                                str2 = null;
                            }
                            if (str2 == null) {
                                str2 = "text/vtt";
                            }
                            language.setSampleMimeType(str2).setMetadata(metadata);
                            if (resolveToUri2 != null) {
                                HlsMultivariantPlaylist.Rendition rendition = new HlsMultivariantPlaylist.Rendition(resolveToUri2, language.build(), parseStringAttr, parseStringAttr2);
                                arrayList3 = arrayList23;
                                arrayList3.add(rendition);
                                break;
                            } else {
                                arrayList3 = arrayList23;
                                Log.w(LOG_TAG, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                                break;
                            }
                        case 1:
                            format = format2;
                            arrayList = arrayList22;
                            arrayList2 = arrayList21;
                            String parseStringAttr4 = parseStringAttr(str7, REGEX_INSTREAM_ID, hashMap3);
                            if (parseStringAttr4.startsWith("CC")) {
                                parseInt = Integer.parseInt(parseStringAttr4.substring(2));
                                str3 = "application/cea-608";
                            } else {
                                parseInt = Integer.parseInt(parseStringAttr4.substring(7));
                                str3 = "application/cea-708";
                            }
                            if (arrayList28 == null) {
                                arrayList28 = new ArrayList();
                            }
                            language.setSampleMimeType(str3).setAccessibilityChannel(parseInt);
                            arrayList28.add(language.build());
                            arrayList3 = arrayList23;
                            break;
                        case 2:
                            arrayList2 = arrayList21;
                            HlsMultivariantPlaylist.Variant variantWithAudioGroup = getVariantWithAudioGroup(arrayList11, parseStringAttr);
                            if (variantWithAudioGroup != null) {
                                format = format2;
                                String codecsOfType2 = Util.getCodecsOfType(variantWithAudioGroup.format.codecs, 1);
                                language.setCodecs(codecsOfType2);
                                str4 = MimeTypes.getMediaMimeType(codecsOfType2);
                            } else {
                                format = format2;
                                str4 = null;
                            }
                            String parseOptionalStringAttr9 = parseOptionalStringAttr(str7, REGEX_CHANNELS, hashMap3);
                            if (parseOptionalStringAttr9 != null) {
                                language.setChannelCount(Integer.parseInt(Util.splitAtFirst(parseOptionalStringAttr9, "/")[0]));
                                if ("audio/eac3".equals(str4) && parseOptionalStringAttr9.endsWith("/JOC")) {
                                    language.setCodecs("ec+3");
                                    str4 = "audio/eac3-joc";
                                }
                            }
                            language.setSampleMimeType(str4);
                            if (resolveToUri2 != null) {
                                language.setMetadata(metadata);
                                arrayList = arrayList22;
                                arrayList.add(new HlsMultivariantPlaylist.Rendition(resolveToUri2, language.build(), parseStringAttr, parseStringAttr2));
                            } else {
                                arrayList = arrayList22;
                                if (variantWithAudioGroup != null) {
                                    format = language.build();
                                }
                            }
                            arrayList3 = arrayList23;
                            break;
                        case 3:
                            HlsMultivariantPlaylist.Variant variantWithVideoGroup = getVariantWithVideoGroup(arrayList11, parseStringAttr);
                            if (variantWithVideoGroup != null) {
                                Format format3 = variantWithVideoGroup.format;
                                String codecsOfType3 = Util.getCodecsOfType(format3.codecs, 2);
                                language.setCodecs(codecsOfType3).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType3)).setWidth(format3.width).setHeight(format3.height).setFrameRate(format3.frameRate);
                            }
                            if (resolveToUri2 != null) {
                                language.setMetadata(metadata);
                                arrayList2 = arrayList21;
                                arrayList2.add(new HlsMultivariantPlaylist.Rendition(resolveToUri2, language.build(), parseStringAttr, parseStringAttr2));
                                format = format2;
                                arrayList3 = arrayList23;
                                arrayList = arrayList22;
                                break;
                            }
                        default:
                            format = format2;
                            arrayList3 = arrayList23;
                            arrayList = arrayList22;
                            arrayList2 = arrayList21;
                            break;
                    }
                    i6++;
                    arrayList23 = arrayList3;
                    arrayList22 = arrayList;
                    arrayList21 = arrayList2;
                    str6 = str8;
                    format2 = format;
                    uri = null;
                }
                return new HlsMultivariantPlaylist(str, arrayList25, arrayList27, arrayList21, arrayList22, arrayList23, arrayList24, format2, z3 ? Collections.emptyList() : arrayList28, z5, hashMap3, arrayList26);
            }
        }
    }

    private static HlsMultivariantPlaylist.Variant getVariantWithAudioGroup(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.audioGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static HlsMultivariantPlaylist.Variant getVariantWithVideoGroup(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.videoGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static HlsMultivariantPlaylist.Variant getVariantWithSubtitleGroup(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.subtitleGroupId)) {
                return variant;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static HlsMediaPlaylist parseMediaPlaylist(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist, LineIterator lineIterator, String str) throws IOException {
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        long j;
        boolean z;
        int i;
        HlsMediaPlaylist.Part part;
        int i2;
        HlsMediaPlaylist.Segment segment;
        String parseOptionalStringAttr;
        long j2;
        long j3;
        long j4;
        long j5;
        boolean z2;
        Object obj;
        HlsMultivariantPlaylist hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
        HlsMediaPlaylist hlsMediaPlaylist2 = hlsMediaPlaylist;
        boolean z3 = hlsMultivariantPlaylist2.hasIndependentSegments;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        HlsMediaPlaylist.ServerControl serverControl = new HlsMediaPlaylist.ServerControl(-9223372036854775807L, false, -9223372036854775807L, -9223372036854775807L, false);
        TreeMap treeMap = new TreeMap();
        boolean z4 = false;
        String str3 = "";
        boolean z5 = z3;
        HlsMediaPlaylist.ServerControl serverControl2 = serverControl;
        int i3 = 0;
        boolean z6 = false;
        boolean z7 = false;
        int i4 = 0;
        boolean z8 = false;
        boolean z9 = false;
        int i5 = 0;
        boolean z10 = false;
        String str4 = str3;
        String str5 = null;
        long j6 = -9223372036854775807L;
        long j7 = 0;
        long j8 = 0;
        int i6 = 1;
        long j9 = -9223372036854775807L;
        long j10 = -9223372036854775807L;
        DrmInitData drmInitData = null;
        long j11 = 0;
        Object obj2 = null;
        long j12 = 0;
        long j13 = -1;
        String str6 = null;
        String str7 = null;
        long j14 = 0;
        long j15 = 0;
        HlsMediaPlaylist.Segment segment2 = null;
        long j16 = 0;
        long j17 = 0;
        ArrayList arrayList7 = arrayList4;
        HlsMediaPlaylist.Part part2 = null;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith(TAG_PREFIX)) {
                arrayList6.add(next);
            }
            if (next.startsWith(TAG_PLAYLIST_TYPE)) {
                String parseStringAttr = parseStringAttr(next, REGEX_PLAYLIST_TYPE, hashMap);
                if ("VOD".equals(parseStringAttr)) {
                    i3 = 1;
                } else if ("EVENT".equals(parseStringAttr)) {
                    i3 = 2;
                }
            } else if (next.equals(TAG_IFRAME)) {
                z10 = true;
            } else if (next.startsWith(TAG_START)) {
                j6 = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET) * 1000000.0d);
                z6 = parseOptionalBooleanAttribute(next, REGEX_PRECISE, z4);
            } else if (next.startsWith(TAG_SERVER_CONTROL)) {
                serverControl2 = parseServerControl(next);
            } else if (next.startsWith(TAG_PART_INF)) {
                j10 = (long) (parseDoubleAttr(next, REGEX_PART_TARGET_DURATION) * 1000000.0d);
            } else if (next.startsWith(TAG_INIT_SEGMENT)) {
                String parseStringAttr2 = parseStringAttr(next, REGEX_URI, hashMap);
                String parseOptionalStringAttr2 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, hashMap);
                if (parseOptionalStringAttr2 != null) {
                    String[] split = Util.split(parseOptionalStringAttr2, "@");
                    j13 = Long.parseLong(split[z4 ? 1 : 0]);
                    if (split.length > 1) {
                        j11 = Long.parseLong(split[1]);
                    }
                }
                if (j13 == -1) {
                    j11 = 0;
                }
                String str8 = str6;
                if (str5 != null && str8 == null) {
                    throw ParserException.createForMalformedManifest("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                }
                segment2 = new HlsMediaPlaylist.Segment(parseStringAttr2, j11, j13, str5, str8);
                if (j13 != -1) {
                    j11 += j13;
                }
                str6 = str8;
                j13 = -1;
            } else {
                String str9 = str6;
                if (next.startsWith(TAG_TARGET_DURATION)) {
                    j9 = 1000000 * parseIntAttr(next, REGEX_TARGET_DURATION);
                } else {
                    if (next.startsWith(TAG_MEDIA_SEQUENCE)) {
                        j15 = parseLongAttr(next, REGEX_MEDIA_SEQUENCE);
                        str6 = str9;
                        j8 = j15;
                    } else if (next.startsWith(TAG_VERSION)) {
                        i6 = parseIntAttr(next, REGEX_VERSION);
                    } else {
                        if (next.startsWith(TAG_DEFINE)) {
                            String parseOptionalStringAttr3 = parseOptionalStringAttr(next, REGEX_IMPORT, hashMap);
                            if (parseOptionalStringAttr3 != null) {
                                String str10 = hlsMultivariantPlaylist2.variableDefinitions.get(parseOptionalStringAttr3);
                                if (str10 != null) {
                                    hashMap.put(parseOptionalStringAttr3, str10);
                                }
                            } else {
                                hashMap.put(parseStringAttr(next, REGEX_NAME, hashMap), parseStringAttr(next, REGEX_VALUE, hashMap));
                            }
                            arrayList = arrayList7;
                            arrayList2 = arrayList6;
                            str2 = str7;
                            j = j15;
                            z = false;
                            i = i3;
                        } else if (next.startsWith(TAG_MEDIA_DURATION)) {
                            j16 = parseTimeSecondsToUs(next, REGEX_MEDIA_DURATION);
                            str4 = parseOptionalStringAttr(next, REGEX_MEDIA_TITLE, str3, hashMap);
                        } else {
                            String str11 = str3;
                            if (next.startsWith(TAG_SKIP)) {
                                int parseIntAttr = parseIntAttr(next, REGEX_SKIPPED_SEGMENTS);
                                Assertions.checkState(hlsMediaPlaylist2 != null && arrayList3.isEmpty());
                                int i7 = (int) (j8 - ((HlsMediaPlaylist) Util.castNonNull(hlsMediaPlaylist)).mediaSequence);
                                int i8 = parseIntAttr + i7;
                                if (i7 < 0 || i8 > hlsMediaPlaylist2.segments.size()) {
                                    throw new DeltaUpdateException();
                                }
                                str3 = str11;
                                String str12 = str9;
                                long j18 = j14;
                                while (i7 < i8) {
                                    HlsMediaPlaylist.Segment segment3 = hlsMediaPlaylist2.segments.get(i7);
                                    ArrayList arrayList8 = arrayList7;
                                    ArrayList arrayList9 = arrayList6;
                                    if (j8 != hlsMediaPlaylist2.mediaSequence) {
                                        segment3 = segment3.copyWith(j18, (hlsMediaPlaylist2.discontinuitySequence - i4) + segment3.relativeDiscontinuitySequence);
                                    }
                                    arrayList3.add(segment3);
                                    j18 += segment3.durationUs;
                                    if (segment3.byteRangeLength != -1) {
                                        i2 = i8;
                                        j11 = segment3.byteRangeOffset + segment3.byteRangeLength;
                                    } else {
                                        i2 = i8;
                                    }
                                    int i9 = segment3.relativeDiscontinuitySequence;
                                    HlsMediaPlaylist.Segment segment4 = segment3.initializationSegment;
                                    DrmInitData drmInitData2 = segment3.drmInitData;
                                    String str13 = segment3.fullSegmentEncryptionKeyUri;
                                    if (segment3.encryptionIV != null) {
                                        segment = segment4;
                                        if (segment3.encryptionIV.equals(Long.toHexString(j15))) {
                                            j15++;
                                            i7++;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            obj2 = drmInitData2;
                                            str5 = str13;
                                            j12 = j18;
                                            i8 = i2;
                                            i5 = i9;
                                            segment2 = segment;
                                            arrayList7 = arrayList8;
                                            arrayList6 = arrayList9;
                                        }
                                    } else {
                                        segment = segment4;
                                    }
                                    str12 = segment3.encryptionIV;
                                    j15++;
                                    i7++;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    obj2 = drmInitData2;
                                    str5 = str13;
                                    j12 = j18;
                                    i8 = i2;
                                    i5 = i9;
                                    segment2 = segment;
                                    arrayList7 = arrayList8;
                                    arrayList6 = arrayList9;
                                }
                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                j14 = j18;
                                str6 = str12;
                            } else {
                                ArrayList arrayList10 = arrayList7;
                                arrayList2 = arrayList6;
                                str3 = str11;
                                if (next.startsWith(TAG_KEY)) {
                                    String parseStringAttr3 = parseStringAttr(next, REGEX_METHOD, hashMap);
                                    String parseOptionalStringAttr4 = parseOptionalStringAttr(next, REGEX_KEYFORMAT, KEYFORMAT_IDENTITY, hashMap);
                                    if (METHOD_NONE.equals(parseStringAttr3)) {
                                        treeMap.clear();
                                        parseOptionalStringAttr = null;
                                        str5 = null;
                                    } else {
                                        parseOptionalStringAttr = parseOptionalStringAttr(next, REGEX_IV, hashMap);
                                        if (KEYFORMAT_IDENTITY.equals(parseOptionalStringAttr4)) {
                                            if (METHOD_AES_128.equals(parseStringAttr3)) {
                                                str5 = parseStringAttr(next, REGEX_URI, hashMap);
                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                str6 = parseOptionalStringAttr;
                                            }
                                        } else {
                                            String str14 = str7;
                                            str7 = str14 == null ? parseEncryptionScheme(parseStringAttr3) : str14;
                                            DrmInitData.SchemeData parseDrmSchemeData = parseDrmSchemeData(next, parseOptionalStringAttr4, hashMap);
                                            if (parseDrmSchemeData != null) {
                                                treeMap.put(parseOptionalStringAttr4, parseDrmSchemeData);
                                                str5 = null;
                                            }
                                        }
                                        str5 = null;
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        str6 = parseOptionalStringAttr;
                                    }
                                    obj2 = str5;
                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    str6 = parseOptionalStringAttr;
                                } else {
                                    String str15 = str7;
                                    if (next.startsWith(TAG_BYTERANGE)) {
                                        String[] split2 = Util.split(parseStringAttr(next, REGEX_BYTERANGE, hashMap), "@");
                                        j13 = Long.parseLong(split2[0]);
                                        if (split2.length > 1) {
                                            j11 = Long.parseLong(split2[1]);
                                        }
                                    } else if (next.startsWith(TAG_DISCONTINUITY_SEQUENCE)) {
                                        i4 = Integer.parseInt(next.substring(next.indexOf(58) + 1));
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        str7 = str15;
                                        str6 = str9;
                                        arrayList7 = arrayList10;
                                        arrayList6 = arrayList2;
                                        z4 = false;
                                        z7 = true;
                                    } else if (next.equals(TAG_DISCONTINUITY)) {
                                        i5++;
                                    } else {
                                        if (next.startsWith(TAG_PROGRAM_DATE_TIME)) {
                                            if (j7 == 0) {
                                                j7 = Util.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + 1))) - j14;
                                            } else {
                                                i = i3;
                                                str2 = str15;
                                            }
                                        } else if (next.equals(TAG_GAP)) {
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            str7 = str15;
                                            str6 = str9;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z4 = false;
                                            z9 = true;
                                        } else if (next.equals(TAG_INDEPENDENT_SEGMENTS)) {
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            str7 = str15;
                                            str6 = str9;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z4 = false;
                                            z5 = true;
                                        } else if (next.equals(TAG_ENDLIST)) {
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            str7 = str15;
                                            str6 = str9;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z4 = false;
                                            z8 = true;
                                        } else if (next.startsWith(TAG_RENDITION_REPORT)) {
                                            i = i3;
                                            str2 = str15;
                                            arrayList5.add(new HlsMediaPlaylist.RenditionReport(Uri.parse(UriUtil.resolve(str, parseStringAttr(next, REGEX_URI, hashMap))), parseOptionalLongAttr(next, REGEX_LAST_MSN, -1L), parseOptionalIntAttr(next, REGEX_LAST_PART, -1)));
                                        } else {
                                            i = i3;
                                            str2 = str15;
                                            if (next.startsWith(TAG_PRELOAD_HINT)) {
                                                if (part2 == null && TYPE_PART.equals(parseStringAttr(next, REGEX_PRELOAD_HINT_TYPE, hashMap))) {
                                                    String parseStringAttr4 = parseStringAttr(next, REGEX_URI, hashMap);
                                                    long parseOptionalLongAttr = parseOptionalLongAttr(next, REGEX_BYTERANGE_START, -1L);
                                                    long parseOptionalLongAttr2 = parseOptionalLongAttr(next, REGEX_BYTERANGE_LENGTH, -1L);
                                                    long j19 = j15;
                                                    String segmentEncryptionIV = getSegmentEncryptionIV(j19, str5, str9);
                                                    if (obj2 == null && !treeMap.isEmpty()) {
                                                        DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                        DrmInitData drmInitData3 = new DrmInitData(str2, schemeDataArr);
                                                        if (drmInitData == null) {
                                                            drmInitData = getPlaylistProtectionSchemes(str2, schemeDataArr);
                                                        }
                                                        obj2 = drmInitData3;
                                                    }
                                                    if (parseOptionalLongAttr == -1 || parseOptionalLongAttr2 != -1) {
                                                        part2 = new HlsMediaPlaylist.Part(parseStringAttr4, segment2, 0L, i5, j12, obj2, str5, segmentEncryptionIV, parseOptionalLongAttr != -1 ? parseOptionalLongAttr : 0L, parseOptionalLongAttr2, false, false, true);
                                                    }
                                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                    j15 = j19;
                                                    str6 = str9;
                                                    arrayList7 = arrayList10;
                                                    i3 = i;
                                                    arrayList6 = arrayList2;
                                                    str7 = str2;
                                                }
                                            } else {
                                                j = j15;
                                                if (next.startsWith(TAG_PART)) {
                                                    String segmentEncryptionIV2 = getSegmentEncryptionIV(j, str5, str9);
                                                    String parseStringAttr5 = parseStringAttr(next, REGEX_URI, hashMap);
                                                    long parseDoubleAttr = (long) (parseDoubleAttr(next, REGEX_ATTR_DURATION) * 1000000.0d);
                                                    HlsMediaPlaylist.Part part3 = part2;
                                                    boolean parseOptionalBooleanAttribute = parseOptionalBooleanAttribute(next, REGEX_INDEPENDENT, false) | (z5 && arrayList10.isEmpty());
                                                    boolean parseOptionalBooleanAttribute2 = parseOptionalBooleanAttribute(next, REGEX_GAP, false);
                                                    String parseOptionalStringAttr5 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, hashMap);
                                                    if (parseOptionalStringAttr5 != null) {
                                                        String[] split3 = Util.split(parseOptionalStringAttr5, "@");
                                                        j3 = Long.parseLong(split3[0]);
                                                        if (split3.length > 1) {
                                                            j17 = Long.parseLong(split3[1]);
                                                        }
                                                        j2 = -1;
                                                    } else {
                                                        j2 = -1;
                                                        j3 = -1;
                                                    }
                                                    if (j3 == j2) {
                                                        j17 = 0;
                                                    }
                                                    if (obj2 == null && !treeMap.isEmpty()) {
                                                        DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                        DrmInitData drmInitData4 = new DrmInitData(str2, schemeDataArr2);
                                                        if (drmInitData == null) {
                                                            drmInitData = getPlaylistProtectionSchemes(str2, schemeDataArr2);
                                                        }
                                                        obj2 = drmInitData4;
                                                    }
                                                    arrayList10.add(new HlsMediaPlaylist.Part(parseStringAttr5, segment2, parseDoubleAttr, i5, j12, obj2, str5, segmentEncryptionIV2, j17, j3, parseOptionalBooleanAttribute2, parseOptionalBooleanAttribute, false));
                                                    j12 += parseDoubleAttr;
                                                    if (j3 != j2) {
                                                        j17 += j3;
                                                    }
                                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                    str6 = str9;
                                                    i3 = i;
                                                    part2 = part3;
                                                    j15 = j;
                                                    str7 = str2;
                                                    arrayList7 = arrayList10;
                                                    arrayList6 = arrayList2;
                                                } else {
                                                    part = part2;
                                                    arrayList = arrayList10;
                                                    if (next.startsWith("#")) {
                                                        z = false;
                                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                        str6 = str9;
                                                        i3 = i;
                                                        part2 = part;
                                                        j15 = j;
                                                        str7 = str2;
                                                        arrayList7 = arrayList;
                                                        arrayList6 = arrayList2;
                                                        z4 = z;
                                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                    } else {
                                                        String segmentEncryptionIV3 = getSegmentEncryptionIV(j, str5, str9);
                                                        long j20 = j + 1;
                                                        String replaceVariableReferences = replaceVariableReferences(next, hashMap);
                                                        HlsMediaPlaylist.Segment segment5 = (HlsMediaPlaylist.Segment) hashMap2.get(replaceVariableReferences);
                                                        if (j13 == -1) {
                                                            j4 = 0;
                                                        } else {
                                                            if (z10 && segment2 == null && segment5 == null) {
                                                                segment5 = new HlsMediaPlaylist.Segment(replaceVariableReferences, 0L, j11, null, null);
                                                                hashMap2.put(replaceVariableReferences, segment5);
                                                            }
                                                            j4 = j11;
                                                        }
                                                        if (obj2 != null || treeMap.isEmpty()) {
                                                            j5 = j20;
                                                            z2 = false;
                                                            obj = obj2;
                                                        } else {
                                                            j5 = j20;
                                                            z2 = false;
                                                            DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                            obj = new DrmInitData(str2, schemeDataArr3);
                                                            if (drmInitData == null) {
                                                                drmInitData = getPlaylistProtectionSchemes(str2, schemeDataArr3);
                                                            }
                                                        }
                                                        arrayList3.add(new HlsMediaPlaylist.Segment(replaceVariableReferences, segment2 != null ? segment2 : segment5, str4, j16, i5, j14, obj, str5, segmentEncryptionIV3, j4, j13, z9, arrayList));
                                                        j12 = j14 + j16;
                                                        arrayList7 = new ArrayList();
                                                        if (j13 != -1) {
                                                            j4 += j13;
                                                        }
                                                        j11 = j4;
                                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                        z9 = z2;
                                                        str6 = str9;
                                                        obj2 = obj;
                                                        str4 = str3;
                                                        j14 = j12;
                                                        i3 = i;
                                                        part2 = part;
                                                        arrayList6 = arrayList2;
                                                        j13 = -1;
                                                        j16 = 0;
                                                        str7 = str2;
                                                        j15 = j5;
                                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                        z4 = z9;
                                                    }
                                                }
                                            }
                                        }
                                        arrayList = arrayList10;
                                        j = j15;
                                        z = false;
                                    }
                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    str7 = str15;
                                    str6 = str9;
                                }
                                arrayList7 = arrayList10;
                                arrayList6 = arrayList2;
                            }
                        }
                        part = part2;
                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                        str6 = str9;
                        i3 = i;
                        part2 = part;
                        j15 = j;
                        str7 = str2;
                        arrayList7 = arrayList;
                        arrayList6 = arrayList2;
                        z4 = z;
                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                    }
                    z4 = false;
                }
                str6 = str9;
                z4 = false;
            }
        }
        int i10 = i3;
        HlsMediaPlaylist.Part part4 = part2;
        ArrayList arrayList11 = arrayList7;
        ArrayList arrayList12 = arrayList6;
        int i11 = z4 ? 1 : 0;
        HashMap hashMap3 = new HashMap();
        for (int i12 = i11; i12 < arrayList5.size(); i12++) {
            HlsMediaPlaylist.RenditionReport renditionReport = (HlsMediaPlaylist.RenditionReport) arrayList5.get(i12);
            long j21 = renditionReport.lastMediaSequence;
            if (j21 == -1) {
                j21 = (j8 + arrayList3.size()) - (arrayList11.isEmpty() ? 1L : 0L);
            }
            int i13 = renditionReport.lastPartIndex;
            if (i13 == -1 && j10 != -9223372036854775807L) {
                i13 = (arrayList11.isEmpty() ? ((HlsMediaPlaylist.Segment) Iterables.getLast(arrayList3)).parts : arrayList11).size() - 1;
            }
            hashMap3.put(renditionReport.playlistUri, new HlsMediaPlaylist.RenditionReport(renditionReport.playlistUri, j21, i13));
        }
        if (part4 != null) {
            arrayList11.add(part4);
        }
        return new HlsMediaPlaylist(i10, str, arrayList12, j6, z6, j7, z7, i4, j8, i6, j9, j10, z5, z8, j7 != 0, drmInitData, arrayList3, arrayList11, serverControl2, hashMap3);
    }

    private static DrmInitData getPlaylistProtectionSchemes(String str, DrmInitData.SchemeData[] schemeDataArr) {
        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
        for (int i = 0; i < schemeDataArr.length; i++) {
            schemeDataArr2[i] = schemeDataArr[i].copyWithData(null);
        }
        return new DrmInitData(str, schemeDataArr2);
    }

    private static String getSegmentEncryptionIV(long j, String str, String str2) {
        if (str == null) {
            return null;
        }
        return str2 != null ? str2 : Long.toHexString(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int parseSelectionFlags(String str) {
        boolean parseOptionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_DEFAULT, false);
        ?? r0 = parseOptionalBooleanAttribute;
        if (parseOptionalBooleanAttribute(str, REGEX_FORCED, false)) {
            r0 = (parseOptionalBooleanAttribute ? 1 : 0) | 2;
        }
        return parseOptionalBooleanAttribute(str, REGEX_AUTOSELECT, false) ? r0 | 4 : r0;
    }

    private static int parseRoleFlags(String str, Map<String, String> map) {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, REGEX_CHARACTERISTICS, map);
        if (TextUtils.isEmpty(parseOptionalStringAttr)) {
            return 0;
        }
        String[] split = Util.split(parseOptionalStringAttr, ",");
        int i = Util.contains(split, "public.accessibility.describes-video") ? 512 : 0;
        if (Util.contains(split, "public.accessibility.transcribes-spoken-dialog")) {
            i |= 4096;
        }
        if (Util.contains(split, "public.accessibility.describes-music-and-sound")) {
            i |= 1024;
        }
        return Util.contains(split, "public.easy-to-read") ? i | 8192 : i;
    }

    private static DrmInitData.SchemeData parseDrmSchemeData(String str, String str2, Map<String, String> map) throws ParserException {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, REGEX_KEYFORMATVERSIONS, "1", map);
        if (KEYFORMAT_WIDEVINE_PSSH_BINARY.equals(str2)) {
            String parseStringAttr = parseStringAttr(str, REGEX_URI, map);
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, "video/mp4", Base64.decode(parseStringAttr.substring(parseStringAttr.indexOf(44)), 0));
        }
        if (KEYFORMAT_WIDEVINE_PSSH_JSON.equals(str2)) {
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, "hls", Util.getUtf8Bytes(str));
        }
        if (!KEYFORMAT_PLAYREADY.equals(str2) || !"1".equals(parseOptionalStringAttr)) {
            return null;
        }
        String parseStringAttr2 = parseStringAttr(str, REGEX_URI, map);
        return new DrmInitData.SchemeData(C.PLAYREADY_UUID, "video/mp4", PsshAtomUtil.buildPsshAtom(C.PLAYREADY_UUID, Base64.decode(parseStringAttr2.substring(parseStringAttr2.indexOf(44)), 0)));
    }

    private static HlsMediaPlaylist.ServerControl parseServerControl(String str) {
        double parseOptionalDoubleAttr = parseOptionalDoubleAttr(str, REGEX_CAN_SKIP_UNTIL, -9.223372036854776E18d);
        long j = parseOptionalDoubleAttr == -9.223372036854776E18d ? -9223372036854775807L : (long) (parseOptionalDoubleAttr * 1000000.0d);
        boolean parseOptionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_CAN_SKIP_DATE_RANGES, false);
        double parseOptionalDoubleAttr2 = parseOptionalDoubleAttr(str, REGEX_HOLD_BACK, -9.223372036854776E18d);
        long j2 = parseOptionalDoubleAttr2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (parseOptionalDoubleAttr2 * 1000000.0d);
        double parseOptionalDoubleAttr3 = parseOptionalDoubleAttr(str, REGEX_PART_HOLD_BACK, -9.223372036854776E18d);
        return new HlsMediaPlaylist.ServerControl(j, parseOptionalBooleanAttribute, j2, parseOptionalDoubleAttr3 != -9.223372036854776E18d ? (long) (parseOptionalDoubleAttr3 * 1000000.0d) : -9223372036854775807L, parseOptionalBooleanAttribute(str, REGEX_CAN_BLOCK_RELOAD, false));
    }

    private static String parseEncryptionScheme(String str) {
        return (METHOD_SAMPLE_AES_CENC.equals(str) || METHOD_SAMPLE_AES_CTR.equals(str)) ? "cenc" : "cbcs";
    }

    private static int parseIntAttr(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static int parseOptionalIntAttr(String str, Pattern pattern, int i) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))) : i;
    }

    private static long parseLongAttr(String str, Pattern pattern) throws ParserException {
        return Long.parseLong(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static long parseOptionalLongAttr(String str, Pattern pattern, long j) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Long.parseLong((String) Assertions.checkNotNull(matcher.group(1))) : j;
    }

    private static long parseTimeSecondsToUs(String str, Pattern pattern) throws ParserException {
        return new BigDecimal(parseStringAttr(str, pattern, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
    }

    private static double parseDoubleAttr(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static String parseStringAttr(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, pattern, map);
        if (parseOptionalStringAttr != null) {
            return parseOptionalStringAttr;
        }
        throw ParserException.createForMalformedManifest("Couldn't match " + pattern.pattern() + " in " + str, null);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, Map<String, String> map) {
        return parseOptionalStringAttr(str, pattern, null, map);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) Assertions.checkNotNull(matcher.group(1));
        }
        return (map.isEmpty() || str2 == null) ? str2 : replaceVariableReferences(str2, map);
    }

    private static double parseOptionalDoubleAttr(String str, Pattern pattern, double d) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Double.parseDouble((String) Assertions.checkNotNull(matcher.group(1))) : d;
    }

    private static String replaceVariableReferences(String str, Map<String, String> map) {
        Matcher matcher = REGEX_VARIABLE_REFERENCE.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (map.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(group)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static boolean parseOptionalBooleanAttribute(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? BOOLEAN_TRUE.equals(matcher.group(1)) : z;
    }

    private static Pattern compileBooleanAttrPattern(String str) {
        return Pattern.compile(str + "=(NO|YES)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class LineIterator {
        private final Queue<String> extraLines;
        private String next;
        private final BufferedReader reader;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        @EnsuresNonNullIf(expression = {"next"}, result = true)
        public boolean hasNext() throws IOException {
            String trim;
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = (String) Assertions.checkNotNull(this.extraLines.poll());
                return true;
            }
            do {
                String readLine = this.reader.readLine();
                this.next = readLine;
                if (readLine == null) {
                    return false;
                }
                trim = readLine.trim();
                this.next = trim;
            } while (trim.isEmpty());
            return true;
        }

        public String next() throws IOException {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.next;
            this.next = null;
            return str;
        }
    }
}
