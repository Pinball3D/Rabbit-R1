.class final Ltech/rabbit/r1launcher/wss/RabbitEngine$sendProductSelection$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RabbitEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendProductSelection([Ltech/rabbit/r1launcher/models/RideProduct;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
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
.field final synthetic $rideProducts:[Ltech/rabbit/r1launcher/models/RideProduct;


# direct methods
.method constructor <init>([Ltech/rabbit/r1launcher/models/RideProduct;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendProductSelection$1;->$rideProducts:[Ltech/rabbit/r1launcher/models/RideProduct;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 207
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendProductSelection$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    .line 208
    invoke-static {}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->access$getFlutterService$p()LTaskOperationDistributor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "flutterService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    const-string v2, "RideOrderTask"

    const-string v3, "RideOrderTask"

    const-string v4, ""

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendProductSelection$1;->$rideProducts:[Ltech/rabbit/r1launcher/models/RideProduct;

    .line 210
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "toJSONString(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    new-instance v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendProductSelection$1$1;

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendProductSelection$1;->$rideProducts:[Ltech/rabbit/r1launcher/models/RideProduct;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendProductSelection$1$1;-><init>([Ltech/rabbit/r1launcher/models/RideProduct;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v1 .. v6}, LTaskOperationDistributor;->onTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
