package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidComposeView.android.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "command", "Lkotlin/Function0;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidComposeView$snapshotObserver$1 extends Lambda implements Function1<Function0<? extends Unit>, Unit> {
    final /* synthetic */ AndroidComposeView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$snapshotObserver$1(AndroidComposeView androidComposeView) {
        super(1);
        this.this$0 = androidComposeView;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Function0<? extends Unit> function0) {
        invoke2((Function0<Unit>) function0);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(final Function0<Unit> command) {
        Intrinsics.checkNotNullParameter(command, "command");
        Handler handler = this.this$0.getHandler();
        if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
            command.invoke();
            return;
        }
        Handler handler2 = this.this$0.getHandler();
        if (handler2 != null) {
            handler2.post(new Runnable() { // from class: androidx.compose.ui.platform.AndroidComposeView$snapshotObserver$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidComposeView$snapshotObserver$1.invoke$lambda$0(Function0.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }
}
