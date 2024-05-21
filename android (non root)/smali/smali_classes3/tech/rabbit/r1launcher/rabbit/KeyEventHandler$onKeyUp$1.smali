.class final Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyUp$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KeyEventHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lkotlin/Result;",
        "invoke",
        "(Ljava/lang/Object;)V"
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
.field final synthetic $keyCode:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyUp$1;->$keyCode:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyUp$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyUp$1;->$keyCode:I

    const/16 p1, 0x1a

    if-eq p0, p1, :cond_0

    const/16 p1, 0x18

    if-ne p0, p1, :cond_1

    .line 54
    :cond_0
    sget-object p0, Ltech/rabbit/r1launcher/constant/EventInterceptor;->INSTANCE:Ltech/rabbit/r1launcher/constant/EventInterceptor;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/constant/EventInterceptor;->getNeedIntercept()Z

    move-result p0

    if-nez p0, :cond_1

    .line 55
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->stopRecording()V

    :cond_1
    return-void
.end method
