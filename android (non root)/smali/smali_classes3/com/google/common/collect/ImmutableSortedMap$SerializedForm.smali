.class Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;
.super Lcom/google/common/collect/ImmutableMap$SerializedForm;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$SerializedForm<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1125
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 1126
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method bridge synthetic makeBuilder(I)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 1121
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;->makeBuilder(I)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p0

    return-object p0
.end method

.method makeBuilder(I)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1131
    new-instance p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {p1, p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object p1
.end method
