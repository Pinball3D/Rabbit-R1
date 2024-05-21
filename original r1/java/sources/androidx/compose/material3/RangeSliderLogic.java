package androidx.compose.material3;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Slider.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u001e\u0010\t\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\n0\u0006¢\u0006\u0002\u0010\rJ\u000e\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u000bJ&\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR)\u0010\t\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\n0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000f¨\u0006 "}, d2 = {"Landroidx/compose/material3/RangeSliderLogic;", "", "startInteractionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "endInteractionSource", "rawOffsetStart", "Landroidx/compose/runtime/State;", "", "rawOffsetEnd", "onDrag", "Lkotlin/Function2;", "", "", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V", "getEndInteractionSource", "()Landroidx/compose/foundation/interaction/MutableInteractionSource;", "getOnDrag", "()Landroidx/compose/runtime/State;", "getRawOffsetEnd", "getRawOffsetStart", "getStartInteractionSource", "activeInteraction", "draggingStart", "captureThumb", "posX", "interaction", "Landroidx/compose/foundation/interaction/Interaction;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "compareOffsets", "", "eventX", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RangeSliderLogic {
    private final MutableInteractionSource endInteractionSource;
    private final State<Function2<Boolean, Float, Unit>> onDrag;
    private final State<Float> rawOffsetEnd;
    private final State<Float> rawOffsetStart;
    private final MutableInteractionSource startInteractionSource;

    public final MutableInteractionSource activeInteraction(boolean draggingStart) {
        return draggingStart ? this.startInteractionSource : this.endInteractionSource;
    }

    public final MutableInteractionSource getEndInteractionSource() {
        return this.endInteractionSource;
    }

    public final State<Function2<Boolean, Float, Unit>> getOnDrag() {
        return this.onDrag;
    }

    public final State<Float> getRawOffsetEnd() {
        return this.rawOffsetEnd;
    }

    public final State<Float> getRawOffsetStart() {
        return this.rawOffsetStart;
    }

    public final MutableInteractionSource getStartInteractionSource() {
        return this.startInteractionSource;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RangeSliderLogic(MutableInteractionSource startInteractionSource, MutableInteractionSource endInteractionSource, State<Float> rawOffsetStart, State<Float> rawOffsetEnd, State<? extends Function2<? super Boolean, ? super Float, Unit>> onDrag) {
        Intrinsics.checkNotNullParameter(startInteractionSource, "startInteractionSource");
        Intrinsics.checkNotNullParameter(endInteractionSource, "endInteractionSource");
        Intrinsics.checkNotNullParameter(rawOffsetStart, "rawOffsetStart");
        Intrinsics.checkNotNullParameter(rawOffsetEnd, "rawOffsetEnd");
        Intrinsics.checkNotNullParameter(onDrag, "onDrag");
        this.startInteractionSource = startInteractionSource;
        this.endInteractionSource = endInteractionSource;
        this.rawOffsetStart = rawOffsetStart;
        this.rawOffsetEnd = rawOffsetEnd;
        this.onDrag = onDrag;
    }

    public final int compareOffsets(float eventX) {
        return Float.compare(Math.abs(this.rawOffsetStart.getValue().floatValue() - eventX), Math.abs(this.rawOffsetEnd.getValue().floatValue() - eventX));
    }

    public final void captureThumb(boolean draggingStart, float posX, Interaction interaction, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.onDrag.getValue().invoke(Boolean.valueOf(draggingStart), Float.valueOf(posX - (draggingStart ? this.rawOffsetStart : this.rawOffsetEnd).getValue().floatValue()));
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new RangeSliderLogic$captureThumb$1(this, draggingStart, interaction, null), 3, null);
    }
}
