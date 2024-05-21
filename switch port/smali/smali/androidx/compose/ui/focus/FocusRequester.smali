.class public final Landroidx/compose/ui/focus/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusRequester$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusRequester.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRequester.kt\nandroidx/compose/ui/focus/FocusRequester\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 6 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 7 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,211:1\n196#1:215\n197#1,4:217\n201#1:228\n202#1,5:258\n207#1:304\n208#1:309\n1182#2:212\n1161#2,2:213\n1182#2:233\n1161#2,2:234\n1182#2:345\n1161#2,2:346\n1#3:216\n1#3:310\n1#3:343\n460#4,7:221\n48#4:243\n467#4,4:305\n460#4,11:311\n460#4,11:322\n460#4,7:333\n48#4:355\n467#4,4:411\n90#5:229\n90#5:340\n276#6:230\n133#6,2:231\n135#6,7:236\n142#6,9:244\n383#6,5:253\n388#6:263\n393#6,2:265\n395#6,17:270\n412#6,8:290\n151#6,6:298\n276#6:341\n133#6:342\n134#6:344\n135#6,7:348\n142#6,9:356\n383#6,6:365\n393#6,2:372\n395#6,17:377\n412#6,8:397\n151#6,6:405\n261#7:264\n261#7:371\n234#8,3:267\n237#8,3:287\n234#8,3:374\n237#8,3:394\n*S KotlinDebug\n*F\n+ 1 FocusRequester.kt\nandroidx/compose/ui/focus/FocusRequester\n*L\n69#1:215\n69#1:217,4\n69#1:228\n69#1:258,5\n69#1:304\n69#1:309\n53#1:212\n53#1:213,2\n69#1:233\n69#1:234,2\n201#1:345\n201#1:346,2\n69#1:216\n201#1:343\n69#1:221,7\n69#1:243\n69#1:305,4\n98#1:311,11\n122#1:322,11\n200#1:333,7\n201#1:355\n200#1:411,4\n69#1:229\n201#1:340\n69#1:230\n69#1:231,2\n69#1:236,7\n69#1:244,9\n69#1:253,5\n69#1:263\n69#1:265,2\n69#1:270,17\n69#1:290,8\n69#1:298,6\n201#1:341\n201#1:342\n201#1:344\n201#1:348,7\n201#1:356,9\n201#1:365,6\n201#1:372,2\n201#1:377,17\n201#1:397,8\n201#1:405,6\n69#1:264\n201#1:371\n69#1:267,3\n69#1:287,3\n201#1:374,3\n201#1:394,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u001d\u0010\n\u001a\u00020\t2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\u000cH\u0083\u0008J\r\u0010\u000e\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0006\u0010\u0010\u001a\u00020\tJ\u0006\u0010\u0011\u001a\u00020\u0012R\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusRequester;",
        "",
        "()V",
        "focusRequesterNodes",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/focus/FocusRequesterModifierNode;",
        "getFocusRequesterNodes$ui_release",
        "()Landroidx/compose/runtime/collection/MutableVector;",
        "captureFocus",
        "",
        "findFocusTarget",
        "onFound",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "focus",
        "focus$ui_release",
        "freeFocus",
        "requestFocus",
        "",
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
.field public static final $stable:I

.field private static final Cancel:Landroidx/compose/ui/focus/FocusRequester;

.field public static final Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

.field private static final Default:Landroidx/compose/ui/focus/FocusRequester;


# instance fields
.field private final focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusRequesterModifierNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/focus/FocusRequester$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusRequester$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 136
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 148
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method public static final synthetic access$getCancel$cp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method private final findFocusTarget(Lkotlin/jvm/functions/Function1;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 196
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    const-string v2, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    if-eq p0, v1, :cond_12

    .line 197
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    if-eq p0, v0, :cond_11

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 198
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 334
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    .line 337
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    move v2, v1

    move v3, v2

    .line 339
    :cond_0
    aget-object v4, p0, v2

    check-cast v4, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .line 201
    check-cast v4, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v5, 0x400

    .line 340
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v5

    .line 342
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 347
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v8, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v8, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 348
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-nez v8, :cond_1

    .line 350
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_2
    :goto_0
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 355
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    .line 354
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 356
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v5

    if-nez v9, :cond_3

    .line 357
    invoke-static {v6, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v4, :cond_2

    .line 363
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v5

    if-eqz v9, :cond_c

    const/4 v9, 0x0

    move-object v10, v9

    :goto_2
    if-eqz v4, :cond_2

    .line 368
    instance-of v11, v4, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v11, :cond_4

    .line 369
    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 202
    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    move v3, v8

    goto :goto_5

    .line 371
    :cond_4
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v5

    if-eqz v11, :cond_b

    .line 370
    instance-of v11, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_b

    .line 373
    move-object v11, v4

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 374
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v1

    :goto_3
    if-eqz v11, :cond_a

    .line 371
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_9

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v8, :cond_5

    move-object v4, v11

    goto :goto_4

    :cond_5
    if-nez v10, :cond_6

    .line 347
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v13, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_6
    if-eqz v4, :cond_8

    if-eqz v10, :cond_7

    .line 387
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v4, v9

    :cond_8
    if-eqz v10, :cond_9

    .line 390
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_9
    :goto_4
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_3

    :cond_a
    if-ne v12, v8, :cond_b

    goto :goto_2

    .line 402
    :cond_b
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    .line 407
    :cond_c
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_1

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    move v1, v3

    goto :goto_6

    .line 342
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "visitChildren called on an unattached node"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_6
    return v1

    .line 198
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final captureFocus()Z
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 97
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 312
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 315
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    move v2, v1

    .line 317
    :cond_0
    aget-object v3, p0, v2

    check-cast v3, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .line 99
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt;->captureFocus(Landroidx/compose/ui/focus/FocusRequesterModifierNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    :cond_2
    return v1

    .line 97
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final focus$ui_release()Z
    .locals 14

    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 215
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    const-string v2, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    if-eq p0, v1, :cond_13

    .line 217
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    if-eq p0, v0, :cond_12

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 218
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 222
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_10

    .line 225
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    move v2, v1

    move v3, v2

    .line 227
    :cond_0
    aget-object v4, p0, v2

    check-cast v4, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .line 228
    check-cast v4, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v5, 0x400

    .line 229
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v5

    .line 231
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 235
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v8, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v8, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 236
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-nez v8, :cond_1

    .line 238
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_2
    :goto_0
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 243
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    .line 242
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 244
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v5

    if-nez v9, :cond_3

    .line 245
    invoke-static {v6, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v4, :cond_2

    .line 251
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v5

    if-eqz v9, :cond_d

    const/4 v9, 0x0

    move-object v10, v9

    :goto_2
    if-eqz v4, :cond_2

    .line 256
    instance-of v11, v4, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v11, :cond_5

    .line 257
    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 70
    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v11

    .line 71
    invoke-interface {v11}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 72
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v4

    goto :goto_3

    .line 74
    :cond_4
    sget-object v11, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result v11

    sget-object v12, Landroidx/compose/ui/focus/FocusRequester$focus$1$1;->INSTANCE:Landroidx/compose/ui/focus/FocusRequester$focus$1$1;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v11, v12}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_c

    move v3, v8

    goto :goto_6

    .line 264
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v5

    if-eqz v11, :cond_c

    .line 263
    instance-of v11, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_c

    .line 266
    move-object v11, v4

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 267
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v1

    :goto_4
    if-eqz v11, :cond_b

    .line 264
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_a

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v8, :cond_6

    move-object v4, v11

    goto :goto_5

    :cond_6
    if-nez v10, :cond_7

    .line 235
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v13, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_7
    if-eqz v4, :cond_9

    if-eqz v10, :cond_8

    .line 280
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object v4, v9

    :cond_9
    if-eqz v10, :cond_a

    .line 283
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_a
    :goto_5
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_4

    :cond_b
    if-ne v12, v8, :cond_c

    goto :goto_2

    .line 295
    :cond_c
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    .line 300
    :cond_d
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_1

    :cond_e
    :goto_6
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    move v1, v3

    goto :goto_7

    .line 231
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "visitChildren called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_7
    return v1

    .line 218
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 215
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final freeFocus()Z
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 121
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 323
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 326
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    move v2, v1

    .line 328
    :cond_0
    aget-object v3, p0, v2

    check-cast v3, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .line 123
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt;->freeFocus(Landroidx/compose/ui/focus/FocusRequesterModifierNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    :cond_2
    return v1

    .line 121
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getFocusRequesterNodes$ui_release()Landroidx/compose/runtime/collection/MutableVector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusRequesterModifierNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    return-object p0
.end method

.method public final requestFocus()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester;->focus$ui_release()Z

    return-void
.end method
