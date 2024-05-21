.class final Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyDown$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KeyEventHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z
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

    iput p1, p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyDown$1;->$keyCode:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyDown$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 28
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Success"

    .line 29
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyDown: Success"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyDown$1;->$keyCode:I

    const/16 p1, 0x1a

    if-eq p0, p1, :cond_0

    const/16 p1, 0x18

    if-ne p0, p1, :cond_2

    .line 31
    :cond_0
    sget-object p0, Ltech/rabbit/r1launcher/constant/EventInterceptor;->INSTANCE:Ltech/rabbit/r1launcher/constant/EventInterceptor;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/constant/EventInterceptor;->getNeedIntercept()Z

    move-result p0

    if-nez p0, :cond_2

    .line 32
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->startRecording()V

    goto :goto_0

    :cond_1
    const-string p0, "Failure"

    .line 35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->access$getTAG$p()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyDown: Failure"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
