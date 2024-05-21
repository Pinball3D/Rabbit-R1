.class public final Landroidx/compose/ui/platform/InspectorInfo;
.super Ljava/lang/Object;
.source "InspectableValue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "",
        "()V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "properties",
        "Landroidx/compose/ui/platform/ValueElementSequence;",
        "getProperties",
        "()Landroidx/compose/ui/platform/ValueElementSequence;",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "(Ljava/lang/Object;)V",
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
.field public static final $stable:I = 0x8


# instance fields
.field private name:Ljava/lang/String;

.field private final properties:Landroidx/compose/ui/platform/ValueElementSequence;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroidx/compose/ui/platform/ValueElementSequence;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ValueElementSequence;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/InspectorInfo;->properties:Landroidx/compose/ui/platform/ValueElementSequence;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/InspectorInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getProperties()Landroidx/compose/ui/platform/ValueElementSequence;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/InspectorInfo;->properties:Landroidx/compose/ui/platform/ValueElementSequence;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/InspectorInfo;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/InspectorInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/InspectorInfo;->value:Ljava/lang/Object;

    return-void
.end method
