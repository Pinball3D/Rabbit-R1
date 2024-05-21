.class final Ltech/rabbit/common/utils/RLog$pid$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RLog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/common/utils/RLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Integer;"
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
.field public static final INSTANCE:Ltech/rabbit/common/utils/RLog$pid$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/common/utils/RLog$pid$2;

    invoke-direct {v0}, Ltech/rabbit/common/utils/RLog$pid$2;-><init>()V

    sput-object v0, Ltech/rabbit/common/utils/RLog$pid$2;->INSTANCE:Ltech/rabbit/common/utils/RLog$pid$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 0

    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0}, Ltech/rabbit/common/utils/RLog$pid$2;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
