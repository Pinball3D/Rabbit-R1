.class public final Ltech/rabbit/r1launcher/rabbit/TTSPlayer;
.super Ljava/lang/Object;
.source "TTSPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTTSPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TTSPlayer.kt\ntech/rabbit/r1launcher/rabbit/TTSPlayer\n+ 2 KotlinUtil.kt\ntech/rabbit/common/utils/KotlinUtilKt\n*L\n1#1,153:1\n68#2,10:154\n*S KotlinDebug\n*F\n+ 1 TTSPlayer.kt\ntech/rabbit/r1launcher/rabbit/TTSPlayer\n*L\n67#1:154,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0004J\u0008\u0010\u001a\u001a\u00020\u0017H\u0002J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0006\u0010\u001e\u001a\u00020\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR0\u0010\r\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000fj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`\u00100\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/TTSPlayer;",
        "",
        "()V",
        "TAG",
        "",
        "player",
        "Ltech/rabbit/r1launcher/rabbit/MP3Player;",
        "timer",
        "Ltech/rabbit/r1launcher/utils/TimerUtil;",
        "getTimer",
        "()Ltech/rabbit/r1launcher/utils/TimerUtil;",
        "timer$delegate",
        "Lkotlin/Lazy;",
        "ttsPendingList",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "volJob",
        "Lkotlinx/coroutines/Job;",
        "getDuration",
        "",
        "text",
        "play",
        "",
        "data",
        "",
        "playAndShowTTS",
        "startGradualVolumeChange",
        "targetVolume",
        "",
        "stop",
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
.field public static final $stable:I

.field public static final INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer;

.field private static final TAG:Ljava/lang/String; = "TTSPlayer"

.field private static final player:Ltech/rabbit/r1launcher/rabbit/MP3Player;

.field private static final timer$delegate:Lkotlin/Lazy;

.field private static final ttsPendingList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volJob:Lkotlinx/coroutines/Job;


# direct methods
.method public static synthetic $r8$lambda$fyjAMWtCbEBWID8RVpkJaZSJFxg(Z)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->player$lambda$2$lambda$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEFXKBBQQV1aWd_b7z1v_ikNE7c()V
    .locals 0

    invoke-static {}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->player$lambda$2$lambda$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer;

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->ttsPendingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    sget-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$timer$2;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer$timer$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->timer$delegate:Lkotlin/Lazy;

    .line 49
    new-instance v0, Ltech/rabbit/r1launcher/rabbit/MP3Player;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;-><init>()V

    .line 50
    new-instance v1, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->setOnCompletionListener(Ltech/rabbit/r1launcher/rabbit/MP3Player$OnCompletionListener;)V

    .line 53
    new-instance v1, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->setOnPlayStateChangeListener(Ltech/rabbit/r1launcher/rabbit/MP3Player$OnPlayStateChangeListener;)V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->player:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTtsPendingList$p()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->ttsPendingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic access$playAndShowTTS(Ltech/rabbit/r1launcher/rabbit/TTSPlayer;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->playAndShowTTS()V

    return-void
.end method

.method private final getDuration(Ljava/lang/String;)J
    .locals 4

    .line 99
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    const-string p1, "char_start_times_ms"

    .line 101
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    const-string v2, "char_durations_ms"

    .line 102
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 104
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 110
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_1
    add-long/2addr v2, v0

    const/16 p0, 0x28

    int-to-long p0, p0

    add-long/2addr v2, p0

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method private final getTimer()Ltech/rabbit/r1launcher/utils/TimerUtil;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->timer$delegate:Lkotlin/Lazy;

    .line 45
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/utils/TimerUtil;

    return-object p0
.end method

.method private final playAndShowTTS()V
    .locals 4

    sget-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->ttsPendingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->getTimer()Ltech/rabbit/r1launcher/utils/TimerUtil;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/utils/TimerUtil;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    .line 77
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 78
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    const-string v0, "byte"

    .line 79
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [B

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, [B

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 81
    sget-object v1, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "audioMuted"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    sget-object v1, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->player:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    .line 83
    invoke-virtual {v1, v0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->play([B)V

    :cond_3
    const-string v0, "text"

    .line 85
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :cond_4
    if-eqz v2, :cond_6

    .line 87
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->getState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "textMuted"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 88
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0, v2}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendTTSShow(Ljava/lang/String;)V

    :cond_5
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer;

    .line 90
    invoke-direct {p0}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->getTimer()Ltech/rabbit/r1launcher/utils/TimerUtil;

    move-result-object v0

    invoke-direct {p0, v2}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->getDuration(Ljava/lang/String;)J

    move-result-wide v1

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$playAndShowTTS$3$1;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer$playAndShowTTS$3$1;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2, p0}, Ltech/rabbit/r1launcher/utils/TimerUtil;->startTimerTask(JLkotlin/jvm/functions/Function1;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static final player$lambda$2$lambda$0()V
    .locals 1

    .line 51
    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendTTSFinish()V

    return-void
.end method

.method private static final player$lambda$2$lambda$1(Z)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer;

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 55
    invoke-direct {p0, v0, v1}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->startGradualVolumeChange(D)V

    goto :goto_0

    :cond_0
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer;

    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 57
    invoke-direct {p0, v0, v1}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->startGradualVolumeChange(D)V

    :goto_0
    return-void
.end method

.method private final startGradualVolumeChange(D)V
    .locals 12

    .line 129
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getInstance()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getAudioTrack()Lorg/webrtc/AudioTrack;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->volJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-static {p0, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 132
    :cond_0
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getInstance()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getCurrentVolume()Ljava/lang/Double;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double p0, v0, p1

    if-lez p0, :cond_1

    .line 134
    invoke-virtual {v5, p1, p2}, Lorg/webrtc/AudioTrack;->setVolume(D)V

    .line 135
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getInstance()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->setCurrentVolume(D)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double p0, v0, p1

    if-gez p0, :cond_2

    const/16 v1, 0xa

    .line 139
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double/2addr p1, v3

    int-to-double v3, v1

    div-double v3, p1, v3

    .line 141
    sget-object p0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance p1, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;-><init>(ILjava/lang/Double;DLorg/webrtc/AudioTrack;Lkotlin/coroutines/Continuation;)V

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    sput-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->volJob:Lkotlinx/coroutines/Job;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final play([BLjava/lang/String;)V
    .locals 2

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "text"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "allMuted"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "byte"

    .line 64
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 65
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->ttsPendingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer;

    .line 68
    invoke-direct {p0}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->playAndShowTTS()V

    .line 69
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "catched Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KotUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 1

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->player:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    .line 121
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendTTSFinish()V

    .line 123
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->stop()V

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->ttsPendingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    return-void
.end method
