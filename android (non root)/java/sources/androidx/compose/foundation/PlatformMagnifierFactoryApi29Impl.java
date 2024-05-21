package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: PlatformMagnifier.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;", "Landroidx/compose/foundation/PlatformMagnifierFactory;", "()V", "canUpdateZoom", "", "getCanUpdateZoom", "()Z", "create", "Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;", "style", "Landroidx/compose/foundation/MagnifierStyle;", "view", "Landroid/view/View;", "density", "Landroidx/compose/ui/unit/Density;", "initialZoom", "", "PlatformMagnifierImpl", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PlatformMagnifierFactoryApi29Impl implements PlatformMagnifierFactory {
    public static final PlatformMagnifierFactoryApi29Impl INSTANCE = new PlatformMagnifierFactoryApi29Impl();
    private static final boolean canUpdateZoom = true;

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public boolean getCanUpdateZoom() {
        return canUpdateZoom;
    }

    private PlatformMagnifierFactoryApi29Impl() {
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public PlatformMagnifierImpl create(MagnifierStyle style, View view, Density density, float initialZoom) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(density, "density");
        if (Intrinsics.areEqual(style, MagnifierStyle.INSTANCE.getTextDefault())) {
            return new PlatformMagnifierImpl(new Magnifier(view));
        }
        long mo336toSizeXkaWNTQ = density.mo336toSizeXkaWNTQ(style.getSize());
        float mo335toPx0680j_4 = density.mo335toPx0680j_4(style.getCornerRadius());
        float mo335toPx0680j_42 = density.mo335toPx0680j_4(style.getElevation());
        Magnifier.Builder builder = new Magnifier.Builder(view);
        if (mo336toSizeXkaWNTQ != Size.INSTANCE.m2477getUnspecifiedNHjbRc()) {
            builder.setSize(MathKt.roundToInt(Size.m2469getWidthimpl(mo336toSizeXkaWNTQ)), MathKt.roundToInt(Size.m2466getHeightimpl(mo336toSizeXkaWNTQ)));
        }
        if (!Float.isNaN(mo335toPx0680j_4)) {
            builder.setCornerRadius(mo335toPx0680j_4);
        }
        if (!Float.isNaN(mo335toPx0680j_42)) {
            builder.setElevation(mo335toPx0680j_42);
        }
        if (!Float.isNaN(initialZoom)) {
            builder.setInitialZoom(initialZoom);
        }
        builder.setClippingEnabled(style.getClippingEnabled());
        Magnifier build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(view).run {\n    …    build()\n            }");
        return new PlatformMagnifierImpl(build);
    }

    /* compiled from: PlatformMagnifier.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J-\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\r\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;", "Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;", "magnifier", "Landroid/widget/Magnifier;", "(Landroid/widget/Magnifier;)V", "update", "", "sourceCenter", "Landroidx/compose/ui/geometry/Offset;", "magnifierCenter", "zoom", "", "update-Wko1d7g", "(JJF)V", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class PlatformMagnifierImpl extends PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl {
        public static final int $stable = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PlatformMagnifierImpl(Magnifier magnifier) {
            super(magnifier);
            Intrinsics.checkNotNullParameter(magnifier, "magnifier");
        }

        @Override // androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl, androidx.compose.foundation.PlatformMagnifier
        /* renamed from: update-Wko1d7g */
        public void mo252updateWko1d7g(long sourceCenter, long magnifierCenter, float zoom) {
            if (!Float.isNaN(zoom)) {
                getMagnifier().setZoom(zoom);
            }
            if (OffsetKt.m2419isSpecifiedk4lQ0M(magnifierCenter)) {
                getMagnifier().show(Offset.m2400getXimpl(sourceCenter), Offset.m2401getYimpl(sourceCenter), Offset.m2400getXimpl(magnifierCenter), Offset.m2401getYimpl(magnifierCenter));
            } else {
                getMagnifier().show(Offset.m2400getXimpl(sourceCenter), Offset.m2401getYimpl(sourceCenter));
            }
        }
    }
}
