.class public final Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;
.super Landroidx/compose/foundation/gestures/TransformEvent;
.source "Transformable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/TransformEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransformDelta"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B \u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007R\u001c\u0010\u0004\u001a\u00020\u0005\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;",
        "Landroidx/compose/foundation/gestures/TransformEvent;",
        "zoomChange",
        "",
        "panChange",
        "Landroidx/compose/ui/geometry/Offset;",
        "rotationChange",
        "(FJFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getPanChange-F1C5BW0",
        "()J",
        "J",
        "getRotationChange",
        "()F",
        "getZoomChange",
        "foundation_release"
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
.field private final panChange:J

.field private final rotationChange:F

.field private final zoomChange:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(FJF)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0}, Landroidx/compose/foundation/gestures/TransformEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->zoomChange:F

    iput-wide p2, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->panChange:J

    iput p4, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->rotationChange:F

    return-void
.end method

.method public synthetic constructor <init>(FJFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;-><init>(FJF)V

    return-void
.end method


# virtual methods
.method public final getPanChange-F1C5BW0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->panChange:J

    return-wide v0
.end method

.method public final getRotationChange()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->rotationChange:F

    return p0
.end method

.method public final getZoomChange()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->zoomChange:F

    return p0
.end method
