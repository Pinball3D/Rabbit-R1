.class final Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TimerUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/utils/TimerUtil;->startTimerTask(JLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $millis:J

.field final synthetic this$0:Ltech/rabbit/r1launcher/utils/TimerUtil;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/utils/TimerUtil;JLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/rabbit/r1launcher/utils/TimerUtil;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;->this$0:Ltech/rabbit/r1launcher/utils/TimerUtil;

    iput-wide p2, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;->$millis:J

    iput-object p4, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;->this$0:Ltech/rabbit/r1launcher/utils/TimerUtil;

    .line 15
    new-instance v1, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1$1;

    iget-wide v2, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;->$millis:J

    iget-object v4, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;->this$0:Ltech/rabbit/r1launcher/utils/TimerUtil;

    iget-object v5, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v2, v3, v4, v5}, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1$1;-><init>(JLtech/rabbit/r1launcher/utils/TimerUtil;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroid/os/CountDownTimer;

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/utils/TimerUtil;->access$setTimer$p(Ltech/rabbit/r1launcher/utils/TimerUtil;Landroid/os/CountDownTimer;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;->this$0:Ltech/rabbit/r1launcher/utils/TimerUtil;

    .line 23
    invoke-static {p0}, Ltech/rabbit/r1launcher/utils/TimerUtil;->access$getTimer$p(Ltech/rabbit/r1launcher/utils/TimerUtil;)Landroid/os/CountDownTimer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
