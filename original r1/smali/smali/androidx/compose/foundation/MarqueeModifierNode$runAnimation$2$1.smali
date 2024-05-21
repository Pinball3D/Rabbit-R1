.class final Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasicMarquee.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Float;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/MarqueeModifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/MarqueeModifierNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 349
    invoke-static {v0}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getContentWidth(Landroidx/compose/foundation/MarqueeModifierNode;)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    invoke-static {v1}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getContainerWidth(Landroidx/compose/foundation/MarqueeModifierNode;)I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 350
    invoke-virtual {v0}, Landroidx/compose/foundation/MarqueeModifierNode;->getAnimationMode-ZbEOnfQ()I

    move-result v0

    sget-object v1, Landroidx/compose/foundation/MarqueeAnimationMode;->Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/MarqueeAnimationMode$Companion;->getWhileFocused-ZbEOnfQ()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/MarqueeAnimationMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    invoke-static {v0}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getHasFocus(Landroidx/compose/foundation/MarqueeModifierNode;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 351
    invoke-static {v0}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getContentWidth(Landroidx/compose/foundation/MarqueeModifierNode;)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getSpacingPx(Landroidx/compose/foundation/MarqueeModifierNode;)I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 346
    invoke-virtual {p0}, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
