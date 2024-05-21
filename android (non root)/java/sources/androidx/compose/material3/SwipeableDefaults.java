package androidx.compose.material3;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.unit.Dp;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Swipeable.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J1\u0010\u000f\u001a\u0004\u0018\u00010\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0015R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u001f\u0010\n\u001a\u00020\u000bX\u0080\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0016"}, d2 = {"Landroidx/compose/material3/SwipeableDefaults;", "", "()V", "AnimationSpec", "Landroidx/compose/animation/core/SpringSpec;", "", "getAnimationSpec$material3_release", "()Landroidx/compose/animation/core/SpringSpec;", "StandardResistanceFactor", "StiffResistanceFactor", "VelocityThreshold", "Landroidx/compose/ui/unit/Dp;", "getVelocityThreshold-D9Ej5fM$material3_release", "()F", "F", "resistanceConfig", "Landroidx/compose/material3/ResistanceConfig;", "anchors", "", "factorAtMin", "factorAtMax", "resistanceConfig$material3_release", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SwipeableDefaults {
    public static final float StandardResistanceFactor = 10.0f;
    public static final float StiffResistanceFactor = 20.0f;
    public static final SwipeableDefaults INSTANCE = new SwipeableDefaults();
    private static final SpringSpec<Float> AnimationSpec = new SpringSpec<>(0.0f, 0.0f, null, 7, null);
    private static final float VelocityThreshold = Dp.m4883constructorimpl(125);

    public final SpringSpec<Float> getAnimationSpec$material3_release() {
        return AnimationSpec;
    }

    /* renamed from: getVelocityThreshold-D9Ej5fM$material3_release */
    public final float m1495getVelocityThresholdD9Ej5fM$material3_release() {
        return VelocityThreshold;
    }

    private SwipeableDefaults() {
    }

    public static /* synthetic */ ResistanceConfig resistanceConfig$material3_release$default(SwipeableDefaults swipeableDefaults, Set set, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 10.0f;
        }
        if ((i & 4) != 0) {
            f2 = 10.0f;
        }
        return swipeableDefaults.resistanceConfig$material3_release(set, f, f2);
    }

    public final ResistanceConfig resistanceConfig$material3_release(Set<Float> anchors, float factorAtMin, float factorAtMax) {
        Intrinsics.checkNotNullParameter(anchors, "anchors");
        if (anchors.size() <= 1) {
            return null;
        }
        Set<Float> set = anchors;
        Float maxOrNull = CollectionsKt.maxOrNull((Iterable<? extends Float>) set);
        Intrinsics.checkNotNull(maxOrNull);
        float floatValue = maxOrNull.floatValue();
        Float minOrNull = CollectionsKt.minOrNull((Iterable<? extends Float>) set);
        Intrinsics.checkNotNull(minOrNull);
        return new ResistanceConfig(floatValue - minOrNull.floatValue(), factorAtMin, factorAtMax);
    }
}
