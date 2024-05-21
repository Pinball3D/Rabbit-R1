.class final Ltech/rabbit/r1launcher/utils/HardWareHelperKt$batteryManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HardWareHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/utils/HardWareHelperKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/os/BatteryManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/os/BatteryManager;",
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
.field public static final INSTANCE:Ltech/rabbit/r1launcher/utils/HardWareHelperKt$batteryManager$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/utils/HardWareHelperKt$batteryManager$2;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/utils/HardWareHelperKt$batteryManager$2;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/utils/HardWareHelperKt$batteryManager$2;->INSTANCE:Ltech/rabbit/r1launcher/utils/HardWareHelperKt$batteryManager$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/BatteryManager;
    .locals 1

    .line 10
    sget-object p0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {p0}, LAppConfig;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.os.BatteryManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/BatteryManager;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/utils/HardWareHelperKt$batteryManager$2;->invoke()Landroid/os/BatteryManager;

    move-result-object p0

    return-object p0
.end method
