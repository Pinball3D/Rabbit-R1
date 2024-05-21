.class public final Ltech/rabbit/r1launcher/wss/WebSocketValve;
.super Ljava/lang/Object;
.source "WebSocketValve.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/wss/WebSocketValve$ValueWorker;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/wss/WebSocketValve;",
        "",
        "()V",
        "MUSIC_PLAYBACK_TIMEOUT",
        "",
        "TAG",
        "",
        "TIMEOUT_TIME",
        "WORKER_TAG",
        "onScreenOff",
        "",
        "context",
        "Landroid/content/Context;",
        "onScreenOn",
        "ValueWorker",
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
.field public static final $stable:I = 0x0

.field public static final INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketValve;

.field private static final MUSIC_PLAYBACK_TIMEOUT:J = 0xf0L

.field private static final TAG:Ljava/lang/String; = "WebSocketValve"

.field private static final TIMEOUT_TIME:J = 0x2L

.field private static final WORKER_TAG:Ljava/lang/String; = "WebSocketValve"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/wss/WebSocketValve;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/wss/WebSocketValve;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/wss/WebSocketValve;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketValve;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenOff(Landroid/content/Context;)V
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0xf0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2

    .line 37
    :goto_0
    new-instance p0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Ltech/rabbit/r1launcher/wss/WebSocketValve$ValueWorker;

    invoke-direct {p0, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 38
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    const-string v1, "ofMinutes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(Ljava/time/Duration;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-string v0, "WebSocketValve"

    .line 39
    invoke-virtual {p0, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 40
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    .line 41
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    check-cast p0, Landroidx/work/WorkRequest;

    invoke-virtual {p1, p0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public final onScreenOn(Landroid/content/Context;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onScreenOn: connect the websocket"

    const-string v0, "WebSocketValve"

    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 50
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_0
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->connect()V

    return-void
.end method
