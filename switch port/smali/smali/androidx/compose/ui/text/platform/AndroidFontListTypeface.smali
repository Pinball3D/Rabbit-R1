.class public final Landroidx/compose/ui/text/platform/AndroidFontListTypeface;
.super Ljava/lang/Object;
.source "AndroidFontListTypeface.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/platform/AndroidTypeface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/platform/AndroidFontListTypeface$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidFontListTypeface.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidFontListTypeface.android.kt\nandroidx/compose/ui/text/platform/AndroidFontListTypeface\n+ 2 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,173:1\n35#2,3:174\n38#2,2:181\n40#2:184\n56#2,4:196\n60#2,3:204\n63#2:208\n33#3,4:177\n38#3:183\n151#3,3:185\n33#3,4:188\n154#3,2:192\n38#3:194\n156#3:195\n33#3,4:200\n38#3:207\n33#3,6:209\n*S KotlinDebug\n*F\n+ 1 AndroidFontListTypeface.android.kt\nandroidx/compose/ui/text/platform/AndroidFontListTypeface\n*L\n66#1:174,3\n66#1:181,2\n66#1:184\n71#1:196,4\n71#1:204,3\n71#1:208\n66#1:177,4\n66#1:183\n69#1:185,3\n69#1:188,4\n69#1:192,2\n69#1:194\n69#1:195\n71#1:200,4\n71#1:207\n79#1:209,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "This is not supported after downloadable fonts."
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB@\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001c\u0008\u0002\u0010\u0006\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ-\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0002\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\n\n\u0002\u0008\u0013\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/AndroidFontListTypeface;",
        "Landroidx/compose/ui/text/platform/AndroidTypeface;",
        "fontFamily",
        "Landroidx/compose/ui/text/font/FontListFontFamily;",
        "context",
        "Landroid/content/Context;",
        "necessaryStyles",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "fontMatcher",
        "Landroidx/compose/ui/text/font/FontMatcher;",
        "(Landroidx/compose/ui/text/font/FontListFontFamily;Landroid/content/Context;Ljava/util/List;Landroidx/compose/ui/text/font/FontMatcher;)V",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "getFontFamily",
        "()Landroidx/compose/ui/text/font/FontFamily;",
        "getFontMatcher",
        "()Landroidx/compose/ui/text/font/FontMatcher;",
        "fontMatcher$1",
        "loadedTypefaces",
        "",
        "Landroidx/compose/ui/text/font/Font;",
        "Landroid/graphics/Typeface;",
        "getNativeTypeface",
        "fontWeight",
        "fontStyle",
        "synthesis",
        "Landroidx/compose/ui/text/font/FontSynthesis;",
        "getNativeTypeface-PYhJU0U",
        "(Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;",
        "Companion",
        "ui-text_release"
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
.field private static final Companion:Landroidx/compose/ui/text/platform/AndroidFontListTypeface$Companion;

.field private static final fontMatcher:Landroidx/compose/ui/text/font/FontMatcher;


# instance fields
.field private final fontFamily:Landroidx/compose/ui/text/font/FontFamily;

.field private final fontMatcher$1:Landroidx/compose/ui/text/font/FontMatcher;

.field private final loadedTypefaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/text/font/Font;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/platform/AndroidFontListTypeface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->Companion:Landroidx/compose/ui/text/platform/AndroidFontListTypeface$Companion;

    .line 61
    new-instance v0, Landroidx/compose/ui/text/font/FontMatcher;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/FontMatcher;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->fontMatcher:Landroidx/compose/ui/text/font/FontMatcher;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/font/FontListFontFamily;Landroid/content/Context;Ljava/util/List;Landroidx/compose/ui/text/font/FontMatcher;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/FontListFontFamily;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Landroidx/compose/ui/text/font/FontStyle;",
            ">;>;",
            "Landroidx/compose/ui/text/font/FontMatcher;",
            ")V"
        }
    .end annotation

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontMatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->fontMatcher$1:Landroidx/compose/ui/text/font/FontMatcher;

    .line 66
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontListFontFamily;->getFonts()Ljava/util/List;

    move-result-object p4

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 179
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 181
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 67
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getLoadingStrategy-PKNRLFQ()I

    move-result v5

    sget-object v6, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->getBlocking-PKNRLFQ()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_1
    check-cast v0, Ljava/util/List;

    if-eqz p3, :cond_5

    .line 186
    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    .line 190
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 192
    move-object v5, p4

    check-cast v5, Ljava/util/Collection;

    check-cast v4, Lkotlin/Pair;

    .line 69
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/FontStyle;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    move-result v4

    iget-object v7, p0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->fontMatcher$1:Landroidx/compose/ui/text/font/FontMatcher;

    .line 70
    invoke-virtual {v7, v0, v6, v4}, Landroidx/compose/ui/text/font/FontMatcher;->matchFont-RetOiIg(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 192
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    :cond_2
    check-cast p4, Ljava/util/List;

    .line 71
    invoke-static {p4}, Landroidx/compose/ui/text/TempListUtilsKt;->fastFilterNotNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 197
    new-instance p4, Ljava/util/HashSet;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p4, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_4

    .line 202
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 204
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/text/font/Font;

    .line 205
    invoke-virtual {p4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 208
    :cond_4
    check-cast v1, Ljava/util/List;

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 74
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    .line 77
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p3, Ljava/util/Map;

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    :goto_5
    if-ge v2, p4, :cond_7

    .line 211
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 212
    check-cast v1, Landroidx/compose/ui/text/font/Font;

    .line 81
    :try_start_0
    sget-object v3, Landroidx/compose/ui/text/platform/AndroidTypefaceCache;->INSTANCE:Landroidx/compose/ui/text/platform/AndroidTypefaceCache;

    invoke-virtual {v3, p2, v1}, Landroidx/compose/ui/text/platform/AndroidTypefaceCache;->getOrCreate(Landroid/content/Context;Landroidx/compose/ui/text/font/Font;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 83
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot create Typeface from "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iput-object p3, p0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->loadedTypefaces:Ljava/util/Map;

    .line 90
    check-cast p1, Landroidx/compose/ui/text/font/FontFamily;

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    return-void

    .line 75
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not match font"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/FontListFontFamily;Landroid/content/Context;Ljava/util/List;Landroidx/compose/ui/text/font/FontMatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    sget-object p4, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->fontMatcher:Landroidx/compose/ui/text/font/FontMatcher;

    .line 53
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;-><init>(Landroidx/compose/ui/text/font/FontListFontFamily;Landroid/content/Context;Ljava/util/List;Landroidx/compose/ui/text/font/FontMatcher;)V

    return-void
.end method

.method public static final synthetic access$getFontMatcher$cp()Landroidx/compose/ui/text/font/FontMatcher;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->fontMatcher:Landroidx/compose/ui/text/font/FontMatcher;

    return-object v0
.end method


# virtual methods
.method public getFontFamily()Landroidx/compose/ui/text/font/FontFamily;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    return-object p0
.end method

.method public final getFontMatcher()Landroidx/compose/ui/text/font/FontMatcher;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->fontMatcher$1:Landroidx/compose/ui/text/font/FontMatcher;

    return-object p0
.end method

.method public getNativeTypeface-PYhJU0U(Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;
    .locals 3

    const-string v0, "fontWeight"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->fontMatcher$1:Landroidx/compose/ui/text/font/FontMatcher;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->loadedTypefaces:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/compose/ui/text/font/FontMatcher;->matchFont-RetOiIg(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/font/Font;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidFontListTypeface;->loadedTypefaces:Ljava/util/Map;

    .line 99
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    if-eqz p0, :cond_0

    .line 101
    invoke-static {p3, p0, v0, p1, p2}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->synthesizeTypeface-FxwP2eA(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.graphics.Typeface"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not load font"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
