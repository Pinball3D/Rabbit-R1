.class public final Landroidx/media3/common/Player$PositionInfo;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/Player$PositionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AD_GROUP_INDEX:Ljava/lang/String;

.field private static final FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

.field private static final FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

.field private static final FIELD_MEDIA_ITEM:Ljava/lang/String;

.field private static final FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

.field private static final FIELD_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_POSITION_MS:Ljava/lang/String;


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final contentPositionMs:J

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final mediaItemIndex:I

.field public final periodIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final positionMs:J

.field public final windowIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final windowUid:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$ks0iIBi1LeOOEMD3eahHAGMFmeY(Landroid/os/Bundle;)Landroidx/media3/common/Player$PositionInfo;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/Player$PositionInfo;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$PositionInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 371
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 372
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    const/4 v0, 0x2

    .line 373
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    const/4 v0, 0x3

    .line 374
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 375
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 376
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_GROUP_INDEX:Ljava/lang/String;

    const/4 v0, 0x6

    .line 377
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

    .line 417
    new-instance v0, Landroidx/media3/common/Player$PositionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/Player$PositionInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/common/Player$PositionInfo;->windowIndex:I

    iput p2, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iput-object p3, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-object p4, p0, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iput p5, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    iput-wide p6, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iput-wide p8, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    iput p10, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iput p11, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    sget-object v3, Landroidx/media3/common/MediaItem;->EMPTY:Landroidx/media3/common/MediaItem;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$PositionInfo;
    .locals 14

    sget-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    .line 421
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 424
    :cond_0
    sget-object v2, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, v0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    :goto_0
    move-object v5, v0

    sget-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    .line 425
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    sget-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_POSITION_MS:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 426
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sget-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

    .line 427
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    sget-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_GROUP_INDEX:Ljava/lang/String;

    const/4 v1, -0x1

    .line 428
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    sget-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

    .line 430
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 431
    new-instance p0, Landroidx/media3/common/Player$PositionInfo;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 343
    :cond_1
    check-cast p1, Landroidx/media3/common/Player$PositionInfo;

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 344
    iget v3, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    iget v3, p1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-wide v4, p1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    iget-wide v4, p1, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget v3, p1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    iget v3, p1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    .line 350
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 351
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p1, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 352
    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 9

    iget-object v0, p0, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v3, p0, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget v4, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 362
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    .line 363
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    .line 364
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v7, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    .line 365
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 366
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    .line 357
    invoke-static {p0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p0, v0, v0}, Landroidx/media3/common/Player$PositionInfo;->toBundle(ZZ)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public toBundle(ZZ)Landroid/os/Bundle;
    .locals 5

    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget v3, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    goto :goto_0

    :cond_0
    move v3, v2

    .line 403
    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    sget-object v3, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    .line 405
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    sget-object v1, Landroidx/media3/common/Player$PositionInfo;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 407
    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Landroidx/media3/common/Player$PositionInfo;->FIELD_POSITION_MS:Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_3

    iget-wide v3, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    goto :goto_1

    :cond_3
    move-wide v3, v1

    .line 408
    :goto_1
    invoke-virtual {v0, p2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Landroidx/media3/common/Player$PositionInfo;->FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-wide v1, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    .line 409
    :cond_4
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_GROUP_INDEX:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz p1, :cond_5

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    goto :goto_2

    :cond_5
    move v2, v1

    .line 410
    :goto_2
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 411
    :cond_6
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
