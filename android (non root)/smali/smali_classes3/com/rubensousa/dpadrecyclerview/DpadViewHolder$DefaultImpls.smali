.class public final Lcom/rubensousa/dpadrecyclerview/DpadViewHolder$DefaultImpls;
.super Ljava/lang/Object;
.source "DpadViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getSubPositionAlignments(Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    const-string v0, "emptyList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static onViewHolderDeselected(Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;)V
    .locals 0

    return-void
.end method

.method public static onViewHolderSelected(Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;)V
    .locals 0

    return-void
.end method

.method public static onViewHolderSelectedAndAligned(Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;)V
    .locals 0

    return-void
.end method
