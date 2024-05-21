package com.google.android.material.internal;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import java.lang.reflect.Constructor;

/* loaded from: classes2.dex */
final class StaticLayoutBuilderCompat {
    static final int DEFAULT_HYPHENATION_FREQUENCY = 1;
    static final float DEFAULT_LINE_SPACING_ADD = 0.0f;
    static final float DEFAULT_LINE_SPACING_MULTIPLIER = 1.0f;
    private static final String TEXT_DIRS_CLASS = "android.text.TextDirectionHeuristics";
    private static final String TEXT_DIR_CLASS = "android.text.TextDirectionHeuristic";
    private static final String TEXT_DIR_CLASS_LTR = "LTR";
    private static final String TEXT_DIR_CLASS_RTL = "RTL";
    private static Constructor<StaticLayout> constructor;
    private static boolean initialized;
    private static Object textDirection;
    private int end;
    private boolean isRtl;
    private final TextPaint paint;
    private CharSequence source;
    private StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer;
    private final int width;
    private int start = 0;
    private Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
    private int maxLines = Integer.MAX_VALUE;
    private float lineSpacingAdd = 0.0f;
    private float lineSpacingMultiplier = 1.0f;
    private int hyphenationFrequency = DEFAULT_HYPHENATION_FREQUENCY;
    private boolean includePad = true;
    private TextUtils.TruncateAt ellipsize = null;

    public StaticLayoutBuilderCompat setAlignment(Layout.Alignment alignment) {
        this.alignment = alignment;
        return this;
    }

    public StaticLayoutBuilderCompat setEllipsize(TextUtils.TruncateAt truncateAt) {
        this.ellipsize = truncateAt;
        return this;
    }

    public StaticLayoutBuilderCompat setEnd(int i) {
        this.end = i;
        return this;
    }

    public StaticLayoutBuilderCompat setHyphenationFrequency(int i) {
        this.hyphenationFrequency = i;
        return this;
    }

    public StaticLayoutBuilderCompat setIncludePad(boolean z) {
        this.includePad = z;
        return this;
    }

    public StaticLayoutBuilderCompat setIsRtl(boolean z) {
        this.isRtl = z;
        return this;
    }

    public StaticLayoutBuilderCompat setLineSpacing(float f, float f2) {
        this.lineSpacingAdd = f;
        this.lineSpacingMultiplier = f2;
        return this;
    }

    public StaticLayoutBuilderCompat setMaxLines(int i) {
        this.maxLines = i;
        return this;
    }

    public StaticLayoutBuilderCompat setStart(int i) {
        this.start = i;
        return this;
    }

    public StaticLayoutBuilderCompat setStaticLayoutBuilderConfigurer(StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer) {
        this.staticLayoutBuilderConfigurer = staticLayoutBuilderConfigurer;
        return this;
    }

    private StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i) {
        this.source = charSequence;
        this.paint = textPaint;
        this.width = i;
        this.end = charSequence.length();
    }

    public static StaticLayoutBuilderCompat obtain(CharSequence charSequence, TextPaint textPaint, int i) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i);
    }

    public StaticLayout build() throws StaticLayoutBuilderCompatException {
        TextDirectionHeuristic textDirectionHeuristic;
        if (this.source == null) {
            this.source = "";
        }
        int max = Math.max(0, this.width);
        CharSequence charSequence = this.source;
        if (this.maxLines == 1) {
            charSequence = TextUtils.ellipsize(charSequence, this.paint, max, this.ellipsize);
        }
        this.end = Math.min(charSequence.length(), this.end);
        if (this.isRtl && this.maxLines == 1) {
            this.alignment = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, this.start, this.end, this.paint, max);
        obtain.setAlignment(this.alignment);
        obtain.setIncludePad(this.includePad);
        if (this.isRtl) {
            textDirectionHeuristic = TextDirectionHeuristics.RTL;
        } else {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        }
        obtain.setTextDirection(textDirectionHeuristic);
        TextUtils.TruncateAt truncateAt = this.ellipsize;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.maxLines);
        float f = this.lineSpacingAdd;
        if (f != 0.0f || this.lineSpacingMultiplier != 1.0f) {
            obtain.setLineSpacing(f, this.lineSpacingMultiplier);
        }
        if (this.maxLines > 1) {
            obtain.setHyphenationFrequency(this.hyphenationFrequency);
        }
        StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer = this.staticLayoutBuilderConfigurer;
        if (staticLayoutBuilderConfigurer != null) {
            staticLayoutBuilderConfigurer.configure(obtain);
        }
        return obtain.build();
    }

    private void createConstructorWithReflection() throws StaticLayoutBuilderCompatException {
        if (initialized) {
            return;
        }
        try {
            textDirection = this.isRtl ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, Integer.TYPE, Integer.TYPE, TextPaint.class, Integer.TYPE, Layout.Alignment.class, TextDirectionHeuristic.class, Float.TYPE, Float.TYPE, Boolean.TYPE, TextUtils.TruncateAt.class, Integer.TYPE, Integer.TYPE);
            constructor = declaredConstructor;
            declaredConstructor.setAccessible(true);
            initialized = true;
        } catch (Exception e) {
            throw new StaticLayoutBuilderCompatException(e);
        }
    }

    /* loaded from: classes2.dex */
    static class StaticLayoutBuilderCompatException extends Exception {
        StaticLayoutBuilderCompatException(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }
}
