.class public final Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InspectableValue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt;->combinedClickable-XVZzFYc(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInspectableValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1\n+ 2 Clickable.kt\nandroidx/compose/foundation/ClickableKt\n*L\n1#1,170:1\n256#2,11:171\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "invoke",
        "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1"
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
.field final synthetic $enabled$inlined:Z

.field final synthetic $indication$inlined:Landroidx/compose/foundation/Indication;

.field final synthetic $interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onClick$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $onClickLabel$inlined:Ljava/lang/String;

.field final synthetic $onDoubleClick$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $onLongClick$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $onLongClickLabel$inlined:Ljava/lang/String;

.field final synthetic $role$inlined:Landroidx/compose/ui/semantics/Role;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/Indication;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$indication$inlined:Landroidx/compose/foundation/Indication;

    iput-object p2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p3, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$onClickLabel$inlined:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$role$inlined:Landroidx/compose/ui/semantics/Role;

    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$onClick$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$onDoubleClick$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$onLongClick$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$onLongClickLabel$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/InspectorInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "combinedClickable"

    .line 171
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "indication"

    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$indication$inlined:Landroidx/compose/foundation/Indication;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "interactionSource"

    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "onClickLabel"

    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$onClickLabel$inlined:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "role"

    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$role$inlined:Landroidx/compose/ui/semantics/Role;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "onClick"

    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$onClick$inlined:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "onDoubleClick"

    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$onDoubleClick$inlined:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "onLongClick"

    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$onLongClick$inlined:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "onLongClickLabel"

    iget-object p0, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1;->$onLongClickLabel$inlined:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
