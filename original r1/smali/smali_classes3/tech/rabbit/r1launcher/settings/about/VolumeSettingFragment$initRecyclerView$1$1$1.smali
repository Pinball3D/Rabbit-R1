.class final Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$initRecyclerView$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VolumeSettingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "str",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$initRecyclerView$1$1$1;->this$0:Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$initRecyclerView$1$1$1;->invoke(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$initRecyclerView$1$1$1;->this$0:Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;

    .line 71
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->access$onRecyclerViewConfirmKeyUp(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;Ljava/lang/String;)V

    return-void
.end method
