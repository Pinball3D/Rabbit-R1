.class public final Ltech/rabbit/r1launcher/wss/WebSocketValve$ValueWorker;
.super Landroidx/work/Worker;
.source "WebSocketValve.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/wss/WebSocketValve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValueWorker"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/wss/WebSocketValve$ValueWorker;",
        "Landroidx/work/Worker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 1

    const-string p0, "WebSocketValve"

    const-string v0, "onScreenOff: disconnected the websocket"

    .line 58
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->disconnect()V

    .line 62
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->clearAllTask()V

    .line 63
    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/camera/CameraManager;->close()V

    .line 64
    sget-object p0, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Ltech/rabbit/r1launcher/utils/CameraController;->isNeedRotate(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 65
    sget-object p0, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateToPrivacy()V

    .line 67
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    const-string v0, "success(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
