package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StaticLayoutFactory.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b!\b\u0002\u0018\u00002\u00020\u0001Bµ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0015\u001a\u00020\u0005\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0005\u0012\u0006\u0010\u001a\u001a\u00020\u0005\u0012\u0006\u0010\u001b\u001a\u00020\u0005\u0012\u0006\u0010\u001c\u001a\u00020\u0005\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0002\u0010 R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\u0019\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u0011\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010$R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b(\u0010$R\u0011\u0010\u001c\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b)\u0010$R\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0011\u0010\u0015\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b,\u0010$R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u001e¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0011\u0010\u001a\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b/\u0010$R\u0011\u0010\u001b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b0\u0010$R\u0011\u0010\u0014\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b3\u00102R\u0011\u0010\u000e\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b4\u0010$R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\b\n\u0000\u001a\u0004\b7\u0010.R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b8\u0010$R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0011\u0010\u0018\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b=\u0010+R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b>\u0010$¨\u0006?"}, d2 = {"Landroidx/compose/ui/text/android/StaticLayoutParams;", "", "text", "", "start", "", "end", "paint", "Landroid/text/TextPaint;", ViewHierarchyNode.JsonKeys.WIDTH, "textDir", "Landroid/text/TextDirectionHeuristic;", "alignment", "Landroid/text/Layout$Alignment;", "maxLines", "ellipsize", "Landroid/text/TextUtils$TruncateAt;", "ellipsizedWidth", "lineSpacingMultiplier", "", "lineSpacingExtra", "justificationMode", "includePadding", "", "useFallbackLineSpacing", "breakStrategy", "lineBreakStyle", "lineBreakWordStyle", "hyphenationFrequency", "leftIndents", "", "rightIndents", "(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)V", "getAlignment", "()Landroid/text/Layout$Alignment;", "getBreakStrategy", "()I", "getEllipsize", "()Landroid/text/TextUtils$TruncateAt;", "getEllipsizedWidth", "getEnd", "getHyphenationFrequency", "getIncludePadding", "()Z", "getJustificationMode", "getLeftIndents", "()[I", "getLineBreakStyle", "getLineBreakWordStyle", "getLineSpacingExtra", "()F", "getLineSpacingMultiplier", "getMaxLines", "getPaint", "()Landroid/text/TextPaint;", "getRightIndents", "getStart", "getText", "()Ljava/lang/CharSequence;", "getTextDir", "()Landroid/text/TextDirectionHeuristic;", "getUseFallbackLineSpacing", "getWidth", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class StaticLayoutParams {
    private final Layout.Alignment alignment;
    private final int breakStrategy;
    private final TextUtils.TruncateAt ellipsize;
    private final int ellipsizedWidth;
    private final int end;
    private final int hyphenationFrequency;
    private final boolean includePadding;
    private final int justificationMode;
    private final int[] leftIndents;
    private final int lineBreakStyle;
    private final int lineBreakWordStyle;
    private final float lineSpacingExtra;
    private final float lineSpacingMultiplier;
    private final int maxLines;
    private final TextPaint paint;
    private final int[] rightIndents;
    private final int start;
    private final CharSequence text;
    private final TextDirectionHeuristic textDir;
    private final boolean useFallbackLineSpacing;
    private final int width;

    public final Layout.Alignment getAlignment() {
        return this.alignment;
    }

    public final int getBreakStrategy() {
        return this.breakStrategy;
    }

    public final TextUtils.TruncateAt getEllipsize() {
        return this.ellipsize;
    }

    public final int getEllipsizedWidth() {
        return this.ellipsizedWidth;
    }

    public final int getEnd() {
        return this.end;
    }

    public final int getHyphenationFrequency() {
        return this.hyphenationFrequency;
    }

    public final boolean getIncludePadding() {
        return this.includePadding;
    }

    public final int getJustificationMode() {
        return this.justificationMode;
    }

    public final int[] getLeftIndents() {
        return this.leftIndents;
    }

    public final int getLineBreakStyle() {
        return this.lineBreakStyle;
    }

    public final int getLineBreakWordStyle() {
        return this.lineBreakWordStyle;
    }

    public final float getLineSpacingExtra() {
        return this.lineSpacingExtra;
    }

    public final float getLineSpacingMultiplier() {
        return this.lineSpacingMultiplier;
    }

    public final int getMaxLines() {
        return this.maxLines;
    }

    public final TextPaint getPaint() {
        return this.paint;
    }

    public final int[] getRightIndents() {
        return this.rightIndents;
    }

    public final int getStart() {
        return this.start;
    }

    public final CharSequence getText() {
        return this.text;
    }

    public final TextDirectionHeuristic getTextDir() {
        return this.textDir;
    }

    public final boolean getUseFallbackLineSpacing() {
        return this.useFallbackLineSpacing;
    }

    public final int getWidth() {
        return this.width;
    }

    public StaticLayoutParams(CharSequence text, int i, int i2, TextPaint paint, int i3, TextDirectionHeuristic textDir, Layout.Alignment alignment, int i4, TextUtils.TruncateAt truncateAt, int i5, float f, float f2, int i6, boolean z, boolean z2, int i7, int i8, int i9, int i10, int[] iArr, int[] iArr2) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(textDir, "textDir");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        this.text = text;
        this.start = i;
        this.end = i2;
        this.paint = paint;
        this.width = i3;
        this.textDir = textDir;
        this.alignment = alignment;
        this.maxLines = i4;
        this.ellipsize = truncateAt;
        this.ellipsizedWidth = i5;
        this.lineSpacingMultiplier = f;
        this.lineSpacingExtra = f2;
        this.justificationMode = i6;
        this.includePadding = z;
        this.useFallbackLineSpacing = z2;
        this.breakStrategy = i7;
        this.lineBreakStyle = i8;
        this.lineBreakWordStyle = i9;
        this.hyphenationFrequency = i10;
        this.leftIndents = iArr;
        this.rightIndents = iArr2;
        if (i < 0 || i > i2) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int length = text.length();
        if (i2 < 0 || i2 > length) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i5 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (f < 0.0f) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public /* synthetic */ StaticLayoutParams(CharSequence charSequence, int i, int i2, TextPaint textPaint, int i3, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i4, TextUtils.TruncateAt truncateAt, int i5, float f, float f2, int i6, boolean z, boolean z2, int i7, int i8, int i9, int i10, int[] iArr, int[] iArr2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, (i11 & 2) != 0 ? 0 : i, i2, textPaint, i3, textDirectionHeuristic, alignment, i4, truncateAt, i5, f, f2, i6, z, z2, i7, i8, i9, i10, iArr, iArr2);
    }
}
