package androidx.compose.material3;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: Badge.kt */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aU\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102 \b\u0002\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\f\u0018\u00010\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001aS\u0010\u0019\u001a\u00020\f2\u001c\u0010\u001a\u001a\u0018\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\f0\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010\r\u001a\u00020\u000e2\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\f0\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007¢\u0006\u0002\u0010\u001c\"\u0019\u0010\u0000\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0002\u0010\u0003\"\u0019\u0010\u0005\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0006\u0010\u0003\"\u0019\u0010\u0007\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\b\u0010\u0003\"\u0019\u0010\t\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\n\u0010\u0003\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u001d"}, d2 = {"BadgeOffset", "Landroidx/compose/ui/unit/Dp;", "getBadgeOffset", "()F", "F", "BadgeWithContentHorizontalOffset", "getBadgeWithContentHorizontalOffset", "BadgeWithContentHorizontalPadding", "getBadgeWithContentHorizontalPadding", "BadgeWithContentVerticalOffset", "getBadgeWithContentVerticalOffset", "Badge", "", "modifier", "Landroidx/compose/ui/Modifier;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "Badge-eopBjH0", "(Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "BadgedBox", "badge", "Landroidx/compose/foundation/layout/BoxScope;", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BadgeKt {
    private static final float BadgeOffset = Dp.m4883constructorimpl(0);
    private static final float BadgeWithContentHorizontalOffset;
    private static final float BadgeWithContentHorizontalPadding;
    private static final float BadgeWithContentVerticalOffset;

    public static final float getBadgeOffset() {
        return BadgeOffset;
    }

    public static final float getBadgeWithContentHorizontalOffset() {
        return BadgeWithContentHorizontalOffset;
    }

    public static final float getBadgeWithContentHorizontalPadding() {
        return BadgeWithContentHorizontalPadding;
    }

    public static final float getBadgeWithContentVerticalOffset() {
        return BadgeWithContentVerticalOffset;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void BadgedBox(final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.BoxScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r19, androidx.compose.ui.Modifier r20, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.BoxScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r21, androidx.compose.runtime.Composer r22, final int r23, final int r24) {
        /*
            Method dump skipped, instructions count: 923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.BadgeKt.BadgedBox(kotlin.jvm.functions.Function3, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00ba  */
    /* renamed from: Badge-eopBjH0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1000BadgeeopBjH0(androidx.compose.ui.Modifier r17, long r18, long r20, kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r22, androidx.compose.runtime.Composer r23, final int r24, final int r25) {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.BadgeKt.m1000BadgeeopBjH0(androidx.compose.ui.Modifier, long, long, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    static {
        float f = 4;
        BadgeWithContentHorizontalPadding = Dp.m4883constructorimpl(f);
        BadgeWithContentHorizontalOffset = Dp.m4883constructorimpl(-Dp.m4883constructorimpl(f));
        BadgeWithContentVerticalOffset = Dp.m4883constructorimpl(-Dp.m4883constructorimpl(f));
    }
}
