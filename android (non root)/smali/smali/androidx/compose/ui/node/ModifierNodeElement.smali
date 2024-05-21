.class public abstract Landroidx/compose/ui/node/ModifierNodeElement;
.super Ljava/lang/Object;
.source "ModifierNodeElement.kt"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;
.implements Landroidx/compose/ui/platform/InspectableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Landroidx/compose/ui/Modifier$Node;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/platform/InspectableValue;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifierNodeElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifierNodeElement.kt\nandroidx/compose/ui/node/ModifierNodeElement\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\r\u0010\u0018\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0015H\u00a6\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH&J\u0015\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\"J\u000c\u0010#\u001a\u00020 *\u00020\u0007H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "N",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/platform/InspectableValue;",
        "()V",
        "_inspectorValues",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "inspectableElements",
        "Lkotlin/sequences/Sequence;",
        "Landroidx/compose/ui/platform/ValueElement;",
        "getInspectableElements",
        "()Lkotlin/sequences/Sequence;",
        "inspectorValues",
        "getInspectorValues",
        "()Landroidx/compose/ui/platform/InspectorInfo;",
        "nameFallback",
        "",
        "getNameFallback",
        "()Ljava/lang/String;",
        "valueOverride",
        "",
        "getValueOverride",
        "()Ljava/lang/Object;",
        "create",
        "()Landroidx/compose/ui/Modifier$Node;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "update",
        "",
        "node",
        "(Landroidx/compose/ui/Modifier$Node;)V",
        "inspectableProperties",
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
.field private _inspectorValues:Landroidx/compose/ui/platform/InspectorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getInspectorValues()Landroidx/compose/ui/platform/InspectorInfo;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/ModifierNodeElement;->_inspectorValues:Landroidx/compose/ui/platform/InspectorInfo;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-direct {v0}, Landroidx/compose/ui/platform/InspectorInfo;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/ModifierNodeElement;->inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V

    iput-object v0, p0, Landroidx/compose/ui/node/ModifierNodeElement;->_inspectorValues:Landroidx/compose/ui/platform/InspectorInfo;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract create()Landroidx/compose/ui/Modifier$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final getInspectableElements()Lkotlin/sequences/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Landroidx/compose/ui/platform/ValueElement;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;->getInspectorValues()Landroidx/compose/ui/platform/InspectorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p0

    check-cast p0, Lkotlin/sequences/Sequence;

    return-object p0
.end method

.method public final getNameFallback()Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;->getInspectorValues()Landroidx/compose/ui/platform/InspectorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/InspectorInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getValueOverride()Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;->getInspectorValues()Landroidx/compose/ui/platform/InspectorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/InspectorInfo;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract hashCode()I
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {p1, p0}, Landroidx/compose/ui/ActualKt;->tryPopulateReflectively(Landroidx/compose/ui/platform/InspectorInfo;Landroidx/compose/ui/node/ModifierNodeElement;)V

    return-void
.end method

.method public abstract update(Landroidx/compose/ui/Modifier$Node;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation
.end method
