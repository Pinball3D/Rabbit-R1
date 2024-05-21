.class public abstract Landroidx/media3/common/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Timeline$Window;,
        Landroidx/media3/common/Timeline$Period;,
        Landroidx/media3/common/Timeline$RemotableTimeline;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroidx/media3/common/Timeline;

.field private static final FIELD_PERIODS:Ljava/lang/String;

.field private static final FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

.field private static final FIELD_WINDOWS:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$IosUR-LlCTyBXD6bufNR07UK3iY(Landroid/os/Bundle;)Landroidx/media3/common/Timeline;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/Timeline;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Timeline;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 983
    new-instance v0, Landroidx/media3/common/Timeline$1;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$1;-><init>()V

    sput-object v0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    const/4 v0, 0x0

    .line 1399
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline;->FIELD_WINDOWS:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1400
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline;->FIELD_PERIODS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1401
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline;->FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

    .line 1484
    new-instance v0, Landroidx/media3/common/Timeline$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/Timeline;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Timeline;
    .locals 3

    .line 1487
    sget-object v0, Landroidx/media3/common/Timeline$Window;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    sget-object v1, Landroidx/media3/common/Timeline;->FIELD_WINDOWS:Ljava/lang/String;

    .line 1488
    invoke-static {p0, v1}, Landroidx/media3/common/util/BundleUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/Timeline;->fromBundleListRetriever(Landroidx/media3/common/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1489
    sget-object v1, Landroidx/media3/common/Timeline$Period;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    sget-object v2, Landroidx/media3/common/Timeline;->FIELD_PERIODS:Ljava/lang/String;

    .line 1490
    invoke-static {p0, v2}, Landroidx/media3/common/util/BundleUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media3/common/Timeline;->fromBundleListRetriever(Landroidx/media3/common/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Timeline;->FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

    .line 1491
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    .line 1492
    new-instance v2, Landroidx/media3/common/Timeline$RemotableTimeline;

    if-nez p0, :cond_0

    .line 1496
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    invoke-static {p0}, Landroidx/media3/common/Timeline;->generateUnshuffledIndices(I)[I

    move-result-object p0

    .line 1497
    :cond_0
    invoke-direct {v2, v0, v1, p0}, Landroidx/media3/common/Timeline$RemotableTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V

    return-object v2
.end method

.method private static fromBundleListRetriever(Landroidx/media3/common/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/media3/common/Bundleable;",
            ">(",
            "Landroidx/media3/common/Bundleable$Creator<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1503
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 1505
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1506
    invoke-static {p1}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v1, 0x0

    .line 1507
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1508
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {p0, v2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1510
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static generateUnshuffledIndices(I)[I
    .locals 2

    .line 1514
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1516
    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1328
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/Timeline;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1331
    :cond_1
    check-cast p1, Landroidx/media3/common/Timeline;

    .line 1332
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-ne v1, v3, :cond_b

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto/16 :goto_3

    .line 1335
    :cond_2
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 1336
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 1337
    new-instance v4, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 1338
    new-instance v5, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v5}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move v6, v2

    .line 1339
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 1340
    invoke-virtual {p0, v6, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    invoke-virtual {p1, v6, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media3/common/Timeline$Window;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1344
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1345
    invoke-virtual {p0, v1, v3, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    .line 1346
    invoke-virtual {p1, v1, v5, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/media3/common/Timeline$Period;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1352
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    .line 1353
    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 1356
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result v3

    .line 1357
    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result v4

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    :goto_2
    if-eq v1, v3, :cond_a

    .line 1362
    invoke-virtual {p0, v1, v2, v0}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v4

    .line 1364
    invoke-virtual {p1, v1, v2, v0}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    if-eq v4, v1, :cond_9

    return v2

    :cond_9
    move v1, v4

    goto :goto_2

    :cond_a
    return v0

    :cond_b
    :goto_3
    return v2
.end method

.method public getFirstWindowIndex(Z)I
    .locals 0

    .line 1103
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getIndexOfPeriod(Ljava/lang/Object;)I
.end method

.method public getLastWindowIndex(Z)I
    .locals 0

    .line 1091
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method public final getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I
    .locals 1

    .line 1149
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 1150
    invoke-virtual {p0, p2, p3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne v0, p1, :cond_1

    .line 1151
    invoke-virtual {p0, p2, p4, p5}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 1155
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1047
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 1048
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, 0x1

    :goto_0
    return p0

    .line 1051
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return p1

    .line 1041
    :cond_3
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p0

    if-ne p1, p0, :cond_4

    const/4 p0, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p0, p1, 0x1

    :goto_1
    return p0
.end method

.method public final getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 1

    const/4 v0, 0x0

    .line 1291
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
.end method

.method public getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 1

    .line 1279
    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPeriodCount()I
.end method

.method public final getPeriodPosition(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline$Window;",
            "Landroidx/media3/common/Timeline$Period;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1189
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getPeriodPosition(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline$Window;",
            "Landroidx/media3/common/Timeline$Period;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1207
    invoke-virtual/range {p0 .. p7}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline$Window;",
            "Landroidx/media3/common/Timeline$Period;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1218
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object p0

    .line 1217
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public final getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline$Window;",
            "Landroidx/media3/common/Timeline$Period;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1245
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    invoke-static {p3, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 1246
    invoke-virtual {p0, p3, p1, p6, p7}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    .line 1248
    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p4

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1253
    :cond_0
    iget p3, p1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 1254
    invoke-virtual {p0, p3, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1255
    :goto_0
    iget v0, p1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ge p3, v0, :cond_1

    iget-wide v0, p2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x1

    .line 1257
    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v1, v1, p4

    if-gtz v1, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1260
    invoke-virtual {p0, p3, p2, p1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 1261
    iget-wide p0, p2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    sub-long/2addr p4, p0

    .line 1263
    iget-wide p0, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long p0, p0, p6

    if-eqz p0, :cond_2

    .line 1264
    iget-wide p0, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide/16 p6, 0x1

    sub-long/2addr p0, p6

    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    :cond_2
    const-wide/16 p0, 0x0

    .line 1267
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 1268
    iget-object p2, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1074
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 1075
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, -0x1

    :goto_0
    return p0

    .line 1078
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return p1

    .line 1068
    :cond_3
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p0

    if-ne p1, p0, :cond_4

    const/4 p0, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p0, p1, -0x1

    :goto_1
    return p0
.end method

.method public abstract getUidOfPeriod(I)Ljava/lang/Object;
.end method

.method public final getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1114
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    return-object p0
.end method

.method public abstract getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
.end method

.method public abstract getWindowCount()I
.end method

.method public hashCode()I
    .locals 6

    .line 1376
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 1377
    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/16 v2, 0xd9

    .line 1379
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    .line 1380
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 1381
    invoke-virtual {p0, v4, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Window;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    .line 1383
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    add-int/2addr v2, v0

    move v0, v3

    .line 1384
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    .line 1385
    invoke-virtual {p0, v0, v1, v5}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Period;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1388
    :cond_1
    invoke-virtual {p0, v5}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    :goto_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v0

    .line 1390
    invoke-virtual {p0, v0, v3, v5}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    goto :goto_2

    :cond_2
    return v2
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1022
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLastPeriod(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)Z
    .locals 0

    .line 1177
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 8

    .line 1413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    .line 1415
    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    const-wide/16 v5, 0x0

    .line 1417
    invoke-virtual {p0, v4, v2, v5, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Window;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1420
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v4

    .line 1422
    new-instance v5, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v5}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_1

    .line 1424
    invoke-virtual {p0, v6, v5, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/Timeline$Period;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1427
    :cond_1
    new-array v4, v1, [I

    const/4 v5, 0x1

    if-lez v1, :cond_2

    .line 1429
    invoke-virtual {p0, v5}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v6

    aput v6, v4, v3

    :cond_2
    move v6, v5

    :goto_2
    if-ge v6, v1, :cond_3

    add-int/lit8 v7, v6, -0x1

    .line 1432
    aget v7, v4, v7

    .line 1433
    invoke-virtual {p0, v7, v3, v5}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1437
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/Timeline;->FIELD_WINDOWS:Ljava/lang/String;

    .line 1438
    new-instance v3, Landroidx/media3/common/BundleListRetriever;

    invoke-direct {v3, v0}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1, v3}, Landroidx/media3/common/util/BundleUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v0, Landroidx/media3/common/Timeline;->FIELD_PERIODS:Ljava/lang/String;

    .line 1439
    new-instance v1, Landroidx/media3/common/BundleListRetriever;

    invoke-direct {v1, v2}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/BundleUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v0, Landroidx/media3/common/Timeline;->FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

    .line 1440
    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public final toBundleWithOneWindowOnly(I)Landroid/os/Bundle;
    .locals 5

    .line 1455
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    .line 1457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1458
    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 1459
    iget v2, p1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    :goto_0
    iget v3, p1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    const/4 v4, 0x0

    if-gt v2, v3, :cond_0

    .line 1460
    invoke-virtual {p0, v2, v1, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 1461
    iput v4, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 1462
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1465
    :cond_0
    iget p0, p1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    iget v1, p1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    sub-int/2addr p0, v1

    iput p0, p1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 1466
    iput v4, p1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 1467
    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Window;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 1469
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/Timeline;->FIELD_WINDOWS:Ljava/lang/String;

    .line 1470
    new-instance v2, Landroidx/media3/common/BundleListRetriever;

    .line 1471
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v2, p0}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 1470
    invoke-static {p1, v1, v2}, Landroidx/media3/common/util/BundleUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object p0, Landroidx/media3/common/Timeline;->FIELD_PERIODS:Ljava/lang/String;

    .line 1472
    new-instance v1, Landroidx/media3/common/BundleListRetriever;

    invoke-direct {v1, v0}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-static {p1, p0, v1}, Landroidx/media3/common/util/BundleUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object p0, Landroidx/media3/common/Timeline;->FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

    filled-new-array {v4}, [I

    move-result-object v0

    .line 1473
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p1
.end method
