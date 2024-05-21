package tech.rabbit.r1launcher.rabbit;

import android.view.KeyEvent;
import androidx.core.app.NotificationCompat;
import defpackage.DeviceEventsDispatcher;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.r1launcher.constant.EventInterceptor;
import tech.rabbit.r1launcher.wss.RabbitEngine;

/* compiled from: KeyEventHandler.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000b¨\u0006\u0017"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;", "", "()V", "TAG", "", "deviceEvents", "LDeviceEventsDispatcher;", "<set-?>", "", "lastKey", "getLastKey", "()I", "lastUpKey", "getLastUpKey", "onKeyDown", "", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "setup", "", "deviceEventsDispatcher", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class KeyEventHandler {
    private static DeviceEventsDispatcher deviceEvents;
    public static final KeyEventHandler INSTANCE = new KeyEventHandler();
    private static final String TAG = "KeyEventHandler";
    private static int lastKey = -1;
    private static int lastUpKey = -1;
    public static final int $stable = 8;

    public final int getLastKey() {
        return lastKey;
    }

    public final int getLastUpKey() {
        return lastUpKey;
    }

    public final void setup(DeviceEventsDispatcher deviceEventsDispatcher) {
        Intrinsics.checkNotNullParameter(deviceEventsDispatcher, "deviceEventsDispatcher");
        deviceEvents = deviceEventsDispatcher;
    }

    private KeyEventHandler() {
    }

    public final boolean onKeyDown(final int keyCode, KeyEvent event) {
        if (keyCode != 19 && keyCode != 20) {
            switch (keyCode) {
                case 24:
                case 25:
                case 26:
                    break;
                default:
                    return true;
            }
        }
        if (lastKey == keyCode) {
            return true;
        }
        RabbitEngine.INSTANCE.sendClear();
        lastKey = keyCode;
        DeviceEventsDispatcher deviceEventsDispatcher = deviceEvents;
        if (deviceEventsDispatcher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deviceEvents");
            deviceEventsDispatcher = null;
        }
        deviceEventsDispatcher.onKeyDown(keyCode, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.rabbit.KeyEventHandler$onKeyDown$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                m7477invoke(result.getValue());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m7477invoke(Object obj) {
                String str;
                String str2;
                if (Result.m5705isSuccessimpl(obj)) {
                    System.out.println((Object) "Success");
                    str2 = KeyEventHandler.TAG;
                    RLog.e(str2, "onKeyDown: Success" + Result.m5705isSuccessimpl(obj));
                    int i = keyCode;
                    if ((i == 26 || i == 24) && !EventInterceptor.INSTANCE.getNeedIntercept()) {
                        VoiceRecorder.INSTANCE.startRecording();
                        return;
                    }
                    return;
                }
                System.out.println((Object) "Failure");
                str = KeyEventHandler.TAG;
                RLog.e(str, "onKeyDown: Failure" + Result.m5705isSuccessimpl(obj));
            }
        });
        return true;
    }

    public final boolean onKeyUp(final int keyCode, KeyEvent event) {
        lastKey = -1;
        lastUpKey = keyCode;
        if (keyCode != 19 && keyCode != 20) {
            switch (keyCode) {
                case 24:
                case 25:
                case 26:
                    break;
                default:
                    return true;
            }
        }
        RLog.i(TAG, "Volume key up " + keyCode);
        DeviceEventsDispatcher deviceEventsDispatcher = deviceEvents;
        if (deviceEventsDispatcher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deviceEvents");
            deviceEventsDispatcher = null;
        }
        deviceEventsDispatcher.onKeyUp(keyCode, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.rabbit.KeyEventHandler$onKeyUp$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                m7478invoke(result.getValue());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m7478invoke(Object obj) {
                if (Result.m5705isSuccessimpl(obj)) {
                    int i = keyCode;
                    if ((i == 26 || i == 24) && !EventInterceptor.INSTANCE.getNeedIntercept()) {
                        VoiceRecorder.INSTANCE.stopRecording();
                    }
                }
            }
        });
        return true;
    }
}
