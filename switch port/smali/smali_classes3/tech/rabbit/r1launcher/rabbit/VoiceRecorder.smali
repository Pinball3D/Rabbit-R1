.class public final Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;
.super Ljava/lang/Object;
.source "VoiceRecorder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0015J\u0006\u0010 \u001a\u00020\u001eJ\u0006\u0010\u0014\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00158B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;",
        "",
        "()V",
        "INVALID_ID",
        "",
        "TAG",
        "",
        "<set-?>",
        "",
        "isRecording",
        "()Z",
        "mAudioRecordManger",
        "Ltech/rabbit/r1launcher/recorder/AudioRecordManger;",
        "mAudioTrackManager",
        "Ltech/rabbit/r1launcher/recorder/AudioTrackManager;",
        "mainHandler",
        "Landroid/os/Handler;",
        "needsResumePlay",
        "recording",
        "Ljava/lang/Runnable;",
        "stopRecording",
        "Landroid/app/Activity;",
        "weakActivity",
        "getWeakActivity",
        "()Landroid/app/Activity;",
        "setWeakActivity",
        "(Landroid/app/Activity;)V",
        "weakActivity$delegate",
        "Ltech/rabbit/common/utils/Weak;",
        "init",
        "",
        "activity",
        "startRecording",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final $stable:I

.field public static final INSTANCE:Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

.field private static final INVALID_ID:I

.field private static final TAG:Ljava/lang/String; = "VoiceRecorder"

.field private static isRecording:Z

.field private static mAudioRecordManger:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

.field private static mAudioTrackManager:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

.field private static final mainHandler:Landroid/os/Handler;

.field private static needsResumePlay:Z

.field private static final recording:Ljava/lang/Runnable;

.field private static final stopRecording:Ljava/lang/Runnable;

.field private static final weakActivity$delegate:Ltech/rabbit/common/utils/Weak;


# direct methods
.method public static synthetic $r8$lambda$ajv8vtyrHXBNaDMHiK8GmfBS3T4()V
    .locals 0

    invoke-static {}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->stopRecording$lambda$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$cKUm4RreqmfVSv1maU2YG3D0U2o()V
    .locals 0

    invoke-static {}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->recording$lambda$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 30
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "weakActivity"

    const-string v3, "getWeakActivity()Landroid/app/Activity;"

    const-class v4, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

    const v0, -0x186b1

    sput v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->INVALID_ID:I

    new-instance v0, Ltech/rabbit/common/utils/Weak;

    sget-object v1, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder$weakActivity$2;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/VoiceRecorder$weakActivity$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Ltech/rabbit/common/utils/Weak;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->weakActivity$delegate:Ltech/rabbit/common/utils/Weak;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->mainHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->recording:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->stopRecording:Ljava/lang/Runnable;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getWeakActivity()Landroid/app/Activity;
    .locals 3

    sget-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->weakActivity$delegate:Ltech/rabbit/common/utils/Weak;

    sget-object v1, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    .line 30
    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Ltech/rabbit/common/utils/Weak;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method private static final recording$lambda$0()V
    .locals 5

    .line 34
    sget-object v0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->getLastKey()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    sget-object v0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->getLastKey()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget-object v0, Ltech/rabbit/r1launcher/constant/EventInterceptor;->INSTANCE:Ltech/rabbit/r1launcher/constant/EventInterceptor;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/constant/EventInterceptor;->getNeedIntercept()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

    const/4 v1, 0x1

    sput-boolean v1, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->isRecording:Z

    .line 36
    sget-object v2, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->stop()V

    .line 37
    sget-object v2, Ltech/rabbit/r1launcher/constant/EventInterceptor;->INSTANCE:Ltech/rabbit/r1launcher/constant/EventInterceptor;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/constant/EventInterceptor;->getTransaltor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    sget-object v2, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    const-string v3, "recording"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toJSONString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendUpdateTranslator(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->mAudioRecordManger:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    if-nez v2, :cond_2

    const-string v2, "mAudioRecordManger"

    .line 40
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->getWeakActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v0}, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->startRecord(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->pausePlay()V

    sput-boolean v1, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->needsResumePlay:Z

    :cond_3
    return-void
.end method

.method private final setWeakActivity(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->weakActivity$delegate:Ltech/rabbit/common/utils/Weak;

    sget-object v1, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    .line 30
    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Ltech/rabbit/common/utils/Weak;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private static final stopRecording$lambda$1()V
    .locals 5

    sget-boolean v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->isRecording:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->isRecording:Z

    .line 51
    sget-object v1, Ltech/rabbit/r1launcher/constant/EventInterceptor;->INSTANCE:Ltech/rabbit/r1launcher/constant/EventInterceptor;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/constant/EventInterceptor;->getTransaltor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    const-string v2, "recording"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toJSONString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendUpdateTranslator(Ljava/lang/String;)V

    .line 53
    sget-object v1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "loadingStatus"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendUpdateTranslator(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->mAudioRecordManger:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    if-nez v1, :cond_1

    const-string v1, "mAudioRecordManger"

    .line 55
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->stopRecord()V

    const-string v1, "VoiceRecorder"

    const-string v2, "onSpeakingStopped: "

    .line 56
    invoke-static {v1, v2}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->needsResumePlay:Z

    if-eqz v1, :cond_2

    sput-boolean v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->needsResumePlay:Z

    .line 60
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->resumePlay()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final init(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->setWeakActivity(Landroid/app/Activity;)V

    .line 85
    invoke-static {}, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->getInstance()Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    move-result-object p0

    const-string p1, "getInstance(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->mAudioRecordManger:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    return-void
.end method

.method public final isRecording()Z
    .locals 0

    sget-boolean p0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->isRecording:Z

    return p0
.end method

.method public final startRecording()V
    .locals 3

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->mAudioRecordManger:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    if-nez p0, :cond_0

    const-string p0, "VoiceRecorder"

    const-string v0, "startRecording fail mAudioRecordManger is null !"

    .line 67
    invoke-static {p0, v0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->mainHandler:Landroid/os/Handler;

    sget-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->recording:Ljava/lang/Runnable;

    .line 70
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xc8

    .line 71
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final stopRecording()V
    .locals 3

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->mAudioRecordManger:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    if-nez p0, :cond_0

    const-string p0, "VoiceRecorder"

    const-string v0, "stopRecording fail mAudioRecordManger is null !"

    .line 76
    invoke-static {p0, v0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->mainHandler:Landroid/os/Handler;

    sget-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->stopRecording:Ljava/lang/Runnable;

    .line 79
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xc8

    .line 80
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
