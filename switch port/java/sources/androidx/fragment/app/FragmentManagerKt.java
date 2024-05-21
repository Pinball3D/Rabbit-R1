package androidx.fragment.app;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FragmentManager.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a3\u0010\t\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a=\u0010\n\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\f"}, d2 = {"commit", "", "Landroidx/fragment/app/FragmentManager;", "allowStateLoss", "", "body", "Lkotlin/Function1;", "Landroidx/fragment/app/FragmentTransaction;", "Lkotlin/ExtensionFunctionType;", "commitNow", "transaction", "now", "fragment-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FragmentManagerKt {
    public static /* synthetic */ void commit$default(FragmentManager fragmentManager, boolean z, Function1 body, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(body, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static final void commit(FragmentManager fragmentManager, boolean z, Function1<? super FragmentTransaction, Unit> body) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(body, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static /* synthetic */ void commitNow$default(FragmentManager fragmentManager, boolean z, Function1 body, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(body, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z) {
            beginTransaction.commitNowAllowingStateLoss();
        } else {
            beginTransaction.commitNow();
        }
    }

    public static final void commitNow(FragmentManager fragmentManager, boolean z, Function1<? super FragmentTransaction, Unit> body) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(body, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z) {
            beginTransaction.commitNowAllowingStateLoss();
        } else {
            beginTransaction.commitNow();
        }
    }

    public static /* synthetic */ void transaction$default(FragmentManager fragmentManager, boolean z, boolean z2, Function1 body, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(body, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z) {
            if (z2) {
                beginTransaction.commitNowAllowingStateLoss();
                return;
            } else {
                beginTransaction.commitNow();
                return;
            }
        }
        if (z2) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    @Deprecated(message = "Use commit { .. } or commitNow { .. } extensions")
    public static final void transaction(FragmentManager fragmentManager, boolean z, boolean z2, Function1<? super FragmentTransaction, Unit> body) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(body, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z) {
            if (z2) {
                beginTransaction.commitNowAllowingStateLoss();
                return;
            } else {
                beginTransaction.commitNow();
                return;
            }
        }
        if (z2) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }
}
