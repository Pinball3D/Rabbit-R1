package tech.rabbit.r1launcher.initstep.utils;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UiExtensions.kt */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0014\u0010\b\u001a\u00020\t*\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f\u001a\u0014\u0010\r\u001a\u00020\t*\u00020\u000e2\b\b\u0002\u0010\u000b\u001a\u00020\f\u001a\u0014\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\b\b\u0001\u0010\u0012\u001a\u00020\u0004\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003\"\u0015\u0010\u0000\u001a\u00020\u0004*\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0005\"\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0003\"\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\u0013"}, d2 = {"dp", "", "getDp", "(F)F", "", "(I)I", "sp", "getSp", "hideKeyboard", "Ljava/lang/Runnable;", "Landroid/view/View;", "delayedTime", "", "showKeyboard", "Landroid/widget/EditText;", "srcTint", "", "Landroid/widget/ImageView;", "color", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UiExtensionsKt {
    public static final int getDp(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    public static final int getSp(int i) {
        return (int) TypedValue.applyDimension(2, i, Resources.getSystem().getDisplayMetrics());
    }

    public static final float getDp(float f) {
        return TypedValue.applyDimension(1, f, Resources.getSystem().getDisplayMetrics());
    }

    public static final float getSp(float f) {
        return TypedValue.applyDimension(2, f, Resources.getSystem().getDisplayMetrics());
    }

    public static final void srcTint(ImageView imageView, int i) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        imageView.setImageTintList(ColorStateList.valueOf(i));
        imageView.setImageTintMode(PorterDuff.Mode.SRC_IN);
    }

    public static final Runnable showKeyboard(final EditText editText, long j) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        Runnable runnable = new Runnable() { // from class: tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt$showKeyboard$$inlined$postDelayed$1
            @Override // java.lang.Runnable
            public final void run() {
                editText.requestFocus();
                InputMethodManager inputMethodManager = (InputMethodManager) editText.getContext().getSystemService(InputMethodManager.class);
                if (inputMethodManager != null) {
                    inputMethodManager.showSoftInput(editText, 0);
                }
            }
        };
        editText.postDelayed(runnable, j);
        return runnable;
    }

    public static /* synthetic */ Runnable showKeyboard$default(EditText editText, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 200;
        }
        return showKeyboard(editText, j);
    }

    public static /* synthetic */ Runnable hideKeyboard$default(View view, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 200;
        }
        return hideKeyboard(view, j);
    }

    public static final Runnable hideKeyboard(final View view, long j) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Runnable runnable = new Runnable() { // from class: tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt$hideKeyboard$$inlined$postDelayed$1
            @Override // java.lang.Runnable
            public final void run() {
                view.clearFocus();
                InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService(InputMethodManager.class);
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
                }
            }
        };
        view.postDelayed(runnable, j);
        return runnable;
    }
}
