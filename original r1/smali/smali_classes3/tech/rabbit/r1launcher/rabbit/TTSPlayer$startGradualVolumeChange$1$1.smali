.class final Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TTSPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->startGradualVolumeChange(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.rabbit.r1launcher.rabbit.TTSPlayer$startGradualVolumeChange$1$1"
    f = "TTSPlayer.kt"
    i = {
        0x0
    }
    l = {
        0x93
    }
    m = "invokeSuspend"
    n = {
        "step"
    }
    s = {
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $currentVolume:Ljava/lang/Double;

.field final synthetic $it:Lorg/webrtc/AudioTrack;

.field final synthetic $totalSteps:I

.field final synthetic $volumeIncrement:D

.field I$0:I

.field label:I


# direct methods
.method constructor <init>(ILjava/lang/Double;DLorg/webrtc/AudioTrack;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Double;",
            "D",
            "Lorg/webrtc/AudioTrack;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$totalSteps:I

    iput-object p2, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$currentVolume:Ljava/lang/Double;

    iput-wide p3, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$volumeIncrement:D

    iput-object p5, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$it:Lorg/webrtc/AudioTrack;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;

    iget v1, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$totalSteps:I

    iget-object v2, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$currentVolume:Ljava/lang/Double;

    iget-wide v3, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$volumeIncrement:D

    iget-object v5, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$it:Lorg/webrtc/AudioTrack;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;-><init>(ILjava/lang/Double;DLorg/webrtc/AudioTrack;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->I$0:I

    .line 141
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$totalSteps:I

    if-gt v2, p1, :cond_3

    move v1, v2

    .line 143
    :goto_0
    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$currentVolume:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    int-to-double v5, v1

    iget-wide v7, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$volumeIncrement:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 144
    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$it:Lorg/webrtc/AudioTrack;

    invoke-virtual {p1, v3, v4}, Lorg/webrtc/AudioTrack;->setVolume(D)V

    .line 145
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getInstance()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->setCurrentVolume(D)V

    .line 147
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v1, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->I$0:I

    iput v2, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->label:I

    const-wide/16 v3, 0x96

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 142
    :cond_2
    :goto_1
    iget p1, p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer$startGradualVolumeChange$1$1;->$totalSteps:I

    if-eq v1, p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
