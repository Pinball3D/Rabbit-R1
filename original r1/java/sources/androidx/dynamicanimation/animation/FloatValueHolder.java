package androidx.dynamicanimation.animation;

/* loaded from: classes.dex */
public final class FloatValueHolder {
    private float mValue = 0.0f;

    public float getValue() {
        return this.mValue;
    }

    public void setValue(float f) {
        this.mValue = f;
    }

    public FloatValueHolder() {
    }

    public FloatValueHolder(float f) {
        setValue(f);
    }
}
