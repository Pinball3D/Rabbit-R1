.class public final Ltech/rabbit/r1launcher/utils/CameraController;
.super Ljava/lang/Object;
.source "CameraController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\u000cJ\u0006\u0010\u0012\u001a\u00020\u000cJ\u0006\u0010\u0013\u001a\u00020\u000cJ\u000e\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/utils/CameraController;",
        "",
        "()V",
        "ROTATION_THRESHOLD",
        "",
        "lastRotateTM",
        "needRotateDelay",
        "",
        "isNeedRotate",
        "isPrivacy",
        "isForce",
        "rotateCamera",
        "",
        "angle",
        "",
        "rotateTo",
        "",
        "rotateToBack",
        "rotateToFront",
        "rotateToPrivacy",
        "rotateWithName",
        "name",
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

.field public static final INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

.field private static final ROTATION_THRESHOLD:J = 0x5dcL

.field private static lastRotateTM:J

.field private static volatile needRotateDelay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/utils/CameraController;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/utils/CameraController;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/utils/CameraController;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNeedRotateDelay$p()Z
    .locals 1

    sget-boolean v0, Ltech/rabbit/r1launcher/utils/CameraController;->needRotateDelay:Z

    return v0
.end method

.method public static final synthetic access$setNeedRotateDelay$p(Z)V
    .locals 0

    sput-boolean p0, Ltech/rabbit/r1launcher/utils/CameraController;->needRotateDelay:Z

    return-void
.end method

.method private final rotateTo(Ljava/lang/String;)V
    .locals 1

    .line 66
    new-instance p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v0, p0, p1, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final isNeedRotate(ZZ)Z
    .locals 6

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ltech/rabbit/r1launcher/utils/CameraController;->lastRotateTM:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long p0, v2, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    sput-boolean v3, Ltech/rabbit/r1launcher/utils/CameraController;->needRotateDelay:Z

    :cond_1
    if-eqz p2, :cond_2

    sput-wide v0, Ltech/rabbit/r1launcher/utils/CameraController;->lastRotateTM:J

    return v3

    :cond_2
    if-eqz p0, :cond_3

    sput-wide v0, Ltech/rabbit/r1launcher/utils/CameraController;->lastRotateTM:J

    return v3

    :cond_3
    return v2
.end method

.method public final rotateCamera(I)V
    .locals 0

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateTo(Ljava/lang/String;)V

    return-void
.end method

.method public final rotateToBack()V
    .locals 1

    const-string v0, "180"

    .line 41
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateTo(Ljava/lang/String;)V

    return-void
.end method

.method public final rotateToFront()V
    .locals 1

    const-string v0, "0"

    .line 37
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateTo(Ljava/lang/String;)V

    return-void
.end method

.method public final rotateToPrivacy()V
    .locals 1

    const-string v0, "90"

    .line 45
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateTo(Ljava/lang/String;)V

    return-void
.end method

.method public final rotateWithName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "front"

    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateToFront()V

    goto :goto_0

    :cond_0
    const-string v0, "back"

    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateToBack()V

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateToPrivacy()V

    :goto_0
    return-void
.end method
