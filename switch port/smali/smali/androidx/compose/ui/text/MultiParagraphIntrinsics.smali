.class public final Landroidx/compose/ui/text/MultiParagraphIntrinsics;
.super Ljava/lang/Object;
.source "MultiParagraphIntrinsics.kt"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiParagraphIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiParagraphIntrinsics.kt\nandroidx/compose/ui/text/MultiParagraphIntrinsics\n+ 2 AnnotatedString.kt\nandroidx/compose/ui/text/AnnotatedStringKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n803#2:153\n804#2,5:162\n151#3,3:154\n33#3,4:157\n154#3:161\n155#3:167\n38#3:168\n156#3:169\n101#3,2:170\n33#3,6:172\n103#3:178\n1#4:179\n*S KotlinDebug\n*F\n+ 1 MultiParagraphIntrinsics.kt\nandroidx/compose/ui/text/MultiParagraphIntrinsics\n*L\n95#1:153\n95#1:162,5\n95#1:154,3\n95#1:157,4\n95#1:161\n95#1:167\n95#1:168\n95#1:169\n120#1:170,2\n120#1:172,6\n120#1:178\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B;\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eB9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u0018\u0010&\u001a\u00020\'2\u0006\u0010\u0004\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001c\u001a\u00020\u001d8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010\"\u001a\u00020\u001d8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010!\u001a\u0004\u0008#\u0010\u001fR\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001b\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/compose/ui/text/MultiParagraphIntrinsics;",
        "Landroidx/compose/ui/text/ParagraphIntrinsics;",
        "annotatedString",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "style",
        "Landroidx/compose/ui/text/TextStyle;",
        "placeholders",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "Landroidx/compose/ui/text/Placeholder;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "resourceLoader",
        "Landroidx/compose/ui/text/font/Font$ResourceLoader;",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/Font$ResourceLoader;)V",
        "fontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V",
        "getAnnotatedString",
        "()Landroidx/compose/ui/text/AnnotatedString;",
        "hasStaleResolvedFonts",
        "",
        "getHasStaleResolvedFonts",
        "()Z",
        "infoList",
        "Landroidx/compose/ui/text/ParagraphIntrinsicInfo;",
        "getInfoList$ui_text_release",
        "()Ljava/util/List;",
        "maxIntrinsicWidth",
        "",
        "getMaxIntrinsicWidth",
        "()F",
        "maxIntrinsicWidth$delegate",
        "Lkotlin/Lazy;",
        "minIntrinsicWidth",
        "getMinIntrinsicWidth",
        "minIntrinsicWidth$delegate",
        "getPlaceholders",
        "resolveTextDirection",
        "Landroidx/compose/ui/text/ParagraphStyle;",
        "defaultStyle",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final annotatedString:Landroidx/compose/ui/text/AnnotatedString;

.field private final infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/ParagraphIntrinsicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final maxIntrinsicWidth$delegate:Lkotlin/Lazy;

.field private final minIntrinsicWidth$delegate:Lkotlin/Lazy;

.field private final placeholders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/Font$ResourceLoader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/text/font/Font$ResourceLoader;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Font.ResourceLoader is deprecated, call with fontFamilyResolver"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "MultiParagraphIntrinsics(annotatedString, style, placeholders, density, fontFamilyResolver)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "annotatedString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceLoader"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p5}, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage_androidKt;->createFontFamilyResolver(Landroidx/compose/ui/text/font/Font$ResourceLoader;)Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 64
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "annotatedString"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "style"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "placeholders"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "density"

    move-object/from16 v11, p4

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fontFamilyResolver"

    move-object/from16 v12, p5

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iput-object v3, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->placeholders:Ljava/util/List;

    .line 74
    sget-object v3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v4, Landroidx/compose/ui/text/MultiParagraphIntrinsics$minIntrinsicWidth$2;

    invoke-direct {v4, v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$minIntrinsicWidth$2;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->minIntrinsicWidth$delegate:Lkotlin/Lazy;

    .line 80
    sget-object v3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v4, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;

    invoke-direct {v4, v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->maxIntrinsicWidth$delegate:Lkotlin/Lazy;

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/TextStyle;->toParagraphStyle()Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v3

    .line 153
    invoke-static {v1, v3}, Landroidx/compose/ui/text/AnnotatedStringKt;->normalizedParagraphStyles(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/ParagraphStyle;)Ljava/util/List;

    move-result-object v4

    .line 155
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    const/4 v5, 0x0

    move v15, v5

    :goto_0
    if-ge v15, v14, :cond_0

    .line 159
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 161
    move-object v10, v13

    check-cast v10, Ljava/util/Collection;

    move-object/from16 v16, v5

    check-cast v16, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 163
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v5

    .line 164
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v6

    .line 162
    invoke-static {v1, v5, v6}, Landroidx/compose/ui/text/AnnotatedStringKt;->access$substringWithoutParagraphStyles(Landroidx/compose/ui/text/AnnotatedString;II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v5

    .line 97
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/ParagraphStyle;

    .line 96
    invoke-static {v0, v6, v3}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->access$resolveTextDirection(Landroidx/compose/ui/text/MultiParagraphIntrinsics;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v6

    .line 101
    new-instance v9, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 103
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-virtual {v2, v6}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v6

    .line 105
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStyles()Ljava/util/List;

    move-result-object v8

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getPlaceholders()Ljava/util/List;

    move-result-object v5

    .line 107
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v1

    .line 108
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v2

    .line 106
    invoke-static {v5, v1, v2}, Landroidx/compose/ui/text/MultiParagraphIntrinsicsKt;->access$getLocalPlaceholders(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    move-object v5, v7

    move-object v7, v8

    move-object v8, v1

    move-object v1, v9

    move-object/from16 v9, p4

    move-object v2, v10

    move-object/from16 v10, p5

    .line 102
    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/text/ParagraphIntrinsicsKt;->ParagraphIntrinsics(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/ui/text/ParagraphIntrinsics;

    move-result-object v5

    .line 113
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v6

    .line 114
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v7

    .line 101
    invoke-direct {v1, v5, v6, v7}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;-><init>(Landroidx/compose/ui/text/ParagraphIntrinsics;II)V

    .line 161
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_0

    .line 169
    :cond_0
    check-cast v13, Ljava/util/List;

    iput-object v13, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->infoList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$resolveTextDirection(Landroidx/compose/ui/text/MultiParagraphIntrinsics;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->resolveTextDirection(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object p0

    return-object p0
.end method

.method private final resolveTextDirection(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 13

    .line 134
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getTextDirection-mmuk1to()Landroidx/compose/ui/text/style/TextDirection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextDirection;->unbox-impl()I

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p2}, Landroidx/compose/ui/text/ParagraphStyle;->getTextDirection-mmuk1to()Landroidx/compose/ui/text/style/TextDirection;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1fd

    const/4 v12, 0x0

    move-object v0, p1

    .line 134
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/ParagraphStyle;->copy-NH1kkwU$default(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;Landroidx/compose/ui/text/style/TextMotion;ILjava/lang/Object;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    return-object p0
.end method

.method public getHasStaleResolvedFonts()Z
    .locals 4

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->infoList:Ljava/util/List;

    .line 173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 174
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 171
    check-cast v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 120
    invoke-virtual {v3}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->getIntrinsics()Landroidx/compose/ui/text/ParagraphIntrinsics;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final getInfoList$ui_text_release()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/ParagraphIntrinsicInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->infoList:Ljava/util/List;

    return-object p0
.end method

.method public getMaxIntrinsicWidth()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->maxIntrinsicWidth$delegate:Lkotlin/Lazy;

    .line 80
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getMinIntrinsicWidth()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->minIntrinsicWidth$delegate:Lkotlin/Lazy;

    .line 74
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getPlaceholders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->placeholders:Ljava/util/List;

    return-object p0
.end method
