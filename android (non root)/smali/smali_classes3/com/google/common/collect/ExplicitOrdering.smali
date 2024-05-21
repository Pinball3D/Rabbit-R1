.class final Lcom/google/common/collect/ExplicitOrdering;
.super Lcom/google/common/collect/Ordering;
.source "ExplicitOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final rankMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrdering;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method private rank(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 46
    :cond_0
    new-instance p0, Lcom/google/common/collect/Ordering$IncomparableValueException;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Ordering$IncomparableValueException;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/google/common/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 53
    instance-of v0, p1, Lcom/google/common/collect/ExplicitOrdering;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/google/common/collect/ExplicitOrdering;

    iget-object p0, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    .line 55
    iget-object p1, p1, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    .line 62
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    .line 67
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Ordering.explicit("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
