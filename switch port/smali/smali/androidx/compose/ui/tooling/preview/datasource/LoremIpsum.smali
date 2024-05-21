.class public final Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;
.super Ljava/lang/Object;
.source "LoremIpsum.kt"

# interfaces
.implements Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/tooling/preview/PreviewParameterProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0002R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;",
        "Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;",
        "",
        "()V",
        "words",
        "",
        "(I)V",
        "values",
        "Lkotlin/sequences/Sequence;",
        "getValues",
        "()Lkotlin/sequences/Sequence;",
        "generateLoremIpsum",
        "ui-tooling-preview_release"
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


# instance fields
.field private final words:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1f4

    .line 49
    invoke-direct {p0, v0}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;->words:I

    return-void
.end method

.method private final generateLoremIpsum(I)Ljava/lang/String;
    .locals 9

    .line 58
    new-instance p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 59
    invoke-static {}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsumKt;->access$getLOREM_IPSUM_SOURCE$p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    new-instance v1, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum$generateLoremIpsum$1;

    invoke-direct {v1, p0, v0}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum$generateLoremIpsum$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;I)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->generateSequence(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 62
    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v0

    const-string p0, " "

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getValues()Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;->words:I

    .line 52
    invoke-direct {p0, v0}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;->generateLoremIpsum(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method
