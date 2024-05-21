.class final Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;
.super Lcom/google/common/collect/ComparisonChain;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InactiveComparisonChain"
.end annotation


# instance fields
.field final result:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, v0}, Lcom/google/common/collect/ComparisonChain;-><init>(Lcom/google/common/collect/ComparisonChain$1;)V

    iput p1, p0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;->result:I

    return-void
.end method


# virtual methods
.method public compare(DD)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compare(FF)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compare(II)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compare(JJ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)",
            "Lcom/google/common/collect/ComparisonChain;"
        }
    .end annotation

    return-object p0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/ComparisonChain;"
        }
    .end annotation

    return-object p0
.end method

.method public compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public result()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;->result:I

    return p0
.end method
