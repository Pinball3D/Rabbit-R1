package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TypedArray.kt */
@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0016\u0010\u0007\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\b\u001a\u00020\t*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\n\u001a\u00020\u000b*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0016\u0010\f\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0016\u0010\r\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\u000e\u001a\u00020\u000f*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\u0010\u001a\u00020\u000b*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0016\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\u0013\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\u0014\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0016\u0010\u0015\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u001f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u001b\u001a\u0014\u0010\u001c\u001a\u00020\u001a*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a,\u0010\u001d\u001a\u0002H\u001e\"\u0004\b\u0000\u0010\u001e*\u00020\u00022\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u001e0 H\u0086\b¢\u0006\u0002\u0010!¨\u0006\""}, d2 = {"checkAttribute", "", "Landroid/content/res/TypedArray;", "index", "", "getBooleanOrThrow", "", "getColorOrThrow", "getColorStateListOrThrow", "Landroid/content/res/ColorStateList;", "getDimensionOrThrow", "", "getDimensionPixelOffsetOrThrow", "getDimensionPixelSizeOrThrow", "getDrawableOrThrow", "Landroid/graphics/drawable/Drawable;", "getFloatOrThrow", "getFontOrThrow", "Landroid/graphics/Typeface;", "getIntOrThrow", "getIntegerOrThrow", "getResourceIdOrThrow", "getStringOrThrow", "", "getTextArrayOrThrow", "", "", "(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;", "getTextOrThrow", "use", "R", "block", "Lkotlin/Function1;", "(Landroid/content/res/TypedArray;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TypedArrayKt {
    private static final void checkAttribute(TypedArray typedArray, int i) {
        if (!typedArray.hasValue(i)) {
            throw new IllegalArgumentException("Attribute not defined in set.");
        }
    }

    public static final boolean getBooleanOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return typedArray.getBoolean(i, false);
    }

    public static final int getColorOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return typedArray.getColor(i, 0);
    }

    public static final ColorStateList getColorStateListOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        ColorStateList colorStateList = typedArray.getColorStateList(i);
        if (colorStateList != null) {
            return colorStateList;
        }
        throw new IllegalStateException("Attribute value was not a color or color state list.".toString());
    }

    public static final float getDimensionOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return typedArray.getDimension(i, 0.0f);
    }

    public static final int getDimensionPixelOffsetOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return typedArray.getDimensionPixelOffset(i, 0);
    }

    public static final int getDimensionPixelSizeOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return typedArray.getDimensionPixelSize(i, 0);
    }

    public static final Drawable getDrawableOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        Drawable drawable = typedArray.getDrawable(i);
        Intrinsics.checkNotNull(drawable);
        return drawable;
    }

    public static final float getFloatOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return typedArray.getFloat(i, 0.0f);
    }

    public static final Typeface getFontOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return TypedArrayApi26ImplKt.getFont(typedArray, i);
    }

    public static final int getIntOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return typedArray.getInt(i, 0);
    }

    public static final int getIntegerOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return typedArray.getInteger(i, 0);
    }

    public static final int getResourceIdOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return typedArray.getResourceId(i, 0);
    }

    public static final String getStringOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        String string = typedArray.getString(i);
        if (string != null) {
            return string;
        }
        throw new IllegalStateException("Attribute value could not be coerced to String.".toString());
    }

    public static final CharSequence getTextOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        CharSequence text = typedArray.getText(i);
        if (text != null) {
            return text;
        }
        throw new IllegalStateException("Attribute value could not be coerced to CharSequence.".toString());
    }

    public static final CharSequence[] getTextArrayOrThrow(TypedArray typedArray, int i) {
        checkAttribute(typedArray, i);
        return typedArray.getTextArray(i);
    }

    public static final <R> R use(TypedArray typedArray, Function1<? super TypedArray, ? extends R> function1) {
        R invoke = function1.invoke(typedArray);
        typedArray.recycle();
        return invoke;
    }
}
