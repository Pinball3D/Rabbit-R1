.class final Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$options$2;
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
        "Ljava/util/List<",
        "+",
        "Lkotlin/Pair<",
        "+",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
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

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$options$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$options$2;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$options$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    .line 75
    invoke-static {v1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->access$getOptionUseCellular(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$options$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    .line 76
    invoke-static {v1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->access$getOptionConnectToWifi(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$options$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    .line 77
    invoke-static {v1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->access$getOptionChangeNetwork(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$options$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    .line 78
    invoke-static {v1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->access$getOptionRetry(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$options$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    .line 79
    invoke-static {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->access$getOptionReEnter(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 74
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
