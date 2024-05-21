.class final Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/ssa/SsaStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Overrides"
.end annotation


# static fields
.field private static final ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

.field private static final BRACES_PATTERN:Ljava/util/regex/Pattern;

.field private static final MOVE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PADDED_DECIMAL_PATTERN:Ljava/lang/String; = "\\s*\\d+(?:\\.\\d+)?\\s*"

.field private static final POSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SsaStyle.Overrides"


# instance fields
.field public final alignment:I

.field public final position:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\\{([^}]*)\\}"

    .line 437
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\s*\\d+(?:\\.\\d+)?\\s*"

    .line 442
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\\\\pos\\((%1$s),(%1$s)\\)"

    .line 443
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->POSITION_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)"

    .line 445
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 447
    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->MOVE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\\\an(\\d+)"

    .line 451
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(ILandroid/graphics/PointF;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->alignment:I

    iput-object p2, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    return-void
.end method

.method private static parseAlignmentOverride(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

    .line 532
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 533
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 534
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->access$000(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static parseFromDialogue(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;
    .locals 5

    sget-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    .line 464
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    .line 465
    :catch_0
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 466
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 468
    :try_start_0
    invoke-static {v3}, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->parsePosition(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    move-object v1, v4

    .line 476
    :catch_1
    :cond_1
    :try_start_1
    invoke-static {v3}, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->parseAlignmentOverride(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v3, v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 484
    :cond_2
    new-instance p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;

    invoke-direct {p0, v2, v1}, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;-><init>(ILandroid/graphics/PointF;)V

    return-object p0
.end method

.method private static parsePosition(Ljava/lang/String;)Landroid/graphics/PointF;
    .locals 6

    sget-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->POSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 503
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sget-object v1, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->MOVE_PATTERN:Ljava/util/regex/Pattern;

    .line 504
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 505
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 506
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle.Overrides"

    invoke-static {v1, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 519
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 521
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 522
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    :goto_0
    new-instance v1, Landroid/graphics/PointF;

    .line 527
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 528
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {v1, p0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static stripStyleOverrides(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    .line 488
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
