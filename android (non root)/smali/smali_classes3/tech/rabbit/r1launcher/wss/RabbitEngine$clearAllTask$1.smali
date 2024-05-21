.class final Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RabbitEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/wss/RabbitEngine;->clearAllTask()V
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


# static fields
.field public static final INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 554
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 555
    invoke-static {}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->access$getFlutterService$p()LTaskOperationDistributor;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "flutterService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, LTaskOperationDistributor;->clearAllTask(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
