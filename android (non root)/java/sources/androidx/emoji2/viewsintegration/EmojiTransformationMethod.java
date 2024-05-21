package androidx.emoji2.viewsintegration;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.emoji2.text.EmojiCompat;

/* loaded from: classes2.dex */
class EmojiTransformationMethod implements TransformationMethod {
    private final TransformationMethod mTransformationMethod;

    public TransformationMethod getOriginalTransformationMethod() {
        return this.mTransformationMethod;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiTransformationMethod(TransformationMethod transformationMethod) {
        this.mTransformationMethod = transformationMethod;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.mTransformationMethod;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        return (charSequence == null || EmojiCompat.get().getLoadState() != 1) ? charSequence : EmojiCompat.get().process(charSequence);
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
        TransformationMethod transformationMethod = this.mTransformationMethod;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z, i, rect);
        }
    }
}
