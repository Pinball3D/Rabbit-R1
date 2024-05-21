.class Lcom/google/common/util/concurrent/Striped$CompactStriped;
.super Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompactStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILcom/google/common/base/Supplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/Supplier<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 368
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;-><init>(I)V

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-string v0, "Stripes must be <= 2^30)"

    .line 369
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 371
    iget p1, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->mask:I

    add-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    .line 372
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 373
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/Striped$1;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Striped$CompactStriped;-><init>(ILcom/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    .line 380
    aget-object p0, p0, p1

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    .line 385
    array-length p0, p0

    return p0
.end method
