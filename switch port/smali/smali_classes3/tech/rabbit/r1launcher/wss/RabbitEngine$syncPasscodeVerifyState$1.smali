.class final Ltech/rabbit/r1launcher/wss/RabbitEngine$syncPasscodeVerifyState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RabbitEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/wss/RabbitEngine;->syncPasscodeVerifyState(Ljava/lang/String;Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;)V
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
.field final synthetic $moduleName:Ljava/lang/String;

.field final synthetic $state:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;


# direct methods
.method constructor <init>(Ljava/lang/String;Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$syncPasscodeVerifyState$1;->$moduleName:Ljava/lang/String;

    iput-object p2, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$syncPasscodeVerifyState$1;->$state:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 525
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine$syncPasscodeVerifyState$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    .line 526
    invoke-static {}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->access$getFlutterService$p()LTaskOperationDistributor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "flutterService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    const-string v2, ""

    const-string v3, "PasscodeVerifyState"

    const-string v4, "state"

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "{\"module\":\""

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$syncPasscodeVerifyState$1;->$moduleName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\",\"state\":\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$syncPasscodeVerifyState$1;->$state:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "getDefault(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "toLowerCase(...)"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\"}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 526
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$syncPasscodeVerifyState$1$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$syncPasscodeVerifyState$1$1;

    move-object v6, p0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v1 .. v6}, LTaskOperationDistributor;->syncState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
