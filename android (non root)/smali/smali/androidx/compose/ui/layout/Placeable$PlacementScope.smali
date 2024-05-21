.class public abstract Landroidx/compose/ui/layout/Placeable$PlacementScope;
.super Ljava/lang/Object;
.source "Placeable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/Placeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlacementScope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaceable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Placeable.kt\nandroidx/compose/ui/layout/Placeable$PlacementScope\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,426:1\n320#1,2:427\n337#1:429\n338#1:431\n323#1,2:432\n337#1,2:434\n329#1:436\n320#1,2:437\n337#1:439\n338#1:441\n323#1,2:442\n337#1,2:444\n329#1:446\n337#1:447\n338#1:449\n337#1:450\n338#1:452\n320#1,2:453\n337#1:455\n338#1:457\n323#1,2:458\n337#1,2:460\n329#1:462\n320#1,2:463\n337#1:465\n338#1:467\n323#1,2:468\n337#1,2:470\n329#1:472\n337#1:473\n338#1:475\n337#1:476\n338#1:478\n337#1:479\n338#1:481\n337#1:482\n338#1:484\n86#2:430\n86#2:440\n86#2:448\n86#2:451\n86#2:456\n86#2:466\n86#2:474\n86#2:477\n86#2:480\n86#2:483\n86#2:485\n*S KotlinDebug\n*F\n+ 1 Placeable.kt\nandroidx/compose/ui/layout/Placeable$PlacementScope\n*L\n186#1:427,2\n186#1:429\n186#1:431\n186#1:432,2\n186#1:434,2\n186#1:436\n202#1:437,2\n202#1:439\n202#1:441\n202#1:442,2\n202#1:444,2\n202#1:446\n214#1:447\n214#1:449\n226#1:450\n226#1:452\n249#1:453,2\n249#1:455\n249#1:457\n249#1:458,2\n249#1:460,2\n249#1:462\n273#1:463,2\n273#1:465\n273#1:467\n273#1:468,2\n273#1:470,2\n273#1:472\n293#1:473\n293#1:475\n312#1:476\n312#1:478\n321#1:479\n321#1:481\n323#1:482\n323#1:484\n186#1:430\n202#1:440\n214#1:448\n226#1:451\n249#1:456\n273#1:466\n293#1:474\n312#1:477\n321#1:480\n323#1:483\n337#1:485\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\'\u0018\u0000 )2\u00020\u0001:\u0001)B\u0005\u00a2\u0006\u0002\u0010\u0002J)\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J$\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015JJ\u0010\u001a\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u001b\u0008\u0008\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001c\u00a2\u0006\u0002\u0008\u001eH\u0080\u0008\u00f8\u0001\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 JJ\u0010!\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u001b\u0008\u0008\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001c\u00a2\u0006\u0002\u0008\u001eH\u0080\u0008\u00f8\u0001\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\"\u0010 J)\u0010#\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010\u0017J$\u0010#\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015JD\u0010%\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c\u00a2\u0006\u0002\u0008\u001e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010 J?\u0010%\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c\u00a2\u0006\u0002\u0008\u001eJD\u0010\'\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c\u00a2\u0006\u0002\u0008\u001e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010 J?\u0010\'\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c\u00a2\u0006\u0002\u0008\u001eR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u000cX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u0082\u0002\u0012\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0005\u0008\u009920\u0001\u00a8\u0006*"
    }
    d2 = {
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "()V",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "parentLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getParentLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "parentWidth",
        "",
        "getParentWidth",
        "()I",
        "place",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "position",
        "Landroidx/compose/ui/unit/IntOffset;",
        "zIndex",
        "",
        "place-70tqf50",
        "(Landroidx/compose/ui/layout/Placeable;JF)V",
        "x",
        "y",
        "placeApparentToRealOffset",
        "layerBlock",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lkotlin/ExtensionFunctionType;",
        "placeApparentToRealOffset-aW-9-wM$ui_release",
        "(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V",
        "placeAutoMirrored",
        "placeAutoMirrored-aW-9-wM$ui_release",
        "placeRelative",
        "placeRelative-70tqf50",
        "placeRelativeWithLayer",
        "placeRelativeWithLayer-aW-9-wM",
        "placeWithLayer",
        "placeWithLayer-aW-9-wM",
        "Companion",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

.field private static _coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private static layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

.field private static parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private static parentWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    .line 341
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    sput-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLayoutDelegate$cp()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;
    .locals 1

    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    return-object v0
.end method

.method public static final synthetic access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 140
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getParentLayoutDirection$cp()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public static final synthetic access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I
    .locals 0

    .line 140
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getParentWidth$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentWidth:I

    return v0
.end method

.method public static final synthetic access$get_coordinates$cp()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->_coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public static final synthetic access$setLayoutDelegate$cp(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V
    .locals 0

    sput-object p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    return-void
.end method

.method public static final synthetic access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    sput-object p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public static final synthetic access$setParentWidth$cp(I)V
    .locals 0

    sput p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentWidth:I

    return-void
.end method

.method public static final synthetic access$set_coordinates$cp(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    sput-object p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->_coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method public static synthetic place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 213
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: place"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 225
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: place-70tqf50"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 201
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelative"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeRelative-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 185
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelative-70tqf50"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 272
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 268
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelativeWithLayer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x4

    if-eqz p4, :cond_1

    .line 248
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 245
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 292
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 288
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeWithLayer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x4

    if-eqz p4, :cond_1

    .line 311
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 308
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
.end method

.method protected abstract getParentWidth()I
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable;IIF)V
    .locals 3

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 447
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 448
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    const/4 p0, 0x0

    .line 447
    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final place-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V
    .locals 3

    const-string p0, "$this$place"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 451
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    const/4 p0, 0x0

    .line 450
    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final placeApparentToRealOffset-aW-9-wM$ui_release(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "$this$placeApparentToRealOffset"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 485
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 337
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final placeAutoMirrored-aW-9-wM$ui_release(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$placeAutoMirrored"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 482
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 483
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 482
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 479
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 480
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 479
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    :goto_1
    return-void
.end method

.method public final placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 437
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 444
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 440
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    add-int/2addr p0, v3

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 444
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 439
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 440
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    add-int/2addr p0, v3

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 439
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    :goto_1
    return-void
.end method

.method public final placeRelative-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V
    .locals 4

    const-string v0, "$this$placeRelative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 434
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 430
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    add-int/2addr p0, v3

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 434
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 429
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 430
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    add-int/2addr p0, v3

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 429
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    :goto_1
    return-void
.end method

.method public final placeRelativeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "IIF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerBlock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 463
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 470
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 466
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 470
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 465
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 466
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 465
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    :goto_1
    return-void
.end method

.method public final placeRelativeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$placeRelativeWithLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerBlock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 460
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 456
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 460
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 455
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 456
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 455
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    :goto_1
    return-void
.end method

.method public final placeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "IIF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "layerBlock"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 473
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 474
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 473
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final placeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "$this$placeWithLayer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "layerBlock"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v0

    .line 477
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 476
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method
