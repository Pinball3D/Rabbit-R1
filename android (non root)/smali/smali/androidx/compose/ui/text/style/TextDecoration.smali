.class public final Landroidx/compose/ui/text/style/TextDecoration;
.super Ljava/lang/Object;
.source "TextDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/TextDecoration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0000H\u0086\u0002J\u0013\u0010\n\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0011\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0000H\u0086\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/ui/text/style/TextDecoration;",
        "",
        "mask",
        "",
        "(I)V",
        "getMask",
        "()I",
        "contains",
        "",
        "other",
        "equals",
        "hashCode",
        "plus",
        "decoration",
        "toString",
        "",
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
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

.field private static final LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

.field private static final None:Landroidx/compose/ui/text/style/TextDecoration;

.field private static final Underline:Landroidx/compose/ui/text/style/TextDecoration;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/TextDecoration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 31
    new-instance v0, Landroidx/compose/ui/text/style/TextDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    .line 39
    new-instance v0, Landroidx/compose/ui/text/style/TextDecoration;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    .line 47
    new-instance v0, Landroidx/compose/ui/text/style/TextDecoration;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/text/style/TextDecoration;->LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    return-void
.end method

.method public static final synthetic access$getLineThrough$cp()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

    return-object v0
.end method

.method public static final synthetic access$getNone$cp()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    return-object v0
.end method

.method public static final synthetic access$getUnderline$cp()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    return-object v0
.end method


# virtual methods
.method public final contains(Landroidx/compose/ui/text/style/TextDecoration;)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 79
    iget p1, p1, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    or-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 102
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/TextDecoration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget p0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 103
    check-cast p1, Landroidx/compose/ui/text/style/TextDecoration;

    iget p1, p1, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMask()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    return p0
.end method

.method public final plus(Landroidx/compose/ui/text/style/TextDecoration;)Landroidx/compose/ui/text/style/TextDecoration;
    .locals 1

    const-string v0, "decoration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroidx/compose/ui/text/style/TextDecoration;

    iget p0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    iget p1, p1, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    if-nez v0, :cond_0

    const-string p0, "TextDecoration.None"

    return-object p0

    .line 87
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    iget v0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    .line 88
    iget v2, v2, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const-string v0, "Underline"

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget p0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

    .line 91
    iget v0, v0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    const-string p0, "LineThrough"

    .line 92
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TextDecoration."

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TextDecoration["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/text/TempListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
