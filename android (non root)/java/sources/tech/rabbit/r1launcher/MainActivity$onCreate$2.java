package tech.rabbit.r1launcher;

import android.os.Handler;
import defpackage.AppConfig;
import defpackage.DeviceEventsDispatcher;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "o", "", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
final class MainActivity$onCreate$2 extends Lambda implements Function1<Integer, Unit> {
    final /* synthetic */ MainActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$onCreate$2(MainActivity mainActivity) {
        super(1);
        this.this$0 = mainActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
        invoke(num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(final int i) {
        boolean z;
        DeviceEventsDispatcher deviceEventsDispatcher;
        Handler handler;
        Runnable runnable;
        Handler handler2;
        Runnable runnable2;
        z = this.this$0.isRotationEnabled;
        if (z && AppConfig.INSTANCE.isEnabledTerminal()) {
            deviceEventsDispatcher = this.this$0.deviceEvents;
            if (deviceEventsDispatcher == null) {
                Intrinsics.throwUninitializedPropertyAccessException("deviceEvents");
                deviceEventsDispatcher = null;
            }
            deviceEventsDispatcher.onRotate(new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.MainActivity$onCreate$2.1
                /* renamed from: invoke, reason: collision with other method in class */
                public final void m7460invoke(Object obj) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                    m7460invoke(result.getValue());
                    return Unit.INSTANCE;
                }
            });
            handler = this.this$0.rotationMessageHandler;
            runnable = this.this$0.runnable;
            handler.removeCallbacks(runnable);
            final MainActivity mainActivity = this.this$0;
            mainActivity.runnable = new Runnable() { // from class: tech.rabbit.r1launcher.MainActivity$onCreate$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity$onCreate$2.invoke$lambda$0(MainActivity.this, i);
                }
            };
            handler2 = this.this$0.rotationMessageHandler;
            runnable2 = this.this$0.runnable;
            handler2.postDelayed(runnable2, 350L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(MainActivity this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setRequestedOrientation(i);
    }
}
