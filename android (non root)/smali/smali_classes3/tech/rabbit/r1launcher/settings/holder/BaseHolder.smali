.class public abstract Ltech/rabbit/r1launcher/settings/holder/BaseHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "BaseHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006H&J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "model",
        "Ltech/rabbit/r1launcher/settings/SettingItems;",
        "onBind",
        "",
        "item",
        "requireContext",
        "Landroid/content/Context;",
        "requireModel",
        "setModelToHolder",
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
.field private model:Ltech/rabbit/r1launcher/settings/SettingItems;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract onBind(Ltech/rabbit/r1launcher/settings/SettingItems;)V
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/holder/BaseHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final requireModel()Ltech/rabbit/r1launcher/settings/SettingItems;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/holder/BaseHolder;->model:Ltech/rabbit/r1launcher/settings/SettingItems;

    .line 18
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setModelToHolder(Ltech/rabbit/r1launcher/settings/SettingItems;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/holder/BaseHolder;->model:Ltech/rabbit/r1launcher/settings/SettingItems;

    return-void
.end method
