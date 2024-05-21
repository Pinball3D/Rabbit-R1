package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WindowInsets.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a;\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0007\u0010\b\u001a.\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\t2\b\b\u0002\u0010\u0004\u001a\u00020\t2\b\b\u0002\u0010\u0005\u001a\u00020\t2\b\b\u0002\u0010\u0006\u001a\u00020\t\u001a\u0012\u0010\n\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001\u001a\f\u0010\f\u001a\u00020\u0001*\u00020\rH\u0000\u001a\u0011\u0010\u000e\u001a\u00020\r*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u000f\u001a\u0012\u0010\u000e\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0011\u001a\u0012\u0010\u0012\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001\u001a\u001f\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0015ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0012\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"WindowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "left", "Landroidx/compose/ui/unit/Dp;", "top", "right", "bottom", "WindowInsets-a9UjIt4", "(FFFF)Landroidx/compose/foundation/layout/WindowInsets;", "", "add", "insets", "asInsets", "Landroidx/compose/foundation/layout/PaddingValues;", "asPaddingValues", "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/PaddingValues;", "density", "Landroidx/compose/ui/unit/Density;", "exclude", "only", "sides", "Landroidx/compose/foundation/layout/WindowInsetsSides;", "only-bOOhFvg", "(Landroidx/compose/foundation/layout/WindowInsets;I)Landroidx/compose/foundation/layout/WindowInsets;", "union", "foundation-layout_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WindowInsetsKt {
    public static final WindowInsets union(WindowInsets windowInsets, WindowInsets insets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        return new UnionInsets(windowInsets, insets);
    }

    public static final WindowInsets exclude(WindowInsets windowInsets, WindowInsets insets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        return new ExcludeInsets(windowInsets, insets);
    }

    public static final WindowInsets add(WindowInsets windowInsets, WindowInsets insets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        return new AddedInsets(windowInsets, insets);
    }

    /* renamed from: only-bOOhFvg, reason: not valid java name */
    public static final WindowInsets m563onlybOOhFvg(WindowInsets only, int i) {
        Intrinsics.checkNotNullParameter(only, "$this$only");
        return new LimitInsets(only, i, null);
    }

    public static final PaddingValues asPaddingValues(WindowInsets windowInsets, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        ComposerKt.sourceInformationMarkerStart(composer, -1485016250, "C(asPaddingValues)242@9134L7:WindowInsets.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1485016250, i, -1, "androidx.compose.foundation.layout.asPaddingValues (WindowInsets.kt:242)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd(composer);
        InsetsPaddingValues insetsPaddingValues = new InsetsPaddingValues(windowInsets, (Density) consume);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return insetsPaddingValues;
    }

    public static final PaddingValues asPaddingValues(WindowInsets windowInsets, Density density) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        Intrinsics.checkNotNullParameter(density, "density");
        return new InsetsPaddingValues(windowInsets, density);
    }

    public static final WindowInsets asInsets(PaddingValues paddingValues) {
        Intrinsics.checkNotNullParameter(paddingValues, "<this>");
        return new PaddingValuesInsets(paddingValues);
    }

    public static /* synthetic */ WindowInsets WindowInsets$default(int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = 0;
        }
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = 0;
        }
        return WindowInsets(i, i2, i3, i4);
    }

    public static final WindowInsets WindowInsets(int i, int i2, int i3, int i4) {
        return new FixedIntInsets(i, i2, i3, i4);
    }

    /* renamed from: WindowInsets-a9UjIt4, reason: not valid java name */
    public static final WindowInsets m561WindowInsetsa9UjIt4(float f, float f2, float f3, float f4) {
        return new FixedDpInsets(f, f2, f3, f4, null);
    }

    /* renamed from: WindowInsets-a9UjIt4$default, reason: not valid java name */
    public static /* synthetic */ WindowInsets m562WindowInsetsa9UjIt4$default(float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m4883constructorimpl(0);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m4883constructorimpl(0);
        }
        if ((i & 4) != 0) {
            f3 = Dp.m4883constructorimpl(0);
        }
        if ((i & 8) != 0) {
            f4 = Dp.m4883constructorimpl(0);
        }
        return m561WindowInsetsa9UjIt4(f, f2, f3, f4);
    }
}
