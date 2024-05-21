.class final Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VerticalLinearTransformation"
.end annotation


# instance fields
.field inverse:Lcom/google/common/math/LinearTransformation;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final x:D


# direct methods
.method constructor <init>(D)V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    return-void
.end method

.method constructor <init>(DLcom/google/common/math/LinearTransformation;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    iput-object p3, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    return-void
.end method

.method private createInverse()Lcom/google/common/math/LinearTransformation;
    .locals 7

    .line 268
    new-instance v6, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DDLcom/google/common/math/LinearTransformation;)V

    return-object v6
.end method


# virtual methods
.method public inverse()Lcom/google/common/math/LinearTransformation;
    .locals 1

    iget-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    if-nez v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->createInverse()Lcom/google/common/math/LinearTransformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    :cond_0
    return-object v0
.end method

.method public isHorizontal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVertical()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public slope()D
    .locals 0

    .line 248
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    .line 264
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "x = %g"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(D)D
    .locals 0

    .line 253
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
