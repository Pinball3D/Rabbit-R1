.class public final Landroidx/compose/runtime/snapshots/ListUtilsKt;
.super Ljava/lang/Object;
.source "ListUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,238:1\n33#1,6:239\n33#1,6:245\n33#1,6:251\n33#1,6:257\n33#1,4:263\n38#1:274\n33#1,4:275\n38#1:280\n64#1,6:281\n361#2,7:267\n1#3:279\n*S KotlinDebug\n*F\n+ 1 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n50#1:239,6\n84#1:245,6\n94#1:251,6\n111#1:257,6\n122#1:263,4\n122#1:274\n213#1:275,4\n213#1:280\n233#1:281,6\n124#1:267,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0000\u001a9\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00060\u0003j\u0002`\u00042\u0006\u0010\u0005\u001a\u0002H\u00022\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0002\u00a2\u0006\u0002\u0010\t\u001a;\u0010\n\u001a\u00020\u000b\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u000b0\u0007H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u001a;\u0010\u000e\u001a\u00020\u000b\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u000b0\u0007H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u001aV\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u000c\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\'\u0010\r\u001a#\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u000b0\u0010H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u001a;\u0010\u0015\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u0007H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u001aA\u0010\u0017\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u0010H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u001aS\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u0002H\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u000c0\u0019\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u001a*\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u001a0\u0007H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u001a}\u0010\u001c\u001a\u0002H\u001d\"\u0004\u0008\u0000\u0010\u0002\"\u000c\u0008\u0001\u0010\u001d*\u00060\u0003j\u0002`\u0004*\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\u0006\u0010\u001e\u001a\u0002H\u001d2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0002\u0010 \u001a\u00020\u00082\u0008\u0008\u0002\u0010!\u001a\u00020\u00082\u0008\u0008\u0002\u0010\"\u001a\u00020\u00112\u0008\u0008\u0002\u0010#\u001a\u00020\u00082\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0002\u00a2\u0006\u0002\u0010$\u001ab\u0010%\u001a\u00020&\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0002\u0010 \u001a\u00020\u00082\u0008\u0008\u0002\u0010!\u001a\u00020\u00082\u0008\u0008\u0002\u0010\"\u001a\u00020\u00112\u0008\u0008\u0002\u0010#\u001a\u00020\u00082\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0000\u001aG\u0010\'\u001a\u0008\u0012\u0004\u0012\u0002H(0\u000c\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010(*\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H(0\u0007H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u001aI\u0010)\u001a\u0008\u0012\u0004\u0012\u0002H(0\u000c\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010(*\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H(0\u0007H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u001a\u001e\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H\u00020+\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000cH\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006,"
    }
    d2 = {
        "appendElement",
        "",
        "T",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "element",
        "transform",
        "Lkotlin/Function1;",
        "",
        "(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "fastAll",
        "",
        "",
        "predicate",
        "fastAny",
        "fastFilterIndexed",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "fastForEach",
        "action",
        "fastForEachIndexed",
        "fastGroupBy",
        "",
        "K",
        "keySelector",
        "fastJoinTo",
        "A",
        "buffer",
        "separator",
        "prefix",
        "postfix",
        "limit",
        "truncated",
        "(Ljava/util/List;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;",
        "fastJoinToString",
        "",
        "fastMap",
        "R",
        "fastMapNotNull",
        "fastToSet",
        "",
        "runtime_release"
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
.method private static final appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Appendable;",
            "TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 193
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 195
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 196
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public static final fastAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 259
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 111
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final fastAny(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 253
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 95
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final fastFilterIndexed(Ljava/util/List;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 283
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final fastForEach(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final fastForEachIndexed(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final fastGroupBy(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TK;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keySelector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 264
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 265
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 123
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 124
    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    .line 267
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 124
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    check-cast v6, Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_1
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static final fastJoinTo(Ljava/util/List;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;TA;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/CharSequence;",
            ">;)TA;"
        }
    .end annotation

    .line 174
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 176
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 177
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 178
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    if-ltz p5, :cond_1

    if-gt v1, p5, :cond_2

    .line 180
    :cond_1
    invoke-static {p1, v2, p7}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ltz p5, :cond_3

    if-le v1, p5, :cond_3

    .line 183
    invoke-interface {p1, p6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 184
    :cond_3
    invoke-interface {p1, p4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p1
.end method

.method static synthetic fastJoinTo$default(Ljava/util/List;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;
    .locals 6

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const-string v0, ", "

    .line 167
    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 168
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    .line 169
    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v3, p8, 0x10

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    and-int/lit8 v4, p8, 0x20

    if-eqz v4, :cond_4

    const-string v4, "..."

    .line 171
    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_4
    move-object v4, p6

    :goto_4
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move-object v5, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-object p6, v2

    move p7, v3

    move-object p8, v4

    move-object p9, v5

    .line 165
    invoke-static/range {p2 .. p9}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->fastJoinTo(Ljava/util/List;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static final fastJoinToString(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "separator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postfix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "truncated"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/lang/Appendable;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->fastJoinTo(Ljava/util/List;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fastJoinTo(StringBuilder\u2026form)\n        .toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-string p1, ", "

    .line 142
    check-cast p1, Ljava/lang/CharSequence;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const-string v0, ""

    if-eqz p8, :cond_1

    .line 143
    move-object p2, v0

    check-cast p2, Ljava/lang/CharSequence;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    .line 144
    move-object p3, v0

    check-cast p3, Ljava/lang/CharSequence;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    const/4 p4, -0x1

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    const-string p2, "..."

    .line 146
    move-object p5, p2

    check-cast p5, Ljava/lang/CharSequence;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    const/4 p6, 0x0

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    .line 141
    invoke-static/range {p2 .. p8}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->fastJoinToString(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final fastMap(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 247
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 85
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final fastMapNotNull(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 277
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 214
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final fastToSet(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 240
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 241
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_0
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
