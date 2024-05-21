.class public final Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1$1;
.super Landroid/os/CountDownTimer;
.source "TimerUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1;->invoke()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "tech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1$1",
        "Landroid/os/CountDownTimer;",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
        "",
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

.field final synthetic this$0:Ltech/rabbit/r1launcher/utils/TimerUtil;


# direct methods
.method constructor <init>(JLtech/rabbit/r1launcher/utils/TimerUtil;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltech/rabbit/r1launcher/utils/TimerUtil;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1$1;->this$0:Ltech/rabbit/r1launcher/utils/TimerUtil;

    iput-object p4, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 15
    invoke-direct {p0, p1, p2, p1, p2}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1$1;->this$0:Ltech/rabbit/r1launcher/utils/TimerUtil;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/utils/TimerUtil;->setRunning(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/utils/TimerUtil$startTimerTask$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 20
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
