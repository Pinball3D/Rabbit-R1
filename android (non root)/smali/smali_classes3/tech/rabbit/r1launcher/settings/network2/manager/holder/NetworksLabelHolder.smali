.class public final Ltech/rabbit/r1launcher/settings/network2/manager/holder/NetworksLabelHolder;
.super Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;
.source "NetworksLabelHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/manager/holder/NetworksLabelHolder;",
        "Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;",
        "binding",
        "Ltech/rabbit/r1launcher/databinding/ItemNetworksLabelBinding;",
        "(Ltech/rabbit/r1launcher/databinding/ItemNetworksLabelBinding;)V",
        "onBind",
        "",
        "item",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final binding:Ltech/rabbit/r1launcher/databinding/ItemNetworksLabelBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ltech/rabbit/r1launcher/databinding/ItemNetworksLabelBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    move-object v0, p1

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/NetworksLabelHolder;->binding:Ltech/rabbit/r1launcher/databinding/ItemNetworksLabelBinding;

    .line 11
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/ItemNetworksLabelBinding;->slLoading:Ltech/rabbit/r1launcher/widget/SettingLoading;

    .line 12
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/NetworksLabelHolder;->requireContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Ltech/rabbit/r1launcher/R$color;->dark_414141:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 11
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public onBind(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)V
    .locals 0

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
