.class public interface abstract Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.super Ljava/lang/Object;
.source "ModifierLocalModifierNode.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalReadScope;
.implements Landroidx/compose/ui/node/DelegatableNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifierLocalModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifierLocalModifierNode.kt\nandroidx/compose/ui/modifier/ModifierLocalModifierNode\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,208:1\n80#2:209\n230#3,5:210\n58#3:215\n59#3,8:217\n383#3,6:225\n393#3,2:232\n395#3,8:237\n403#3,9:248\n412#3,8:260\n68#3,7:268\n1#4:216\n261#5:231\n234#6,3:234\n237#6,3:257\n1182#7:245\n1161#7,2:246\n*S KotlinDebug\n*F\n+ 1 ModifierLocalModifierNode.kt\nandroidx/compose/ui/modifier/ModifierLocalModifierNode\n*L\n163#1:209\n163#1:210,5\n163#1:215\n163#1:217,8\n163#1:225,6\n163#1:232,2\n163#1:237,8\n163#1:248,9\n163#1:260,8\n163#1:268,7\n163#1:216\n163#1:231\n163#1:234,3\n163#1:257,3\n163#1:245\n163#1:246,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u00012\u00020\u0002J)\u0010\u000c\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\t2\u0006\u0010\u000f\u001a\u0002H\u0008H\u0016\u00a2\u0006\u0002\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R$\u0010\u0007\u001a\u0002H\u0008\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0011\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;",
        "Landroidx/compose/ui/modifier/ModifierLocalReadScope;",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "providedValues",
        "Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "getProvidedValues",
        "()Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "current",
        "T",
        "Landroidx/compose/ui/modifier/ModifierLocal;",
        "getCurrent",
        "(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;",
        "provide",
        "",
        "key",
        "value",
        "(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V",
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


# virtual methods
.method public getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-interface {p0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v0, 0x20

    .line 209
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 215
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 217
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 218
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_b

    .line 220
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    :goto_1
    if-eqz v1, :cond_9

    .line 223
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_8

    move-object v2, v1

    move-object v4, v3

    :goto_2
    if-eqz v2, :cond_8

    .line 228
    instance-of v5, v2, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v5, :cond_0

    .line 229
    check-cast v2, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 164
    invoke-interface {v2}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->contains$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 166
    invoke-interface {v2}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->get$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 231
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_7

    .line 230
    instance-of v5, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v5, :cond_7

    .line 233
    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 234
    invoke-virtual {v5}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_3
    const/4 v8, 0x1

    if-eqz v5, :cond_6

    .line 231
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_5

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_1

    move-object v2, v5

    goto :goto_4

    :cond_1
    if-nez v4, :cond_2

    .line 247
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v4, v8, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    .line 250
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v2, v3

    :cond_4
    if-eqz v4, :cond_5

    .line 253
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_5
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_3

    :cond_6
    if-ne v7, v8, :cond_7

    goto :goto_2

    .line 265
    :cond_7
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_2

    .line 268
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_1

    .line 271
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 272
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    move-object v1, v3

    goto/16 :goto_0

    .line 169
    :cond_b
    invoke-virtual {p1}, Landroidx/compose/ui/modifier/ModifierLocal;->getDefaultFactory$ui_release()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 215
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "visitAncestors called on an unattached node"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 0

    .line 132
    sget-object p0, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    check-cast p0, Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-object p0
.end method

.method public provide(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-interface {p0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    if-eq v0, v1, :cond_1

    .line 148
    invoke-interface {p0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->contains$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {p0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/modifier/ModifierLocalMap;->set$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V

    return-void

    .line 149
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Any provided key must be initially provided in the overridden providedValues: ModifierLocalMap property. Key "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " was not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "In order to provide locals you must override providedValues: ModifierLocalMap"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
