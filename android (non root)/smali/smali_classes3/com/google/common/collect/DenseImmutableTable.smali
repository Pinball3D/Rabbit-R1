.class final Lcom/google/common/collect/DenseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;
.source "DenseImmutableTable.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "R",
        "C",
        "V"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/DenseImmutableTable$ColumnMap;,
        Lcom/google/common/collect/DenseImmutableTable$RowMap;,
        Lcom/google/common/collect/DenseImmutableTable$Column;,
        Lcom/google/common/collect/DenseImmutableTable$Row;,
        Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private final cellColumnIndices:[I

.field private final cellRowIndices:[I

.field private final columnCounts:[I

.field private final columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final rowCounts:[I

.field private final rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rowMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final values:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TR;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable;-><init>()V

    .line 60
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 62
    invoke-static {p2}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 63
    invoke-static {p3}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 64
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/DenseImmutableTable;->rowCounts:[I

    .line 65
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I

    .line 66
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    new-array p2, p2, [I

    .line 67
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p3

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 68
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Table$Cell;

    .line 70
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    .line 71
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 73
    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 74
    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 75
    aget-object v6, v6, v4

    aget-object v6, v6, v5

    .line 76
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/google/common/collect/DenseImmutableTable;->checkNoDuplicate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 77
    aget-object v2, v2, v4

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v5

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->rowCounts:[I

    .line 78
    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I

    .line 79
    aget v2, v1, v5

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    .line 80
    aput v4, p2, v0

    .line 81
    aput v5, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    iput-object p3, p0, Lcom/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    .line 85
    new-instance p1, Lcom/google/common/collect/DenseImmutableTable$RowMap;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/common/collect/DenseImmutableTable$RowMap;-><init>(Lcom/google/common/collect/DenseImmutableTable;Lcom/google/common/collect/DenseImmutableTable$1;)V

    iput-object p1, p0, Lcom/google/common/collect/DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    .line 86
    new-instance p1, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;

    invoke-direct {p1, p0, p2}, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;-><init>(Lcom/google/common/collect/DenseImmutableTable;Lcom/google/common/collect/DenseImmutableTable$1;)V

    iput-object p1, p0, Lcom/google/common/collect/DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/DenseImmutableTable;)[I
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowCounts:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/common/collect/DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/common/collect/DenseImmutableTable;)[[Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/common/collect/DenseImmutableTable;)[I
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/common/collect/DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method


# virtual methods
.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    .line 247
    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method createSerializedForm()Lcom/google/common/collect/ImmutableTable$SerializedForm;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    .line 289
    invoke-static {p0, v0, v1}, Lcom/google/common/collect/ImmutableTable$SerializedForm;->create(Lcom/google/common/collect/ImmutableTable;[I[I)Lcom/google/common/collect/ImmutableTable$SerializedForm;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 260
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 261
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 262
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method getCell(I)Lcom/google/common/collect/Table$Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    .line 272
    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    .line 273
    aget p1, v1, p1

    .line 274
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 275
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 277
    aget-object p0, p0, v0

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 278
    invoke-static {v1, v2, p0}, Lcom/google/common/collect/DenseImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object p0

    return-object p0
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    .line 284
    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    aget p0, p0, p1

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    .line 254
    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    .line 267
    array-length p0, p0

    return p0
.end method
