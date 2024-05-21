package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnimatedContent.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001BP\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012<\u0010\u0004\u001a8\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u000b0\u0005ø\u0001\u0000¢\u0006\u0002\u0010\fJ+\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eRJ\u0010\u0004\u001a8\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u000b0\u0005ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0014"}, d2 = {"Landroidx/compose/animation/SizeTransformImpl;", "Landroidx/compose/animation/SizeTransform;", "clip", "", "sizeAnimationSpec", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/IntSize;", "Lkotlin/ParameterName;", "name", "initialSize", "targetSize", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "(ZLkotlin/jvm/functions/Function2;)V", "getClip", "()Z", "getSizeAnimationSpec", "()Lkotlin/jvm/functions/Function2;", "createAnimationSpec", "createAnimationSpec-TemP2vQ", "(JJ)Landroidx/compose/animation/core/FiniteAnimationSpec;", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class SizeTransformImpl implements SizeTransform {
    private final boolean clip;
    private final Function2<IntSize, IntSize, FiniteAnimationSpec<IntSize>> sizeAnimationSpec;

    @Override // androidx.compose.animation.SizeTransform
    public boolean getClip() {
        return this.clip;
    }

    public final Function2<IntSize, IntSize, FiniteAnimationSpec<IntSize>> getSizeAnimationSpec() {
        return this.sizeAnimationSpec;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SizeTransformImpl(boolean z, Function2<? super IntSize, ? super IntSize, ? extends FiniteAnimationSpec<IntSize>> sizeAnimationSpec) {
        Intrinsics.checkNotNullParameter(sizeAnimationSpec, "sizeAnimationSpec");
        this.clip = z;
        this.sizeAnimationSpec = sizeAnimationSpec;
    }

    public /* synthetic */ SizeTransformImpl(boolean z, Function2 function2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, function2);
    }

    @Override // androidx.compose.animation.SizeTransform
    /* renamed from: createAnimationSpec-TemP2vQ */
    public FiniteAnimationSpec<IntSize> mo85createAnimationSpecTemP2vQ(long initialSize, long targetSize) {
        return this.sizeAnimationSpec.invoke(IntSize.m5035boximpl(initialSize), IntSize.m5035boximpl(targetSize));
    }
}
