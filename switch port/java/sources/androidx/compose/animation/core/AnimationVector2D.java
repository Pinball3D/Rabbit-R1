package androidx.compose.animation.core;

import kotlin.Metadata;

/* compiled from: AnimationVectors.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0016\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0007H\u0090\u0002¢\u0006\u0002\b\u0017J\b\u0010\u0018\u001a\u00020\u0007H\u0016J\r\u0010\u0019\u001a\u00020\u0000H\u0010¢\u0006\u0002\b\u001aJ\r\u0010\u001b\u001a\u00020\u001cH\u0010¢\u0006\u0002\b\u001dJ\u001e\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0003H\u0090\u0002¢\u0006\u0002\b J\b\u0010!\u001a\u00020\"H\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0090D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000e¨\u0006#"}, d2 = {"Landroidx/compose/animation/core/AnimationVector2D;", "Landroidx/compose/animation/core/AnimationVector;", "v1", "", "v2", "(FF)V", "size", "", "getSize$animation_core_release", "()I", "<set-?>", "getV1", "()F", "setV1$animation_core_release", "(F)V", "getV2", "setV2$animation_core_release", "equals", "", "other", "", "get", "index", "get$animation_core_release", "hashCode", "newVector", "newVector$animation_core_release", "reset", "", "reset$animation_core_release", "set", "value", "set$animation_core_release", "toString", "", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AnimationVector2D extends AnimationVector {
    public static final int $stable = 8;
    private final int size;
    private float v1;
    private float v2;

    @Override // androidx.compose.animation.core.AnimationVector
    public float get$animation_core_release(int index) {
        if (index == 0) {
            return this.v1;
        }
        if (index != 1) {
            return 0.0f;
        }
        return this.v2;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    /* renamed from: getSize$animation_core_release, reason: from getter */
    public int getSize() {
        return this.size;
    }

    public final float getV1() {
        return this.v1;
    }

    public final float getV2() {
        return this.v2;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void reset$animation_core_release() {
        this.v1 = 0.0f;
        this.v2 = 0.0f;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void set$animation_core_release(int index, float value) {
        if (index == 0) {
            this.v1 = value;
        } else {
            if (index != 1) {
                return;
            }
            this.v2 = value;
        }
    }

    public final void setV1$animation_core_release(float f) {
        this.v1 = f;
    }

    public final void setV2$animation_core_release(float f) {
        this.v2 = f;
    }

    public AnimationVector2D(float f, float f2) {
        super(null);
        this.v1 = f;
        this.v2 = f2;
        this.size = 2;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public AnimationVector2D newVector$animation_core_release() {
        return new AnimationVector2D(0.0f, 0.0f);
    }

    public String toString() {
        return "AnimationVector2D: v1 = " + this.v1 + ", v2 = " + this.v2;
    }

    public boolean equals(Object other) {
        if (other instanceof AnimationVector2D) {
            AnimationVector2D animationVector2D = (AnimationVector2D) other;
            if (animationVector2D.v1 == this.v1 && animationVector2D.v2 == this.v2) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (Float.hashCode(this.v1) * 31) + Float.hashCode(this.v2);
    }
}
