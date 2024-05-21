package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.core.R;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class GradientColorInflaterCompat {
    private static final int TILE_MODE_CLAMP = 0;
    private static final int TILE_MODE_MIRROR = 2;
    private static final int TILE_MODE_REPEAT = 1;

    private GradientColorInflaterCompat() {
    }

    static Shader createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return createFromXmlInner(resources, xmlPullParser, asAttributeSet, theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Shader createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.GradientColor);
        float namedFloat = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "startX", R.styleable.GradientColor_android_startX, 0.0f);
        float namedFloat2 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "startY", R.styleable.GradientColor_android_startY, 0.0f);
        float namedFloat3 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "endX", R.styleable.GradientColor_android_endX, 0.0f);
        float namedFloat4 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "endY", R.styleable.GradientColor_android_endY, 0.0f);
        float namedFloat5 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "centerX", R.styleable.GradientColor_android_centerX, 0.0f);
        float namedFloat6 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "centerY", R.styleable.GradientColor_android_centerY, 0.0f);
        int namedInt = TypedArrayUtils.getNamedInt(obtainAttributes, xmlPullParser, "type", R.styleable.GradientColor_android_type, 0);
        int namedColor = TypedArrayUtils.getNamedColor(obtainAttributes, xmlPullParser, "startColor", R.styleable.GradientColor_android_startColor, 0);
        boolean hasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, "centerColor");
        int namedColor2 = TypedArrayUtils.getNamedColor(obtainAttributes, xmlPullParser, "centerColor", R.styleable.GradientColor_android_centerColor, 0);
        int namedColor3 = TypedArrayUtils.getNamedColor(obtainAttributes, xmlPullParser, "endColor", R.styleable.GradientColor_android_endColor, 0);
        int namedInt2 = TypedArrayUtils.getNamedInt(obtainAttributes, xmlPullParser, "tileMode", R.styleable.GradientColor_android_tileMode, 0);
        float namedFloat7 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "gradientRadius", R.styleable.GradientColor_android_gradientRadius, 0.0f);
        obtainAttributes.recycle();
        ColorStops checkColors = checkColors(inflateChildElements(resources, xmlPullParser, attributeSet, theme), namedColor, namedColor3, hasAttribute, namedColor2);
        if (namedInt != 1) {
            if (namedInt == 2) {
                return new SweepGradient(namedFloat5, namedFloat6, checkColors.mColors, checkColors.mOffsets);
            }
            return new LinearGradient(namedFloat, namedFloat2, namedFloat3, namedFloat4, checkColors.mColors, checkColors.mOffsets, parseTileMode(namedInt2));
        }
        if (namedFloat7 <= 0.0f) {
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        }
        return new RadialGradient(namedFloat5, namedFloat6, namedFloat7, checkColors.mColors, checkColors.mOffsets, parseTileMode(namedInt2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0086, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r9.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.content.res.GradientColorInflaterCompat.ColorStops inflateChildElements(android.content.res.Resources r8, org.xmlpull.v1.XmlPullParser r9, android.util.AttributeSet r10, android.content.res.Resources.Theme r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            int r0 = r9.getDepth()
            r1 = 1
            int r0 = r0 + r1
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 20
            r2.<init>(r3)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>(r3)
        L12:
            int r3 = r9.next()
            if (r3 == r1) goto L87
            int r5 = r9.getDepth()
            if (r5 >= r0) goto L21
            r6 = 3
            if (r3 == r6) goto L87
        L21:
            r6 = 2
            if (r3 == r6) goto L25
            goto L12
        L25:
            if (r5 > r0) goto L12
            java.lang.String r3 = r9.getName()
            java.lang.String r5 = "item"
            boolean r3 = r3.equals(r5)
            if (r3 != 0) goto L34
            goto L12
        L34:
            int[] r3 = androidx.core.R.styleable.GradientColorItem
            android.content.res.TypedArray r3 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(r8, r11, r10, r3)
            int r5 = androidx.core.R.styleable.GradientColorItem_android_color
            boolean r5 = r3.hasValue(r5)
            int r6 = androidx.core.R.styleable.GradientColorItem_android_offset
            boolean r6 = r3.hasValue(r6)
            if (r5 == 0) goto L6a
            if (r6 == 0) goto L6a
            int r5 = androidx.core.R.styleable.GradientColorItem_android_color
            r6 = 0
            int r5 = r3.getColor(r5, r6)
            int r6 = androidx.core.R.styleable.GradientColorItem_android_offset
            r7 = 0
            float r6 = r3.getFloat(r6, r7)
            r3.recycle()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r5)
            r4.add(r3)
            java.lang.Float r3 = java.lang.Float.valueOf(r6)
            r2.add(r3)
            goto L12
        L6a:
            org.xmlpull.v1.XmlPullParserException r8 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r9 = r9.getPositionDescription()
            java.lang.StringBuilder r9 = r10.append(r9)
            java.lang.String r10 = ": <item> tag requires a 'color' attribute and a 'offset' attribute!"
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            throw r8
        L87:
            int r8 = r4.size()
            if (r8 <= 0) goto L93
            androidx.core.content.res.GradientColorInflaterCompat$ColorStops r8 = new androidx.core.content.res.GradientColorInflaterCompat$ColorStops
            r8.<init>(r4, r2)
            return r8
        L93:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.GradientColorInflaterCompat.inflateChildElements(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.res.GradientColorInflaterCompat$ColorStops");
    }

    private static ColorStops checkColors(ColorStops colorStops, int i, int i2, boolean z, int i3) {
        if (colorStops != null) {
            return colorStops;
        }
        if (z) {
            return new ColorStops(i, i3, i2);
        }
        return new ColorStops(i, i2);
    }

    private static Shader.TileMode parseTileMode(int i) {
        if (i == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i == 2) {
            return Shader.TileMode.MIRROR;
        }
        return Shader.TileMode.CLAMP;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class ColorStops {
        final int[] mColors;
        final float[] mOffsets;

        ColorStops(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.mColors = new int[size];
            this.mOffsets = new float[size];
            for (int i = 0; i < size; i++) {
                this.mColors[i] = list.get(i).intValue();
                this.mOffsets[i] = list2.get(i).floatValue();
            }
        }

        ColorStops(int i, int i2) {
            this.mColors = new int[]{i, i2};
            this.mOffsets = new float[]{0.0f, 1.0f};
        }

        ColorStops(int i, int i2, int i3) {
            this.mColors = new int[]{i, i2, i3};
            this.mOffsets = new float[]{0.0f, 0.5f, 1.0f};
        }
    }
}
