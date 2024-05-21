.class public abstract Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;
.super Lcom/chad/library/adapter/base/entity/node/BaseNode;
.source "BaseExpandNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        "()V",
        "isExpanded",
        "",
        "()Z",
        "setExpanded",
        "(Z)V",
        "com.github.CymChad.brvah"
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
.field private isExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded:Z

    return-void
.end method


# virtual methods
.method public final isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded:Z

    return p0
.end method

.method public final setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded:Z

    return-void
.end method
