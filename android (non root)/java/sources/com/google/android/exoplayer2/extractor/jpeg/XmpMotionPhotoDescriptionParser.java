package com.google.android.exoplayer2.extractor.jpeg;

import androidx.compose.material3.TextFieldImplKt;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.XmlPullParserUtil;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
final class XmpMotionPhotoDescriptionParser {
    private static final String TAG = "MotionPhotoXmpParser";
    private static final String[] MOTION_PHOTO_ATTRIBUTE_NAMES = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    public static MotionPhotoDescription parse(String str) throws IOException {
        try {
            return parseInternal(str);
        } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
            Log.w(TAG, "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    private static MotionPhotoDescription parseInternal(String str) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new StringReader(str));
        newPullParser.next();
        if (!XmlPullParserUtil.isStartTag(newPullParser, "x:xmpmeta")) {
            throw ParserException.createForMalformedContainer("Couldn't find xmp metadata", null);
        }
        ImmutableList<MotionPhotoDescription.ContainerItem> of = ImmutableList.of();
        long j = -9223372036854775807L;
        do {
            newPullParser.next();
            if (XmlPullParserUtil.isStartTag(newPullParser, "rdf:Description")) {
                if (!parseMotionPhotoFlagFromDescription(newPullParser)) {
                    return null;
                }
                j = parseMotionPhotoPresentationTimestampUsFromDescription(newPullParser);
                of = parseMicroVideoOffsetFromDescription(newPullParser);
            } else if (XmlPullParserUtil.isStartTag(newPullParser, "Container:Directory")) {
                of = parseMotionPhotoV1Directory(newPullParser, TextFieldImplKt.ContainerId, "Item");
            } else if (XmlPullParserUtil.isStartTag(newPullParser, "GContainer:Directory")) {
                of = parseMotionPhotoV1Directory(newPullParser, "GContainer", "GContainerItem");
            }
        } while (!XmlPullParserUtil.isEndTag(newPullParser, "x:xmpmeta"));
        if (of.isEmpty()) {
            return null;
        }
        return new MotionPhotoDescription(j, of);
    }

    private static boolean parseMotionPhotoFlagFromDescription(XmlPullParser xmlPullParser) {
        for (String str : MOTION_PHOTO_ATTRIBUTE_NAMES) {
            String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                return Integer.parseInt(attributeValue) == 1;
            }
        }
        return false;
    }

    private static long parseMotionPhotoPresentationTimestampUsFromDescription(XmlPullParser xmlPullParser) {
        for (String str : DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES) {
            String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                long parseLong = Long.parseLong(attributeValue);
                if (parseLong == -1) {
                    return -9223372036854775807L;
                }
                return parseLong;
            }
        }
        return -9223372036854775807L;
    }

    private static ImmutableList<MotionPhotoDescription.ContainerItem> parseMicroVideoOffsetFromDescription(XmlPullParser xmlPullParser) {
        for (String str : DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES) {
            String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                return ImmutableList.of(new MotionPhotoDescription.ContainerItem("image/jpeg", "Primary", 0L, 0L), new MotionPhotoDescription.ContainerItem("video/mp4", "MotionPhoto", Long.parseLong(attributeValue), 0L));
            }
        }
        return ImmutableList.of();
    }

    private static ImmutableList<MotionPhotoDescription.ContainerItem> parseMotionPhotoV1Directory(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        ImmutableList.Builder builder = ImmutableList.builder();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, str3)) {
                String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, str2 + ":Mime");
                String attributeValue2 = XmlPullParserUtil.getAttributeValue(xmlPullParser, str2 + ":Semantic");
                String attributeValue3 = XmlPullParserUtil.getAttributeValue(xmlPullParser, str2 + ":Length");
                String attributeValue4 = XmlPullParserUtil.getAttributeValue(xmlPullParser, str2 + ":Padding");
                if (attributeValue == null || attributeValue2 == null) {
                    return ImmutableList.of();
                }
                builder.add((ImmutableList.Builder) new MotionPhotoDescription.ContainerItem(attributeValue, attributeValue2, attributeValue3 != null ? Long.parseLong(attributeValue3) : 0L, attributeValue4 != null ? Long.parseLong(attributeValue4) : 0L));
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, str4));
        return builder.build();
    }

    private XmpMotionPhotoDescriptionParser() {
    }
}
