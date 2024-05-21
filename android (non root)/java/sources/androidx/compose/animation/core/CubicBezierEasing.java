package androidx.compose.animation.core;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import kotlin.Metadata;

/* compiled from: Easing.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0013\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J \u0010\f\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/compose/animation/core/CubicBezierEasing;", "Landroidx/compose/animation/core/Easing;", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "", "b", "c", "d", "(FFFF)V", "equals", "", "other", "", "evaluateCubic", "m", "hashCode", "", "transform", "fraction", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CubicBezierEasing implements Easing {
    public static final int $stable = 0;
    private final float a;
    private final float b;
    private final float c;
    private final float d;

    private final float evaluateCubic(float a, float b, float m) {
        float f = 3;
        float f2 = 1 - m;
        return (a * f * f2 * f2 * m) + (f * b * f2 * m * m) + (m * m * m);
    }

    public CubicBezierEasing(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        if (Float.isNaN(f) || Float.isNaN(f2) || Float.isNaN(f3) || Float.isNaN(f4)) {
            throw new IllegalArgumentException(("Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: " + f + ", " + f2 + ", " + f3 + ", " + f4 + '.').toString());
        }
    }

    @Override // androidx.compose.animation.core.Easing
    public float transform(float fraction) {
        float f = 0.0f;
        if (fraction > 0.0f) {
            float f2 = 1.0f;
            if (fraction < 1.0f) {
                while (true) {
                    float f3 = (f + f2) / 2;
                    float evaluateCubic = evaluateCubic(this.a, this.c, f3);
                    if (Math.abs(fraction - evaluateCubic) < 0.001f) {
                        return evaluateCubic(this.b, this.d, f3);
                    }
                    if (evaluateCubic < fraction) {
                        f = f3;
                    } else {
                        f2 = f3;
                    }
                }
            }
        }
        return fraction;
    }

    public boolean equals(Object other) {
        if (other instanceof CubicBezierEasing) {
            CubicBezierEasing cubicBezierEasing = (CubicBezierEasing) other;
            if (this.a == cubicBezierEasing.a && this.b == cubicBezierEasing.b && this.c == cubicBezierEasing.c && this.d == cubicBezierEasing.d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.a) * 31) + Float.hashCode(this.b)) * 31) + Float.hashCode(this.c)) * 31) + Float.hashCode(this.d);
    }
}
