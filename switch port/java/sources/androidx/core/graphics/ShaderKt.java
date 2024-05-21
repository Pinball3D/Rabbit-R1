package androidx.core.graphics;

import android.graphics.Matrix;
import android.graphics.Shader;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: Shader.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006H\u0086\b¨\u0006\u0007"}, d2 = {"transform", "", "Landroid/graphics/Shader;", "block", "Lkotlin/Function1;", "Landroid/graphics/Matrix;", "Lkotlin/ExtensionFunctionType;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ShaderKt {
    public static final void transform(Shader shader, Function1<? super Matrix, Unit> function1) {
        Matrix matrix = new Matrix();
        shader.getLocalMatrix(matrix);
        function1.invoke(matrix);
        shader.setLocalMatrix(matrix);
    }
}
