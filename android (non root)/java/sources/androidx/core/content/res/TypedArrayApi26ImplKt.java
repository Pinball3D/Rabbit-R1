package androidx.core.content.res;

import android.content.res.TypedArray;
import android.graphics.Typeface;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TypedArray.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Landroidx/core/content/res/TypedArrayApi26ImplKt;", "", "()V", "getFont", "Landroid/graphics/Typeface;", "typedArray", "Landroid/content/res/TypedArray;", "index", "", "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class TypedArrayApi26ImplKt {
    public static final TypedArrayApi26ImplKt INSTANCE = new TypedArrayApi26ImplKt();

    private TypedArrayApi26ImplKt() {
    }

    @JvmStatic
    public static final Typeface getFont(TypedArray typedArray, int index) {
        Typeface font = typedArray.getFont(index);
        Intrinsics.checkNotNull(font);
        return font;
    }
}
