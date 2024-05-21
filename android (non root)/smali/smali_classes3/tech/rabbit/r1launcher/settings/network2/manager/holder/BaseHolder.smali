.class public abstract Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "BaseHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0006H&J\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "binding",
        "Landroidx/viewbinding/ViewBinding;",
        "(Landroidx/viewbinding/ViewBinding;)V",
        "model",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
        "onAttachedToWindow",
        "",
        "onBind",
        "item",
        "onDetachedFromWindow",
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
.field private model:Ltech/rabbit/r1launcher/settings/network2/WifiWrap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/viewbinding/ViewBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "getRoot(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public abstract onBind(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)V
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final requireModel()Ltech/rabbit/r1launcher/settings/network2/WifiWrap;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;->model:Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setModelToHolder(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;->model:Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    return-void
.end method
