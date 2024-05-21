package androidx.compose.ui.text.android;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextLayout.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\u000e\u0010\u0011\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\u0014\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Landroidx/compose/ui/text/android/HorizontalPositionCache;", "", "layout", "Landroidx/compose/ui/text/android/TextLayout;", "(Landroidx/compose/ui/text/android/TextLayout;)V", "cachedKey", "", "cachedValue", "", "getLayout", "()Landroidx/compose/ui/text/android/TextLayout;", "get", "offset", "upstream", "", "cache", "primary", "getPrimaryDownstream", "getPrimaryUpstream", "getSecondaryDownstream", "getSecondaryUpstream", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class HorizontalPositionCache {
    private int cachedKey;
    private float cachedValue;
    private final TextLayout layout;

    public final TextLayout getLayout() {
        return this.layout;
    }

    public HorizontalPositionCache(TextLayout layout) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        this.layout = layout;
        this.cachedKey = -1;
    }

    public final float getPrimaryDownstream(int offset) {
        return get(offset, false, false, true);
    }

    public final float getPrimaryUpstream(int offset) {
        return get(offset, true, true, true);
    }

    public final float getSecondaryDownstream(int offset) {
        return get(offset, false, false, false);
    }

    public final float getSecondaryUpstream(int offset) {
        return get(offset, true, true, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final float get(int r6, boolean r7, boolean r8, boolean r9) {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            if (r7 == 0) goto L20
            androidx.compose.ui.text.android.TextLayout r2 = r5.layout
            android.text.Layout r2 = r2.getLayout()
            int r2 = androidx.compose.ui.text.android.LayoutCompatKt.getLineForOffset(r2, r6, r7)
            androidx.compose.ui.text.android.TextLayout r3 = r5.layout
            int r3 = r3.getLineStart(r2)
            androidx.compose.ui.text.android.TextLayout r4 = r5.layout
            int r2 = r4.getLineEnd(r2)
            if (r6 == r3) goto L1e
            if (r6 != r2) goto L20
        L1e:
            r2 = r0
            goto L21
        L20:
            r2 = r1
        L21:
            int r3 = r6 * 4
            if (r9 == 0) goto L29
            if (r2 == 0) goto L2e
            r0 = r1
            goto L2e
        L29:
            if (r2 == 0) goto L2d
            r0 = 2
            goto L2e
        L2d:
            r0 = 3
        L2e:
            int r3 = r3 + r0
            int r0 = r5.cachedKey
            if (r0 != r3) goto L36
            float r5 = r5.cachedValue
            return r5
        L36:
            if (r9 == 0) goto L3f
            androidx.compose.ui.text.android.TextLayout r9 = r5.layout
            float r6 = r9.getPrimaryHorizontal(r6, r7)
            goto L45
        L3f:
            androidx.compose.ui.text.android.TextLayout r9 = r5.layout
            float r6 = r9.getSecondaryHorizontal(r6, r7)
        L45:
            if (r8 == 0) goto L4b
            r5.cachedKey = r3
            r5.cachedValue = r6
        L4b:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.android.HorizontalPositionCache.get(int, boolean, boolean, boolean):float");
    }
}
