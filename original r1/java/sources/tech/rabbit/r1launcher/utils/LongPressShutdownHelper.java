package tech.rabbit.r1launcher.utils;

import android.app.Activity;
import android.view.KeyEvent;
import androidx.core.app.NotificationCompat;
import androidx.work.WorkRequest;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import tech.rabbit.common.utils.KotlinUtilKt;
import tech.rabbit.common.utils.Weak;
import tech.rabbit.r1launcher.settings.utils.SystemControllerUtil;

/* compiled from: LongPressShutdownHelper.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J \u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R/\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00068B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Ltech/rabbit/r1launcher/utils/LongPressShutdownHelper;", "", "()V", "_keyDownTM", "", "<set-?>", "Landroid/app/Activity;", "_lastContext", "get_lastContext", "()Landroid/app/Activity;", "set_lastContext", "(Landroid/app/Activity;)V", "_lastContext$delegate", "Ltech/rabbit/common/utils/Weak;", "onKeyDown", "", "activity", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LongPressShutdownHelper {
    private static long _keyDownTM;
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(LongPressShutdownHelper.class, "_lastContext", "get_lastContext()Landroid/app/Activity;", 0))};
    public static final LongPressShutdownHelper INSTANCE = new LongPressShutdownHelper();

    /* renamed from: _lastContext$delegate, reason: from kotlin metadata */
    private static final Weak _lastContext = new Weak(new Function0<Activity>() { // from class: tech.rabbit.r1launcher.utils.LongPressShutdownHelper$_lastContext$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Activity invoke() {
            return null;
        }
    });
    public static final int $stable = 8;

    private LongPressShutdownHelper() {
    }

    private final Activity get_lastContext() {
        return (Activity) _lastContext.getValue(this, $$delegatedProperties[0]);
    }

    private final void set_lastContext(Activity activity) {
        _lastContext.setValue(this, $$delegatedProperties[0], activity);
    }

    public final boolean onKeyDown(Activity activity, int keyCode, KeyEvent event) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (!Intrinsics.areEqual(activity, get_lastContext())) {
            set_lastContext(activity);
            _keyDownTM = 0L;
        }
        switch (keyCode) {
            case 24:
            case 25:
            case 26:
                if (_keyDownTM != 0) {
                    return false;
                }
                _keyDownTM = System.currentTimeMillis();
                return false;
            default:
                return false;
        }
    }

    public final boolean onKeyUp(Activity activity, int keyCode, KeyEvent event) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (!Intrinsics.areEqual(activity, get_lastContext())) {
            _keyDownTM = 0L;
            return false;
        }
        if (keyCode != 26 && keyCode != 25 && keyCode != 24) {
            return false;
        }
        if (_keyDownTM <= 0 || System.currentTimeMillis() - _keyDownTM <= WorkRequest.MIN_BACKOFF_MILLIS) {
            _keyDownTM = 0L;
            return false;
        }
        KotlinUtilKt.postOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.utils.LongPressShutdownHelper$onKeyUp$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SystemControllerUtil.INSTANCE.shutdownDevice();
            }
        });
        return true;
    }
}
