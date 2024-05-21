.class final Landroidx/compose/material3/DateVisualTransformation;
.super Ljava/lang/Object;
.source "DateInput.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/VisualTransformation;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateInput.kt\nandroidx/compose/material3/DateVisualTransformation\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,358:1\n1183#2,3:359\n*S KotlinDebug\n*F\n+ 1 DateInput.kt\nandroidx/compose/material3/DateVisualTransformation\n*L\n339#1:359,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0008\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/material3/DateVisualTransformation;",
        "Landroidx/compose/ui/text/input/VisualTransformation;",
        "dateInputFormat",
        "Landroidx/compose/material3/DateInputFormat;",
        "(Landroidx/compose/material3/DateInputFormat;)V",
        "dateFormatLength",
        "",
        "dateOffsetTranslator",
        "androidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1",
        "Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;",
        "firstDelimiterOffset",
        "secondDelimiterOffset",
        "filter",
        "Landroidx/compose/ui/text/input/TransformedText;",
        "text",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final dateFormatLength:I

.field private final dateInputFormat:Landroidx/compose/material3/DateInputFormat;

.field private final dateOffsetTranslator:Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;

.field private final firstDelimiterOffset:I

.field private final secondDelimiterOffset:I


# direct methods
.method public constructor <init>(Landroidx/compose/material3/DateInputFormat;)V
    .locals 7

    const-string v0, "dateInputFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DateVisualTransformation;->dateInputFormat:Landroidx/compose/material3/DateInputFormat;

    .line 305
    invoke-virtual {p1}, Landroidx/compose/material3/DateInputFormat;->getPatternWithDelimiters()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/compose/material3/DateInputFormat;->getDelimiter()C

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/compose/material3/DateVisualTransformation;->firstDelimiterOffset:I

    .line 307
    invoke-virtual {p1}, Landroidx/compose/material3/DateInputFormat;->getPatternWithDelimiters()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/compose/material3/DateInputFormat;->getDelimiter()C

    move-result v2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/compose/material3/DateVisualTransformation;->secondDelimiterOffset:I

    .line 308
    invoke-virtual {p1}, Landroidx/compose/material3/DateInputFormat;->getPatternWithoutDelimiters()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Landroidx/compose/material3/DateVisualTransformation;->dateFormatLength:I

    .line 310
    new-instance p1, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;-><init>(Landroidx/compose/material3/DateVisualTransformation;)V

    iput-object p1, p0, Landroidx/compose/material3/DateVisualTransformation;->dateOffsetTranslator:Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;

    return-void
.end method

.method public static final synthetic access$getDateFormatLength$p(Landroidx/compose/material3/DateVisualTransformation;)I
    .locals 0

    .line 300
    iget p0, p0, Landroidx/compose/material3/DateVisualTransformation;->dateFormatLength:I

    return p0
.end method

.method public static final synthetic access$getFirstDelimiterOffset$p(Landroidx/compose/material3/DateVisualTransformation;)I
    .locals 0

    .line 300
    iget p0, p0, Landroidx/compose/material3/DateVisualTransformation;->firstDelimiterOffset:I

    return p0
.end method

.method public static final synthetic access$getSecondDelimiterOffset$p(Landroidx/compose/material3/DateVisualTransformation;)I
    .locals 0

    .line 300
    iget p0, p0, Landroidx/compose/material3/DateVisualTransformation;->secondDelimiterOffset:I

    return p0
.end method


# virtual methods
.method public filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;
    .locals 9

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Landroidx/compose/material3/DateVisualTransformation;->dateFormatLength:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 334
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Landroidx/compose/material3/DateVisualTransformation;->dateFormatLength:I

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object p1

    .line 339
    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, ""

    move-object v4, v0

    move v0, v2

    .line 360
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v3, v0, 0x1

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Landroidx/compose/material3/DateVisualTransformation;->firstDelimiterOffset:I

    if-eq v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x2

    iget v4, p0, Landroidx/compose/material3/DateVisualTransformation;->secondDelimiterOffset:I

    if-ne v0, v4, :cond_1

    goto :goto_2

    :cond_1
    move-object v4, v1

    goto :goto_3

    .line 342
    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/DateVisualTransformation;->dateInputFormat:Landroidx/compose/material3/DateInputFormat;

    invoke-virtual {v1}, Landroidx/compose/material3/DateInputFormat;->getDelimiter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_1

    .line 345
    :cond_3
    new-instance p1, Landroidx/compose/ui/text/input/TransformedText;

    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Landroidx/compose/material3/DateVisualTransformation;->dateOffsetTranslator:Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;

    check-cast p0, Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    return-object p1
.end method
