package androidx.compose.ui.text;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidTextStyle.android.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\u001a\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0000\u001a\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f\u001a\u001e\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"DefaultIncludeFontPadding", "", "createPlatformTextStyle", "Landroidx/compose/ui/text/PlatformTextStyle;", "spanStyle", "Landroidx/compose/ui/text/PlatformSpanStyle;", "paragraphStyle", "Landroidx/compose/ui/text/PlatformParagraphStyle;", "lerp", "start", "stop", "fraction", "", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidTextStyle_androidKt {
    public static final boolean DefaultIncludeFontPadding = true;

    public static final PlatformSpanStyle lerp(PlatformSpanStyle start, PlatformSpanStyle stop, float f) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return start;
    }

    public static final PlatformTextStyle createPlatformTextStyle(PlatformSpanStyle platformSpanStyle, PlatformParagraphStyle platformParagraphStyle) {
        return new PlatformTextStyle(platformSpanStyle, platformParagraphStyle);
    }

    public static final PlatformParagraphStyle lerp(PlatformParagraphStyle start, PlatformParagraphStyle stop, float f) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return start.getIncludeFontPadding() == stop.getIncludeFontPadding() ? start : new PlatformParagraphStyle(((EmojiSupportMatch) SpanStyleKt.lerpDiscrete(EmojiSupportMatch.m4290boximpl(start.getEmojiSupportMatch()), EmojiSupportMatch.m4290boximpl(stop.getEmojiSupportMatch()), f)).getValue(), ((Boolean) SpanStyleKt.lerpDiscrete(Boolean.valueOf(start.getIncludeFontPadding()), Boolean.valueOf(stop.getIncludeFontPadding()), f)).booleanValue(), (DefaultConstructorMarker) null);
    }
}
