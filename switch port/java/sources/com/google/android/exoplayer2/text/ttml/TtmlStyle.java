package com.google.android.exoplayer2.text.ttml;

import android.text.Layout;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
final class TtmlStyle {
    public static final int FONT_SIZE_UNIT_EM = 2;
    public static final int FONT_SIZE_UNIT_PERCENT = 3;
    public static final int FONT_SIZE_UNIT_PIXEL = 1;
    private static final int OFF = 0;
    private static final int ON = 1;
    public static final int RUBY_TYPE_BASE = 2;
    public static final int RUBY_TYPE_CONTAINER = 1;
    public static final int RUBY_TYPE_DELIMITER = 4;
    public static final int RUBY_TYPE_TEXT = 3;
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_BOLD_ITALIC = 3;
    public static final int STYLE_ITALIC = 2;
    public static final int STYLE_NORMAL = 0;
    public static final int UNSPECIFIED = -1;
    public static final float UNSPECIFIED_SHEAR = Float.MAX_VALUE;
    private int backgroundColor;
    private int fontColor;
    private String fontFamily;
    private float fontSize;
    private boolean hasBackgroundColor;
    private boolean hasFontColor;
    private String id;
    private Layout.Alignment multiRowAlign;
    private Layout.Alignment textAlign;
    private TextEmphasis textEmphasis;
    private int linethrough = -1;
    private int underline = -1;
    private int bold = -1;
    private int italic = -1;
    private int fontSizeUnit = -1;
    private int rubyType = -1;
    private int rubyPosition = -1;
    private int textCombine = -1;
    private float shearPercentage = Float.MAX_VALUE;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface FontSizeUnit {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface RubyType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface StyleFlags {
    }

    public String getFontFamily() {
        return this.fontFamily;
    }

    public float getFontSize() {
        return this.fontSize;
    }

    public int getFontSizeUnit() {
        return this.fontSizeUnit;
    }

    public String getId() {
        return this.id;
    }

    public Layout.Alignment getMultiRowAlign() {
        return this.multiRowAlign;
    }

    public int getRubyPosition() {
        return this.rubyPosition;
    }

    public int getRubyType() {
        return this.rubyType;
    }

    public float getShearPercentage() {
        return this.shearPercentage;
    }

    public int getStyle() {
        int i = this.bold;
        if (i == -1 && this.italic == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.italic == 1 ? 2 : 0);
    }

    public Layout.Alignment getTextAlign() {
        return this.textAlign;
    }

    public boolean getTextCombine() {
        return this.textCombine == 1;
    }

    public TextEmphasis getTextEmphasis() {
        return this.textEmphasis;
    }

    public boolean hasBackgroundColor() {
        return this.hasBackgroundColor;
    }

    public boolean hasFontColor() {
        return this.hasFontColor;
    }

    public boolean isLinethrough() {
        return this.linethrough == 1;
    }

    public boolean isUnderline() {
        return this.underline == 1;
    }

    public TtmlStyle setBackgroundColor(int i) {
        this.backgroundColor = i;
        this.hasBackgroundColor = true;
        return this;
    }

    public TtmlStyle setBold(boolean z) {
        this.bold = z ? 1 : 0;
        return this;
    }

    public TtmlStyle setFontColor(int i) {
        this.fontColor = i;
        this.hasFontColor = true;
        return this;
    }

    public TtmlStyle setFontFamily(String str) {
        this.fontFamily = str;
        return this;
    }

    public TtmlStyle setFontSize(float f) {
        this.fontSize = f;
        return this;
    }

    public TtmlStyle setFontSizeUnit(int i) {
        this.fontSizeUnit = i;
        return this;
    }

    public TtmlStyle setId(String str) {
        this.id = str;
        return this;
    }

    public TtmlStyle setItalic(boolean z) {
        this.italic = z ? 1 : 0;
        return this;
    }

    public TtmlStyle setLinethrough(boolean z) {
        this.linethrough = z ? 1 : 0;
        return this;
    }

    public TtmlStyle setMultiRowAlign(Layout.Alignment alignment) {
        this.multiRowAlign = alignment;
        return this;
    }

    public TtmlStyle setRubyPosition(int i) {
        this.rubyPosition = i;
        return this;
    }

    public TtmlStyle setRubyType(int i) {
        this.rubyType = i;
        return this;
    }

    public TtmlStyle setShearPercentage(float f) {
        this.shearPercentage = f;
        return this;
    }

    public TtmlStyle setTextAlign(Layout.Alignment alignment) {
        this.textAlign = alignment;
        return this;
    }

    public TtmlStyle setTextCombine(boolean z) {
        this.textCombine = z ? 1 : 0;
        return this;
    }

    public TtmlStyle setTextEmphasis(TextEmphasis textEmphasis) {
        this.textEmphasis = textEmphasis;
        return this;
    }

    public TtmlStyle setUnderline(boolean z) {
        this.underline = z ? 1 : 0;
        return this;
    }

    public int getFontColor() {
        if (this.hasFontColor) {
            return this.fontColor;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public int getBackgroundColor() {
        if (this.hasBackgroundColor) {
            return this.backgroundColor;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public TtmlStyle chain(TtmlStyle ttmlStyle) {
        return inherit(ttmlStyle, true);
    }

    public TtmlStyle inherit(TtmlStyle ttmlStyle) {
        return inherit(ttmlStyle, false);
    }

    private TtmlStyle inherit(TtmlStyle ttmlStyle, boolean z) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (ttmlStyle != null) {
            if (!this.hasFontColor && ttmlStyle.hasFontColor) {
                setFontColor(ttmlStyle.fontColor);
            }
            if (this.bold == -1) {
                this.bold = ttmlStyle.bold;
            }
            if (this.italic == -1) {
                this.italic = ttmlStyle.italic;
            }
            if (this.fontFamily == null && (str = ttmlStyle.fontFamily) != null) {
                this.fontFamily = str;
            }
            if (this.linethrough == -1) {
                this.linethrough = ttmlStyle.linethrough;
            }
            if (this.underline == -1) {
                this.underline = ttmlStyle.underline;
            }
            if (this.rubyPosition == -1) {
                this.rubyPosition = ttmlStyle.rubyPosition;
            }
            if (this.textAlign == null && (alignment2 = ttmlStyle.textAlign) != null) {
                this.textAlign = alignment2;
            }
            if (this.multiRowAlign == null && (alignment = ttmlStyle.multiRowAlign) != null) {
                this.multiRowAlign = alignment;
            }
            if (this.textCombine == -1) {
                this.textCombine = ttmlStyle.textCombine;
            }
            if (this.fontSizeUnit == -1) {
                this.fontSizeUnit = ttmlStyle.fontSizeUnit;
                this.fontSize = ttmlStyle.fontSize;
            }
            if (this.textEmphasis == null) {
                this.textEmphasis = ttmlStyle.textEmphasis;
            }
            if (this.shearPercentage == Float.MAX_VALUE) {
                this.shearPercentage = ttmlStyle.shearPercentage;
            }
            if (z && !this.hasBackgroundColor && ttmlStyle.hasBackgroundColor) {
                setBackgroundColor(ttmlStyle.backgroundColor);
            }
            if (z && this.rubyType == -1 && (i = ttmlStyle.rubyType) != -1) {
                this.rubyType = i;
            }
        }
        return this;
    }
}
