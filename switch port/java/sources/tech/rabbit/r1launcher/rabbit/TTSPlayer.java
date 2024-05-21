package tech.rabbit.r1launcher.rabbit;

import android.util.Log;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import io.sentry.profilemeasurements.ProfileMeasurement;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import org.webrtc.AudioTrack;
import tech.rabbit.r1launcher.rabbit.MP3Player;
import tech.rabbit.r1launcher.utils.TimerUtil;
import tech.rabbit.r1launcher.wss.RabbitEngine;
import tech.rabbit.r1launcher.wss.rtc.RTCInstance;

/* compiled from: TTSPlayer.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0004J\b\u0010\u001a\u001a\u00020\u0017H\u0002J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0006\u0010\u001e\u001a\u00020\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR0\u0010\r\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000fj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`\u00100\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/TTSPlayer;", "", "()V", "TAG", "", "player", "Ltech/rabbit/r1launcher/rabbit/MP3Player;", "timer", "Ltech/rabbit/r1launcher/utils/TimerUtil;", "getTimer", "()Ltech/rabbit/r1launcher/utils/TimerUtil;", "timer$delegate", "Lkotlin/Lazy;", "ttsPendingList", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "volJob", "Lkotlinx/coroutines/Job;", "getDuration", "", "text", "play", "", "data", "", "playAndShowTTS", "startGradualVolumeChange", "targetVolume", "", "stop", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TTSPlayer {
    public static final int $stable;
    private static final String TAG = "TTSPlayer";
    private static final MP3Player player;
    private static Job volJob;
    public static final TTSPlayer INSTANCE = new TTSPlayer();
    private static final CopyOnWriteArrayList<HashMap<String, Object>> ttsPendingList = new CopyOnWriteArrayList<>();

    /* renamed from: timer$delegate, reason: from kotlin metadata */
    private static final Lazy timer = LazyKt.lazy(new Function0<TimerUtil>() { // from class: tech.rabbit.r1launcher.rabbit.TTSPlayer$timer$2
        @Override // kotlin.jvm.functions.Function0
        public final TimerUtil invoke() {
            return new TimerUtil();
        }
    });

    private TTSPlayer() {
    }

    static {
        MP3Player mP3Player = new MP3Player();
        mP3Player.setOnCompletionListener(new MP3Player.OnCompletionListener() { // from class: tech.rabbit.r1launcher.rabbit.TTSPlayer$$ExternalSyntheticLambda0
            @Override // tech.rabbit.r1launcher.rabbit.MP3Player.OnCompletionListener
            public final void onCompletion() {
                TTSPlayer.player$lambda$2$lambda$0();
            }
        });
        mP3Player.setOnPlayStateChangeListener(new MP3Player.OnPlayStateChangeListener() { // from class: tech.rabbit.r1launcher.rabbit.TTSPlayer$$ExternalSyntheticLambda1
            @Override // tech.rabbit.r1launcher.rabbit.MP3Player.OnPlayStateChangeListener
            public final void onPlayStateChanged(boolean z) {
                TTSPlayer.player$lambda$2$lambda$1(z);
            }
        });
        player = mP3Player;
        $stable = 8;
    }

    private final TimerUtil getTimer() {
        return (TimerUtil) timer.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void player$lambda$2$lambda$0() {
        RabbitEngine.INSTANCE.sendTTSFinish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void player$lambda$2$lambda$1(boolean z) {
        if (z) {
            INSTANCE.startGradualVolumeChange(0.01d);
        } else {
            INSTANCE.startGradualVolumeChange(0.3d);
        }
    }

    public final void play(byte[] data, String text) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(text, "text");
        if (VoiceRecorder.INSTANCE.isRecording() || !ScreenOffOp.INSTANCE.isScreenOn() || Intrinsics.areEqual(TTSPlayerState.INSTANCE.getState(), TTSPlayerState.allMuted)) {
            return;
        }
        HashMap<String, Object> hashMapOf = MapsKt.hashMapOf(TuplesKt.to(ProfileMeasurement.UNIT_BYTES, data));
        hashMapOf.put("text", text);
        ttsPendingList.add(hashMapOf);
        try {
            INSTANCE.playAndShowTTS();
            Unit unit = Unit.INSTANCE;
        } catch (Throwable th) {
            Log.e("KotUtil", "catched Exception : " + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void playAndShowTTS() {
        CopyOnWriteArrayList<HashMap<String, Object>> copyOnWriteArrayList = ttsPendingList;
        if (copyOnWriteArrayList.isEmpty() || getTimer().getIsRunning()) {
            return;
        }
        HashMap<String, Object> hashMap = copyOnWriteArrayList.get(0);
        CollectionsKt.removeFirst(copyOnWriteArrayList);
        Object obj = hashMap.get(ProfileMeasurement.UNIT_BYTES);
        byte[] bArr = obj instanceof byte[] ? (byte[]) obj : null;
        if (bArr != null) {
            if (!(!Intrinsics.areEqual(TTSPlayerState.INSTANCE.getState(), TTSPlayerState.audioMuted))) {
                bArr = null;
            }
            if (bArr != null) {
                player.play(bArr);
            }
        }
        Object obj2 = hashMap.get("text");
        String str = obj2 instanceof String ? (String) obj2 : null;
        if (str != null) {
            if (!Intrinsics.areEqual(TTSPlayerState.INSTANCE.getState(), TTSPlayerState.textMuted)) {
                RabbitEngine.INSTANCE.sendTTSShow(str);
            }
            TTSPlayer tTSPlayer = INSTANCE;
            tTSPlayer.getTimer().startTimerTask(tTSPlayer.getDuration(str), new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.rabbit.TTSPlayer$playAndShowTTS$3$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                    m7479invoke(result.getValue());
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m7479invoke(Object obj3) {
                    CopyOnWriteArrayList copyOnWriteArrayList2;
                    if (Result.m5705isSuccessimpl(obj3)) {
                        copyOnWriteArrayList2 = TTSPlayer.ttsPendingList;
                        if (!copyOnWriteArrayList2.isEmpty()) {
                            TTSPlayer.INSTANCE.playAndShowTTS();
                        }
                    }
                }
            });
        }
    }

    private final long getDuration(String text) {
        JSONArray jSONArray;
        JSONObject parseObject = JSON.parseObject(text);
        JSONArray jSONArray2 = parseObject.getJSONArray("char_start_times_ms");
        if (jSONArray2 == null || (jSONArray = parseObject.getJSONArray("char_durations_ms")) == null) {
            return 0L;
        }
        Intrinsics.checkNotNull(jSONArray);
        return (jSONArray2.size() > 0 ? Long.parseLong(CollectionsKt.last((List) jSONArray2).toString()) : 0L) + (jSONArray.size() > 0 ? Long.parseLong(CollectionsKt.last((List) jSONArray).toString()) : 0L) + 40;
    }

    public final void stop() {
        MP3Player mP3Player = player;
        if (mP3Player.isPlaying()) {
            RabbitEngine.INSTANCE.sendTTSFinish();
            mP3Player.stop();
            ttsPendingList.clear();
        }
    }

    private final void startGradualVolumeChange(double targetVolume) {
        Job launch$default;
        AudioTrack audioTrack = RTCInstance.getInstance().getAudioTrack();
        if (audioTrack != null) {
            Job job = volJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            Double currentVolume = RTCInstance.getInstance().getCurrentVolume();
            Intrinsics.checkNotNull(currentVolume);
            if (currentVolume.doubleValue() > targetVolume) {
                audioTrack.setVolume(targetVolume);
                RTCInstance.getInstance().setCurrentVolume(targetVolume);
            } else if (currentVolume.doubleValue() < targetVolume) {
                launch$default = BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, null, null, new TTSPlayer$startGradualVolumeChange$1$1(10, currentVolume, (targetVolume - currentVolume.doubleValue()) / 10, audioTrack, null), 3, null);
                volJob = launch$default;
            }
        }
    }
}
