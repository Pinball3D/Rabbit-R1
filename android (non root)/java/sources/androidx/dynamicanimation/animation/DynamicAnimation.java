package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.AnimationHandler;
import androidx.dynamicanimation.animation.DynamicAnimation;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class DynamicAnimation<T extends DynamicAnimation<T>> implements AnimationHandler.AnimationFrameCallback {
    public static final float MIN_VISIBLE_CHANGE_ALPHA = 0.00390625f;
    public static final float MIN_VISIBLE_CHANGE_PIXELS = 1.0f;
    public static final float MIN_VISIBLE_CHANGE_ROTATION_DEGREES = 0.1f;
    public static final float MIN_VISIBLE_CHANGE_SCALE = 0.002f;
    private static final float THRESHOLD_MULTIPLIER = 0.75f;
    private static final float UNSET = Float.MAX_VALUE;
    private final ArrayList<OnAnimationEndListener> mEndListeners;
    private long mLastFrameTime;
    float mMaxValue;
    float mMinValue;
    private float mMinVisibleChange;
    final FloatPropertyCompat mProperty;
    boolean mRunning;
    boolean mStartValueIsSet;
    final Object mTarget;
    private final ArrayList<OnAnimationUpdateListener> mUpdateListeners;
    float mValue;
    float mVelocity;
    public static final ViewProperty TRANSLATION_X = new ViewProperty("translationX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.1
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setTranslationX(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getTranslationX();
        }
    };
    public static final ViewProperty TRANSLATION_Y = new ViewProperty("translationY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.2
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setTranslationY(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getTranslationY();
        }
    };
    public static final ViewProperty TRANSLATION_Z = new ViewProperty("translationZ") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.3
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            ViewCompat.setTranslationZ(view, f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return ViewCompat.getTranslationZ(view);
        }
    };
    public static final ViewProperty SCALE_X = new ViewProperty("scaleX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.4
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setScaleX(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScaleX();
        }
    };
    public static final ViewProperty SCALE_Y = new ViewProperty("scaleY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.5
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setScaleY(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScaleY();
        }
    };
    public static final ViewProperty ROTATION = new ViewProperty("rotation") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.6
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setRotation(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getRotation();
        }
    };
    public static final ViewProperty ROTATION_X = new ViewProperty("rotationX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.7
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setRotationX(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getRotationX();
        }
    };
    public static final ViewProperty ROTATION_Y = new ViewProperty("rotationY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.8
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setRotationY(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getRotationY();
        }
    };
    public static final ViewProperty X = new ViewProperty(ViewHierarchyNode.JsonKeys.X) { // from class: androidx.dynamicanimation.animation.DynamicAnimation.9
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setX(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getX();
        }
    };
    public static final ViewProperty Y = new ViewProperty(ViewHierarchyNode.JsonKeys.Y) { // from class: androidx.dynamicanimation.animation.DynamicAnimation.10
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setY(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getY();
        }
    };
    public static final ViewProperty Z = new ViewProperty("z") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.11
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            ViewCompat.setZ(view, f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return ViewCompat.getZ(view);
        }
    };
    public static final ViewProperty ALPHA = new ViewProperty(ViewHierarchyNode.JsonKeys.ALPHA) { // from class: androidx.dynamicanimation.animation.DynamicAnimation.12
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setAlpha(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getAlpha();
        }
    };
    public static final ViewProperty SCROLL_X = new ViewProperty("scrollX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.13
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setScrollX((int) f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScrollX();
        }
    };
    public static final ViewProperty SCROLL_Y = new ViewProperty("scrollY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.14
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setScrollY((int) f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScrollY();
        }
    };

    /* loaded from: classes.dex */
    static class MassState {
        float mValue;
        float mVelocity;
    }

    /* loaded from: classes.dex */
    public interface OnAnimationEndListener {
        void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2);
    }

    /* loaded from: classes.dex */
    public interface OnAnimationUpdateListener {
        void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2);
    }

    abstract float getAcceleration(float f, float f2);

    public float getMinimumVisibleChange() {
        return this.mMinVisibleChange;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getValueThreshold() {
        return this.mMinVisibleChange * 0.75f;
    }

    abstract boolean isAtEquilibrium(float f, float f2);

    public boolean isRunning() {
        return this.mRunning;
    }

    public T setMaxValue(float f) {
        this.mMaxValue = f;
        return this;
    }

    public T setMinValue(float f) {
        this.mMinValue = f;
        return this;
    }

    public T setStartValue(float f) {
        this.mValue = f;
        this.mStartValueIsSet = true;
        return this;
    }

    public T setStartVelocity(float f) {
        this.mVelocity = f;
        return this;
    }

    abstract void setValueThreshold(float f);

    abstract boolean updateValueAndVelocity(long j);

    /* loaded from: classes.dex */
    public static abstract class ViewProperty extends FloatPropertyCompat<View> {
        private ViewProperty(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DynamicAnimation(final FloatValueHolder floatValueHolder) {
        this.mVelocity = 0.0f;
        this.mValue = Float.MAX_VALUE;
        this.mStartValueIsSet = false;
        this.mRunning = false;
        this.mMaxValue = Float.MAX_VALUE;
        this.mMinValue = -Float.MAX_VALUE;
        this.mLastFrameTime = 0L;
        this.mEndListeners = new ArrayList<>();
        this.mUpdateListeners = new ArrayList<>();
        this.mTarget = null;
        this.mProperty = new FloatPropertyCompat("FloatValueHolder") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.15
            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public float getValue(Object obj) {
                return floatValueHolder.getValue();
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public void setValue(Object obj, float f) {
                floatValueHolder.setValue(f);
            }
        };
        this.mMinVisibleChange = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <K> DynamicAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        this.mVelocity = 0.0f;
        this.mValue = Float.MAX_VALUE;
        this.mStartValueIsSet = false;
        this.mRunning = false;
        this.mMaxValue = Float.MAX_VALUE;
        this.mMinValue = -Float.MAX_VALUE;
        this.mLastFrameTime = 0L;
        this.mEndListeners = new ArrayList<>();
        this.mUpdateListeners = new ArrayList<>();
        this.mTarget = k;
        this.mProperty = floatPropertyCompat;
        if (floatPropertyCompat == ROTATION || floatPropertyCompat == ROTATION_X || floatPropertyCompat == ROTATION_Y) {
            this.mMinVisibleChange = 0.1f;
            return;
        }
        if (floatPropertyCompat == ALPHA) {
            this.mMinVisibleChange = 0.00390625f;
        } else if (floatPropertyCompat == SCALE_X || floatPropertyCompat == SCALE_Y) {
            this.mMinVisibleChange = 0.00390625f;
        } else {
            this.mMinVisibleChange = 1.0f;
        }
    }

    public T addEndListener(OnAnimationEndListener onAnimationEndListener) {
        if (!this.mEndListeners.contains(onAnimationEndListener)) {
            this.mEndListeners.add(onAnimationEndListener);
        }
        return this;
    }

    public void removeEndListener(OnAnimationEndListener onAnimationEndListener) {
        removeEntry(this.mEndListeners, onAnimationEndListener);
    }

    public T addUpdateListener(OnAnimationUpdateListener onAnimationUpdateListener) {
        if (isRunning()) {
            throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
        }
        if (!this.mUpdateListeners.contains(onAnimationUpdateListener)) {
            this.mUpdateListeners.add(onAnimationUpdateListener);
        }
        return this;
    }

    public void removeUpdateListener(OnAnimationUpdateListener onAnimationUpdateListener) {
        removeEntry(this.mUpdateListeners, onAnimationUpdateListener);
    }

    public T setMinimumVisibleChange(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum visible change must be positive.");
        }
        this.mMinVisibleChange = f;
        setValueThreshold(f * 0.75f);
        return this;
    }

    private static <T> void removeNullEntries(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    private static <T> void removeEntry(ArrayList<T> arrayList, T t) {
        int indexOf = arrayList.indexOf(t);
        if (indexOf >= 0) {
            arrayList.set(indexOf, null);
        }
    }

    public void start() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.mRunning) {
            return;
        }
        startAnimationInternal();
    }

    public void cancel() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
        }
        if (this.mRunning) {
            endAnimationInternal(true);
        }
    }

    private void startAnimationInternal() {
        if (this.mRunning) {
            return;
        }
        this.mRunning = true;
        if (!this.mStartValueIsSet) {
            this.mValue = getPropertyValue();
        }
        float f = this.mValue;
        if (f > this.mMaxValue || f < this.mMinValue) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        AnimationHandler.getInstance().addAnimationFrameCallback(this, 0L);
    }

    @Override // androidx.dynamicanimation.animation.AnimationHandler.AnimationFrameCallback
    public boolean doAnimationFrame(long j) {
        long j2 = this.mLastFrameTime;
        if (j2 == 0) {
            this.mLastFrameTime = j;
            setPropertyValue(this.mValue);
            return false;
        }
        this.mLastFrameTime = j;
        boolean updateValueAndVelocity = updateValueAndVelocity(j - j2);
        float min = Math.min(this.mValue, this.mMaxValue);
        this.mValue = min;
        float max = Math.max(min, this.mMinValue);
        this.mValue = max;
        setPropertyValue(max);
        if (updateValueAndVelocity) {
            endAnimationInternal(false);
        }
        return updateValueAndVelocity;
    }

    private void endAnimationInternal(boolean z) {
        this.mRunning = false;
        AnimationHandler.getInstance().removeCallback(this);
        this.mLastFrameTime = 0L;
        this.mStartValueIsSet = false;
        for (int i = 0; i < this.mEndListeners.size(); i++) {
            if (this.mEndListeners.get(i) != null) {
                this.mEndListeners.get(i).onAnimationEnd(this, z, this.mValue, this.mVelocity);
            }
        }
        removeNullEntries(this.mEndListeners);
    }

    void setPropertyValue(float f) {
        this.mProperty.setValue(this.mTarget, f);
        for (int i = 0; i < this.mUpdateListeners.size(); i++) {
            if (this.mUpdateListeners.get(i) != null) {
                this.mUpdateListeners.get(i).onAnimationUpdate(this, this.mValue, this.mVelocity);
            }
        }
        removeNullEntries(this.mUpdateListeners);
    }

    private float getPropertyValue() {
        return this.mProperty.getValue(this.mTarget);
    }
}
