.class final Ltech/rabbit/r1launcher/settings/network2/manager/DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "NetworksAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u001a\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/manager/DiffCallback;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
        "()V",
        "areContentsTheSame",
        "",
        "oldItem",
        "newItem",
        "areItemsTheSame",
        "getChangePayload",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 56
    check-cast p1, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    check-cast p2, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/DiffCallback;->areContentsTheSame(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)Z

    move-result p0

    return p0
.end method

.method public areContentsTheSame(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)Z
    .locals 2

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isCurrentConnected()Z

    move-result p0

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isCurrentConnected()Z

    move-result v0

    if-ne p0, v0, :cond_4

    .line 67
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isNoUsedWifi()Z

    move-result p0

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isNoUsedWifi()Z

    move-result v0

    if-ne p0, v0, :cond_4

    .line 68
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 69
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getDpmWifiSecurity()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v0

    :goto_2
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getDpmWifiSecurity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 56
    check-cast p1, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    check-cast p2, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/DiffCallback;->areItemsTheSame(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getViewType()I

    move-result p0

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getViewType()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    check-cast p2, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/DiffCallback;->getChangePayload(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getChangePayload(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)Ljava/lang/Object;
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
