.class final enum Landroidx/compose/ui/text/AnnotationType;
.super Ljava/lang/Enum;
.source "Savers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/text/AnnotationType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/ui/text/AnnotationType;",
        "",
        "(Ljava/lang/String;I)V",
        "Paragraph",
        "Span",
        "VerbatimTts",
        "Url",
        "String",
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
.field private static final synthetic $VALUES:[Landroidx/compose/ui/text/AnnotationType;

.field public static final enum Paragraph:Landroidx/compose/ui/text/AnnotationType;

.field public static final enum Span:Landroidx/compose/ui/text/AnnotationType;

.field public static final enum String:Landroidx/compose/ui/text/AnnotationType;

.field public static final enum Url:Landroidx/compose/ui/text/AnnotationType;

.field public static final enum VerbatimTts:Landroidx/compose/ui/text/AnnotationType;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/ui/text/AnnotationType;
    .locals 5

    sget-object v0, Landroidx/compose/ui/text/AnnotationType;->Paragraph:Landroidx/compose/ui/text/AnnotationType;

    sget-object v1, Landroidx/compose/ui/text/AnnotationType;->Span:Landroidx/compose/ui/text/AnnotationType;

    sget-object v2, Landroidx/compose/ui/text/AnnotationType;->VerbatimTts:Landroidx/compose/ui/text/AnnotationType;

    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Url:Landroidx/compose/ui/text/AnnotationType;

    sget-object v4, Landroidx/compose/ui/text/AnnotationType;->String:Landroidx/compose/ui/text/AnnotationType;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/compose/ui/text/AnnotationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Landroidx/compose/ui/text/AnnotationType;

    const-string v1, "Paragraph"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/AnnotationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/text/AnnotationType;->Paragraph:Landroidx/compose/ui/text/AnnotationType;

    .line 116
    new-instance v0, Landroidx/compose/ui/text/AnnotationType;

    const-string v1, "Span"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/AnnotationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/text/AnnotationType;->Span:Landroidx/compose/ui/text/AnnotationType;

    .line 117
    new-instance v0, Landroidx/compose/ui/text/AnnotationType;

    const-string v1, "VerbatimTts"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/AnnotationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/text/AnnotationType;->VerbatimTts:Landroidx/compose/ui/text/AnnotationType;

    .line 118
    new-instance v0, Landroidx/compose/ui/text/AnnotationType;

    const-string v1, "Url"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/AnnotationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/text/AnnotationType;->Url:Landroidx/compose/ui/text/AnnotationType;

    .line 119
    new-instance v0, Landroidx/compose/ui/text/AnnotationType;

    const-string v1, "String"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/AnnotationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/text/AnnotationType;->String:Landroidx/compose/ui/text/AnnotationType;

    invoke-static {}, Landroidx/compose/ui/text/AnnotationType;->$values()[Landroidx/compose/ui/text/AnnotationType;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/AnnotationType;->$VALUES:[Landroidx/compose/ui/text/AnnotationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/text/AnnotationType;
    .locals 1

    const-class v0, Landroidx/compose/ui/text/AnnotationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/AnnotationType;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/text/AnnotationType;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/AnnotationType;->$VALUES:[Landroidx/compose/ui/text/AnnotationType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/text/AnnotationType;

    return-object v0
.end method
