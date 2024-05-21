.class public final Landroidx/compose/material3/DateInputFormat;
.super Ljava/lang/Object;
.source "CalendarModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/material3/DateInputFormat;",
        "",
        "patternWithDelimiters",
        "",
        "delimiter",
        "",
        "(Ljava/lang/String;C)V",
        "getDelimiter",
        "()C",
        "getPatternWithDelimiters",
        "()Ljava/lang/String;",
        "patternWithoutDelimiters",
        "getPatternWithoutDelimiters",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final delimiter:C

.field private final patternWithDelimiters:Ljava/lang/String;

.field private final patternWithoutDelimiters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .locals 7

    const-string v0, "patternWithDelimiters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DateInputFormat;->patternWithDelimiters:Ljava/lang/String;

    iput-char p2, p0, Landroidx/compose/material3/DateInputFormat;->delimiter:C

    .line 294
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/DateInputFormat;->patternWithoutDelimiters:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/material3/DateInputFormat;Ljava/lang/String;CILjava/lang/Object;)Landroidx/compose/material3/DateInputFormat;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroidx/compose/material3/DateInputFormat;->patternWithDelimiters:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-char p2, p0, Landroidx/compose/material3/DateInputFormat;->delimiter:C

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DateInputFormat;->copy(Ljava/lang/String;C)Landroidx/compose/material3/DateInputFormat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DateInputFormat;->patternWithDelimiters:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()C
    .locals 0

    iget-char p0, p0, Landroidx/compose/material3/DateInputFormat;->delimiter:C

    return p0
.end method

.method public final copy(Ljava/lang/String;C)Landroidx/compose/material3/DateInputFormat;
    .locals 0

    const-string p0, "patternWithDelimiters"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/compose/material3/DateInputFormat;

    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/DateInputFormat;-><init>(Ljava/lang/String;C)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/DateInputFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material3/DateInputFormat;

    iget-object v1, p0, Landroidx/compose/material3/DateInputFormat;->patternWithDelimiters:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/material3/DateInputFormat;->patternWithDelimiters:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-char p0, p0, Landroidx/compose/material3/DateInputFormat;->delimiter:C

    iget-char p1, p1, Landroidx/compose/material3/DateInputFormat;->delimiter:C

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDelimiter()C
    .locals 0

    iget-char p0, p0, Landroidx/compose/material3/DateInputFormat;->delimiter:C

    return p0
.end method

.method public final getPatternWithDelimiters()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DateInputFormat;->patternWithDelimiters:Ljava/lang/String;

    return-object p0
.end method

.method public final getPatternWithoutDelimiters()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DateInputFormat;->patternWithoutDelimiters:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/DateInputFormat;->patternWithDelimiters:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-char p0, p0, Landroidx/compose/material3/DateInputFormat;->delimiter:C

    invoke-static {p0}, Ljava/lang/Character;->hashCode(C)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DateInputFormat(patternWithDelimiters="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/material3/DateInputFormat;->patternWithDelimiters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char p0, p0, Landroidx/compose/material3/DateInputFormat;->delimiter:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
