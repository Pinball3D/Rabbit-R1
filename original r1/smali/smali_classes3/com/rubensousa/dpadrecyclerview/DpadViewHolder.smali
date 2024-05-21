.class public interface abstract Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;
.super Ljava/lang/Object;
.source "DpadViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/DpadViewHolder$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;",
        "",
        "getSubPositionAlignments",
        "",
        "Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;",
        "onViewHolderDeselected",
        "",
        "onViewHolderSelected",
        "onViewHolderSelectedAndAligned",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getSubPositionAlignments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onViewHolderDeselected()V
.end method

.method public abstract onViewHolderSelected()V
.end method

.method public abstract onViewHolderSelectedAndAligned()V
.end method
