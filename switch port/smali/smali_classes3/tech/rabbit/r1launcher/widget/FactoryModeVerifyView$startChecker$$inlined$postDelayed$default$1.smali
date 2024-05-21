.class public final Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$startChecker$$inlined$postDelayed$default$1;
.super Ljava/lang/Object;
.source "Handler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->startChecker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Handler.kt\nandroidx/core/os/HandlerKt$postDelayed$runnable$1\n+ 2 FactoryModeVerifyView.kt\ntech/rabbit/r1launcher/widget/FactoryModeVerifyView\n*L\n1#1,69:1\n91#2,3:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/os/HandlerKt$postDelayed$runnable$1"
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;


# direct methods
.method public constructor <init>(Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$startChecker$$inlined$postDelayed$default$1;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$startChecker$$inlined$postDelayed$default$1;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    .line 70
    invoke-static {v0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getClickedLocations$p(Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$startChecker$$inlined$postDelayed$default$1;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    .line 71
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->startChecker()V

    return-void
.end method
