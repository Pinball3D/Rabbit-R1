package androidx.dynamicanimation.animation;

import androidx.dynamicanimation.animation.DynamicAnimation;

/* loaded from: classes.dex */
public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {
    private final DragForce mFlingForce;

    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        DragForce dragForce = new DragForce();
        this.mFlingForce = dragForce;
        dragForce.setValueThreshold(getValueThreshold());
    }

    public <K> FlingAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k, floatPropertyCompat);
        DragForce dragForce = new DragForce();
        this.mFlingForce = dragForce;
        dragForce.setValueThreshold(getValueThreshold());
    }

    public FlingAnimation setFriction(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Friction must be positive");
        }
        this.mFlingForce.setFrictionScalar(f);
        return this;
    }

    public float getFriction() {
        return this.mFlingForce.getFrictionScalar();
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMinValue(float f) {
        super.setMinValue(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMaxValue(float f) {
        super.setMaxValue(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setStartVelocity(float f) {
        super.setStartVelocity(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean updateValueAndVelocity(long j) {
        DynamicAnimation.MassState updateValueAndVelocity = this.mFlingForce.updateValueAndVelocity(this.mValue, this.mVelocity, j);
        this.mValue = updateValueAndVelocity.mValue;
        this.mVelocity = updateValueAndVelocity.mVelocity;
        if (this.mValue < this.mMinValue) {
            this.mValue = this.mMinValue;
            return true;
        }
        if (this.mValue <= this.mMaxValue) {
            return isAtEquilibrium(this.mValue, this.mVelocity);
        }
        this.mValue = this.mMaxValue;
        return true;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    float getAcceleration(float f, float f2) {
        return this.mFlingForce.getAcceleration(f, f2);
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean isAtEquilibrium(float f, float f2) {
        return f >= this.mMaxValue || f <= this.mMinValue || this.mFlingForce.isAtEquilibrium(f, f2);
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    void setValueThreshold(float f) {
        this.mFlingForce.setValueThreshold(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class DragForce implements Force {
        private static final float DEFAULT_FRICTION = -4.2f;
        private static final float VELOCITY_THRESHOLD_MULTIPLIER = 62.5f;
        private float mFriction = DEFAULT_FRICTION;
        private final DynamicAnimation.MassState mMassState = new DynamicAnimation.MassState();
        private float mVelocityThreshold;

        @Override // androidx.dynamicanimation.animation.Force
        public float getAcceleration(float f, float f2) {
            return f2 * this.mFriction;
        }

        float getFrictionScalar() {
            return this.mFriction / DEFAULT_FRICTION;
        }

        void setFrictionScalar(float f) {
            this.mFriction = f * DEFAULT_FRICTION;
        }

        void setValueThreshold(float f) {
            this.mVelocityThreshold = f * VELOCITY_THRESHOLD_MULTIPLIER;
        }

        DragForce() {
        }

        DynamicAnimation.MassState updateValueAndVelocity(float f, float f2, long j) {
            float f3 = (float) j;
            this.mMassState.mVelocity = (float) (f2 * Math.exp((f3 / 1000.0f) * this.mFriction));
            DynamicAnimation.MassState massState = this.mMassState;
            float f4 = this.mFriction;
            massState.mValue = (float) ((f - (f2 / f4)) + ((f2 / f4) * Math.exp((f4 * f3) / 1000.0f)));
            if (isAtEquilibrium(this.mMassState.mValue, this.mMassState.mVelocity)) {
                this.mMassState.mVelocity = 0.0f;
            }
            return this.mMassState;
        }

        @Override // androidx.dynamicanimation.animation.Force
        public boolean isAtEquilibrium(float f, float f2) {
            return Math.abs(f2) < this.mVelocityThreshold;
        }
    }
}
