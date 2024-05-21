package androidx.compose.ui.text;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidTextStyle.android.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B\u0011\b\u0016\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tB\u0012\b\u0016\u0012\u0006\u0010\n\u001a\u00020\u000bø\u0001\u0000¢\u0006\u0002\u0010\fJ\u0013\u0010\u0011\u001a\u00020\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Landroidx/compose/ui/text/PlatformTextStyle;", "", "spanStyle", "Landroidx/compose/ui/text/PlatformSpanStyle;", "paragraphStyle", "Landroidx/compose/ui/text/PlatformParagraphStyle;", "(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)V", "includeFontPadding", "", "(Z)V", "emojiSupportMatch", "Landroidx/compose/ui/text/EmojiSupportMatch;", "(ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "getParagraphStyle", "()Landroidx/compose/ui/text/PlatformParagraphStyle;", "getSpanStyle", "()Landroidx/compose/ui/text/PlatformSpanStyle;", "equals", "other", "hashCode", "", "toString", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PlatformTextStyle {
    public static final int $stable = 0;
    private final PlatformParagraphStyle paragraphStyle;
    private final PlatformSpanStyle spanStyle;

    public /* synthetic */ PlatformTextStyle(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    public final PlatformParagraphStyle getParagraphStyle() {
        return this.paragraphStyle;
    }

    public final PlatformSpanStyle getSpanStyle() {
        return this.spanStyle;
    }

    public PlatformTextStyle(PlatformSpanStyle platformSpanStyle, PlatformParagraphStyle platformParagraphStyle) {
        this.spanStyle = platformSpanStyle;
        this.paragraphStyle = platformParagraphStyle;
    }

    public /* synthetic */ PlatformTextStyle(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    public PlatformTextStyle(boolean z) {
        this((PlatformSpanStyle) null, new PlatformParagraphStyle(z));
    }

    private PlatformTextStyle(int i) {
        this((PlatformSpanStyle) null, new PlatformParagraphStyle(i, (DefaultConstructorMarker) null));
    }

    public int hashCode() {
        PlatformSpanStyle platformSpanStyle = this.spanStyle;
        int hashCode = (platformSpanStyle != null ? platformSpanStyle.hashCode() : 0) * 31;
        PlatformParagraphStyle platformParagraphStyle = this.paragraphStyle;
        return hashCode + (platformParagraphStyle != null ? platformParagraphStyle.hashCode() : 0);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlatformTextStyle)) {
            return false;
        }
        PlatformTextStyle platformTextStyle = (PlatformTextStyle) other;
        return Intrinsics.areEqual(this.paragraphStyle, platformTextStyle.paragraphStyle) && Intrinsics.areEqual(this.spanStyle, platformTextStyle.spanStyle);
    }

    public String toString() {
        return "PlatformTextStyle(spanStyle=" + this.spanStyle + ", paragraphSyle=" + this.paragraphStyle + ')';
    }
}
