.class final Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;
.super Ljava/lang/Object;
.source "AndroidDialog.android.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/AndroidDialog_androidKt;->DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidDialog.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,466:1\n151#2,3:467\n33#2,4:470\n154#2,2:474\n38#2:476\n156#2:477\n171#2,13:478\n171#2,13:491\n*S KotlinDebug\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1\n*L\n458#1:467,3\n458#1:470,4\n458#1:474,2\n458#1:476\n458#1:477\n459#1:478,13\n460#1:491,13\n*E\n"
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
.field public static final INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

    invoke-direct {v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

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

    .line 468
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 472
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 474
    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 458
    invoke-interface {v3, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 474
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :cond_0
    check-cast p0, Ljava/util/List;

    .line 479
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move-object p2, v0

    goto :goto_2

    .line 480
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 481
    move-object v3, p2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 459
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    .line 482
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-gt v2, v4, :cond_3

    move v5, v2

    .line 483
    :goto_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 484
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 459
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v7

    if-ge v3, v7, :cond_2

    move-object p2, v6

    move v3, v7

    :cond_2
    if-eq v5, v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    check-cast p2, Landroidx/compose/ui/layout/Placeable;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p2

    goto :goto_3

    :cond_4
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p2

    :goto_3
    move v4, p2

    .line 492
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_5

    .line 493
    :cond_5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 494
    move-object v0, p2

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    .line 460
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    .line 495
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-gt v2, v1, :cond_7

    .line 496
    :goto_4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 497
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 460
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    if-ge v0, v5, :cond_6

    move-object p2, v3

    move v0, v5

    :cond_6
    if-eq v2, v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move-object v0, p2

    :goto_5
    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p2

    goto :goto_6

    :cond_8
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p2

    :goto_6
    move v5, p2

    const/4 v6, 0x0

    .line 461
    new-instance p2, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$measure$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$measure$1;-><init>(Ljava/util/List;)V

    move-object v7, p2

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
