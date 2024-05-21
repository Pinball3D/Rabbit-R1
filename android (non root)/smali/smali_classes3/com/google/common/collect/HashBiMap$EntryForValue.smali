.class final Lcom/google/common/collect/HashBiMap$EntryForValue;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryForValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final biMap:Lcom/google/common/collect/HashBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field index:I

.field final value:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1089
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lcom/google/common/collect/HashBiMap;

    .line 1092
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    return-void
.end method

.method private updateIndex()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lcom/google/common/collect/HashBiMap;

    .line 1097
    iget v1, v1, Lcom/google/common/collect/HashBiMap;->size:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lcom/google/common/collect/HashBiMap;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    .line 1098
    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1111
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$EntryForValue;->updateIndex()V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1113
    invoke-static {}, Lcom/google/common/collect/NullnessCasts;->unsafeNull()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lcom/google/common/collect/HashBiMap;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1119
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$EntryForValue;->updateIndex()V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lcom/google/common/collect/HashBiMap;

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    .line 1121
    invoke-virtual {v0, p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 1122
    invoke-static {}, Lcom/google/common/collect/NullnessCasts;->unsafeNull()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lcom/google/common/collect/HashBiMap;

    .line 1124
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1125
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lcom/google/common/collect/HashBiMap;

    iget p0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    .line 1128
    invoke-static {v1, p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->access$400(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V

    return-object v0
.end method
