package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.State;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SearchBar.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0003\u0018\u00002\u00020\u0001B$\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0018\u0010\u000b\u001a\u00020\u0006H\u0016ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ \u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0012J\u0018\u0010\u0015\u001a\u00020\u0006H\u0016ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\rR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u0017"}, d2 = {"Landroidx/compose/material3/AnimatedPaddingValues;", "Landroidx/compose/foundation/layout/PaddingValues;", "animationProgress", "Landroidx/compose/runtime/State;", "", "topPadding", "Landroidx/compose/ui/unit/Dp;", "(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V", "getAnimationProgress", "()Landroidx/compose/runtime/State;", "getTopPadding", "calculateBottomPadding", "calculateBottomPadding-D9Ej5fM", "()F", "calculateLeftPadding", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "calculateLeftPadding-u2uoSUM", "(Landroidx/compose/ui/unit/LayoutDirection;)F", "calculateRightPadding", "calculateRightPadding-u2uoSUM", "calculateTopPadding", "calculateTopPadding-D9Ej5fM", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AnimatedPaddingValues implements PaddingValues {
    private final State<Float> animationProgress;
    private final State<Dp> topPadding;

    public final State<Float> getAnimationProgress() {
        return this.animationProgress;
    }

    public final State<Dp> getTopPadding() {
        return this.topPadding;
    }

    public AnimatedPaddingValues(State<Float> animationProgress, State<Dp> topPadding) {
        Intrinsics.checkNotNullParameter(animationProgress, "animationProgress");
        Intrinsics.checkNotNullParameter(topPadding, "topPadding");
        this.animationProgress = animationProgress;
        this.topPadding = topPadding;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateTopPadding-D9Ej5fM */
    public float getTop() {
        return Dp.m4883constructorimpl(this.topPadding.getValue().m4897unboximpl() * this.animationProgress.getValue().floatValue());
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateBottomPadding-D9Ej5fM */
    public float getBottom() {
        return Dp.m4883constructorimpl(SearchBarKt.getSearchBarVerticalPadding() * this.animationProgress.getValue().floatValue());
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateLeftPadding-u2uoSUM */
    public float mo441calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return Dp.m4883constructorimpl(0);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateRightPadding-u2uoSUM */
    public float mo442calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return Dp.m4883constructorimpl(0);
    }
}
