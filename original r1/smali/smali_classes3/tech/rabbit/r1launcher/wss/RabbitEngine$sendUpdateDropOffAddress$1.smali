.class final Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RabbitEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendUpdateDropOffAddress(Ljava/lang/String;)V
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
.field final synthetic $address:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1;->$address:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 408
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 9

    .line 409
    invoke-static {}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->access$getFlutterService$p()LTaskOperationDistributor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "flutterService"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const-string v4, "DropOffAddressTask"

    const-string v5, "DropOffAddressTask"

    const-string v6, "address"

    iget-object v7, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1;->$address:Ljava/lang/String;

    new-instance v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1$1;

    iget-object v8, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1;->$address:Ljava/lang/String;

    invoke-direct {v0, v8}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1$1;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v3 .. v8}, LTaskOperationDistributor;->syncState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 414
    invoke-static {}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->access$getFlutterService$p()LTaskOperationDistributor;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    const-string v4, "DropOff"

    const-string v5, "DropOffAddress"

    const-string v6, "update"

    iget-object v7, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1;->$address:Ljava/lang/String;

    new-instance v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1$2;

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1;->$address:Ljava/lang/String;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1$2;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v3 .. v8}, LTaskOperationDistributor;->syncState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
