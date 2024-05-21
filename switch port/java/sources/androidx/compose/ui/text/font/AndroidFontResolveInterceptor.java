package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: AndroidFontResolveInterceptor.android.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÖ\u0001J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;", "Landroidx/compose/ui/text/font/PlatformResolveInterceptor;", "fontWeightAdjustment", "", "(I)V", "component1", "copy", "equals", "", "other", "", "hashCode", "interceptFontWeight", "Landroidx/compose/ui/text/font/FontWeight;", "fontWeight", "toString", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class AndroidFontResolveInterceptor implements PlatformResolveInterceptor {
    private final int fontWeightAdjustment;

    /* renamed from: component1, reason: from getter */
    private final int getFontWeightAdjustment() {
        return this.fontWeightAdjustment;
    }

    public static /* synthetic */ AndroidFontResolveInterceptor copy$default(AndroidFontResolveInterceptor androidFontResolveInterceptor, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = androidFontResolveInterceptor.fontWeightAdjustment;
        }
        return androidFontResolveInterceptor.copy(i);
    }

    public final AndroidFontResolveInterceptor copy(int fontWeightAdjustment) {
        return new AndroidFontResolveInterceptor(fontWeightAdjustment);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AndroidFontResolveInterceptor) && this.fontWeightAdjustment == ((AndroidFontResolveInterceptor) other).fontWeightAdjustment;
    }

    public int hashCode() {
        return Integer.hashCode(this.fontWeightAdjustment);
    }

    public String toString() {
        return "AndroidFontResolveInterceptor(fontWeightAdjustment=" + this.fontWeightAdjustment + ')';
    }

    public AndroidFontResolveInterceptor(int i) {
        this.fontWeightAdjustment = i;
    }

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    public FontWeight interceptFontWeight(FontWeight fontWeight) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        int i = this.fontWeightAdjustment;
        return (i == 0 || i == Integer.MAX_VALUE) ? fontWeight : new FontWeight(RangesKt.coerceIn(fontWeight.getWeight() + this.fontWeightAdjustment, 1, 1000));
    }
}
