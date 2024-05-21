.class final LTaskOperationDistributor$Companion$codec$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Device.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LTaskOperationDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/flutter/plugin/common/StandardMessageCodec;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/flutter/plugin/common/StandardMessageCodec;",
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
.field public static final INSTANCE:LTaskOperationDistributor$Companion$codec$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LTaskOperationDistributor$Companion$codec$2;

    invoke-direct {v0}, LTaskOperationDistributor$Companion$codec$2;-><init>()V

    sput-object v0, LTaskOperationDistributor$Companion$codec$2;->INSTANCE:LTaskOperationDistributor$Companion$codec$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/flutter/plugin/common/StandardMessageCodec;
    .locals 0

    .line 350
    new-instance p0, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 349
    invoke-virtual {p0}, LTaskOperationDistributor$Companion$codec$2;->invoke()Lio/flutter/plugin/common/StandardMessageCodec;

    move-result-object p0

    return-object p0
.end method
