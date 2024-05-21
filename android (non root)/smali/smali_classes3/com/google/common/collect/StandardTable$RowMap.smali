.class Lcom/google/common/collect/StandardTable$RowMap;
.super Lcom/google/common/collect/Maps$ViewCachingAbstractMap;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RowMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/StandardTable$RowMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ViewCachingAbstractMap<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    .line 796
    invoke-direct {p0}, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    .line 799
    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable;->containsRow(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation

    .line 819
    new-instance v0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;-><init>(Lcom/google/common/collect/StandardTable$RowMap;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 795
    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$RowMap;->get(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    .line 808
    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 795
    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$RowMap;->remove(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    .line 814
    iget-object p0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    :goto_0
    return-object p0
.end method
