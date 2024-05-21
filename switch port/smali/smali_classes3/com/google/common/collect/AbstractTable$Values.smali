.class Lcom/google/common/collect/AbstractTable$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractTable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    .line 196
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    .line 209
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    .line 204
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractTable;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->valuesIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    .line 214
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->size()I

    move-result p0

    return p0
.end method
