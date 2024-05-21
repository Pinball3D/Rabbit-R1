.class public final Lcom/google/android/exoplayer2/Player$Events;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# instance fields
.field private final flags:Lcom/google/android/exoplayer2/util/FlagSet;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public varargs containsAny([I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->containsAny([I)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 139
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/Player$Events;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 142
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Player$Events;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 143
    iget-object p1, p1, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->hashCode()I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 112
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result p0

    return p0
.end method
