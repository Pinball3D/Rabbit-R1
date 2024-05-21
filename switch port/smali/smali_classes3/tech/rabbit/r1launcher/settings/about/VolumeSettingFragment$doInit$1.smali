.class final Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$doInit$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VolumeSettingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->doInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$doInit$1;->this$0:Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$doInit$1;->invoke(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$doInit$1;->this$0:Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;

    .line 52
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type tech.rabbit.r1launcher.settings.volume.VolumeListActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;->finish()V

    return-void
.end method
