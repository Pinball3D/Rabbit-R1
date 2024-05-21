.class final Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PowerOffFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "keyCode",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment$onViewCreated$1;->this$0:Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment$onViewCreated$1;->invoke(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment$onViewCreated$1;->this$0:Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment;

    .line 34
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    instance-of p1, p0, Ltech/rabbit/r1launcher/settings/power_off/PowerOffActivity;

    if-eqz p1, :cond_1

    check-cast p0, Ltech/rabbit/r1launcher/settings/power_off/PowerOffActivity;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/power_off/PowerOffActivity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method
