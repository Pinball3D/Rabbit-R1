package com.yeqx.melody.utils.extension;

import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewExtension.kt */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fH\u0003\u001a\u0012\u0010\u0015\u001a\u00020\u0011*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018\u001a\n\u0010\u0019\u001a\u00020\u001a*\u00020\u0016\u001a\u0018\u0010\u001b\u001a\u00020\u0011*\u00020\u00162\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00110\u001d\u001a \u0010\u001e\u001a\u00020\u0011*\u00020\u00162\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00110\u001d2\u0006\u0010\u001f\u001a\u00020\u0007\u001a\u001e\u0010 \u001a\u00020\u0011*\u00020\u00162\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\"\u001a\u0012\u0010 \u001a\u00020\u0011*\u00020\u00162\u0006\u0010#\u001a\u00020$\u001a&\u0010 \u001a\u00020\u0011*\u00020\u00162\u0006\u0010%\u001a\u00020\u00072\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\"\u001a \u0010&\u001a\u00020\u0011*\u00020\u00162\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\"H\u0007\u001a\u0012\u0010'\u001a\u00020\u0011*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000f\"\u001a\u0010\u0000\u001a\u00020\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0004\b\u0004\u0010\u0005\"\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b\"\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"clickMinInterval", "", "getClickMinInterval", "()I", "setClickMinInterval", "(I)V", "lastClickTime", "", "getLastClickTime", "()J", "setLastClickTime", "(J)V", "tmpIntArr", "", "tryHiddenSuppressLayout", "", "hiddenSuppressLayout", "", "group", "Landroid/view/ViewGroup;", "suppress", "copyBoundsInWindow", "Landroid/view/View;", "rect", "Landroid/graphics/Rect;", "drawCacheBitmap", "Landroid/graphics/Bitmap;", "safePost", "runnable", "Lkotlin/Function0;", "safePostDelayed", "delay", "setOnSingleClickListener", "onClick", "Lkotlin/Function1;", "listener", "Landroid/view/View$OnClickListener;", "checkTime", "setOnSingleClickListenerWithAnim", "suppressLayoutCompat", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ViewExtensionKt {
    private static int clickMinInterval = 200;
    private static long lastClickTime = 0;
    private static final int[] tmpIntArr = new int[2];
    private static boolean tryHiddenSuppressLayout = true;

    public static final int getClickMinInterval() {
        return clickMinInterval;
    }

    public static final long getLastClickTime() {
        return lastClickTime;
    }

    public static final void setClickMinInterval(int i) {
        clickMinInterval = i;
    }

    public static final void setLastClickTime(long j) {
        lastClickTime = j;
    }

    public static final void setOnSingleClickListener(View view, final View.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        view.setOnClickListener(new View.OnClickListener() { // from class: com.yeqx.melody.utils.extension.ViewExtensionKt$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ViewExtensionKt.setOnSingleClickListener$lambda$0(listener, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnSingleClickListener$lambda$0(View.OnClickListener listener, View view) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - lastClickTime > clickMinInterval) {
            lastClickTime = currentTimeMillis;
            listener.onClick(view);
            view.getLocationOnScreen(new int[2]);
        }
    }

    public static final void setOnSingleClickListenerWithAnim(final View view, final Function1<? super View, Unit> onClick) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.yeqx.melody.utils.extension.ViewExtensionKt$$ExternalSyntheticLambda3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean onSingleClickListenerWithAnim$lambda$3;
                onSingleClickListenerWithAnim$lambda$3 = ViewExtensionKt.setOnSingleClickListenerWithAnim$lambda$3(view, view2, motionEvent);
                return onSingleClickListenerWithAnim$lambda$3;
            }
        });
        view.setOnClickListener(new View.OnClickListener() { // from class: com.yeqx.melody.utils.extension.ViewExtensionKt$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ViewExtensionKt.setOnSingleClickListenerWithAnim$lambda$4(Function1.this, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setOnSingleClickListenerWithAnim$lambda$3(View this_setOnSingleClickListenerWithAnim, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this_setOnSingleClickListenerWithAnim, "$this_setOnSingleClickListenerWithAnim");
        int action = motionEvent.getAction();
        if (action == 0) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this_setOnSingleClickListenerWithAnim, ViewHierarchyNode.JsonKeys.ALPHA, 1.0f, 0.5f);
            ofFloat.setDuration(300L);
            ofFloat.start();
            return false;
        }
        if (action != 1 && action != 3) {
            return false;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this_setOnSingleClickListenerWithAnim, ViewHierarchyNode.JsonKeys.ALPHA, 0.5f, 1.0f);
        ofFloat2.setDuration(300L);
        ofFloat2.start();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnSingleClickListenerWithAnim$lambda$4(Function1 onClick, View view) {
        Intrinsics.checkNotNullParameter(onClick, "$onClick");
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - lastClickTime > clickMinInterval) {
            lastClickTime = currentTimeMillis;
            Intrinsics.checkNotNull(view);
            onClick.invoke(view);
            view.getLocationOnScreen(new int[2]);
        }
    }

    public static final void setOnSingleClickListener(View view, final Function1<? super View, Unit> onClick) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        view.setOnClickListener(new View.OnClickListener() { // from class: com.yeqx.melody.utils.extension.ViewExtensionKt$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ViewExtensionKt.setOnSingleClickListener$lambda$5(Function1.this, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnSingleClickListener$lambda$5(Function1 onClick, View view) {
        Intrinsics.checkNotNullParameter(onClick, "$onClick");
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - lastClickTime > clickMinInterval) {
            lastClickTime = currentTimeMillis;
            Intrinsics.checkNotNull(view);
            onClick.invoke(view);
            view.getLocationOnScreen(new int[2]);
        }
    }

    public static final void setOnSingleClickListener(View view, final long j, final Function1<? super View, Unit> onClick) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        view.setOnClickListener(new View.OnClickListener() { // from class: com.yeqx.melody.utils.extension.ViewExtensionKt$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ViewExtensionKt.setOnSingleClickListener$lambda$6(j, onClick, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnSingleClickListener$lambda$6(long j, Function1 onClick, View view) {
        Intrinsics.checkNotNullParameter(onClick, "$onClick");
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - lastClickTime > j) {
            lastClickTime = currentTimeMillis;
            Intrinsics.checkNotNull(view);
            onClick.invoke(view);
            view.getLocationOnScreen(new int[2]);
        }
    }

    public static final void copyBoundsInWindow(View view, Rect rect) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(rect, "rect");
        if (view.isLaidOut() && view.isAttachedToWindow()) {
            rect.set(0, 0, view.getWidth(), view.getHeight());
            int[] iArr = tmpIntArr;
            view.getLocationInWindow(iArr);
            rect.offset(iArr[0], iArr[1]);
            return;
        }
        throw new IllegalArgumentException("Can not copy bounds as view is not laid out or attached to window");
    }

    public static final void suppressLayoutCompat(ViewGroup viewGroup, boolean z) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        viewGroup.suppressLayout(z);
    }

    private static final void hiddenSuppressLayout(ViewGroup viewGroup, boolean z) {
        if (tryHiddenSuppressLayout) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError unused) {
                tryHiddenSuppressLayout = false;
            }
        }
    }

    public static final void safePost(final View view, final Function0<Unit> runnable) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        view.post(new Runnable() { // from class: com.yeqx.melody.utils.extension.ViewExtensionKt$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ViewExtensionKt.safePost$lambda$8(view, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void safePost$lambda$8(View this_safePost, Function0 runnable) {
        Intrinsics.checkNotNullParameter(this_safePost, "$this_safePost");
        Intrinsics.checkNotNullParameter(runnable, "$runnable");
        try {
            Result.Companion companion = Result.INSTANCE;
            runnable.invoke();
            Result.m5698constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final void safePostDelayed(final View view, final Function0<Unit> runnable, long j) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        view.postDelayed(new Runnable() { // from class: com.yeqx.melody.utils.extension.ViewExtensionKt$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ViewExtensionKt.safePostDelayed$lambda$10(view, runnable);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void safePostDelayed$lambda$10(View this_safePostDelayed, Function0 runnable) {
        Intrinsics.checkNotNullParameter(this_safePostDelayed, "$this_safePostDelayed");
        Intrinsics.checkNotNullParameter(runnable, "$runnable");
        try {
            Result.Companion companion = Result.INSTANCE;
            runnable.invoke();
            Result.m5698constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final Bitmap drawCacheBitmap(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        view.draw(new Canvas(createBitmap));
        return createBitmap;
    }
}
