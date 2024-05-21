package com.google.android.material.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.TypedValue;
import android.view.View;
import androidx.core.graphics.PathParser;
import androidx.transition.PathMotion;
import androidx.transition.PatternPathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionSet;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;

/* loaded from: classes2.dex */
class TransitionUtils {
    static final int NO_ATTR_RES_ID = 0;
    static final int NO_DURATION = -1;
    private static final int PATH_TYPE_ARC = 1;
    private static final int PATH_TYPE_LINEAR = 0;
    private static final RectF transformAlphaRectF = new RectF();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface CornerSizeBinaryOperator {
        CornerSize apply(CornerSize cornerSize, CornerSize cornerSize2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T defaultIfNull(T t, T t2) {
        return t != null ? t : t2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float lerp(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    private TransitionUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean maybeApplyThemeInterpolator(Transition transition, Context context, int i, TimeInterpolator timeInterpolator) {
        if (i == 0 || transition.getInterpolator() != null) {
            return false;
        }
        transition.setInterpolator(MotionUtils.resolveThemeInterpolator(context, i, timeInterpolator));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean maybeApplyThemeDuration(Transition transition, Context context, int i) {
        int resolveThemeDuration;
        if (i == 0 || transition.getDuration() != -1 || (resolveThemeDuration = MotionUtils.resolveThemeDuration(context, i, -1)) == -1) {
            return false;
        }
        transition.setDuration(resolveThemeDuration);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean maybeApplyThemePath(Transition transition, Context context, int i) {
        PathMotion resolveThemePath;
        if (i == 0 || (resolveThemePath = resolveThemePath(context, i)) == null) {
            return false;
        }
        transition.setPathMotion(resolveThemePath);
        return true;
    }

    static PathMotion resolveThemePath(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        if (typedValue.type == 16) {
            int i2 = typedValue.data;
            if (i2 == 0) {
                return null;
            }
            if (i2 == 1) {
                return new MaterialArcMotion();
            }
            throw new IllegalArgumentException("Invalid motion path type: " + i2);
        }
        if (typedValue.type == 3) {
            return new PatternPathMotion(PathParser.createPathFromPathData(String.valueOf(typedValue.string)));
        }
        throw new IllegalArgumentException("Motion path theme attribute must either be an enum value or path data string");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ShapeAppearanceModel convertToRelativeCornerSizes(ShapeAppearanceModel shapeAppearanceModel, final RectF rectF) {
        return shapeAppearanceModel.withTransformedCornerSizes(new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.google.android.material.transition.TransitionUtils$$ExternalSyntheticLambda0
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public final CornerSize apply(CornerSize cornerSize) {
                CornerSize createFromCornerSize;
                createFromCornerSize = RelativeCornerSize.createFromCornerSize(rectF, cornerSize);
                return createFromCornerSize;
            }
        });
    }

    static ShapeAppearanceModel transformCornerSizes(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, CornerSizeBinaryOperator cornerSizeBinaryOperator) {
        return (isShapeAppearanceSignificant(shapeAppearanceModel, rectF) ? shapeAppearanceModel : shapeAppearanceModel2).toBuilder().setTopLeftCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getTopLeftCornerSize(), shapeAppearanceModel2.getTopLeftCornerSize())).setTopRightCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getTopRightCornerSize(), shapeAppearanceModel2.getTopRightCornerSize())).setBottomLeftCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getBottomLeftCornerSize(), shapeAppearanceModel2.getBottomLeftCornerSize())).setBottomRightCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getBottomRightCornerSize(), shapeAppearanceModel2.getBottomRightCornerSize())).build();
    }

    private static boolean isShapeAppearanceSignificant(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return (shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getTopRightCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getBottomRightCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getBottomLeftCornerSize().getCornerSize(rectF) == 0.0f) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float lerp(float f, float f2, float f3, float f4, float f5) {
        return lerp(f, f2, f3, f4, f5, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float lerp(float f, float f2, float f3, float f4, float f5, boolean z) {
        if (!z || (f5 >= 0.0f && f5 <= 1.0f)) {
            return f5 < f3 ? f : f5 > f4 ? f2 : lerp(f, f2, (f5 - f3) / (f4 - f3));
        }
        return lerp(f, f2, f5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int lerp(int i, int i2, float f, float f2, float f3) {
        return f3 < f ? i : f3 > f2 ? i2 : (int) lerp(i, i2, (f3 - f) / (f2 - f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ShapeAppearanceModel lerp(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, final RectF rectF, final RectF rectF2, final float f, final float f2, final float f3) {
        return f3 < f ? shapeAppearanceModel : f3 > f2 ? shapeAppearanceModel2 : transformCornerSizes(shapeAppearanceModel, shapeAppearanceModel2, rectF, new CornerSizeBinaryOperator() { // from class: com.google.android.material.transition.TransitionUtils.1
            @Override // com.google.android.material.transition.TransitionUtils.CornerSizeBinaryOperator
            public CornerSize apply(CornerSize cornerSize, CornerSize cornerSize2) {
                return new AbsoluteCornerSize(TransitionUtils.lerp(cornerSize.getCornerSize(rectF), cornerSize2.getCornerSize(rectF2), f, f2, f3));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Shader createColorShader(int i) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i, i, Shader.TileMode.CLAMP);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static View findDescendantOrAncestorById(View view, int i) {
        View findViewById = view.findViewById(i);
        return findViewById != null ? findViewById : findAncestorById(view, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static View findAncestorById(View view, int i) {
        String resourceName = view.getResources().getResourceName(i);
        while (view != null) {
            if (view.getId() != i) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF getRelativeBounds(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    static Rect getRelativeBoundsRect(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF getLocationOnScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r1, view.getHeight() + r0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float calculateArea(RectF rectF) {
        return rectF.width() * rectF.height();
    }

    private static int saveLayerAlphaCompat(Canvas canvas, Rect rect, int i) {
        RectF rectF = transformAlphaRectF;
        rectF.set(rect);
        return canvas.saveLayerAlpha(rectF, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void transform(Canvas canvas, Rect rect, float f, float f2, float f3, int i, CanvasCompat.CanvasOperation canvasOperation) {
        if (i <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        if (i < 255) {
            saveLayerAlphaCompat(canvas, rect, i);
        }
        canvasOperation.run(canvas);
        canvas.restoreToCount(save);
    }

    static void maybeAddTransition(TransitionSet transitionSet, Transition transition) {
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
    }

    static void maybeRemoveTransition(TransitionSet transitionSet, Transition transition) {
        if (transition != null) {
            transitionSet.removeTransition(transition);
        }
    }
}
