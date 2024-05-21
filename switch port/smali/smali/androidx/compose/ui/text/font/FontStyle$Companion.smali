.class public final Landroidx/compose/ui/text/font/FontStyle$Companion;
.super Ljava/lang/Object;
.source "FontStyle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/FontStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000b\u00f8\u0001\u0000R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\t\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/FontStyle$Companion;",
        "",
        "()V",
        "Italic",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "getItalic-_-LCdwA",
        "()I",
        "I",
        "Normal",
        "getNormal-_-LCdwA",
        "values",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/font/FontStyle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItalic-_-LCdwA()I
    .locals 0

    .line 41
    invoke-static {}, Landroidx/compose/ui/text/font/FontStyle;->access$getItalic$cp()I

    move-result p0

    return p0
.end method

.method public final getNormal-_-LCdwA()I
    .locals 0

    .line 38
    invoke-static {}, Landroidx/compose/ui/text/font/FontStyle;->access$getNormal$cp()I

    move-result p0

    return p0
.end method

.method public final values()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/FontStyle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/compose/ui/text/font/FontStyle;

    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
