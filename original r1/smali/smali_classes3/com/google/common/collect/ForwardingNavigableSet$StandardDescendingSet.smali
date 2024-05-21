.class public Lcom/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;
.super Lcom/google/common/collect/Sets$DescendingSet;
.source "ForwardingNavigableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingNavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardDescendingSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$DescendingSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingNavigableSet;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$DescendingSet;-><init>(Ljava/util/NavigableSet;)V

    return-void
.end method
