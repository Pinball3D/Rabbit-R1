package androidx.compose.animation.core;

import io.flutter.embedding.android.KeyboardMap;
import kotlin.Metadata;

/* compiled from: SpringSimulation.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\n\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"UNSET", "", "getUNSET", "()F", "VelocityThresholdMultiplier", "", "Motion", "Landroidx/compose/animation/core/Motion;", "value", "velocity", "(FF)J", "animation-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SpringSimulationKt {
    private static final float UNSET = Float.MAX_VALUE;
    private static final double VelocityThresholdMultiplier = 62.5d;

    public static final float getUNSET() {
        return UNSET;
    }

    public static final long Motion(float f, float f2) {
        return Motion.m106constructorimpl((Float.floatToIntBits(f2) & KeyboardMap.kValueMask) | (Float.floatToIntBits(f) << 32));
    }
}
