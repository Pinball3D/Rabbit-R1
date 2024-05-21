.class public final Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;
.super Ljava/lang/Object;
.source "SpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController$Operation$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\n\u0010\u0007\u001a\u00020\u0004*\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;",
        "",
        "()V",
        "from",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$State;",
        "visibility",
        "",
        "asOperationState",
        "Landroid/view/View;",
        "fragment_release"
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

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final asOperationState(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 440
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    .line 456
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    goto :goto_0

    .line 457
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown visibility "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 455
    :cond_1
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    goto :goto_0

    .line 454
    :cond_2
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    :goto_0
    return-object p0
.end method
