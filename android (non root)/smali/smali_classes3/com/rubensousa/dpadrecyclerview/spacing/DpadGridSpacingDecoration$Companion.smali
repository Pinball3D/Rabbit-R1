.class public final Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;
.super Ljava/lang/Object;
.source "DpadGridSpacingDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0006H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;",
        "",
        "()V",
        "create",
        "Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;",
        "itemSpacing",
        "",
        "perpendicularItemSpacing",
        "edgeSpacing",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;IIIILjava/lang/Object;)Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    move p2, p1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, p1

    .line 46
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;->create(III)Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(III)Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 51
    new-instance p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
