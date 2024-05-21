.class public final Lcom/google/android/exoplayer2/util/FlagSet$Builder;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/FlagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private buildCalled:Z

.field private final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 56
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    .line 57
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-object p0
.end method

.method public addAll(Lcom/google/android/exoplayer2/util/FlagSet;)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 102
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addAll([I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .locals 3

    .line 86
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 87
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addIf(IZ)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .locals 0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/util/FlagSet;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 158
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    .line 160
    new-instance v0, Lcom/google/android/exoplayer2/util/FlagSet;

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/util/FlagSet;-><init>(Landroid/util/SparseBooleanArray;Lcom/google/android/exoplayer2/util/FlagSet$1;)V

    return-object v0
.end method

.method public remove(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 116
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    .line 117
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-object p0
.end method

.method public varargs removeAll([I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .locals 3

    .line 146
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 147
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->remove(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public removeIf(IZ)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .locals 0

    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->remove(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    move-result-object p0

    :cond_0
    return-object p0
.end method
