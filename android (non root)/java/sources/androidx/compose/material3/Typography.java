package androidx.compose.material3;

import androidx.compose.material3.tokens.TypographyTokens;
import androidx.compose.ui.text.TextStyle;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Typography.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u009b\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003¢\u0006\u0002\u0010\u0012J\u009c\u0001\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u0003J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020*H\u0016R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0014R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0014R\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0014R\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0014R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0014¨\u0006+"}, d2 = {"Landroidx/compose/material3/Typography;", "", "displayLarge", "Landroidx/compose/ui/text/TextStyle;", "displayMedium", "displaySmall", "headlineLarge", "headlineMedium", "headlineSmall", "titleLarge", "titleMedium", "titleSmall", "bodyLarge", "bodyMedium", "bodySmall", "labelLarge", "labelMedium", "labelSmall", "(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V", "getBodyLarge", "()Landroidx/compose/ui/text/TextStyle;", "getBodyMedium", "getBodySmall", "getDisplayLarge", "getDisplayMedium", "getDisplaySmall", "getHeadlineLarge", "getHeadlineMedium", "getHeadlineSmall", "getLabelLarge", "getLabelMedium", "getLabelSmall", "getTitleLarge", "getTitleMedium", "getTitleSmall", "copy", "equals", "", "other", "hashCode", "", "toString", "", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Typography {
    public static final int $stable = 0;
    private final TextStyle bodyLarge;
    private final TextStyle bodyMedium;
    private final TextStyle bodySmall;
    private final TextStyle displayLarge;
    private final TextStyle displayMedium;
    private final TextStyle displaySmall;
    private final TextStyle headlineLarge;
    private final TextStyle headlineMedium;
    private final TextStyle headlineSmall;
    private final TextStyle labelLarge;
    private final TextStyle labelMedium;
    private final TextStyle labelSmall;
    private final TextStyle titleLarge;
    private final TextStyle titleMedium;
    private final TextStyle titleSmall;

    public Typography() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
    }

    public final TextStyle getBodyLarge() {
        return this.bodyLarge;
    }

    public final TextStyle getBodyMedium() {
        return this.bodyMedium;
    }

    public final TextStyle getBodySmall() {
        return this.bodySmall;
    }

    public final TextStyle getDisplayLarge() {
        return this.displayLarge;
    }

    public final TextStyle getDisplayMedium() {
        return this.displayMedium;
    }

    public final TextStyle getDisplaySmall() {
        return this.displaySmall;
    }

    public final TextStyle getHeadlineLarge() {
        return this.headlineLarge;
    }

    public final TextStyle getHeadlineMedium() {
        return this.headlineMedium;
    }

    public final TextStyle getHeadlineSmall() {
        return this.headlineSmall;
    }

    public final TextStyle getLabelLarge() {
        return this.labelLarge;
    }

    public final TextStyle getLabelMedium() {
        return this.labelMedium;
    }

    public final TextStyle getLabelSmall() {
        return this.labelSmall;
    }

    public final TextStyle getTitleLarge() {
        return this.titleLarge;
    }

    public final TextStyle getTitleMedium() {
        return this.titleMedium;
    }

    public final TextStyle getTitleSmall() {
        return this.titleSmall;
    }

    public Typography(TextStyle displayLarge, TextStyle displayMedium, TextStyle displaySmall, TextStyle headlineLarge, TextStyle headlineMedium, TextStyle headlineSmall, TextStyle titleLarge, TextStyle titleMedium, TextStyle titleSmall, TextStyle bodyLarge, TextStyle bodyMedium, TextStyle bodySmall, TextStyle labelLarge, TextStyle labelMedium, TextStyle labelSmall) {
        Intrinsics.checkNotNullParameter(displayLarge, "displayLarge");
        Intrinsics.checkNotNullParameter(displayMedium, "displayMedium");
        Intrinsics.checkNotNullParameter(displaySmall, "displaySmall");
        Intrinsics.checkNotNullParameter(headlineLarge, "headlineLarge");
        Intrinsics.checkNotNullParameter(headlineMedium, "headlineMedium");
        Intrinsics.checkNotNullParameter(headlineSmall, "headlineSmall");
        Intrinsics.checkNotNullParameter(titleLarge, "titleLarge");
        Intrinsics.checkNotNullParameter(titleMedium, "titleMedium");
        Intrinsics.checkNotNullParameter(titleSmall, "titleSmall");
        Intrinsics.checkNotNullParameter(bodyLarge, "bodyLarge");
        Intrinsics.checkNotNullParameter(bodyMedium, "bodyMedium");
        Intrinsics.checkNotNullParameter(bodySmall, "bodySmall");
        Intrinsics.checkNotNullParameter(labelLarge, "labelLarge");
        Intrinsics.checkNotNullParameter(labelMedium, "labelMedium");
        Intrinsics.checkNotNullParameter(labelSmall, "labelSmall");
        this.displayLarge = displayLarge;
        this.displayMedium = displayMedium;
        this.displaySmall = displaySmall;
        this.headlineLarge = headlineLarge;
        this.headlineMedium = headlineMedium;
        this.headlineSmall = headlineSmall;
        this.titleLarge = titleLarge;
        this.titleMedium = titleMedium;
        this.titleSmall = titleSmall;
        this.bodyLarge = bodyLarge;
        this.bodyMedium = bodyMedium;
        this.bodySmall = bodySmall;
        this.labelLarge = labelLarge;
        this.labelMedium = labelMedium;
        this.labelSmall = labelSmall;
    }

    public /* synthetic */ Typography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? TypographyTokens.INSTANCE.getDisplayLarge() : textStyle, (i & 2) != 0 ? TypographyTokens.INSTANCE.getDisplayMedium() : textStyle2, (i & 4) != 0 ? TypographyTokens.INSTANCE.getDisplaySmall() : textStyle3, (i & 8) != 0 ? TypographyTokens.INSTANCE.getHeadlineLarge() : textStyle4, (i & 16) != 0 ? TypographyTokens.INSTANCE.getHeadlineMedium() : textStyle5, (i & 32) != 0 ? TypographyTokens.INSTANCE.getHeadlineSmall() : textStyle6, (i & 64) != 0 ? TypographyTokens.INSTANCE.getTitleLarge() : textStyle7, (i & 128) != 0 ? TypographyTokens.INSTANCE.getTitleMedium() : textStyle8, (i & 256) != 0 ? TypographyTokens.INSTANCE.getTitleSmall() : textStyle9, (i & 512) != 0 ? TypographyTokens.INSTANCE.getBodyLarge() : textStyle10, (i & 1024) != 0 ? TypographyTokens.INSTANCE.getBodyMedium() : textStyle11, (i & 2048) != 0 ? TypographyTokens.INSTANCE.getBodySmall() : textStyle12, (i & 4096) != 0 ? TypographyTokens.INSTANCE.getLabelLarge() : textStyle13, (i & 8192) != 0 ? TypographyTokens.INSTANCE.getLabelMedium() : textStyle14, (i & 16384) != 0 ? TypographyTokens.INSTANCE.getLabelSmall() : textStyle15);
    }

    public final Typography copy(TextStyle displayLarge, TextStyle displayMedium, TextStyle displaySmall, TextStyle headlineLarge, TextStyle headlineMedium, TextStyle headlineSmall, TextStyle titleLarge, TextStyle titleMedium, TextStyle titleSmall, TextStyle bodyLarge, TextStyle bodyMedium, TextStyle bodySmall, TextStyle labelLarge, TextStyle labelMedium, TextStyle labelSmall) {
        Intrinsics.checkNotNullParameter(displayLarge, "displayLarge");
        Intrinsics.checkNotNullParameter(displayMedium, "displayMedium");
        Intrinsics.checkNotNullParameter(displaySmall, "displaySmall");
        Intrinsics.checkNotNullParameter(headlineLarge, "headlineLarge");
        Intrinsics.checkNotNullParameter(headlineMedium, "headlineMedium");
        Intrinsics.checkNotNullParameter(headlineSmall, "headlineSmall");
        Intrinsics.checkNotNullParameter(titleLarge, "titleLarge");
        Intrinsics.checkNotNullParameter(titleMedium, "titleMedium");
        Intrinsics.checkNotNullParameter(titleSmall, "titleSmall");
        Intrinsics.checkNotNullParameter(bodyLarge, "bodyLarge");
        Intrinsics.checkNotNullParameter(bodyMedium, "bodyMedium");
        Intrinsics.checkNotNullParameter(bodySmall, "bodySmall");
        Intrinsics.checkNotNullParameter(labelLarge, "labelLarge");
        Intrinsics.checkNotNullParameter(labelMedium, "labelMedium");
        Intrinsics.checkNotNullParameter(labelSmall, "labelSmall");
        return new Typography(displayLarge, displayMedium, displaySmall, headlineLarge, headlineMedium, headlineSmall, titleLarge, titleMedium, titleSmall, bodyLarge, bodyMedium, bodySmall, labelLarge, labelMedium, labelSmall);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Typography)) {
            return false;
        }
        Typography typography = (Typography) other;
        return Intrinsics.areEqual(this.displayLarge, typography.displayLarge) && Intrinsics.areEqual(this.displayMedium, typography.displayMedium) && Intrinsics.areEqual(this.displaySmall, typography.displaySmall) && Intrinsics.areEqual(this.headlineLarge, typography.headlineLarge) && Intrinsics.areEqual(this.headlineMedium, typography.headlineMedium) && Intrinsics.areEqual(this.headlineSmall, typography.headlineSmall) && Intrinsics.areEqual(this.titleLarge, typography.titleLarge) && Intrinsics.areEqual(this.titleMedium, typography.titleMedium) && Intrinsics.areEqual(this.titleSmall, typography.titleSmall) && Intrinsics.areEqual(this.bodyLarge, typography.bodyLarge) && Intrinsics.areEqual(this.bodyMedium, typography.bodyMedium) && Intrinsics.areEqual(this.bodySmall, typography.bodySmall) && Intrinsics.areEqual(this.labelLarge, typography.labelLarge) && Intrinsics.areEqual(this.labelMedium, typography.labelMedium) && Intrinsics.areEqual(this.labelSmall, typography.labelSmall);
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((this.displayLarge.hashCode() * 31) + this.displayMedium.hashCode()) * 31) + this.displaySmall.hashCode()) * 31) + this.headlineLarge.hashCode()) * 31) + this.headlineMedium.hashCode()) * 31) + this.headlineSmall.hashCode()) * 31) + this.titleLarge.hashCode()) * 31) + this.titleMedium.hashCode()) * 31) + this.titleSmall.hashCode()) * 31) + this.bodyLarge.hashCode()) * 31) + this.bodyMedium.hashCode()) * 31) + this.bodySmall.hashCode()) * 31) + this.labelLarge.hashCode()) * 31) + this.labelMedium.hashCode()) * 31) + this.labelSmall.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Typography(displayLarge=");
        sb.append(this.displayLarge).append(", displayMedium=").append(this.displayMedium).append(",displaySmall=").append(this.displaySmall).append(", headlineLarge=").append(this.headlineLarge).append(", headlineMedium=").append(this.headlineMedium).append(", headlineSmall=").append(this.headlineSmall).append(", titleLarge=").append(this.titleLarge).append(", titleMedium=").append(this.titleMedium).append(", titleSmall=").append(this.titleSmall).append(", bodyLarge=").append(this.bodyLarge).append(", bodyMedium=").append(this.bodyMedium).append(", bodySmall=");
        sb.append(this.bodySmall).append(", labelLarge=").append(this.labelLarge).append(", labelMedium=").append(this.labelMedium).append(", labelSmall=").append(this.labelSmall).append(')');
        return sb.toString();
    }
}
