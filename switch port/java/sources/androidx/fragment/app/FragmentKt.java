package androidx.fragment.app;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Fragment.kt */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u001a\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b\u001aJ\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000426\u0010\n\u001a2\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00010\u000b¨\u0006\u000f"}, d2 = {"clearFragmentResult", "", "Landroidx/fragment/app/Fragment;", "requestKey", "", "clearFragmentResultListener", "setFragmentResult", "result", "Landroid/os/Bundle;", "setFragmentResultListener", "listener", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "bundle", "fragment-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FragmentKt {
    public static final void setFragmentResult(Fragment fragment, String requestKey, Bundle result) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(requestKey, "requestKey");
        Intrinsics.checkNotNullParameter(result, "result");
        fragment.getParentFragmentManager().setFragmentResult(requestKey, result);
    }

    public static final void clearFragmentResult(Fragment fragment, String requestKey) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(requestKey, "requestKey");
        fragment.getParentFragmentManager().clearFragmentResult(requestKey);
    }

    public static final void setFragmentResultListener(Fragment fragment, String requestKey, final Function2<? super String, ? super Bundle, Unit> listener) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(requestKey, "requestKey");
        Intrinsics.checkNotNullParameter(listener, "listener");
        fragment.getParentFragmentManager().setFragmentResultListener(requestKey, fragment, new FragmentResultListener() { // from class: androidx.fragment.app.FragmentKt$$ExternalSyntheticLambda0
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                FragmentKt.setFragmentResultListener$lambda$0(Function2.this, str, bundle);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setFragmentResultListener$lambda$0(Function2 tmp0, String p0, Bundle p1) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        tmp0.invoke(p0, p1);
    }

    public static final void clearFragmentResultListener(Fragment fragment, String requestKey) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(requestKey, "requestKey");
        fragment.getParentFragmentManager().clearFragmentResultListener(requestKey);
    }
}
