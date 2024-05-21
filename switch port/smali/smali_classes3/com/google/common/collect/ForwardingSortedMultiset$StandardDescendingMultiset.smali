.class public abstract Lcom/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;
.super Lcom/google/common/collect/DescendingMultiset;
.source "ForwardingSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "StandardDescendingMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DescendingMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingSortedMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingSortedMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;->this$0:Lcom/google/common/collect/ForwardingSortedMultiset;

    .line 107
    invoke-direct {p0}, Lcom/google/common/collect/DescendingMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method forwardMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;->this$0:Lcom/google/common/collect/ForwardingSortedMultiset;

    return-object p0
.end method
