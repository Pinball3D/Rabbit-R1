.class public final Lcom/google/android/exoplayer2/util/FlagSet;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    }
.end annotation


# instance fields
.field private final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/SparseBooleanArray;Lcom/google/android/exoplayer2/util/FlagSet$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 178
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public varargs containsAny([I)Z
    .locals 4

    .line 188
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 189
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 218
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/util/FlagSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 221
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/util/FlagSet;

    .line 222
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v1, v3, :cond_5

    .line 224
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 228
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 234
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)I
    .locals 2

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 210
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 240
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 243
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 244
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 248
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 198
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    return p0
.end method
