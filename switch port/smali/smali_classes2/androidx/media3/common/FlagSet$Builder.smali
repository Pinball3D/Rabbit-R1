.class public final Landroidx/media3/common/FlagSet$Builder;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/FlagSet;
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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public add(I)Landroidx/media3/common/FlagSet$Builder;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 59
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    .line 60
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-object p0
.end method

.method public addAll(Landroidx/media3/common/FlagSet;)Landroidx/media3/common/FlagSet$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/FlagSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 105
    invoke-virtual {p1, v0}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/media3/common/FlagSet$Builder;->add(I)Landroidx/media3/common/FlagSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addAll([I)Landroidx/media3/common/FlagSet$Builder;
    .locals 3

    .line 89
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 90
    invoke-virtual {p0, v2}, Landroidx/media3/common/FlagSet$Builder;->add(I)Landroidx/media3/common/FlagSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addIf(IZ)Landroidx/media3/common/FlagSet$Builder;
    .locals 0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet$Builder;->add(I)Landroidx/media3/common/FlagSet$Builder;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public build()Landroidx/media3/common/FlagSet;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 161
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    .line 163
    new-instance v0, Landroidx/media3/common/FlagSet;

    iget-object p0, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/FlagSet;-><init>(Landroid/util/SparseBooleanArray;Landroidx/media3/common/FlagSet$1;)V

    return-object v0
.end method

.method public remove(I)Landroidx/media3/common/FlagSet$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 119
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    .line 120
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-object p0
.end method

.method public varargs removeAll([I)Landroidx/media3/common/FlagSet$Builder;
    .locals 3

    .line 149
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 150
    invoke-virtual {p0, v2}, Landroidx/media3/common/FlagSet$Builder;->remove(I)Landroidx/media3/common/FlagSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public removeIf(IZ)Landroidx/media3/common/FlagSet$Builder;
    .locals 0

    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet$Builder;->remove(I)Landroidx/media3/common/FlagSet$Builder;

    move-result-object p0

    :cond_0
    return-object p0
.end method
