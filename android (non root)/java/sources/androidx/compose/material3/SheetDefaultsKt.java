package androidx.compose.material3;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.Velocity;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SheetDefaults.kt */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a;\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\rH\u0000\u001aA\u0010\u0013\u001a\u00020\t2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\u0014\b\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00150\r2\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u0015H\u0001¢\u0006\u0002\u0010\u001a\"\u0019\u0010\u0000\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0002\u0010\u0003\"\u0013\u0010\u0005\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"BottomSheetMaxWidth", "Landroidx/compose/ui/unit/Dp;", "getBottomSheetMaxWidth", "()F", "F", "DragHandleVerticalPadding", "ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "sheetState", "Landroidx/compose/material3/SheetState;", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "onFling", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "velocity", "", "rememberSheetState", "skipPartiallyExpanded", "", "confirmValueChange", "Landroidx/compose/material3/SheetValue;", "initialValue", "skipHiddenState", "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SheetDefaultsKt {
    private static final float DragHandleVerticalPadding = Dp.m4883constructorimpl(22);
    private static final float BottomSheetMaxWidth = Dp.m4883constructorimpl(640);

    public static final float getBottomSheetMaxWidth() {
        return BottomSheetMaxWidth;
    }

    public static final NestedScrollConnection ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(final SheetState sheetState, final Orientation orientation, final Function1<? super Float, Unit> onFling) {
        Intrinsics.checkNotNullParameter(sheetState, "sheetState");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(onFling, "onFling");
        return new NestedScrollConnection() { // from class: androidx.compose.material3.SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1
            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
            /* renamed from: onPreScroll-OzD1aCk */
            public long mo344onPreScrollOzD1aCk(long available, int source) {
                float offsetToFloat = offsetToFloat(available);
                if (offsetToFloat < 0.0f && NestedScrollSource.m3650equalsimpl0(source, NestedScrollSource.INSTANCE.m3655getDragWNlRxjI())) {
                    return toOffset(SheetState.this.getSwipeableState$material3_release().dispatchRawDelta(offsetToFloat));
                }
                return Offset.INSTANCE.m2416getZeroF1C5BW0();
            }

            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
            /* renamed from: onPostScroll-DzOQY0M */
            public long mo343onPostScrollDzOQY0M(long consumed, long available, int source) {
                if (NestedScrollSource.m3650equalsimpl0(source, NestedScrollSource.INSTANCE.m3655getDragWNlRxjI())) {
                    return toOffset(SheetState.this.getSwipeableState$material3_release().dispatchRawDelta(offsetToFloat(available)));
                }
                return Offset.INSTANCE.m2416getZeroF1C5BW0();
            }

            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
            /* renamed from: onPreFling-QWom1Mo */
            public Object mo567onPreFlingQWom1Mo(long j, Continuation<? super Velocity> continuation) {
                float velocityToFloat = velocityToFloat(j);
                float requireOffset = SheetState.this.requireOffset();
                if (velocityToFloat < 0.0f && requireOffset > SheetState.this.getSwipeableState$material3_release().getMinOffset()) {
                    onFling.invoke(Boxing.boxFloat(velocityToFloat));
                } else {
                    j = Velocity.INSTANCE.m5119getZero9UxMQ8M();
                }
                return Velocity.m5099boximpl(j);
            }

            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
            /* renamed from: onPostFling-RZ2iAVY */
            public Object mo342onPostFlingRZ2iAVY(long j, long j2, Continuation<? super Velocity> continuation) {
                onFling.invoke(Boxing.boxFloat(velocityToFloat(j2)));
                return Velocity.m5099boximpl(j2);
            }

            private final long toOffset(float f) {
                float f2 = orientation == Orientation.Horizontal ? f : 0.0f;
                if (orientation != Orientation.Vertical) {
                    f = 0.0f;
                }
                return OffsetKt.Offset(f2, f);
            }

            private final float velocityToFloat(long j) {
                return orientation == Orientation.Horizontal ? Velocity.m5108getXimpl(j) : Velocity.m5109getYimpl(j);
            }

            private final float offsetToFloat(long j) {
                return orientation == Orientation.Horizontal ? Offset.m2400getXimpl(j) : Offset.m2401getYimpl(j);
            }
        };
    }

    public static final SheetState rememberSheetState(boolean z, Function1<? super SheetValue, Boolean> function1, SheetValue sheetValue, boolean z2, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(1032784200);
        ComposerKt.sourceInformation(composer, "C(rememberSheetState)P(3)422@15342L100,416@15112L330:SheetDefaults.kt#uh7d8r");
        final boolean z3 = (i2 & 1) != 0 ? false : z;
        final SheetDefaultsKt$rememberSheetState$1 sheetDefaultsKt$rememberSheetState$1 = (i2 & 2) != 0 ? new Function1<SheetValue, Boolean>() { // from class: androidx.compose.material3.SheetDefaultsKt$rememberSheetState$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(SheetValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return true;
            }
        } : function1;
        final SheetValue sheetValue2 = (i2 & 4) != 0 ? SheetValue.Hidden : sheetValue;
        final boolean z4 = (i2 & 8) != 0 ? false : z2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1032784200, i, -1, "androidx.compose.material3.rememberSheetState (SheetDefaults.kt:410)");
        }
        Object[] objArr = {Boolean.valueOf(z3), sheetDefaultsKt$rememberSheetState$1};
        Saver<SheetState, SheetValue> Saver = SheetState.INSTANCE.Saver(z3, sheetDefaultsKt$rememberSheetState$1);
        Object[] objArr2 = {Boolean.valueOf(z3), sheetValue2, sheetDefaultsKt$rememberSheetState$1, Boolean.valueOf(z4)};
        composer.startReplaceableGroup(-568225417);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean z5 = false;
        for (int i3 = 0; i3 < 4; i3++) {
            z5 |= composer.changed(objArr2[i3]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z5 || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (Function0) new Function0<SheetState>() { // from class: androidx.compose.material3.SheetDefaultsKt$rememberSheetState$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final SheetState invoke() {
                    return new SheetState(z3, sheetValue2, sheetDefaultsKt$rememberSheetState$1, z4);
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        SheetState sheetState = (SheetState) RememberSaveableKt.m2286rememberSaveable(objArr, (Saver) Saver, (String) null, (Function0) rememberedValue, composer, 72, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return sheetState;
    }
}
