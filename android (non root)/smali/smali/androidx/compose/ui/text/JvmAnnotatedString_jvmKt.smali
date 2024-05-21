.class public final Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt;
.super Ljava/lang/Object;
.source "JvmAnnotatedString.jvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmAnnotatedString.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmAnnotatedString.jvm.kt\nandroidx/compose/ui/text/JvmAnnotatedString_jvmKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n*L\n1#1,80:1\n151#2,3:81\n33#2,4:84\n154#2,2:88\n38#2:90\n156#2:91\n151#2,3:92\n33#2,4:95\n154#2,2:99\n38#2:101\n156#2:102\n151#2,3:103\n33#2,4:106\n154#2,2:110\n38#2:112\n156#2:113\n33#2,4:117\n38#2:123\n108#3,3:114\n111#3,2:121\n113#3:124\n*S KotlinDebug\n*F\n+ 1 JvmAnnotatedString.jvm.kt\nandroidx/compose/ui/text/JvmAnnotatedString_jvmKt\n*L\n44#1:81,3\n44#1:84,4\n44#1:88,2\n44#1:90\n44#1:91\n48#1:92,3\n48#1:95,4\n48#1:99,2\n48#1:101\n48#1:102\n51#1:103,3\n51#1:106,4\n51#1:110,2\n51#1:112\n51#1:113\n73#1:117,4\n73#1:123\n73#1:114,3\n73#1:121,2\n73#1:124\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a*\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0004\u0018\u00010\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u001a,\u0010\u0008\u001a\u00020\t*\u00020\t2\u001e\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\nH\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "collectRangeTransitions",
        "",
        "ranges",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "target",
        "Ljava/util/SortedSet;",
        "",
        "transform",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "Lkotlin/Function3;",
        "",
        "ui-text_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final collectRangeTransitions(Ljava/util/List;Ljava/util/SortedSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "*>;>;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 118
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 119
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 121
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 75
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final transform(Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/compose/ui/text/AnnotatedString;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {v0}, Lkotlin/collections/SetsKt;->sortedSetOf([Ljava/lang/Object;)Ljava/util/TreeSet;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStylesOrNull$ui_text_release()Ljava/util/List;

    move-result-object v3

    move-object v5, v0

    check-cast v5, Ljava/util/SortedSet;

    invoke-static {v3, v5}, Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt;->collectRangeTransitions(Ljava/util/List;Ljava/util/SortedSet;)V

    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getParagraphStylesOrNull$ui_text_release()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v5}, Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt;->collectRangeTransitions(Ljava/util/List;Ljava/util/SortedSet;)V

    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getAnnotations$ui_text_release()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v5}, Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt;->collectRangeTransitions(Ljava/util/List;Ljava/util/SortedSet;)V

    .line 37
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v5, ""

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-array v4, v4, [Lkotlin/Pair;

    .line 38
    invoke-static {v2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 39
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v0, Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt$transform$1;

    invoke-direct {v0, v3, p1, p0, v2}, Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt$transform$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lkotlin/collections/CollectionsKt;->windowed$default(Ljava/lang/Iterable;IIZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStylesOrNull$ui_text_release()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    .line 86
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 88
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 46
    new-instance v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-direct {v9, v10, v11, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 88
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91
    :cond_0
    check-cast v4, Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 48
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getParagraphStylesOrNull$ui_text_release()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_2

    .line 97
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 99
    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 49
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-direct {v10, v11, v12, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 99
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 102
    :cond_2
    check-cast v5, Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v5, v0

    .line 51
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getAnnotations$ui_text_release()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 108
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 110
    move-object v7, p1

    check-cast v7, Ljava/util/Collection;

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 52
    new-instance v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-direct {v8, v9, v10, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 110
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 113
    :cond_4
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 55
    :cond_5
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString;

    .line 56
    iget-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, v4, v5, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method
