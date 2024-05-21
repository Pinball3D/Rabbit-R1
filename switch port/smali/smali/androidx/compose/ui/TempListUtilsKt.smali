.class public final Landroidx/compose/ui/TempListUtilsKt;
.super Ljava/lang/Object;
.source "TempListUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTempListUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TempListUtils.kt\nandroidx/compose/ui/TempListUtilsKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n33#2,6:214\n33#2,4:220\n38#2:225\n1#3:224\n*S KotlinDebug\n*F\n+ 1 TempListUtils.kt\nandroidx/compose/ui/TempListUtilsKt\n*L\n94#1:214,6\n137#1:220,4\n137#1:225\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u001a9\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00060\u0003j\u0002`\u00042\u0006\u0010\u0005\u001a\u0002H\u00022\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0002\u00a2\u0006\u0002\u0010\t\u001a_\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u0002H\r0\u000b\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u000c\"\u0004\u0008\u0002\u0010\r*\u0008\u0012\u0004\u0012\u0002H\u00020\u000e2\u001e\u0010\u0006\u001a\u001a\u0012\u0004\u0012\u0002H\u0002\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u0002H\r0\u000f0\u0007H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u001a}\u0010\u0010\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u0002\"\u000c\u0008\u0001\u0010\u0011*\u00060\u0003j\u0002`\u0004*\u0008\u0012\u0004\u0012\u0002H\u00020\u000e2\u0006\u0010\u0012\u001a\u0002H\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00082\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0002\u00a2\u0006\u0002\u0010\u0019\u001ab\u0010\u001a\u001a\u00020\u001b\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000e2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00082\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0000\u001aI\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0\u000e\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u001d*\u0008\u0012\u0004\u0012\u0002H\u00020\u000e2\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u001d0\u0007H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u001a_\u0010\u001e\u001a\u0002H\u001f\"\u0004\u0008\u0000\u0010\u001f\"\u0008\u0008\u0001\u0010\u0002*\u0002H\u001f*\u0008\u0012\u0004\u0012\u0002H\u00020\u000e2\'\u0010 \u001a#\u0012\u0013\u0012\u0011H\u001f\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u001f0!H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u00a2\u0006\u0002\u0010%\u001a\u007f\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u000e\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u001d\"\u0004\u0008\u0002\u0010\r*\u0008\u0012\u0004\u0012\u0002H\u00020\u000e2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0\u000e26\u0010\u0006\u001a2\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008((\u0012\u0013\u0012\u0011H\u001d\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008()\u0012\u0004\u0012\u0002H\r0!H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0002\u001aM\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0\u000e\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u001d*\u0008\u0012\u0004\u0012\u0002H\u00020\u000e2\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u001d0!H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006+"
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
        "fastAssociate",
        "",
        "K",
        "V",
        "",
        "Lkotlin/Pair;",
        "fastJoinTo",
        "A",
        "buffer",
        "separator",
        "prefix",
        "postfix",
        "limit",
        "",
        "truncated",
        "(Ljava/util/List;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;",
        "fastJoinToString",
        "",
        "fastMapNotNull",
        "R",
        "fastReduce",
        "S",
        "operation",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "acc",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "fastZip",
        "other",
        "a",
        "b",
        "fastZipWithNext",
        "ui_release"
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

    .line 207
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 209
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 210
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public static final fastAssociate(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 215
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 216
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 95
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
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

    .line 188
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 190
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 191
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 192
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    if-ltz p5, :cond_1

    if-gt v1, p5, :cond_2

    .line 194
    :cond_1
    invoke-static {p1, v2, p7}, Landroidx/compose/ui/TempListUtilsKt;->appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ltz p5, :cond_3

    if-le v1, p5, :cond_3

    .line 197
    invoke-interface {p1, p6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 198
    :cond_3
    invoke-interface {p1, p4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p1
.end method

.method static synthetic fastJoinTo$default(Ljava/util/List;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;
    .locals 6

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const-string v0, ", "

    .line 181
    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 182
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    .line 183
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

    .line 185
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

    .line 179
    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/TempListUtilsKt;->fastJoinTo(Ljava/util/List;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;

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

    .line 163
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

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/TempListUtilsKt;->fastJoinTo(Ljava/util/List;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 164
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

    .line 156
    check-cast p1, Ljava/lang/CharSequence;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const-string v0, ""

    if-eqz p8, :cond_1

    .line 157
    move-object p2, v0

    check-cast p2, Ljava/lang/CharSequence;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    .line 158
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

    .line 160
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

    .line 155
    invoke-static/range {p2 .. p8}, Landroidx/compose/ui/TempListUtilsKt;->fastJoinToString(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 222
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 138
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final fastReduce(Ljava/util/List;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T::TS;>(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-TT;+TS;>;)TS;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_0

    .line 72
    :goto_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Empty collection can\'t be reduced."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final fastZip(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TR;+TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 119
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final fastZipWithNext(Ljava/util/List;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
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
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 43
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 44
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 45
    invoke-interface {p1, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    goto :goto_0

    :cond_1
    return-object v0

    .line 39
    :cond_2
    :goto_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
