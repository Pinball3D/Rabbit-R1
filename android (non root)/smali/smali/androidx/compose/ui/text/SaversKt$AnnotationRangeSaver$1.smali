.class final Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "Landroidx/compose/ui/text/AnnotatedString$Range<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u000e\u0010\u0003\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "it",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "invoke"
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
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/AnnotatedString$Range;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaverScope;",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p0, "$this$Saver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object p0

    .line 126
    instance-of v0, p0, Landroidx/compose/ui/text/ParagraphStyle;

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/compose/ui/text/AnnotationType;->Paragraph:Landroidx/compose/ui/text/AnnotationType;

    goto :goto_0

    .line 127
    :cond_0
    instance-of v0, p0, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v0, :cond_1

    sget-object p0, Landroidx/compose/ui/text/AnnotationType;->Span:Landroidx/compose/ui/text/AnnotationType;

    goto :goto_0

    .line 128
    :cond_1
    instance-of v0, p0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    if-eqz v0, :cond_2

    sget-object p0, Landroidx/compose/ui/text/AnnotationType;->VerbatimTts:Landroidx/compose/ui/text/AnnotationType;

    goto :goto_0

    .line 129
    :cond_2
    instance-of p0, p0, Landroidx/compose/ui/text/UrlAnnotation;

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/compose/ui/text/AnnotationType;->Url:Landroidx/compose/ui/text/AnnotationType;

    goto :goto_0

    .line 130
    :cond_3
    sget-object p0, Landroidx/compose/ui/text/AnnotationType;->String:Landroidx/compose/ui/text/AnnotationType;

    .line 133
    :goto_0
    sget-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 p1, 0x5

    if-ne v0, p1, :cond_4

    .line 146
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 142
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.text.UrlAnnotation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/text/UrlAnnotation;

    .line 143
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getUrlAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    .line 141
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 137
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.text.VerbatimTtsAnnotation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 138
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getVerbatimTtsAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    .line 136
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 135
    :cond_7
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.text.SpanStyle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/text/SpanStyle;

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getSpanStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 134
    :cond_8
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.text.ParagraphStyle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/text/ParagraphStyle;

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getParagraphStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    move-result-object p1

    .line 150
    :goto_1
    invoke-static {p0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 152
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p0, p1, v0, v1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 149
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 123
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;->invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/AnnotatedString$Range;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
