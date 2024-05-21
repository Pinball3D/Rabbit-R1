.class public final Landroidx/media3/common/Tracks;
.super Ljava/lang/Object;
.source "Tracks.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Tracks$Group;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/Tracks;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroidx/media3/common/Tracks;

.field private static final FIELD_TRACK_GROUPS:Ljava/lang/String;


# instance fields
.field private final groups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 266
    new-instance v0, Landroidx/media3/common/Tracks;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    const/4 v0, 0x0

    .line 379
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    .line 391
    new-instance v0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/Tracks;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;)V"
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/common/Tracks;
    .locals 1

    sget-object v0, Landroidx/media3/common/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    .line 393
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 396
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 397
    :cond_0
    sget-object v0, Landroidx/media3/common/Tracks$Group;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-static {v0, p0}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 398
    :goto_0
    new-instance v0, Landroidx/media3/common/Tracks;

    invoke-direct {v0, p0}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public containsType(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 292
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 293
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v2}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    check-cast p1, Landroidx/media3/common/Tracks;

    iget-object p0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 370
    iget-object p1, p1, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGroups()Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 375
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 287
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isTypeSelected(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 352
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 353
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    .line 354
    invoke-virtual {v2}, Landroidx/media3/common/Tracks$Group;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTypeSupported(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/Tracks;->isTypeSupported(IZ)Z

    move-result p0

    return p0
.end method

.method public isTypeSupported(IZ)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 320
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 321
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v2}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 322
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v2, p2}, Landroidx/media3/common/Tracks$Group;->isSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTypeSupportedOrEmpty(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/Tracks;->isTypeSupportedOrEmpty(IZ)Z

    move-result p0

    return p0
.end method

.method public isTypeSupportedOrEmpty(IZ)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    invoke-virtual {p0, p1}, Landroidx/media3/common/Tracks;->containsType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/Tracks;->isTypeSupported(IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .line 384
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 385
    invoke-static {p0}, Landroidx/media3/common/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
