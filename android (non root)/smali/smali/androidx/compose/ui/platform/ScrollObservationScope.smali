.class public final Landroidx/compose/ui/platform/ScrollObservationScope;
.super Ljava/lang/Object;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0000\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000cR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u0017\"\u0004\u0008\u001c\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0010\"\u0004\u0008 \u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/ui/platform/ScrollObservationScope;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "semanticsNodeId",
        "",
        "allScopes",
        "",
        "oldXValue",
        "",
        "oldYValue",
        "horizontalScrollAxisRange",
        "Landroidx/compose/ui/semantics/ScrollAxisRange;",
        "verticalScrollAxisRange",
        "(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/ScrollAxisRange;Landroidx/compose/ui/semantics/ScrollAxisRange;)V",
        "getAllScopes",
        "()Ljava/util/List;",
        "getHorizontalScrollAxisRange",
        "()Landroidx/compose/ui/semantics/ScrollAxisRange;",
        "setHorizontalScrollAxisRange",
        "(Landroidx/compose/ui/semantics/ScrollAxisRange;)V",
        "isValidOwnerScope",
        "",
        "()Z",
        "getOldXValue",
        "()Ljava/lang/Float;",
        "setOldXValue",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "getOldYValue",
        "setOldYValue",
        "getSemanticsNodeId",
        "()I",
        "getVerticalScrollAxisRange",
        "setVerticalScrollAxisRange",
        "ui_release"
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
.field private final allScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;"
        }
    .end annotation
.end field

.field private horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

.field private oldXValue:Ljava/lang/Float;

.field private oldYValue:Ljava/lang/Float;

.field private final semanticsNodeId:I

.field private verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/ScrollAxisRange;Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Landroidx/compose/ui/semantics/ScrollAxisRange;",
            "Landroidx/compose/ui/semantics/ScrollAxisRange;",
            ")V"
        }
    .end annotation

    const-string v0, "allScopes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    iput-object p2, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->allScopes:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    iput-object p4, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    iput-object p5, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    iput-object p6, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-void
.end method


# virtual methods
.method public final getAllScopes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->allScopes:Ljava/util/List;

    return-object p0
.end method

.method public final getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/ScrollAxisRange;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-object p0
.end method

.method public final getOldXValue()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    return-object p0
.end method

.method public final getOldYValue()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    return-object p0
.end method

.method public final getSemanticsNodeId()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    return p0
.end method

.method public final getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/ScrollAxisRange;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-object p0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->allScopes:Ljava/util/List;

    .line 3463
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-void
.end method

.method public final setOldXValue(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    return-void
.end method

.method public final setOldYValue(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    return-void
.end method

.method public final setVerticalScrollAxisRange(Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-void
.end method
