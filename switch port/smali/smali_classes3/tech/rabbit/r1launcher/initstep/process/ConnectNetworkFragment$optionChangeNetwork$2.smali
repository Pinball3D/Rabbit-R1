.class final Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionChangeNetwork$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ConnectNetworkFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Pair<",
        "+",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionChangeNetwork$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionChangeNetwork$2;->invoke()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionChangeNetwork$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Ltech/rabbit/r1launcher/R$string;->text_init_step_connect_network_option_name_change_network:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/model/Wifi;-><init>(Ljava/lang/String;)V

    sget p0, Ltech/rabbit/r1launcher/R$drawable;->ic_wifi_signal_level_3:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
