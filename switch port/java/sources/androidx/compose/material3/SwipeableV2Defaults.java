package androidx.compose.material3;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SwipeableV2.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0082\u0001\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001a\"\u0004\b\u0000\u0010\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001d26\u0010\u001e\u001a2\u0012\u0013\u0012\u0011H\u001b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\n2!\u0010\"\u001a\u001d\u0012\u0013\u0012\u0011H\u001b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020!0#H\u0001¢\u0006\u0002\b$R\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\bRB\u0010\t\u001a(\u0012\u0004\u0012\u00020\u000b\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00050\n¢\u0006\u0002\b\u000f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0012R'\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u0018\u0012\u0004\b\u0015\u0010\u0002\u001a\u0004\b\u0016\u0010\u0017\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006%"}, d2 = {"Landroidx/compose/material3/SwipeableV2Defaults;", "", "()V", "AnimationSpec", "Landroidx/compose/animation/core/SpringSpec;", "", "getAnimationSpec$annotations", "getAnimationSpec", "()Landroidx/compose/animation/core/SpringSpec;", "PositionalThreshold", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Density;", "Lkotlin/ParameterName;", "name", "totalDistance", "Lkotlin/ExtensionFunctionType;", "getPositionalThreshold$annotations", "getPositionalThreshold", "()Lkotlin/jvm/functions/Function2;", "VelocityThreshold", "Landroidx/compose/ui/unit/Dp;", "getVelocityThreshold-D9Ej5fM$annotations", "getVelocityThreshold-D9Ej5fM", "()F", "F", "ReconcileAnimationOnAnchorChangeHandler", "Landroidx/compose/material3/AnchorChangeHandler;", ExifInterface.GPS_DIRECTION_TRUE, SentryThread.JsonKeys.STATE, "Landroidx/compose/material3/SwipeableV2State;", "animate", "target", "velocity", "", "snap", "Lkotlin/Function1;", "ReconcileAnimationOnAnchorChangeHandler$material3_release", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SwipeableV2Defaults {
    public static final SwipeableV2Defaults INSTANCE = new SwipeableV2Defaults();
    private static final SpringSpec<Float> AnimationSpec = new SpringSpec<>(0.0f, 0.0f, null, 7, null);
    private static final float VelocityThreshold = Dp.m4883constructorimpl(125);
    private static final Function2<Density, Float, Float> PositionalThreshold = SwipeableV2Kt.m1500fixedPositionalThreshold0680j_4(Dp.m4883constructorimpl(56));

    public static /* synthetic */ void getAnimationSpec$annotations() {
    }

    public static /* synthetic */ void getPositionalThreshold$annotations() {
    }

    /* renamed from: getVelocityThreshold-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m1498getVelocityThresholdD9Ej5fM$annotations() {
    }

    public final SpringSpec<Float> getAnimationSpec() {
        return AnimationSpec;
    }

    public final Function2<Density, Float, Float> getPositionalThreshold() {
        return PositionalThreshold;
    }

    /* renamed from: getVelocityThreshold-D9Ej5fM, reason: not valid java name */
    public final float m1499getVelocityThresholdD9Ej5fM() {
        return VelocityThreshold;
    }

    private SwipeableV2Defaults() {
    }

    public final <T> AnchorChangeHandler<T> ReconcileAnimationOnAnchorChangeHandler$material3_release(final SwipeableV2State<T> state, final Function2<? super T, ? super Float, Unit> animate, final Function1<? super T, Unit> snap) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(animate, "animate");
        Intrinsics.checkNotNullParameter(snap, "snap");
        return new AnchorChangeHandler<T>() { // from class: androidx.compose.material3.SwipeableV2Defaults$ReconcileAnimationOnAnchorChangeHandler$1
            @Override // androidx.compose.material3.AnchorChangeHandler
            public final void onAnchorsChanged(T t, Map<T, Float> previousAnchors, Map<T, Float> newAnchors) {
                Intrinsics.checkNotNullParameter(previousAnchors, "previousAnchors");
                Intrinsics.checkNotNullParameter(newAnchors, "newAnchors");
                Float f = previousAnchors.get(t);
                Float f2 = newAnchors.get(t);
                if (Intrinsics.areEqual(f, f2)) {
                    return;
                }
                if (f2 != null) {
                    animate.invoke(t, Float.valueOf(state.getLastVelocity()));
                } else {
                    snap.invoke(SwipeableV2Kt.closestAnchor$default(newAnchors, state.requireOffset(), false, 2, null));
                }
            }
        };
    }
}
