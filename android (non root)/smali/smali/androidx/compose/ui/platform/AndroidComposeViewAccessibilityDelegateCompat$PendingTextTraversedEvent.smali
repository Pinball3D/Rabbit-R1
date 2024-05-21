.class final Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;
.super Ljava/lang/Object;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingTextTraversedEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;",
        "",
        "node",
        "Landroidx/compose/ui/semantics/SemanticsNode;",
        "action",
        "",
        "granularity",
        "fromIndex",
        "toIndex",
        "traverseTime",
        "",
        "(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V",
        "getAction",
        "()I",
        "getFromIndex",
        "getGranularity",
        "getNode",
        "()Landroidx/compose/ui/semantics/SemanticsNode;",
        "getToIndex",
        "getTraverseTime",
        "()J",
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
.field private final action:I

.field private final fromIndex:I

.field private final granularity:I

.field private final node:Landroidx/compose/ui/semantics/SemanticsNode;

.field private final toIndex:I

.field private final traverseTime:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    iput p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->action:I

    iput p3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->granularity:I

    iput p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->fromIndex:I

    iput p5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->toIndex:I

    iput-wide p6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->traverseTime:J

    return-void
.end method


# virtual methods
.method public final getAction()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->action:I

    return p0
.end method

.method public final getFromIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->fromIndex:I

    return p0
.end method

.method public final getGranularity()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->granularity:I

    return p0
.end method

.method public final getNode()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    return-object p0
.end method

.method public final getToIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->toIndex:I

    return p0
.end method

.method public final getTraverseTime()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->traverseTime:J

    return-wide v0
.end method
