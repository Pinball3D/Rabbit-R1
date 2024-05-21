.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;
.super Ljava/lang/Object;
.source "LazyStaggeredGridMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext\n+ 2 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/SpanRange\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,1158:1\n231#1:1164\n908#2:1159\n907#2:1160\n906#2:1162\n908#2:1165\n907#2:1166\n906#2:1168\n62#3:1161\n55#3:1163\n62#3:1167\n55#3:1169\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext\n*L\n234#1:1164\n231#1:1159\n231#1:1160\n231#1:1162\n234#1:1165\n234#1:1166\n234#1:1168\n231#1:1161\n231#1:1163\n234#1:1167\n234#1:1169\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001Bv\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0006\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\u0006\u0010\u0017\u001a\u00020\u0006\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018J*\u0010>\u001a\u000209*\u00020\u00082\u0006\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0006\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010BJ\u0012\u00108\u001a\u00020\u000e*\u00020\u00082\u0006\u0010?\u001a\u00020\u0006R\u0011\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0014\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u001c\u0010\u000b\u001a\u00020\u000c\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u0012\u001a\u00020\u0013\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u001dR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010 R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u0011\u0010%\u001a\u00020&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001aR\u0011\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001aR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010-\u001a\u00020.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0011\u0010\u0016\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010 R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R\u0019\u00108\u001a\u00020\u000e*\u0002098\u00c6\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0019\u0010%\u001a\u00020\u0006*\u0002098\u00c6\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006C"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;",
        "",
        "state",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
        "pinnedItems",
        "",
        "",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;",
        "resolvedSlots",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "isVertical",
        "",
        "measureScope",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "mainAxisAvailableSize",
        "contentOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "beforeContentPadding",
        "afterContentPadding",
        "reverseLayout",
        "mainAxisSpacing",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;JZLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAfterContentPadding",
        "()I",
        "getBeforeContentPadding",
        "getConstraints-msEJaDk",
        "()J",
        "J",
        "getContentOffset-nOcc-ac",
        "()Z",
        "getItemProvider",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;",
        "laneCount",
        "getLaneCount",
        "laneInfo",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;",
        "getLaneInfo",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;",
        "getMainAxisAvailableSize",
        "getMainAxisSpacing",
        "getMeasureScope",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "measuredItemProvider",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;",
        "getMeasuredItemProvider",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;",
        "getPinnedItems",
        "()Ljava/util/List;",
        "getResolvedSlots",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;",
        "getReverseLayout",
        "getState",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
        "isFullSpan",
        "Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;",
        "isFullSpan-SZVOQXA",
        "(J)Z",
        "getLaneInfo-SZVOQXA",
        "(J)I",
        "getSpanRange",
        "itemIndex",
        "lane",
        "getSpanRange-lOCCd4c",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;II)J",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final constraints:J

.field private final contentOffset:J

.field private final isVertical:Z

.field private final itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

.field private final laneCount:I

.field private final laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

.field private final mainAxisAvailableSize:I

.field private final mainAxisSpacing:I

.field private final measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

.field private final measuredItemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;

.field private final pinnedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resolvedSlots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

.field private final reverseLayout:Z

.field private final state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;JZLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJIIZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;",
            "JZ",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "IJIIZI)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p8

    const-string/jumbo v6, "state"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "pinnedItems"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "itemProvider"

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "resolvedSlots"

    invoke-static {p4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "measureScope"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    iput-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->pinnedItems:Ljava/util/List;

    iput-object v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    iput-object v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->resolvedSlots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    move-wide v6, p5

    iput-wide v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->constraints:J

    move v2, p7

    iput-boolean v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical:Z

    iput-object v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    move/from16 v6, p9

    iput v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->mainAxisAvailableSize:I

    move-wide/from16 v6, p10

    iput-wide v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->contentOffset:J

    move/from16 v6, p12

    iput v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->beforeContentPadding:I

    move/from16 v6, p13

    iput v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->afterContentPadding:I

    move/from16 v6, p14

    iput-boolean v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->reverseLayout:Z

    move/from16 v6, p15

    iput v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->mainAxisSpacing:I

    .line 189
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;

    move-object/from16 p9, v6

    move-object/from16 p10, p0

    move/from16 p11, p7

    move-object/from16 p12, p3

    move-object/from16 p13, p8

    move-object/from16 p14, p4

    invoke-direct/range {p9 .. p14}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;ZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;)V

    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;

    iput-object v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->measuredItemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;

    .line 216
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getLaneInfo$foundation_release()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    .line 218
    invoke-virtual {p4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getSizes()[I

    move-result-object v1

    array-length v1, v1

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneCount:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;JZLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;JZLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJIIZI)V

    return-void
.end method


# virtual methods
.method public final getAfterContentPadding()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->afterContentPadding:I

    return p0
.end method

.method public final getBeforeContentPadding()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->beforeContentPadding:I

    return p0
.end method

.method public final getConstraints-msEJaDk()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->constraints:J

    return-wide v0
.end method

.method public final getContentOffset-nOcc-ac()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->contentOffset:J

    return-wide v0
.end method

.method public final getItemProvider()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->itemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    return-object p0
.end method

.method public final getLaneCount()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneCount:I

    return p0
.end method

.method public final getLaneInfo()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    return-object p0
.end method

.method public final getLaneInfo-SZVOQXA(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int p0, v0

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    sub-int/2addr p0, p1

    const/4 p2, 0x1

    if-eq p0, p2, :cond_0

    const/4 p1, -0x2

    :cond_0
    return p1
.end method

.method public final getMainAxisAvailableSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->mainAxisAvailableSize:I

    return p0
.end method

.method public final getMainAxisSpacing()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->mainAxisSpacing:I

    return p0
.end method

.method public final getMeasureScope()Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    return-object p0
.end method

.method public final getMeasuredItemProvider()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->measuredItemProvider:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;

    return-object p0
.end method

.method public final getPinnedItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->pinnedItems:Ljava/util/List;

    return-object p0
.end method

.method public final getResolvedSlots()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->resolvedSlots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    return-object p0
.end method

.method public final getReverseLayout()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->reverseLayout:Z

    return p0
.end method

.method public final getSpanRange-lOCCd4c(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;II)J
    .locals 1

    const-string v0, "$this$getSpanRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->getSpanProvider()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;->isFullSpan(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneCount:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p3, 0x0

    .line 227
    :cond_1
    invoke-static {p3, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->constructor-impl(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getState()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    return-object p0
.end method

.method public final isFullSpan(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;I)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->getSpanProvider()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;->isFullSpan(I)Z

    move-result p0

    return p0
.end method

.method public final isFullSpan-SZVOQXA(J)Z
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int p0, v0

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    sub-int/2addr p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isVertical()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical:Z

    return p0
.end method
