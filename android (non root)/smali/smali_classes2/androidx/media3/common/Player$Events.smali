.class public final Landroidx/media3/common/Player$Events;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# instance fields
.field private final flags:Landroidx/media3/common/FlagSet;


# direct methods
.method public constructor <init>(Landroidx/media3/common/FlagSet;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/Player$Events;->flags:Landroidx/media3/common/FlagSet;

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 193
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public varargs containsAny([I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 203
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->containsAny([I)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 235
    :cond_0
    instance-of v0, p1, Landroidx/media3/common/Player$Events;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 238
    :cond_1
    check-cast p1, Landroidx/media3/common/Player$Events;

    iget-object p0, p0, Landroidx/media3/common/Player$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 239
    iget-object p1, p1, Landroidx/media3/common/Player$Events;->flags:Landroidx/media3/common/FlagSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 222
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 227
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->hashCode()I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 208
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result p0

    return p0
.end method
