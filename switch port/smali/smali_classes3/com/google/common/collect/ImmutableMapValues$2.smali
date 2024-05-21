.class Lcom/google/common/collect/ImmutableMapValues$2;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMapValues;->asList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$entryList:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMapValues;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMapValues$2;->val$entryList:Lcom/google/common/collect/ImmutableList;

    .line 75
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapValues$2;->val$entryList:Lcom/google/common/collect/ImmutableList;

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapValues$2;->val$entryList:Lcom/google/common/collect/ImmutableList;

    .line 88
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    return p0
.end method
