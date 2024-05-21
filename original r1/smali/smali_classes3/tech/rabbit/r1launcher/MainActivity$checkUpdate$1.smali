.class final Ltech/rabbit/r1launcher/MainActivity$checkUpdate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/MainActivity;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "config",
        "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/MainActivity;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/MainActivity$checkUpdate$1;->this$0:Ltech/rabbit/r1launcher/MainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 542
    check-cast p1, Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/MainActivity$checkUpdate$1;->invoke(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/MainActivity$checkUpdate$1;->this$0:Ltech/rabbit/r1launcher/MainActivity;

    .line 544
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/MainActivity;->access$startUpdateActivity(Ltech/rabbit/r1launcher/MainActivity;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    :cond_0
    return-void
.end method
