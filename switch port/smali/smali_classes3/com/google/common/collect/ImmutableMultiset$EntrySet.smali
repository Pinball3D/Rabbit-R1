.class final Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/IndexedImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/IndexedImmutableSet<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    .line 328
    invoke-direct {p0}, Lcom/google/common/collect/IndexedImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Lcom/google/common/collect/ImmutableMultiset$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 346
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 347
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 348
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    .line 351
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result p0

    .line 352
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method get(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    .line 336
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset;->getEntry(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->get(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    .line 359
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->hashCode()I

    move-result p0

    return p0
.end method

.method isPartialView()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    .line 331
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    .line 341
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result p0

    return p0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 365
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-object v0
.end method
