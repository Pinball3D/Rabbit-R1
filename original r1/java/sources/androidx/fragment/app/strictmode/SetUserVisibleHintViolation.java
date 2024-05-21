package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import io.sentry.protocol.Request;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SetUserVisibleHintViolation.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;", "Landroidx/fragment/app/strictmode/Violation;", Request.JsonKeys.FRAGMENT, "Landroidx/fragment/app/Fragment;", "isVisibleToUser", "", "(Landroidx/fragment/app/Fragment;Z)V", "()Z", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SetUserVisibleHintViolation extends Violation {
    private final boolean isVisibleToUser;

    /* renamed from: isVisibleToUser, reason: from getter */
    public final boolean getIsVisibleToUser() {
        return this.isVisibleToUser;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetUserVisibleHintViolation(Fragment fragment, boolean z) {
        super(fragment, "Attempting to set user visible hint to " + z + " for fragment " + fragment);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.isVisibleToUser = z;
    }
}
