.class final Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;
.super Ljava/lang/Object;
.source "SimpleLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->SimpleLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimpleLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleLayout.kt\nandroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n*L\n1#1,53:1\n151#2,3:54\n33#2,4:57\n154#2,2:61\n38#2:63\n156#2:64\n33#2,4:68\n38#2:74\n33#2,4:79\n38#2:85\n59#3,3:65\n62#3,2:72\n64#3:75\n59#3,3:76\n62#3,2:83\n64#3:86\n*S KotlinDebug\n*F\n+ 1 SimpleLayout.kt\nandroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1\n*L\n34#1:54,3\n34#1:57,4\n34#1:61,2\n34#1:63\n34#1:64\n38#1:68,4\n38#1:74\n42#1:79,4\n42#1:85\n38#1:65,3\n38#1:72,2\n38#1:75\n42#1:76,3\n42#1:83,2\n42#1:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;->INSTANCE:Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    const-string p0, "$this$Layout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurables"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 59
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 61
    move-object v5, p0

    check-cast v5, Ljava/util/Collection;

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 35
    invoke-interface {v4, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 61
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    check-cast p0, Ljava/util/List;

    .line 69
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    move p3, v1

    move-object p4, v2

    :goto_1
    if-ge p3, p2, :cond_1

    .line 70
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 72
    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    .line 39
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 38
    :cond_1
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 80
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    :goto_2
    if-ge v1, p2, :cond_2

    .line 81
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 83
    check-cast p3, Landroidx/compose/ui/layout/Placeable;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p4

    .line 43
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p3

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 42
    :cond_2
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x0

    .line 46
    new-instance p2, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$measure$1;

    invoke-direct {p2, p0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$measure$1;-><init>(Ljava/util/List;)V

    move-object v7, p2

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
