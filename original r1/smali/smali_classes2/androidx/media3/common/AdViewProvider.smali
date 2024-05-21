.class public interface abstract Landroidx/media3/common/AdViewProvider;
.super Ljava/lang/Object;
.source "AdViewProvider.java"


# virtual methods
.method public getAdOverlayInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/AdOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public abstract getAdViewGroup()Landroid/view/ViewGroup;
.end method
