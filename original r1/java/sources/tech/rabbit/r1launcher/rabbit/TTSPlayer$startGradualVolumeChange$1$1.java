package tech.rabbit.r1launcher.rabbit;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.webrtc.AudioTrack;

/* compiled from: TTSPlayer.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.rabbit.TTSPlayer$startGradualVolumeChange$1$1", f = "TTSPlayer.kt", i = {0}, l = {147}, m = "invokeSuspend", n = {"step"}, s = {"I$0"})
/* loaded from: classes3.dex */
final class TTSPlayer$startGradualVolumeChange$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Double $currentVolume;
    final /* synthetic */ AudioTrack $it;
    final /* synthetic */ int $totalSteps;
    final /* synthetic */ double $volumeIncrement;
    int I$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TTSPlayer$startGradualVolumeChange$1$1(int i, Double d, double d2, AudioTrack audioTrack, Continuation<? super TTSPlayer$startGradualVolumeChange$1$1> continuation) {
        super(2, continuation);
        this.$totalSteps = i;
        this.$currentVolume = d;
        this.$volumeIncrement = d2;
        this.$it = audioTrack;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TTSPlayer$startGradualVolumeChange$1$1(this.$totalSteps, this.$currentVolume, this.$volumeIncrement, this.$it, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TTSPlayer$startGradualVolumeChange$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0045 -> B:5:0x0048). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 1
            if (r1 == 0) goto L19
            if (r1 != r2) goto L11
            int r1 = r9.I$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L48
        L11:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L19:
            kotlin.ResultKt.throwOnFailure(r10)
            int r10 = r9.$totalSteps
            if (r2 > r10) goto L4f
            r1 = r2
        L21:
            java.lang.Double r10 = r9.$currentVolume
            double r3 = r10.doubleValue()
            double r5 = (double) r1
            double r7 = r9.$volumeIncrement
            double r5 = r5 * r7
            double r3 = r3 + r5
            org.webrtc.AudioTrack r10 = r9.$it
            r10.setVolume(r3)
            tech.rabbit.r1launcher.wss.rtc.RTCInstance r10 = tech.rabbit.r1launcher.wss.rtc.RTCInstance.getInstance()
            r10.setCurrentVolume(r3)
            r10 = r9
            kotlin.coroutines.Continuation r10 = (kotlin.coroutines.Continuation) r10
            r9.I$0 = r1
            r9.label = r2
            r3 = 150(0x96, double:7.4E-322)
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.delay(r3, r10)
            if (r10 != r0) goto L48
            return r0
        L48:
            int r10 = r9.$totalSteps
            if (r1 == r10) goto L4f
            int r1 = r1 + 1
            goto L21
        L4f:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.rabbit.TTSPlayer$startGradualVolumeChange$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
