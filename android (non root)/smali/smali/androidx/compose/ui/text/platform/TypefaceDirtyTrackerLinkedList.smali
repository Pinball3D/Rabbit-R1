.class final Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;
.super Ljava/lang/Object;
.source "AndroidParagraphIntrinsics.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;",
        "",
        "resolveResult",
        "Landroidx/compose/runtime/State;",
        "next",
        "(Landroidx/compose/runtime/State;Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;)V",
        "initial",
        "getInitial",
        "()Ljava/lang/Object;",
        "isStaleResolvedFont",
        "",
        "()Z",
        "typeface",
        "Landroid/graphics/Typeface;",
        "getTypeface",
        "()Landroid/graphics/Typeface;",
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


# instance fields
.field private final initial:Ljava/lang/Object;

.field private final next:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

.field private final resolveResult:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;",
            ")V"
        }
    .end annotation

    const-string v0, "resolveResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->resolveResult:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->next:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    .line 197
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->initial:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 193
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;)V

    return-void
.end method


# virtual methods
.method public final getInitial()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->initial:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->initial:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type android.graphics.Typeface"

    .line 199
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method

.method public final isStaleResolvedFont()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->resolveResult:Landroidx/compose/runtime/State;

    .line 202
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->initial:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->next:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->isStaleResolvedFont()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
