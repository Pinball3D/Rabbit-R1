package androidx.media3.extractor.text.webvtt;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class WebvttCssStyle {
    public static final int FONT_SIZE_UNIT_EM = 2;
    public static final int FONT_SIZE_UNIT_PERCENT = 3;
    public static final int FONT_SIZE_UNIT_PIXEL = 1;
    private static final int OFF = 0;
    private static final int ON = 1;
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_BOLD_ITALIC = 3;
    public static final int STYLE_ITALIC = 2;
    public static final int STYLE_NORMAL = 0;
    public static final int UNSPECIFIED = -1;
    private int backgroundColor;
    private int fontColor;
    private float fontSize;
    private String targetId = "";
    private String targetTag = "";
    private Set<String> targetClasses = Collections.emptySet();
    private String targetVoice = "";
    private String fontFamily = null;
    private boolean hasFontColor = false;
    private boolean hasBackgroundColor = false;
    private int linethrough = -1;
    private int underline = -1;
    private int bold = -1;
    private int italic = -1;
    private int fontSizeUnit = -1;
    private int rubyPosition = -1;
    private boolean combineUpright = false;

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
    public @interface StyleFlags {
    }

    public boolean getCombineUpright() {
        return this.combineUpright;
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

    public int getRubyPosition() {
        return this.rubyPosition;
    }

    public int getStyle() {
        int i = this.bold;
        if (i == -1 && this.italic == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.italic == 1 ? 2 : 0);
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

    public WebvttCssStyle setBackgroundColor(int i) {
        this.backgroundColor = i;
        this.hasBackgroundColor = true;
        return this;
    }

    public WebvttCssStyle setBold(boolean z) {
        this.bold = z ? 1 : 0;
        return this;
    }

    public WebvttCssStyle setCombineUpright(boolean z) {
        this.combineUpright = z;
        return this;
    }

    public WebvttCssStyle setFontColor(int i) {
        this.fontColor = i;
        this.hasFontColor = true;
        return this;
    }

    public WebvttCssStyle setFontSize(float f) {
        this.fontSize = f;
        return this;
    }

    public WebvttCssStyle setFontSizeUnit(int i) {
        this.fontSizeUnit = i;
        return this;
    }

    public WebvttCssStyle setItalic(boolean z) {
        this.italic = z ? 1 : 0;
        return this;
    }

    public WebvttCssStyle setLinethrough(boolean z) {
        this.linethrough = z ? 1 : 0;
        return this;
    }

    public WebvttCssStyle setRubyPosition(int i) {
        this.rubyPosition = i;
        return this;
    }

    public void setTargetId(String str) {
        this.targetId = str;
    }

    public void setTargetTagName(String str) {
        this.targetTag = str;
    }

    public void setTargetVoice(String str) {
        this.targetVoice = str;
    }

    public WebvttCssStyle setUnderline(boolean z) {
        this.underline = z ? 1 : 0;
        return this;
    }

    public void setTargetClasses(String[] strArr) {
        this.targetClasses = new HashSet(Arrays.asList(strArr));
    }

    public int getSpecificityScore(String str, String str2, Set<String> set, String str3) {
        if (this.targetId.isEmpty() && this.targetTag.isEmpty() && this.targetClasses.isEmpty() && this.targetVoice.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int updateScoreForMatch = updateScoreForMatch(updateScoreForMatch(updateScoreForMatch(0, this.targetId, str, 1073741824), this.targetTag, str2, 2), this.targetVoice, str3, 4);
        if (updateScoreForMatch == -1 || !set.containsAll(this.targetClasses)) {
            return 0;
        }
        return updateScoreForMatch + (this.targetClasses.size() * 4);
    }

    public WebvttCssStyle setFontFamily(String str) {
        this.fontFamily = str == null ? null : Ascii.toLowerCase(str);
        return this;
    }

    public int getFontColor() {
        if (this.hasFontColor) {
            return this.fontColor;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public int getBackgroundColor() {
        if (this.hasBackgroundColor) {
            return this.backgroundColor;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    private static int updateScoreForMatch(int i, String str, String str2, int i2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (str.equals(str2)) {
            return i + i2;
        }
        return -1;
    }
}
