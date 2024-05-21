package androidx.activity.compose;

import androidx.activity.BackEventCompat;
import androidx.core.app.NotificationCompat;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;

/* compiled from: PredictiveBackHandler.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00127\u0010\u0006\u001a3\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\t0\b¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ\u0006\u0010\u0019\u001a\u00020\u000eJ\u0006\u0010\u001a\u001a\u00020\u0005J$\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001c2\u0006\u0010\u001d\u001a\u00020\tø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006 "}, d2 = {"Landroidx/activity/compose/OnBackInstance;", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "isPredictiveBack", "", "onBack", "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/activity/BackEventCompat;", "Lkotlin/ParameterName;", "name", NotificationCompat.CATEGORY_PROGRESS, "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;)V", "channel", "Lkotlinx/coroutines/channels/Channel;", "getChannel", "()Lkotlinx/coroutines/channels/Channel;", "()Z", "job", "Lkotlinx/coroutines/Job;", "getJob", "()Lkotlinx/coroutines/Job;", "cancel", "close", "send", "Lkotlinx/coroutines/channels/ChannelResult;", "backEvent", "send-JP2dKIU", "(Landroidx/activity/BackEventCompat;)Ljava/lang/Object;", "activity-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class OnBackInstance {
    private final Channel<BackEventCompat> channel = ChannelKt.Channel$default(-2, BufferOverflow.SUSPEND, null, 4, null);
    private final boolean isPredictiveBack;
    private final Job job;

    public final Channel<BackEventCompat> getChannel() {
        return this.channel;
    }

    public final Job getJob() {
        return this.job;
    }

    /* renamed from: isPredictiveBack, reason: from getter */
    public final boolean getIsPredictiveBack() {
        return this.isPredictiveBack;
    }

    public OnBackInstance(CoroutineScope coroutineScope, boolean z, Function2<? super Flow<BackEventCompat>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        Job launch$default;
        this.isPredictiveBack = z;
        launch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new OnBackInstance$job$1(function2, this, null), 3, null);
        this.job = launch$default;
    }

    /* renamed from: send-JP2dKIU, reason: not valid java name */
    public final Object m13sendJP2dKIU(BackEventCompat backEvent) {
        return this.channel.mo7202trySendJP2dKIU(backEvent);
    }

    public final boolean close() {
        return SendChannel.DefaultImpls.close$default(this.channel, null, 1, null);
    }

    public final void cancel() {
        this.channel.cancel(new CancellationException("onBack cancelled"));
        Job.DefaultImpls.cancel$default(this.job, (CancellationException) null, 1, (Object) null);
    }
}
