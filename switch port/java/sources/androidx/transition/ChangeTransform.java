package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes2.dex */
public class ChangeTransform extends Transition {
    private static final String PROPNAME_INTERMEDIATE_MATRIX = "android:changeTransform:intermediateMatrix";
    private static final String PROPNAME_INTERMEDIATE_PARENT_MATRIX = "android:changeTransform:intermediateParentMatrix";
    private static final String PROPNAME_PARENT = "android:changeTransform:parent";
    private boolean mReparent;
    private Matrix mTempMatrix;
    boolean mUseOverlay;
    private static final String PROPNAME_MATRIX = "android:changeTransform:matrix";
    private static final String PROPNAME_TRANSFORMS = "android:changeTransform:transforms";
    private static final String PROPNAME_PARENT_MATRIX = "android:changeTransform:parentMatrix";
    private static final String[] sTransitionProperties = {PROPNAME_MATRIX, PROPNAME_TRANSFORMS, PROPNAME_PARENT_MATRIX};
    private static final Property<PathAnimatorMatrix, float[]> NON_TRANSLATIONS_PROPERTY = new Property<PathAnimatorMatrix, float[]>(float[].class, "nonTranslations") { // from class: androidx.transition.ChangeTransform.1
        @Override // android.util.Property
        public float[] get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        @Override // android.util.Property
        public void set(PathAnimatorMatrix pathAnimatorMatrix, float[] fArr) {
            pathAnimatorMatrix.setValues(fArr);
        }
    };
    private static final Property<PathAnimatorMatrix, PointF> TRANSLATIONS_PROPERTY = new Property<PathAnimatorMatrix, PointF>(PointF.class, "translations") { // from class: androidx.transition.ChangeTransform.2
        @Override // android.util.Property
        public PointF get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        @Override // android.util.Property
        public void set(PathAnimatorMatrix pathAnimatorMatrix, PointF pointF) {
            pathAnimatorMatrix.setTranslation(pointF);
        }
    };
    private static final boolean SUPPORTS_VIEW_REMOVAL_SUPPRESSION = true;

    public boolean getReparent() {
        return this.mReparent;
    }

    public boolean getReparentWithOverlay() {
        return this.mUseOverlay;
    }

    @Override // androidx.transition.Transition
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setReparent(boolean z) {
        this.mReparent = z;
    }

    public void setReparentWithOverlay(boolean z) {
        this.mUseOverlay = z;
    }

    public ChangeTransform() {
        this.mUseOverlay = true;
        this.mReparent = true;
        this.mTempMatrix = new Matrix();
    }

    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mUseOverlay = true;
        this.mReparent = true;
        this.mTempMatrix = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_TRANSFORM);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.mUseOverlay = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.mReparent = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        obtainStyledAttributes.recycle();
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.getVisibility() == 8) {
            return;
        }
        transitionValues.values.put(PROPNAME_PARENT, view.getParent());
        transitionValues.values.put(PROPNAME_TRANSFORMS, new Transforms(view));
        Matrix matrix = view.getMatrix();
        transitionValues.values.put(PROPNAME_MATRIX, (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
        if (this.mReparent) {
            Matrix matrix2 = new Matrix();
            ViewUtils.transformMatrixToGlobal((ViewGroup) view.getParent(), matrix2);
            matrix2.preTranslate(-r1.getScrollX(), -r1.getScrollY());
            transitionValues.values.put(PROPNAME_PARENT_MATRIX, matrix2);
            transitionValues.values.put(PROPNAME_INTERMEDIATE_MATRIX, view.getTag(R.id.transition_transform));
            transitionValues.values.put(PROPNAME_INTERMEDIATE_PARENT_MATRIX, view.getTag(R.id.parent_matrix));
        }
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
        if (SUPPORTS_VIEW_REMOVAL_SUPPRESSION) {
            return;
        }
        ((ViewGroup) transitionValues.view.getParent()).startViewTransition(transitionValues.view);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null || !transitionValues.values.containsKey(PROPNAME_PARENT) || !transitionValues2.values.containsKey(PROPNAME_PARENT)) {
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) transitionValues.values.get(PROPNAME_PARENT);
        boolean z = this.mReparent && !parentsMatch(viewGroup2, (ViewGroup) transitionValues2.values.get(PROPNAME_PARENT));
        Matrix matrix = (Matrix) transitionValues.values.get(PROPNAME_INTERMEDIATE_MATRIX);
        if (matrix != null) {
            transitionValues.values.put(PROPNAME_MATRIX, matrix);
        }
        Matrix matrix2 = (Matrix) transitionValues.values.get(PROPNAME_INTERMEDIATE_PARENT_MATRIX);
        if (matrix2 != null) {
            transitionValues.values.put(PROPNAME_PARENT_MATRIX, matrix2);
        }
        if (z) {
            setMatricesForParent(transitionValues, transitionValues2);
        }
        ObjectAnimator createTransformAnimator = createTransformAnimator(transitionValues, transitionValues2, z);
        if (z && createTransformAnimator != null && this.mUseOverlay) {
            createGhostView(viewGroup, transitionValues, transitionValues2);
        } else if (!SUPPORTS_VIEW_REMOVAL_SUPPRESSION) {
            viewGroup2.endViewTransition(transitionValues.view);
        }
        return createTransformAnimator;
    }

    private ObjectAnimator createTransformAnimator(TransitionValues transitionValues, TransitionValues transitionValues2, final boolean z) {
        Matrix matrix = (Matrix) transitionValues.values.get(PROPNAME_MATRIX);
        Matrix matrix2 = (Matrix) transitionValues2.values.get(PROPNAME_MATRIX);
        if (matrix == null) {
            matrix = MatrixUtils.IDENTITY_MATRIX;
        }
        if (matrix2 == null) {
            matrix2 = MatrixUtils.IDENTITY_MATRIX;
        }
        final Matrix matrix3 = matrix2;
        if (matrix.equals(matrix3)) {
            return null;
        }
        final Transforms transforms = (Transforms) transitionValues2.values.get(PROPNAME_TRANSFORMS);
        final View view = transitionValues2.view;
        setIdentityTransforms(view);
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        float[] fArr2 = new float[9];
        matrix3.getValues(fArr2);
        final PathAnimatorMatrix pathAnimatorMatrix = new PathAnimatorMatrix(view, fArr);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(pathAnimatorMatrix, PropertyValuesHolder.ofObject(NON_TRANSLATIONS_PROPERTY, new FloatArrayEvaluator(new float[9]), fArr, fArr2), PropertyValuesHolderUtils.ofPointF(TRANSLATIONS_PROPERTY, getPathMotion().getPath(fArr[2], fArr[5], fArr2[2], fArr2[5])));
        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeTransform.3
            private boolean mIsCanceled;
            private Matrix mTempMatrix = new Matrix();

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.mIsCanceled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.mIsCanceled) {
                    if (z && ChangeTransform.this.mUseOverlay) {
                        setCurrentMatrix(matrix3);
                    } else {
                        view.setTag(R.id.transition_transform, null);
                        view.setTag(R.id.parent_matrix, null);
                    }
                }
                ViewUtils.setAnimationMatrix(view, null);
                transforms.restore(view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationPause(Animator animator) {
                setCurrentMatrix(pathAnimatorMatrix.getMatrix());
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationResume(Animator animator) {
                ChangeTransform.setIdentityTransforms(view);
            }

            private void setCurrentMatrix(Matrix matrix4) {
                this.mTempMatrix.set(matrix4);
                view.setTag(R.id.transition_transform, this.mTempMatrix);
                transforms.restore(view);
            }
        };
        ofPropertyValuesHolder.addListener(animatorListenerAdapter);
        AnimatorUtils.addPauseListener(ofPropertyValuesHolder, animatorListenerAdapter);
        return ofPropertyValuesHolder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001a, code lost:
    
        if (r4 == r5) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
    
        if (r5 == r3.view) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        r1 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean parentsMatch(android.view.ViewGroup r4, android.view.ViewGroup r5) {
        /*
            r3 = this;
            boolean r0 = r3.isValidTarget(r4)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L1a
            boolean r0 = r3.isValidTarget(r5)
            if (r0 != 0) goto Lf
            goto L1a
        Lf:
            androidx.transition.TransitionValues r3 = r3.getMatchedTransitionValues(r4, r1)
            if (r3 == 0) goto L1f
            android.view.View r3 = r3.view
            if (r5 != r3) goto L1d
            goto L1e
        L1a:
            if (r4 != r5) goto L1d
            goto L1e
        L1d:
            r1 = r2
        L1e:
            r2 = r1
        L1f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.parentsMatch(android.view.ViewGroup, android.view.ViewGroup):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.transition.Transition] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    private void createGhostView(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        View view = transitionValues2.view;
        Matrix matrix = new Matrix((Matrix) transitionValues2.values.get(PROPNAME_PARENT_MATRIX));
        ViewUtils.transformMatrixToLocal(viewGroup, matrix);
        GhostView addGhost = GhostViewUtils.addGhost(view, viewGroup, matrix);
        if (addGhost == null) {
            return;
        }
        addGhost.reserveEndViewTransition((ViewGroup) transitionValues.values.get(PROPNAME_PARENT), transitionValues.view);
        ?? r3 = this;
        while (r3.mParent != null) {
            r3 = r3.mParent;
        }
        r3.addListener(new GhostListener(view, addGhost));
        if (SUPPORTS_VIEW_REMOVAL_SUPPRESSION) {
            if (transitionValues.view != transitionValues2.view) {
                ViewUtils.setTransitionAlpha(transitionValues.view, 0.0f);
            }
            ViewUtils.setTransitionAlpha(view, 1.0f);
        }
    }

    private void setMatricesForParent(TransitionValues transitionValues, TransitionValues transitionValues2) {
        Matrix matrix = (Matrix) transitionValues2.values.get(PROPNAME_PARENT_MATRIX);
        transitionValues2.view.setTag(R.id.parent_matrix, matrix);
        Matrix matrix2 = this.mTempMatrix;
        matrix2.reset();
        matrix.invert(matrix2);
        Matrix matrix3 = (Matrix) transitionValues.values.get(PROPNAME_MATRIX);
        if (matrix3 == null) {
            matrix3 = new Matrix();
            transitionValues.values.put(PROPNAME_MATRIX, matrix3);
        }
        matrix3.postConcat((Matrix) transitionValues.values.get(PROPNAME_PARENT_MATRIX));
        matrix3.postConcat(matrix2);
    }

    static void setIdentityTransforms(View view) {
        setTransforms(view, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
    }

    static void setTransforms(View view, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        view.setTranslationX(f);
        view.setTranslationY(f2);
        ViewCompat.setTranslationZ(view, f3);
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setRotationX(f6);
        view.setRotationY(f7);
        view.setRotation(f8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Transforms {
        final float mRotationX;
        final float mRotationY;
        final float mRotationZ;
        final float mScaleX;
        final float mScaleY;
        final float mTranslationX;
        final float mTranslationY;
        final float mTranslationZ;

        Transforms(View view) {
            this.mTranslationX = view.getTranslationX();
            this.mTranslationY = view.getTranslationY();
            this.mTranslationZ = ViewCompat.getTranslationZ(view);
            this.mScaleX = view.getScaleX();
            this.mScaleY = view.getScaleY();
            this.mRotationX = view.getRotationX();
            this.mRotationY = view.getRotationY();
            this.mRotationZ = view.getRotation();
        }

        public void restore(View view) {
            ChangeTransform.setTransforms(view, this.mTranslationX, this.mTranslationY, this.mTranslationZ, this.mScaleX, this.mScaleY, this.mRotationX, this.mRotationY, this.mRotationZ);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Transforms)) {
                return false;
            }
            Transforms transforms = (Transforms) obj;
            return transforms.mTranslationX == this.mTranslationX && transforms.mTranslationY == this.mTranslationY && transforms.mTranslationZ == this.mTranslationZ && transforms.mScaleX == this.mScaleX && transforms.mScaleY == this.mScaleY && transforms.mRotationX == this.mRotationX && transforms.mRotationY == this.mRotationY && transforms.mRotationZ == this.mRotationZ;
        }

        public int hashCode() {
            float f = this.mTranslationX;
            int floatToIntBits = (f != 0.0f ? Float.floatToIntBits(f) : 0) * 31;
            float f2 = this.mTranslationY;
            int floatToIntBits2 = (floatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.mTranslationZ;
            int floatToIntBits3 = (floatToIntBits2 + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31;
            float f4 = this.mScaleX;
            int floatToIntBits4 = (floatToIntBits3 + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0)) * 31;
            float f5 = this.mScaleY;
            int floatToIntBits5 = (floatToIntBits4 + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0)) * 31;
            float f6 = this.mRotationX;
            int floatToIntBits6 = (floatToIntBits5 + (f6 != 0.0f ? Float.floatToIntBits(f6) : 0)) * 31;
            float f7 = this.mRotationY;
            int floatToIntBits7 = (floatToIntBits6 + (f7 != 0.0f ? Float.floatToIntBits(f7) : 0)) * 31;
            float f8 = this.mRotationZ;
            return floatToIntBits7 + (f8 != 0.0f ? Float.floatToIntBits(f8) : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class GhostListener extends TransitionListenerAdapter {
        private GhostView mGhostView;
        private View mView;

        GhostListener(View view, GhostView ghostView) {
            this.mView = view;
            this.mGhostView = ghostView;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            GhostViewUtils.removeGhost(this.mView);
            this.mView.setTag(R.id.transition_transform, null);
            this.mView.setTag(R.id.parent_matrix, null);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionPause(Transition transition) {
            this.mGhostView.setVisibility(4);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionResume(Transition transition) {
            this.mGhostView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class PathAnimatorMatrix {
        private final Matrix mMatrix = new Matrix();
        private float mTranslationX;
        private float mTranslationY;
        private final float[] mValues;
        private final View mView;

        Matrix getMatrix() {
            return this.mMatrix;
        }

        PathAnimatorMatrix(View view, float[] fArr) {
            this.mView = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.mValues = fArr2;
            this.mTranslationX = fArr2[2];
            this.mTranslationY = fArr2[5];
            setAnimationMatrix();
        }

        void setValues(float[] fArr) {
            System.arraycopy(fArr, 0, this.mValues, 0, fArr.length);
            setAnimationMatrix();
        }

        void setTranslation(PointF pointF) {
            this.mTranslationX = pointF.x;
            this.mTranslationY = pointF.y;
            setAnimationMatrix();
        }

        private void setAnimationMatrix() {
            float[] fArr = this.mValues;
            fArr[2] = this.mTranslationX;
            fArr[5] = this.mTranslationY;
            this.mMatrix.setValues(fArr);
            ViewUtils.setAnimationMatrix(this.mView, this.mMatrix);
        }
    }
}
