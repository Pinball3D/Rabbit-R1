.class public interface abstract Landroidx/compose/ui/node/ComposeUiNode;
.super Ljava/lang/Object;
.source "ComposeUiNode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/ComposeUiNode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008a\u0018\u0000 .2\u00020\u0001:\u0001.R\"\u0010\u0002\u001a\u00020\u00038&@&X\u00a7\u000e\u00a2\u0006\u0012\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0018\u0010\n\u001a\u00020\u000bX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0010\u001a\u00020\u0011X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0016\u001a\u00020\u0017X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001c\u001a\u00020\u001dX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0018\u0010\"\u001a\u00020#X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0018\u0010(\u001a\u00020)X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006/\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/node/ComposeUiNode;",
        "",
        "compositeKeyHash",
        "",
        "getCompositeKeyHash$annotations",
        "()V",
        "getCompositeKeyHash",
        "()I",
        "setCompositeKeyHash",
        "(I)V",
        "compositionLocalMap",
        "Landroidx/compose/runtime/CompositionLocalMap;",
        "getCompositionLocalMap",
        "()Landroidx/compose/runtime/CompositionLocalMap;",
        "setCompositionLocalMap",
        "(Landroidx/compose/runtime/CompositionLocalMap;)V",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "getDensity",
        "()Landroidx/compose/ui/unit/Density;",
        "setDensity",
        "(Landroidx/compose/ui/unit/Density;)V",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "setLayoutDirection",
        "(Landroidx/compose/ui/unit/LayoutDirection;)V",
        "measurePolicy",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "getMeasurePolicy",
        "()Landroidx/compose/ui/layout/MeasurePolicy;",
        "setMeasurePolicy",
        "(Landroidx/compose/ui/layout/MeasurePolicy;)V",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "setModifier",
        "(Landroidx/compose/ui/Modifier;)V",
        "viewConfiguration",
        "Landroidx/compose/ui/platform/ViewConfiguration;",
        "getViewConfiguration",
        "()Landroidx/compose/ui/platform/ViewConfiguration;",
        "setViewConfiguration",
        "(Landroidx/compose/ui/platform/ViewConfiguration;)V",
        "Companion",
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
.field public static final Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->$$INSTANCE:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    sput-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    return-void
.end method

.method public static synthetic getCompositeKeyHash$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getCompositeKeyHash()I
.end method

.method public abstract getCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;
.end method

.method public abstract getDensity()Landroidx/compose/ui/unit/Density;
.end method

.method public abstract getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
.end method

.method public abstract getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;
.end method

.method public abstract getModifier()Landroidx/compose/ui/Modifier;
.end method

.method public abstract getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
.end method

.method public abstract setCompositeKeyHash(I)V
.end method

.method public abstract setCompositionLocalMap(Landroidx/compose/runtime/CompositionLocalMap;)V
.end method

.method public abstract setDensity(Landroidx/compose/ui/unit/Density;)V
.end method

.method public abstract setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
.end method

.method public abstract setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V
.end method

.method public abstract setModifier(Landroidx/compose/ui/Modifier;)V
.end method

.method public abstract setViewConfiguration(Landroidx/compose/ui/platform/ViewConfiguration;)V
.end method
