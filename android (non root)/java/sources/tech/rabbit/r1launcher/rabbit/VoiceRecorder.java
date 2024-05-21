package tech.rabbit.r1launcher.rabbit;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.alibaba.fastjson.JSON;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.common.utils.Weak;
import tech.rabbit.r1launcher.constant.EventInterceptor;
import tech.rabbit.r1launcher.recorder.AudioRecordManger;
import tech.rabbit.r1launcher.recorder.AudioTrackManager;
import tech.rabbit.r1launcher.wss.RabbitEngine;
import tech.rabbit.r1launcher.wss.rtc.RTCNetworkManager;

/* compiled from: VoiceRecorder.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0015J\u0006\u0010 \u001a\u00020\u001eJ\u0006\u0010\u0014\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0007\u001a\u0004\u0018\u00010\u00158B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006!"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;", "", "()V", "INVALID_ID", "", "TAG", "", "<set-?>", "", "isRecording", "()Z", "mAudioRecordManger", "Ltech/rabbit/r1launcher/recorder/AudioRecordManger;", "mAudioTrackManager", "Ltech/rabbit/r1launcher/recorder/AudioTrackManager;", "mainHandler", "Landroid/os/Handler;", "needsResumePlay", "recording", "Ljava/lang/Runnable;", "stopRecording", "Landroid/app/Activity;", "weakActivity", "getWeakActivity", "()Landroid/app/Activity;", "setWeakActivity", "(Landroid/app/Activity;)V", "weakActivity$delegate", "Ltech/rabbit/common/utils/Weak;", Session.JsonKeys.INIT, "", "activity", "startRecording", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRecorder {
    private static final String TAG = "VoiceRecorder";
    private static boolean isRecording;
    private static AudioRecordManger mAudioRecordManger;
    private static AudioTrackManager mAudioTrackManager;
    private static boolean needsResumePlay;
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(VoiceRecorder.class, "weakActivity", "getWeakActivity()Landroid/app/Activity;", 0))};
    public static final VoiceRecorder INSTANCE = new VoiceRecorder();
    private static final int INVALID_ID = -100017;

    /* renamed from: weakActivity$delegate, reason: from kotlin metadata */
    private static final Weak weakActivity = new Weak(new Function0<Activity>() { // from class: tech.rabbit.r1launcher.rabbit.VoiceRecorder$weakActivity$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Activity invoke() {
            return null;
        }
    });
    private static final Handler mainHandler = new Handler(Looper.getMainLooper());
    private static final Runnable recording = new Runnable() { // from class: tech.rabbit.r1launcher.rabbit.VoiceRecorder$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            VoiceRecorder.recording$lambda$0();
        }
    };
    private static final Runnable stopRecording = new Runnable() { // from class: tech.rabbit.r1launcher.rabbit.VoiceRecorder$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            VoiceRecorder.stopRecording$lambda$1();
        }
    };
    public static final int $stable = 8;

    public final boolean isRecording() {
        return isRecording;
    }

    private VoiceRecorder() {
    }

    private final Activity getWeakActivity() {
        return (Activity) weakActivity.getValue(this, $$delegatedProperties[0]);
    }

    private final void setWeakActivity(Activity activity) {
        weakActivity.setValue(this, $$delegatedProperties[0], activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void recording$lambda$0() {
        if (KeyEventHandler.INSTANCE.getLastKey() == 26 || KeyEventHandler.INSTANCE.getLastKey() == 24 || EventInterceptor.INSTANCE.getNeedIntercept()) {
            VoiceRecorder voiceRecorder = INSTANCE;
            isRecording = true;
            TTSPlayer.INSTANCE.stop();
            if (EventInterceptor.INSTANCE.getTransaltor()) {
                RabbitEngine rabbitEngine = RabbitEngine.INSTANCE;
                String jSONString = JSON.toJSONString(MapsKt.mapOf(TuplesKt.to("recording", true)));
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                rabbitEngine.sendUpdateTranslator(jSONString);
            }
            AudioRecordManger audioRecordManger = mAudioRecordManger;
            if (audioRecordManger == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAudioRecordManger");
                audioRecordManger = null;
            }
            audioRecordManger.startRecord(voiceRecorder.getWeakActivity());
            if (RTCNetworkManager.isPlaying()) {
                RTCNetworkManager.pausePlay();
                needsResumePlay = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void stopRecording$lambda$1() {
        if (isRecording) {
            isRecording = false;
            if (EventInterceptor.INSTANCE.getTransaltor()) {
                RabbitEngine rabbitEngine = RabbitEngine.INSTANCE;
                String jSONString = JSON.toJSONString(MapsKt.mapOf(TuplesKt.to("recording", false)));
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                rabbitEngine.sendUpdateTranslator(jSONString);
                RabbitEngine rabbitEngine2 = RabbitEngine.INSTANCE;
                String jSONString2 = JSON.toJSONString(MapsKt.mapOf(TuplesKt.to("loadingStatus", true)));
                Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                rabbitEngine2.sendUpdateTranslator(jSONString2);
            }
            AudioRecordManger audioRecordManger = mAudioRecordManger;
            if (audioRecordManger == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAudioRecordManger");
                audioRecordManger = null;
            }
            audioRecordManger.stopRecord();
            RLog.e(TAG, "onSpeakingStopped: ");
            if (needsResumePlay) {
                needsResumePlay = false;
                RTCNetworkManager.resumePlay();
            }
        }
    }

    public final void startRecording() {
        if (mAudioRecordManger == null) {
            RLog.e(TAG, "startRecording fail mAudioRecordManger is null !");
            return;
        }
        Handler handler = mainHandler;
        Runnable runnable = recording;
        handler.removeCallbacks(runnable);
        handler.postDelayed(runnable, 200L);
    }

    public final void stopRecording() {
        if (mAudioRecordManger == null) {
            RLog.e(TAG, "stopRecording fail mAudioRecordManger is null !");
            return;
        }
        Handler handler = mainHandler;
        Runnable runnable = stopRecording;
        handler.removeCallbacks(runnable);
        handler.postDelayed(runnable, 200L);
    }

    public final void init(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        setWeakActivity(activity);
        AudioRecordManger audioRecordManger = AudioRecordManger.getInstance();
        Intrinsics.checkNotNullExpressionValue(audioRecordManger, "getInstance(...)");
        mAudioRecordManger = audioRecordManger;
    }
}
