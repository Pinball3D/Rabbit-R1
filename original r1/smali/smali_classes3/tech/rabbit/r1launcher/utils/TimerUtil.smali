.class public final Ltech/rabbit/r1launcher/utils/TimerUtil;
.super Ljava/lang/Object;
.source "TimerUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0018\u0010\u000e\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0010\u0012\u0004\u0012\u00020\u000b0\u000fJ\u0006\u0010\u0011\u001a\u00020\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/utils/TimerUtil;",
        "",
        "()V",
        "isRunning",
        "",
        "()Z",
        "setRunning",
        "(Z)V",
        "timer",
        "Landroid/os/CountDownTimer;",
        "startTimerTask",
        "",
        "millis",
        "",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/Result;",
        "stopTimerTask",
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
.field public static final $stable:I = 0x8


# instance fields
.field private volatile isRunning:Z

.field private timer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTimer$p(Ltech/rabbit/r1launcher/utils/TimerUtil;)Landroid/os/CountDownTimer;
    .locals 0

    .line 6
    iget-object p0, p0, Ltech/rabbit/r1launcher/utils/TimerUtil;->timer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static final synthetic access$setTimer$p(Ltech/rabbit/r1launcher/utils/TimerUtil;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 6
    iput-object p1, p0, Ltech/rabbit/r1launcher/utils/TimerUtil;->timer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public final isRunning()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/utils/TimerUtil;->isRunning:Z

    return p0
.end method

.method public final setRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/utils/TimerUtil;->isRunning:Z

    return-void
.end method

.method public final startTimerTask(JLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/utils/TimerUtil;->stopTimerTask()V

    .line 14
    new-instance v0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;

    invoke-direct {v0, p0, p1, p2, p3}, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;-><init>(Ltech/rabbit/r1launcher/utils/TimerUtil;JLkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/utils/TimerUtil;->isRunning:Z

    return-void
.end method

.method public final stopTimerTask()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/utils/TimerUtil;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/utils/TimerUtil;->timer:Landroid/os/CountDownTimer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/utils/TimerUtil;->isRunning:Z

    return-void
.end method
