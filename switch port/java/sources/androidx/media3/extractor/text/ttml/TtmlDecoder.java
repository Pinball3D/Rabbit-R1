package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import com.google.common.base.Ascii;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
public final class TtmlDecoder extends SimpleSubtitleDecoder {
    private static final String ATTR_BEGIN = "begin";
    private static final String ATTR_DURATION = "dur";
    private static final String ATTR_END = "end";
    private static final String ATTR_IMAGE = "backgroundImage";
    private static final String ATTR_REGION = "region";
    private static final String ATTR_STYLE = "style";
    private static final int DEFAULT_FRAME_RATE = 30;
    private static final String TAG = "TtmlDecoder";
    private static final String TTP = "http://www.w3.org/ns/ttml#parameter";
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern CLOCK_TIME = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern OFFSET_TIME = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern FONT_SIZE = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern SIGNED_PERCENTAGE = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern PERCENTAGE_COORDINATES = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final Pattern PIXEL_COORDINATES = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    private static final Pattern CELL_RESOLUTION = Pattern.compile("^(\\d+) (\\d+)$");
    private static final FrameAndTickRate DEFAULT_FRAME_AND_TICK_RATE = new FrameAndTickRate(30.0f, 1, 1);
    private static final CellResolution DEFAULT_CELL_RESOLUTION = new CellResolution(32, 15);

    public TtmlDecoder() {
        super(TAG);
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.xmlParserFactory = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    protected Subtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        FrameAndTickRate frameAndTickRate;
        try {
            XmlPullParser newPullParser = this.xmlParserFactory.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new TtmlRegion(""));
            TtsExtent ttsExtent = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            FrameAndTickRate frameAndTickRate2 = DEFAULT_FRAME_AND_TICK_RATE;
            CellResolution cellResolution = DEFAULT_CELL_RESOLUTION;
            int i2 = 0;
            TtmlSubtitle ttmlSubtitle = null;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                TtmlNode ttmlNode = (TtmlNode) arrayDeque.peek();
                if (i2 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            frameAndTickRate2 = parseFrameAndTickRates(newPullParser);
                            cellResolution = parseCellResolution(newPullParser, DEFAULT_CELL_RESOLUTION);
                            ttsExtent = parseTtsExtent(newPullParser);
                        }
                        TtsExtent ttsExtent2 = ttsExtent;
                        FrameAndTickRate frameAndTickRate3 = frameAndTickRate2;
                        CellResolution cellResolution2 = cellResolution;
                        if (!isSupportedTag(name)) {
                            Log.i(TAG, "Ignoring unsupported tag: " + newPullParser.getName());
                            i2++;
                            frameAndTickRate2 = frameAndTickRate3;
                        } else {
                            if ("head".equals(name)) {
                                frameAndTickRate = frameAndTickRate3;
                                parseHeader(newPullParser, hashMap, cellResolution2, ttsExtent2, hashMap2, hashMap3);
                            } else {
                                frameAndTickRate = frameAndTickRate3;
                                try {
                                    TtmlNode parseNode = parseNode(newPullParser, ttmlNode, hashMap2, frameAndTickRate);
                                    arrayDeque.push(parseNode);
                                    if (ttmlNode != null) {
                                        ttmlNode.addChild(parseNode);
                                    }
                                } catch (SubtitleDecoderException e) {
                                    Log.w(TAG, "Suppressing parser error", e);
                                    i2++;
                                }
                            }
                            frameAndTickRate2 = frameAndTickRate;
                        }
                        ttsExtent = ttsExtent2;
                        cellResolution = cellResolution2;
                    } else if (eventType == 4) {
                        ((TtmlNode) Assertions.checkNotNull(ttmlNode)).addChild(TtmlNode.buildTextNode(newPullParser.getText()));
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals("tt")) {
                            ttmlSubtitle = new TtmlSubtitle((TtmlNode) Assertions.checkNotNull((TtmlNode) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i2++;
                } else if (eventType == 3) {
                    i2--;
                }
                newPullParser.next();
            }
            if (ttmlSubtitle != null) {
                return ttmlSubtitle;
            }
            throw new SubtitleDecoderException("No TTML subtitles found");
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new SubtitleDecoderException("Unable to decode source", e3);
        }
    }

    private static FrameAndTickRate parseFrameAndTickRates(XmlPullParser xmlPullParser) throws SubtitleDecoderException {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue(TTP, "frameRateMultiplier");
        if (attributeValue2 != null) {
            if (Util.split(attributeValue2, " ").length != 2) {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
            f = Integer.parseInt(r2[0]) / Integer.parseInt(r2[1]);
        } else {
            f = 1.0f;
        }
        FrameAndTickRate frameAndTickRate = DEFAULT_FRAME_AND_TICK_RATE;
        int i = frameAndTickRate.subFrameRate;
        String attributeValue3 = xmlPullParser.getAttributeValue(TTP, "subFrameRate");
        if (attributeValue3 != null) {
            i = Integer.parseInt(attributeValue3);
        }
        int i2 = frameAndTickRate.tickRate;
        String attributeValue4 = xmlPullParser.getAttributeValue(TTP, "tickRate");
        if (attributeValue4 != null) {
            i2 = Integer.parseInt(attributeValue4);
        }
        return new FrameAndTickRate(parseInt * f, i, i2);
    }

    private static CellResolution parseCellResolution(XmlPullParser xmlPullParser, CellResolution cellResolution) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "cellResolution");
        if (attributeValue == null) {
            return cellResolution;
        }
        Matcher matcher = CELL_RESOLUTION.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.w(TAG, "Ignoring malformed cell resolution: " + attributeValue);
            return cellResolution;
        }
        try {
            int parseInt = Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1)));
            int parseInt2 = Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2)));
            if (parseInt == 0 || parseInt2 == 0) {
                throw new SubtitleDecoderException("Invalid cell resolution " + parseInt + " " + parseInt2);
            }
            return new CellResolution(parseInt, parseInt2);
        } catch (NumberFormatException unused) {
            Log.w(TAG, "Ignoring malformed cell resolution: " + attributeValue);
            return cellResolution;
        }
    }

    private static TtsExtent parseTtsExtent(XmlPullParser xmlPullParser) {
        String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "extent");
        if (attributeValue == null) {
            return null;
        }
        Matcher matcher = PIXEL_COORDINATES.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.w(TAG, "Ignoring non-pixel tts extent: " + attributeValue);
            return null;
        }
        try {
            return new TtsExtent(Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2))));
        } catch (NumberFormatException unused) {
            Log.w(TAG, "Ignoring malformed tts extent: " + attributeValue);
            return null;
        }
    }

    private static Map<String, TtmlStyle> parseHeader(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, CellResolution cellResolution, TtsExtent ttsExtent, Map<String, TtmlRegion> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "style")) {
                String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style");
                TtmlStyle parseStyleAttributes = parseStyleAttributes(xmlPullParser, new TtmlStyle());
                if (attributeValue != null) {
                    for (String str : parseStyleIds(attributeValue)) {
                        parseStyleAttributes.chain(map.get(str));
                    }
                }
                String id = parseStyleAttributes.getId();
                if (id != null) {
                    map.put(id, parseStyleAttributes);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "region")) {
                TtmlRegion parseRegionAttributes = parseRegionAttributes(xmlPullParser, cellResolution, ttsExtent);
                if (parseRegionAttributes != null) {
                    map2.put(parseRegionAttributes.id, parseRegionAttributes);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "metadata")) {
                parseMetadata(xmlPullParser, map3);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "head"));
        return map;
    }

    private static void parseMetadata(XmlPullParser xmlPullParser, Map<String, String> map) throws IOException, XmlPullParserException {
        String attributeValue;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "image") && (attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "id")) != null) {
                map.put(attributeValue, xmlPullParser.nextText());
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "metadata"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a1, code lost:
    
        if (r0.equals("tb") == false) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.media3.extractor.text.ttml.TtmlRegion parseRegionAttributes(org.xmlpull.v1.XmlPullParser r17, androidx.media3.extractor.text.ttml.TtmlDecoder.CellResolution r18, androidx.media3.extractor.text.ttml.TtmlDecoder.TtsExtent r19) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.text.ttml.TtmlDecoder.parseRegionAttributes(org.xmlpull.v1.XmlPullParser, androidx.media3.extractor.text.ttml.TtmlDecoder$CellResolution, androidx.media3.extractor.text.ttml.TtmlDecoder$TtsExtent):androidx.media3.extractor.text.ttml.TtmlRegion");
    }

    private static String[] parseStyleIds(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : Util.split(trim, "\\s+");
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x01da, code lost:
    
        if (r3.equals("text") == false) goto L100;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:85:0x0271. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.media3.extractor.text.ttml.TtmlStyle parseStyleAttributes(org.xmlpull.v1.XmlPullParser r12, androidx.media3.extractor.text.ttml.TtmlStyle r13) {
        /*
            Method dump skipped, instructions count: 922
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.text.ttml.TtmlDecoder.parseStyleAttributes(org.xmlpull.v1.XmlPullParser, androidx.media3.extractor.text.ttml.TtmlStyle):androidx.media3.extractor.text.ttml.TtmlStyle");
    }

    private static TtmlStyle createIfNull(TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new TtmlStyle() : ttmlStyle;
    }

    private static Layout.Alignment parseAlignment(String str) {
        String lowerCase = Ascii.toLowerCase(str);
        lowerCase.hashCode();
        char c = 65535;
        switch (lowerCase.hashCode()) {
            case -1364013995:
                if (lowerCase.equals("center")) {
                    c = 0;
                    break;
                }
                break;
            case 100571:
                if (lowerCase.equals("end")) {
                    c = 1;
                    break;
                }
                break;
            case 3317767:
                if (lowerCase.equals("left")) {
                    c = 2;
                    break;
                }
                break;
            case 108511772:
                if (lowerCase.equals("right")) {
                    c = 3;
                    break;
                }
                break;
            case 109757538:
                if (lowerCase.equals("start")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return Layout.Alignment.ALIGN_CENTER;
            case 1:
            case 3:
                return Layout.Alignment.ALIGN_OPPOSITE;
            case 2:
            case 4:
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    private static TtmlNode parseNode(XmlPullParser xmlPullParser, TtmlNode ttmlNode, Map<String, TtmlRegion> map, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        long j;
        long j2;
        char c;
        int attributeCount = xmlPullParser.getAttributeCount();
        TtmlStyle parseStyleAttributes = parseStyleAttributes(xmlPullParser, null);
        String[] strArr = null;
        String str = null;
        String str2 = "";
        long j3 = -9223372036854775807L;
        long j4 = -9223372036854775807L;
        long j5 = -9223372036854775807L;
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        c = 0;
                        break;
                    }
                    break;
                case 99841:
                    if (attributeName.equals(ATTR_DURATION)) {
                        c = 1;
                        break;
                    }
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        c = 2;
                        break;
                    }
                    break;
                case 93616297:
                    if (attributeName.equals(ATTR_BEGIN)) {
                        c = 3;
                        break;
                    }
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1292595405:
                    if (attributeName.equals(ATTR_IMAGE)) {
                        c = 5;
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    if (!map.containsKey(attributeValue)) {
                        break;
                    } else {
                        str2 = attributeValue;
                        continue;
                    }
                case 1:
                    j5 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case 2:
                    j4 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case 3:
                    j3 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case 4:
                    String[] parseStyleIds = parseStyleIds(attributeValue);
                    if (parseStyleIds.length > 0) {
                        strArr = parseStyleIds;
                        break;
                    }
                    break;
                case 5:
                    if (attributeValue.startsWith("#")) {
                        str = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (ttmlNode != null) {
            j = -9223372036854775807L;
            if (ttmlNode.startTimeUs != -9223372036854775807L) {
                if (j3 != -9223372036854775807L) {
                    j3 += ttmlNode.startTimeUs;
                }
                if (j4 != -9223372036854775807L) {
                    j4 += ttmlNode.startTimeUs;
                }
            }
        } else {
            j = -9223372036854775807L;
        }
        long j6 = j3;
        if (j4 == j) {
            if (j5 != j) {
                j2 = j6 + j5;
            } else if (ttmlNode != null && ttmlNode.endTimeUs != j) {
                j2 = ttmlNode.endTimeUs;
            }
            return TtmlNode.buildNode(xmlPullParser.getName(), j6, j2, parseStyleAttributes, strArr, str2, str, ttmlNode);
        }
        j2 = j4;
        return TtmlNode.buildNode(xmlPullParser.getName(), j6, j2, parseStyleAttributes, strArr, str2, str, ttmlNode);
    }

    private static boolean isSupportedTag(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    private static void parseFontSize(String str, TtmlStyle ttmlStyle) throws SubtitleDecoderException {
        Matcher matcher;
        String[] split = Util.split(str, "\\s+");
        if (split.length == 1) {
            matcher = FONT_SIZE.matcher(str);
        } else if (split.length == 2) {
            matcher = FONT_SIZE.matcher(split[1]);
            Log.w(TAG, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + split.length + ".");
        }
        if (matcher.matches()) {
            String str2 = (String) Assertions.checkNotNull(matcher.group(3));
            str2.hashCode();
            char c = 65535;
            switch (str2.hashCode()) {
                case 37:
                    if (str2.equals("%")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3240:
                    if (str2.equals("em")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3592:
                    if (str2.equals("px")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    ttmlStyle.setFontSizeUnit(3);
                    break;
                case 1:
                    ttmlStyle.setFontSizeUnit(2);
                    break;
                case 2:
                    ttmlStyle.setFontSizeUnit(1);
                    break;
                default:
                    throw new SubtitleDecoderException("Invalid unit for fontSize: '" + str2 + "'.");
            }
            ttmlStyle.setFontSize(Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1))));
            return;
        }
        throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
    }

    private static float parseShear(String str) {
        Matcher matcher = SIGNED_PERCENTAGE.matcher(str);
        if (!matcher.matches()) {
            Log.w(TAG, "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1)))));
        } catch (NumberFormatException e) {
            Log.w(TAG, "Failed to parse shear: " + str, e);
            return Float.MAX_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bc, code lost:
    
        if (r13.equals("ms") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long parseTimeExpression(java.lang.String r13, androidx.media3.extractor.text.ttml.TtmlDecoder.FrameAndTickRate r14) throws androidx.media3.extractor.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.text.ttml.TtmlDecoder.parseTimeExpression(java.lang.String, androidx.media3.extractor.text.ttml.TtmlDecoder$FrameAndTickRate):long");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class FrameAndTickRate {
        final float effectiveFrameRate;
        final int subFrameRate;
        final int tickRate;

        FrameAndTickRate(float f, int i, int i2) {
            this.effectiveFrameRate = f;
            this.subFrameRate = i;
            this.tickRate = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class CellResolution {
        final int columns;
        final int rows;

        CellResolution(int i, int i2) {
            this.columns = i;
            this.rows = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class TtsExtent {
        final int height;
        final int width;

        TtsExtent(int i, int i2) {
            this.width = i;
            this.height = i2;
        }
    }
}
