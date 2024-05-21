.class final Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MultiParagraphIntrinsics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiParagraphIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiParagraphIntrinsics.kt\nandroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,152:1\n171#2,13:153\n*S KotlinDebug\n*F\n+ 1 MultiParagraphIntrinsics.kt\nandroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2\n*L\n81#1:153,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Float;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/text/MultiParagraphIntrinsics;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;->this$0:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 7

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;->this$0:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 81
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getInfoList$ui_text_release()Ljava/util/List;

    move-result-object p0

    .line 154
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 155
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 156
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 82
    invoke-virtual {v1}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->getIntrinsics()Landroidx/compose/ui/text/ParagraphIntrinsics;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result v1

    .line 157
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_2

    .line 158
    :goto_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 159
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 82
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->getIntrinsics()Landroidx/compose/ui/text/ParagraphIntrinsics;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result v5

    .line 160
    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-gez v6, :cond_1

    move-object v0, v4

    move v1, v5

    :cond_1
    if-eq v3, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v0

    .line 81
    :goto_1
    check-cast p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    if-eqz p0, :cond_3

    .line 83
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->getIntrinsics()Landroidx/compose/ui/text/ParagraphIntrinsics;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
