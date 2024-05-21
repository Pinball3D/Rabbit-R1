.class public final synthetic Lcom/google/common/collect/Iterators$MergingIterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Iterators$MergingIterator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Iterators$MergingIterator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Comparator;

    check-cast p1, Lcom/google/common/collect/PeekingIterator;

    check-cast p2, Lcom/google/common/collect/PeekingIterator;

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Iterators$MergingIterator;->lambda$new$0(Ljava/util/Comparator;Lcom/google/common/collect/PeekingIterator;Lcom/google/common/collect/PeekingIterator;)I

    move-result p0

    return p0
.end method
