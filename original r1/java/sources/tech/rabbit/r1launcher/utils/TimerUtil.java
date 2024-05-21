package tech.rabbit.r1launcher.utils;

import android.os.CountDownTimer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.KotlinUtilKt;

/* compiled from: TimerUtil.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0018\u0010\u000e\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0010\u0012\u0004\u0012\u00020\u000b0\u000fJ\u0006\u0010\u0011\u001a\u00020\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Ltech/rabbit/r1launcher/utils/TimerUtil;", "", "()V", "isRunning", "", "()Z", "setRunning", "(Z)V", "timer", "Landroid/os/CountDownTimer;", "startTimerTask", "", "millis", "", "callback", "Lkotlin/Function1;", "Lkotlin/Result;", "stopTimerTask", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TimerUtil {
    public static final int $stable = 8;
    private volatile boolean isRunning;
    private CountDownTimer timer;

    /* renamed from: isRunning, reason: from getter */
    public final boolean getIsRunning() {
        return this.isRunning;
    }

    public final void setRunning(boolean z) {
        this.isRunning = z;
    }

    public final void startTimerTask(final long millis, final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        stopTimerTask();
        KotlinUtilKt.runOnMainThread(new Function0<Object>() { // from class: tech.rabbit.r1launcher.utils.TimerUtil$startTimerTask$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                CountDownTimer countDownTimer;
                TimerUtil.this.timer = new CountDownTimer(millis, TimerUtil.this, callback) { // from class: tech.rabbit.r1launcher.utils.TimerUtil$startTimerTask$1.1
                    final /* synthetic */ Function1<Result<Unit>, Unit> $callback;
                    final /* synthetic */ TimerUtil this$0;

                    @Override // android.os.CountDownTimer
                    public void onTick(long millisUntilFinished) {
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(r1, r1);
                        this.this$0 = r3;
                        this.$callback = r4;
                    }

                    @Override // android.os.CountDownTimer
                    public void onFinish() {
                        this.this$0.setRunning(false);
                        Function1<Result<Unit>, Unit> function1 = this.$callback;
                        Result.Companion companion = Result.INSTANCE;
                        function1.invoke(Result.m5697boximpl(Result.m5698constructorimpl(Unit.INSTANCE)));
                    }
                };
                countDownTimer = TimerUtil.this.timer;
                if (countDownTimer != null) {
                    return countDownTimer.start();
                }
                return null;
            }
        });
        this.isRunning = true;
    }

    public final void stopTimerTask() {
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.timer = null;
        this.isRunning = false;
    }
}
