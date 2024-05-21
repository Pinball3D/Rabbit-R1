.class public final Landroidx/compose/ui/platform/InspectableModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "InspectableValue.kt"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/InspectableModifier$End;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\rB\u001e\u0012\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0002\u0010\u0008R\u0015\u0010\t\u001a\u00060\nR\u00020\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/ui/platform/InspectableModifier;",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/platform/InspectorValueInfo;",
        "inspectorInfo",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "end",
        "Landroidx/compose/ui/platform/InspectableModifier$End;",
        "getEnd",
        "()Landroidx/compose/ui/platform/InspectableModifier$End;",
        "End",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final end:Landroidx/compose/ui/platform/InspectableModifier$End;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "inspectorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 168
    new-instance p1, Landroidx/compose/ui/platform/InspectableModifier$End;

    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/InspectableModifier$End;-><init>(Landroidx/compose/ui/platform/InspectableModifier;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/InspectableModifier;->end:Landroidx/compose/ui/platform/InspectableModifier$End;

    return-void
.end method


# virtual methods
.method public final getEnd()Landroidx/compose/ui/platform/InspectableModifier$End;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/InspectableModifier;->end:Landroidx/compose/ui/platform/InspectableModifier$End;

    return-object p0
.end method
