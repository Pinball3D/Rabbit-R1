package com.google.android.exoplayer2.text;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Objects;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes2.dex */
public final class Cue implements Bundleable {
    public static final int ANCHOR_TYPE_END = 2;
    public static final int ANCHOR_TYPE_MIDDLE = 1;
    public static final int ANCHOR_TYPE_START = 0;
    public static final float DIMEN_UNSET = -3.4028235E38f;
    public static final int LINE_TYPE_FRACTION = 0;
    public static final int LINE_TYPE_NUMBER = 1;
    public static final int TEXT_SIZE_TYPE_ABSOLUTE = 2;
    public static final int TEXT_SIZE_TYPE_FRACTIONAL = 0;
    public static final int TEXT_SIZE_TYPE_FRACTIONAL_IGNORE_PADDING = 1;
    public static final int TYPE_UNSET = Integer.MIN_VALUE;
    public static final int VERTICAL_TYPE_LR = 2;
    public static final int VERTICAL_TYPE_RL = 1;
    public final Bitmap bitmap;
    public final float bitmapHeight;
    public final float line;
    public final int lineAnchor;
    public final int lineType;
    public final Layout.Alignment multiRowAlignment;
    public final float position;
    public final int positionAnchor;
    public final float shearDegrees;
    public final float size;
    public final CharSequence text;
    public final Layout.Alignment textAlignment;
    public final float textSize;
    public final int textSizeType;
    public final int verticalType;
    public final int windowColor;
    public final boolean windowColorSet;
    public static final Cue EMPTY = new Builder().setText("").build();
    private static final String FIELD_TEXT = Util.intToStringMaxRadix(0);
    private static final String FIELD_TEXT_ALIGNMENT = Util.intToStringMaxRadix(1);
    private static final String FIELD_MULTI_ROW_ALIGNMENT = Util.intToStringMaxRadix(2);
    private static final String FIELD_BITMAP = Util.intToStringMaxRadix(3);
    private static final String FIELD_LINE = Util.intToStringMaxRadix(4);
    private static final String FIELD_LINE_TYPE = Util.intToStringMaxRadix(5);
    private static final String FIELD_LINE_ANCHOR = Util.intToStringMaxRadix(6);
    private static final String FIELD_POSITION = Util.intToStringMaxRadix(7);
    private static final String FIELD_POSITION_ANCHOR = Util.intToStringMaxRadix(8);
    private static final String FIELD_TEXT_SIZE_TYPE = Util.intToStringMaxRadix(9);
    private static final String FIELD_TEXT_SIZE = Util.intToStringMaxRadix(10);
    private static final String FIELD_SIZE = Util.intToStringMaxRadix(11);
    private static final String FIELD_BITMAP_HEIGHT = Util.intToStringMaxRadix(12);
    private static final String FIELD_WINDOW_COLOR = Util.intToStringMaxRadix(13);
    private static final String FIELD_WINDOW_COLOR_SET = Util.intToStringMaxRadix(14);
    private static final String FIELD_VERTICAL_TYPE = Util.intToStringMaxRadix(15);
    private static final String FIELD_SHEAR_DEGREES = Util.intToStringMaxRadix(16);
    public static final Bundleable.Creator<Cue> CREATOR = new Bundleable.Creator() { // from class: com.google.android.exoplayer2.text.Cue$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            Cue fromBundle;
            fromBundle = Cue.fromBundle(bundle);
            return fromBundle;
        }
    };

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface AnchorType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface LineType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface TextSizeType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface VerticalType {
    }

    @Deprecated
    public Cue(CharSequence charSequence) {
        this(charSequence, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f);
    }

    @Deprecated
    public Cue(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        this(charSequence, alignment, f, i, i2, f2, i3, f3, false, ViewCompat.MEASURED_STATE_MASK);
    }

    @Deprecated
    public Cue(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, int i4, float f4) {
        this(charSequence, alignment, null, null, f, i, i2, f2, i3, i4, f4, f3, -3.4028235E38f, false, ViewCompat.MEASURED_STATE_MASK, Integer.MIN_VALUE, 0.0f);
    }

    @Deprecated
    public Cue(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4) {
        this(charSequence, alignment, null, null, f, i, i2, f2, i3, Integer.MIN_VALUE, -3.4028235E38f, f3, -3.4028235E38f, z, i4, Integer.MIN_VALUE, 0.0f);
    }

    private Cue(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5, int i6, float f6) {
        if (charSequence == null) {
            Assertions.checkNotNull(bitmap);
        } else {
            Assertions.checkArgument(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.text = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.text = charSequence.toString();
        } else {
            this.text = null;
        }
        this.textAlignment = alignment;
        this.multiRowAlignment = alignment2;
        this.bitmap = bitmap;
        this.line = f;
        this.lineType = i;
        this.lineAnchor = i2;
        this.position = f2;
        this.positionAnchor = i3;
        this.size = f4;
        this.bitmapHeight = f5;
        this.windowColorSet = z;
        this.windowColor = i5;
        this.textSizeType = i4;
        this.textSize = f3;
        this.verticalType = i6;
        this.shearDegrees = f6;
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Cue cue = (Cue) obj;
        return TextUtils.equals(this.text, cue.text) && this.textAlignment == cue.textAlignment && this.multiRowAlignment == cue.multiRowAlignment && ((bitmap = this.bitmap) != null ? !((bitmap2 = cue.bitmap) == null || !bitmap.sameAs(bitmap2)) : cue.bitmap == null) && this.line == cue.line && this.lineType == cue.lineType && this.lineAnchor == cue.lineAnchor && this.position == cue.position && this.positionAnchor == cue.positionAnchor && this.size == cue.size && this.bitmapHeight == cue.bitmapHeight && this.windowColorSet == cue.windowColorSet && this.windowColor == cue.windowColor && this.textSizeType == cue.textSizeType && this.textSize == cue.textSize && this.verticalType == cue.verticalType && this.shearDegrees == cue.shearDegrees;
    }

    public int hashCode() {
        return Objects.hashCode(this.text, this.textAlignment, this.multiRowAlignment, this.bitmap, Float.valueOf(this.line), Integer.valueOf(this.lineType), Integer.valueOf(this.lineAnchor), Float.valueOf(this.position), Integer.valueOf(this.positionAnchor), Float.valueOf(this.size), Float.valueOf(this.bitmapHeight), Boolean.valueOf(this.windowColorSet), Integer.valueOf(this.windowColor), Integer.valueOf(this.textSizeType), Float.valueOf(this.textSize), Integer.valueOf(this.verticalType), Float.valueOf(this.shearDegrees));
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private Bitmap bitmap;
        private float bitmapHeight;
        private float line;
        private int lineAnchor;
        private int lineType;
        private Layout.Alignment multiRowAlignment;
        private float position;
        private int positionAnchor;
        private float shearDegrees;
        private float size;
        private CharSequence text;
        private Layout.Alignment textAlignment;
        private float textSize;
        private int textSizeType;
        private int verticalType;
        private int windowColor;
        private boolean windowColorSet;

        public Builder clearWindowColor() {
            this.windowColorSet = false;
            return this;
        }

        @Pure
        public Bitmap getBitmap() {
            return this.bitmap;
        }

        @Pure
        public float getBitmapHeight() {
            return this.bitmapHeight;
        }

        @Pure
        public float getLine() {
            return this.line;
        }

        @Pure
        public int getLineAnchor() {
            return this.lineAnchor;
        }

        @Pure
        public int getLineType() {
            return this.lineType;
        }

        @Pure
        public float getPosition() {
            return this.position;
        }

        @Pure
        public int getPositionAnchor() {
            return this.positionAnchor;
        }

        @Pure
        public float getSize() {
            return this.size;
        }

        @Pure
        public CharSequence getText() {
            return this.text;
        }

        @Pure
        public Layout.Alignment getTextAlignment() {
            return this.textAlignment;
        }

        @Pure
        public float getTextSize() {
            return this.textSize;
        }

        @Pure
        public int getTextSizeType() {
            return this.textSizeType;
        }

        @Pure
        public int getVerticalType() {
            return this.verticalType;
        }

        @Pure
        public int getWindowColor() {
            return this.windowColor;
        }

        public boolean isWindowColorSet() {
            return this.windowColorSet;
        }

        public Builder setBitmap(Bitmap bitmap) {
            this.bitmap = bitmap;
            return this;
        }

        public Builder setBitmapHeight(float f) {
            this.bitmapHeight = f;
            return this;
        }

        public Builder setLine(float f, int i) {
            this.line = f;
            this.lineType = i;
            return this;
        }

        public Builder setLineAnchor(int i) {
            this.lineAnchor = i;
            return this;
        }

        public Builder setMultiRowAlignment(Layout.Alignment alignment) {
            this.multiRowAlignment = alignment;
            return this;
        }

        public Builder setPosition(float f) {
            this.position = f;
            return this;
        }

        public Builder setPositionAnchor(int i) {
            this.positionAnchor = i;
            return this;
        }

        public Builder setShearDegrees(float f) {
            this.shearDegrees = f;
            return this;
        }

        public Builder setSize(float f) {
            this.size = f;
            return this;
        }

        public Builder setText(CharSequence charSequence) {
            this.text = charSequence;
            return this;
        }

        public Builder setTextAlignment(Layout.Alignment alignment) {
            this.textAlignment = alignment;
            return this;
        }

        public Builder setTextSize(float f, int i) {
            this.textSize = f;
            this.textSizeType = i;
            return this;
        }

        public Builder setVerticalType(int i) {
            this.verticalType = i;
            return this;
        }

        public Builder setWindowColor(int i) {
            this.windowColor = i;
            this.windowColorSet = true;
            return this;
        }

        public Builder() {
            this.text = null;
            this.bitmap = null;
            this.textAlignment = null;
            this.multiRowAlignment = null;
            this.line = -3.4028235E38f;
            this.lineType = Integer.MIN_VALUE;
            this.lineAnchor = Integer.MIN_VALUE;
            this.position = -3.4028235E38f;
            this.positionAnchor = Integer.MIN_VALUE;
            this.textSizeType = Integer.MIN_VALUE;
            this.textSize = -3.4028235E38f;
            this.size = -3.4028235E38f;
            this.bitmapHeight = -3.4028235E38f;
            this.windowColorSet = false;
            this.windowColor = ViewCompat.MEASURED_STATE_MASK;
            this.verticalType = Integer.MIN_VALUE;
        }

        private Builder(Cue cue) {
            this.text = cue.text;
            this.bitmap = cue.bitmap;
            this.textAlignment = cue.textAlignment;
            this.multiRowAlignment = cue.multiRowAlignment;
            this.line = cue.line;
            this.lineType = cue.lineType;
            this.lineAnchor = cue.lineAnchor;
            this.position = cue.position;
            this.positionAnchor = cue.positionAnchor;
            this.textSizeType = cue.textSizeType;
            this.textSize = cue.textSize;
            this.size = cue.size;
            this.bitmapHeight = cue.bitmapHeight;
            this.windowColorSet = cue.windowColorSet;
            this.windowColor = cue.windowColor;
            this.verticalType = cue.verticalType;
            this.shearDegrees = cue.shearDegrees;
        }

        public Cue build() {
            return new Cue(this.text, this.textAlignment, this.multiRowAlignment, this.bitmap, this.line, this.lineType, this.lineAnchor, this.position, this.positionAnchor, this.textSizeType, this.textSize, this.size, this.bitmapHeight, this.windowColorSet, this.windowColor, this.verticalType, this.shearDegrees);
        }
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(FIELD_TEXT, this.text);
        bundle.putSerializable(FIELD_TEXT_ALIGNMENT, this.textAlignment);
        bundle.putSerializable(FIELD_MULTI_ROW_ALIGNMENT, this.multiRowAlignment);
        bundle.putParcelable(FIELD_BITMAP, this.bitmap);
        bundle.putFloat(FIELD_LINE, this.line);
        bundle.putInt(FIELD_LINE_TYPE, this.lineType);
        bundle.putInt(FIELD_LINE_ANCHOR, this.lineAnchor);
        bundle.putFloat(FIELD_POSITION, this.position);
        bundle.putInt(FIELD_POSITION_ANCHOR, this.positionAnchor);
        bundle.putInt(FIELD_TEXT_SIZE_TYPE, this.textSizeType);
        bundle.putFloat(FIELD_TEXT_SIZE, this.textSize);
        bundle.putFloat(FIELD_SIZE, this.size);
        bundle.putFloat(FIELD_BITMAP_HEIGHT, this.bitmapHeight);
        bundle.putBoolean(FIELD_WINDOW_COLOR_SET, this.windowColorSet);
        bundle.putInt(FIELD_WINDOW_COLOR, this.windowColor);
        bundle.putInt(FIELD_VERTICAL_TYPE, this.verticalType);
        bundle.putFloat(FIELD_SHEAR_DEGREES, this.shearDegrees);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Cue fromBundle(Bundle bundle) {
        Builder builder = new Builder();
        CharSequence charSequence = bundle.getCharSequence(FIELD_TEXT);
        if (charSequence != null) {
            builder.setText(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(FIELD_TEXT_ALIGNMENT);
        if (alignment != null) {
            builder.setTextAlignment(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(FIELD_MULTI_ROW_ALIGNMENT);
        if (alignment2 != null) {
            builder.setMultiRowAlignment(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(FIELD_BITMAP);
        if (bitmap != null) {
            builder.setBitmap(bitmap);
        }
        String str = FIELD_LINE;
        if (bundle.containsKey(str)) {
            String str2 = FIELD_LINE_TYPE;
            if (bundle.containsKey(str2)) {
                builder.setLine(bundle.getFloat(str), bundle.getInt(str2));
            }
        }
        String str3 = FIELD_LINE_ANCHOR;
        if (bundle.containsKey(str3)) {
            builder.setLineAnchor(bundle.getInt(str3));
        }
        String str4 = FIELD_POSITION;
        if (bundle.containsKey(str4)) {
            builder.setPosition(bundle.getFloat(str4));
        }
        String str5 = FIELD_POSITION_ANCHOR;
        if (bundle.containsKey(str5)) {
            builder.setPositionAnchor(bundle.getInt(str5));
        }
        String str6 = FIELD_TEXT_SIZE;
        if (bundle.containsKey(str6)) {
            String str7 = FIELD_TEXT_SIZE_TYPE;
            if (bundle.containsKey(str7)) {
                builder.setTextSize(bundle.getFloat(str6), bundle.getInt(str7));
            }
        }
        String str8 = FIELD_SIZE;
        if (bundle.containsKey(str8)) {
            builder.setSize(bundle.getFloat(str8));
        }
        String str9 = FIELD_BITMAP_HEIGHT;
        if (bundle.containsKey(str9)) {
            builder.setBitmapHeight(bundle.getFloat(str9));
        }
        String str10 = FIELD_WINDOW_COLOR;
        if (bundle.containsKey(str10)) {
            builder.setWindowColor(bundle.getInt(str10));
        }
        if (!bundle.getBoolean(FIELD_WINDOW_COLOR_SET, false)) {
            builder.clearWindowColor();
        }
        String str11 = FIELD_VERTICAL_TYPE;
        if (bundle.containsKey(str11)) {
            builder.setVerticalType(bundle.getInt(str11));
        }
        String str12 = FIELD_SHEAR_DEGREES;
        if (bundle.containsKey(str12)) {
            builder.setShearDegrees(bundle.getFloat(str12));
        }
        return builder.build();
    }
}
