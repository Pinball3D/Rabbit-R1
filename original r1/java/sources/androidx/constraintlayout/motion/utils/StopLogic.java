package androidx.constraintlayout.motion.utils;

import android.util.Log;
import androidx.constraintlayout.motion.widget.MotionInterpolator;

/* loaded from: classes.dex */
public class StopLogic extends MotionInterpolator {
    private boolean mBackwards = false;
    private float mLastPosition;
    private int mNumberOfStages;
    private float mStage1Duration;
    private float mStage1EndPosition;
    private float mStage1Velocity;
    private float mStage2Duration;
    private float mStage2EndPosition;
    private float mStage2Velocity;
    private float mStage3Duration;
    private float mStage3EndPosition;
    private float mStage3Velocity;
    private float mStartPosition;
    private String mType;

    private float calcY(float f) {
        float f2 = this.mStage1Duration;
        if (f <= f2) {
            float f3 = this.mStage1Velocity;
            return (f3 * f) + ((((this.mStage2Velocity - f3) * f) * f) / (f2 * 2.0f));
        }
        int i = this.mNumberOfStages;
        if (i == 1) {
            return this.mStage1EndPosition;
        }
        float f4 = f - f2;
        float f5 = this.mStage2Duration;
        if (f4 < f5) {
            float f6 = this.mStage1EndPosition;
            float f7 = this.mStage2Velocity;
            return f6 + (f7 * f4) + ((((this.mStage3Velocity - f7) * f4) * f4) / (f5 * 2.0f));
        }
        if (i == 2) {
            return this.mStage2EndPosition;
        }
        float f8 = f4 - f5;
        float f9 = this.mStage3Duration;
        if (f8 >= f9) {
            return this.mStage3EndPosition;
        }
        float f10 = this.mStage2EndPosition;
        float f11 = this.mStage3Velocity;
        return (f10 + (f11 * f8)) - (((f11 * f8) * f8) / (f9 * 2.0f));
    }

    public float getVelocity(float f) {
        float f2;
        float f3;
        float f4 = this.mStage1Duration;
        if (f <= f4) {
            f2 = this.mStage1Velocity;
            f3 = this.mStage2Velocity;
        } else {
            int i = this.mNumberOfStages;
            if (i == 1) {
                return 0.0f;
            }
            f -= f4;
            f4 = this.mStage2Duration;
            if (f >= f4) {
                if (i == 2) {
                    return this.mStage2EndPosition;
                }
                float f5 = f - f4;
                float f6 = this.mStage3Duration;
                if (f5 >= f6) {
                    return this.mStage3EndPosition;
                }
                float f7 = this.mStage3Velocity;
                return f7 - ((f5 * f7) / f6);
            }
            f2 = this.mStage2Velocity;
            f3 = this.mStage3Velocity;
        }
        return f2 + (((f3 - f2) * f) / f4);
    }

    public void debug(String str, String str2, float f) {
        Log.v(str, str2 + " ===== " + this.mType);
        Log.v(str, str2 + (this.mBackwards ? "backwards" : "forward ") + " time = " + f + "  stages " + this.mNumberOfStages);
        Log.v(str, str2 + " dur " + this.mStage1Duration + " vel " + this.mStage1Velocity + " pos " + this.mStage1EndPosition);
        if (this.mNumberOfStages > 1) {
            Log.v(str, str2 + " dur " + this.mStage2Duration + " vel " + this.mStage2Velocity + " pos " + this.mStage2EndPosition);
        }
        if (this.mNumberOfStages > 2) {
            Log.v(str, str2 + " dur " + this.mStage3Duration + " vel " + this.mStage3Velocity + " pos " + this.mStage3EndPosition);
        }
        float f2 = this.mStage1Duration;
        if (f <= f2) {
            Log.v(str, str2 + "stage 0");
            return;
        }
        int i = this.mNumberOfStages;
        if (i == 1) {
            Log.v(str, str2 + "end stage 0");
            return;
        }
        float f3 = f - f2;
        float f4 = this.mStage2Duration;
        if (f3 < f4) {
            Log.v(str, str2 + " stage 1");
            return;
        }
        if (i == 2) {
            Log.v(str, str2 + "end stage 1");
        } else if (f3 - f4 < this.mStage3Duration) {
            Log.v(str, str2 + " stage 2");
        } else {
            Log.v(str, str2 + " end stage 2");
        }
    }

    public void config(float f, float f2, float f3, float f4, float f5, float f6) {
        this.mStartPosition = f;
        boolean z = f > f2;
        this.mBackwards = z;
        if (z) {
            setup(-f3, f - f2, f5, f6, f4);
        } else {
            setup(f3, f2 - f, f5, f6, f4);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float calcY = calcY(f);
        this.mLastPosition = f;
        boolean z = this.mBackwards;
        float f2 = this.mStartPosition;
        return z ? f2 - calcY : f2 + calcY;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
    public float getVelocity() {
        return this.mBackwards ? -getVelocity(this.mLastPosition) : getVelocity(this.mLastPosition);
    }

    private void setup(float f, float f2, float f3, float f4, float f5) {
        if (f == 0.0f) {
            f = 1.0E-4f;
        }
        this.mStage1Velocity = f;
        float f6 = f / f3;
        float f7 = (f6 * f) / 2.0f;
        if (f < 0.0f) {
            float sqrt = (float) Math.sqrt((f2 - ((((-f) / f3) * f) / 2.0f)) * f3);
            if (sqrt < f4) {
                this.mType = "backward accelerate, decelerate";
                this.mNumberOfStages = 2;
                this.mStage1Velocity = f;
                this.mStage2Velocity = sqrt;
                this.mStage3Velocity = 0.0f;
                float f8 = (sqrt - f) / f3;
                this.mStage1Duration = f8;
                this.mStage2Duration = sqrt / f3;
                this.mStage1EndPosition = ((f + sqrt) * f8) / 2.0f;
                this.mStage2EndPosition = f2;
                this.mStage3EndPosition = f2;
                return;
            }
            this.mType = "backward accelerate cruse decelerate";
            this.mNumberOfStages = 3;
            this.mStage1Velocity = f;
            this.mStage2Velocity = f4;
            this.mStage3Velocity = f4;
            float f9 = (f4 - f) / f3;
            this.mStage1Duration = f9;
            float f10 = f4 / f3;
            this.mStage3Duration = f10;
            float f11 = ((f + f4) * f9) / 2.0f;
            float f12 = (f10 * f4) / 2.0f;
            this.mStage2Duration = ((f2 - f11) - f12) / f4;
            this.mStage1EndPosition = f11;
            this.mStage2EndPosition = f2 - f12;
            this.mStage3EndPosition = f2;
            return;
        }
        if (f7 >= f2) {
            this.mType = "hard stop";
            this.mNumberOfStages = 1;
            this.mStage1Velocity = f;
            this.mStage2Velocity = 0.0f;
            this.mStage1EndPosition = f2;
            this.mStage1Duration = (2.0f * f2) / f;
            return;
        }
        float f13 = f2 - f7;
        float f14 = f13 / f;
        if (f14 + f6 < f5) {
            this.mType = "cruse decelerate";
            this.mNumberOfStages = 2;
            this.mStage1Velocity = f;
            this.mStage2Velocity = f;
            this.mStage3Velocity = 0.0f;
            this.mStage1EndPosition = f13;
            this.mStage2EndPosition = f2;
            this.mStage1Duration = f14;
            this.mStage2Duration = f6;
            return;
        }
        float sqrt2 = (float) Math.sqrt((f3 * f2) + ((f * f) / 2.0f));
        float f15 = (sqrt2 - f) / f3;
        this.mStage1Duration = f15;
        float f16 = sqrt2 / f3;
        this.mStage2Duration = f16;
        if (sqrt2 < f4) {
            this.mType = "accelerate decelerate";
            this.mNumberOfStages = 2;
            this.mStage1Velocity = f;
            this.mStage2Velocity = sqrt2;
            this.mStage3Velocity = 0.0f;
            this.mStage1Duration = f15;
            this.mStage2Duration = f16;
            this.mStage1EndPosition = ((f + sqrt2) * f15) / 2.0f;
            this.mStage2EndPosition = f2;
            return;
        }
        this.mType = "accelerate cruse decelerate";
        this.mNumberOfStages = 3;
        this.mStage1Velocity = f;
        this.mStage2Velocity = f4;
        this.mStage3Velocity = f4;
        float f17 = (f4 - f) / f3;
        this.mStage1Duration = f17;
        float f18 = f4 / f3;
        this.mStage3Duration = f18;
        float f19 = ((f + f4) * f17) / 2.0f;
        float f20 = (f18 * f4) / 2.0f;
        this.mStage2Duration = ((f2 - f19) - f20) / f4;
        this.mStage1EndPosition = f19;
        this.mStage2EndPosition = f2 - f20;
        this.mStage3EndPosition = f2;
    }
}
