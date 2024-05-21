package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnterExitTransition.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B9\u0012!\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nø\u0001\u0000¢\u0006\u0002\u0010\u000bJ'\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003ø\u0001\u0000J\u0012\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\nHÆ\u0003ø\u0001\u0000JA\u0010\u0012\u001a\u00020\u00002#\b\u0002\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00032\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nHÆ\u0001ø\u0001\u0000J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR/\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Landroidx/compose/animation/Slide;", "", "slideOffset", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/IntSize;", "Lkotlin/ParameterName;", "name", "fullSize", "Landroidx/compose/ui/unit/IntOffset;", "animationSpec", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V", "getAnimationSpec", "()Landroidx/compose/animation/core/FiniteAnimationSpec;", "getSlideOffset", "()Lkotlin/jvm/functions/Function1;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class Slide {
    private final FiniteAnimationSpec<IntOffset> animationSpec;
    private final Function1<IntSize, IntOffset> slideOffset;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Slide copy$default(Slide slide, Function1 function1, FiniteAnimationSpec finiteAnimationSpec, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = slide.slideOffset;
        }
        if ((i & 2) != 0) {
            finiteAnimationSpec = slide.animationSpec;
        }
        return slide.copy(function1, finiteAnimationSpec);
    }

    public final Function1<IntSize, IntOffset> component1() {
        return this.slideOffset;
    }

    public final FiniteAnimationSpec<IntOffset> component2() {
        return this.animationSpec;
    }

    public final Slide copy(Function1<? super IntSize, IntOffset> slideOffset, FiniteAnimationSpec<IntOffset> animationSpec) {
        Intrinsics.checkNotNullParameter(slideOffset, "slideOffset");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        return new Slide(slideOffset, animationSpec);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Slide)) {
            return false;
        }
        Slide slide = (Slide) other;
        return Intrinsics.areEqual(this.slideOffset, slide.slideOffset) && Intrinsics.areEqual(this.animationSpec, slide.animationSpec);
    }

    public final FiniteAnimationSpec<IntOffset> getAnimationSpec() {
        return this.animationSpec;
    }

    public final Function1<IntSize, IntOffset> getSlideOffset() {
        return this.slideOffset;
    }

    public int hashCode() {
        return (this.slideOffset.hashCode() * 31) + this.animationSpec.hashCode();
    }

    public String toString() {
        return "Slide(slideOffset=" + this.slideOffset + ", animationSpec=" + this.animationSpec + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Slide(Function1<? super IntSize, IntOffset> slideOffset, FiniteAnimationSpec<IntOffset> animationSpec) {
        Intrinsics.checkNotNullParameter(slideOffset, "slideOffset");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        this.slideOffset = slideOffset;
        this.animationSpec = animationSpec;
    }
}
