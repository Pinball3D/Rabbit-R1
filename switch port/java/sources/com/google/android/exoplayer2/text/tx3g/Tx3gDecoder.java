package com.google.android.exoplayer2.text.tx3g;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Ascii;
import com.google.common.base.Charsets;
import java.nio.charset.Charset;
import java.util.List;

/* loaded from: classes2.dex */
public final class Tx3gDecoder extends SimpleSubtitleDecoder {
    private static final int DEFAULT_COLOR = -1;
    private static final int DEFAULT_FONT_FACE = 0;
    private static final String DEFAULT_FONT_FAMILY = "sans-serif";
    private static final float DEFAULT_VERTICAL_PLACEMENT = 0.85f;
    private static final int FONT_FACE_BOLD = 1;
    private static final int FONT_FACE_ITALIC = 2;
    private static final int FONT_FACE_UNDERLINE = 4;
    private static final int SIZE_ATOM_HEADER = 8;
    private static final int SIZE_SHORT = 2;
    private static final int SIZE_STYLE_RECORD = 12;
    private static final int SPAN_PRIORITY_HIGH = 0;
    private static final int SPAN_PRIORITY_LOW = 16711680;
    private static final String TAG = "Tx3gDecoder";
    private static final String TX3G_SERIF = "Serif";
    private static final int TYPE_STYL = 1937013100;
    private static final int TYPE_TBOX = 1952608120;
    private final int calculatedVideoTrackHeight;
    private final boolean customVerticalPlacement;
    private final int defaultColorRgba;
    private final int defaultFontFace;
    private final String defaultFontFamily;
    private final float defaultVerticalPlacement;
    private final ParsableByteArray parsableByteArray;

    public Tx3gDecoder(List<byte[]> list) {
        super(TAG);
        this.parsableByteArray = new ParsableByteArray();
        if (list.size() != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.defaultFontFace = 0;
            this.defaultColorRgba = -1;
            this.defaultFontFamily = "sans-serif";
            this.customVerticalPlacement = false;
            this.defaultVerticalPlacement = DEFAULT_VERTICAL_PLACEMENT;
            this.calculatedVideoTrackHeight = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.defaultFontFace = bArr[24];
        this.defaultColorRgba = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.defaultFontFamily = TX3G_SERIF.equals(Util.fromUtf8Bytes(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
        int i = bArr[25] * Ascii.DC4;
        this.calculatedVideoTrackHeight = i;
        boolean z = (bArr[0] & 32) != 0;
        this.customVerticalPlacement = z;
        if (z) {
            this.defaultVerticalPlacement = Util.constrainValue(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.0f, 0.95f);
        } else {
            this.defaultVerticalPlacement = DEFAULT_VERTICAL_PLACEMENT;
        }
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    protected Subtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.parsableByteArray.reset(bArr, i);
        String readSubtitleText = readSubtitleText(this.parsableByteArray);
        if (readSubtitleText.isEmpty()) {
            return Tx3gSubtitle.EMPTY;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(readSubtitleText);
        attachFontFace(spannableStringBuilder, this.defaultFontFace, 0, 0, spannableStringBuilder.length(), SPAN_PRIORITY_LOW);
        attachColor(spannableStringBuilder, this.defaultColorRgba, -1, 0, spannableStringBuilder.length(), SPAN_PRIORITY_LOW);
        attachFontFamily(spannableStringBuilder, this.defaultFontFamily, 0, spannableStringBuilder.length());
        float f = this.defaultVerticalPlacement;
        while (this.parsableByteArray.bytesLeft() >= 8) {
            int position = this.parsableByteArray.getPosition();
            int readInt = this.parsableByteArray.readInt();
            int readInt2 = this.parsableByteArray.readInt();
            if (readInt2 == TYPE_STYL) {
                assertTrue(this.parsableByteArray.bytesLeft() >= 2);
                int readUnsignedShort = this.parsableByteArray.readUnsignedShort();
                for (int i2 = 0; i2 < readUnsignedShort; i2++) {
                    applyStyleRecord(this.parsableByteArray, spannableStringBuilder);
                }
            } else if (readInt2 == TYPE_TBOX && this.customVerticalPlacement) {
                assertTrue(this.parsableByteArray.bytesLeft() >= 2);
                f = Util.constrainValue(this.parsableByteArray.readUnsignedShort() / this.calculatedVideoTrackHeight, 0.0f, 0.95f);
            }
            this.parsableByteArray.setPosition(position + readInt);
        }
        return new Tx3gSubtitle(new Cue.Builder().setText(spannableStringBuilder).setLine(f, 0).setLineAnchor(0).build());
    }

    private static String readSubtitleText(ParsableByteArray parsableByteArray) throws SubtitleDecoderException {
        assertTrue(parsableByteArray.bytesLeft() >= 2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        if (readUnsignedShort == 0) {
            return "";
        }
        int position = parsableByteArray.getPosition();
        Charset readUtfCharsetFromBom = parsableByteArray.readUtfCharsetFromBom();
        int position2 = readUnsignedShort - (parsableByteArray.getPosition() - position);
        if (readUtfCharsetFromBom == null) {
            readUtfCharsetFromBom = Charsets.UTF_8;
        }
        return parsableByteArray.readString(position2, readUtfCharsetFromBom);
    }

    private void applyStyleRecord(ParsableByteArray parsableByteArray, SpannableStringBuilder spannableStringBuilder) throws SubtitleDecoderException {
        assertTrue(parsableByteArray.bytesLeft() >= 12);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        parsableByteArray.skipBytes(1);
        int readInt = parsableByteArray.readInt();
        if (readUnsignedShort2 > spannableStringBuilder.length()) {
            Log.w(TAG, "Truncating styl end (" + readUnsignedShort2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            readUnsignedShort2 = spannableStringBuilder.length();
        }
        if (readUnsignedShort >= readUnsignedShort2) {
            Log.w(TAG, "Ignoring styl with start (" + readUnsignedShort + ") >= end (" + readUnsignedShort2 + ").");
            return;
        }
        int i = readUnsignedShort2;
        attachFontFace(spannableStringBuilder, readUnsignedByte, this.defaultFontFace, readUnsignedShort, i, 0);
        attachColor(spannableStringBuilder, readInt, this.defaultColorRgba, readUnsignedShort, i, 0);
    }

    private static void attachFontFace(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            boolean z = (i & 1) != 0;
            boolean z2 = (i & 2) != 0;
            if (z) {
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                }
            } else if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            }
            boolean z3 = (i & 4) != 0;
            if (z3) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            }
            if (z3 || z || z2) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
        }
    }

    private static void attachColor(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    private static void attachFontFamily(SpannableStringBuilder spannableStringBuilder, String str, int i, int i2) {
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i, i2, 16711713);
        }
    }

    private static void assertTrue(boolean z) throws SubtitleDecoderException {
        if (!z) {
            throw new SubtitleDecoderException("Unexpected subtitle format.");
        }
    }
}
