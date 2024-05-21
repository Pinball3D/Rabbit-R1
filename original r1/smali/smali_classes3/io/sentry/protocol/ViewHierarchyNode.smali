.class public final Lio/sentry/protocol/ViewHierarchyNode;
.super Ljava/lang/Object;
.source "ViewHierarchyNode.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/ViewHierarchyNode$JsonKeys;,
        Lio/sentry/protocol/ViewHierarchyNode$Deserializer;
    }
.end annotation


# instance fields
.field private alpha:Ljava/lang/Double;

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/ViewHierarchyNode;",
            ">;"
        }
    .end annotation
.end field

.field private height:Ljava/lang/Double;

.field private identifier:Ljava/lang/String;

.field private renderingSystem:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private visibility:Ljava/lang/String;

.field private width:Ljava/lang/Double;

.field private x:Ljava/lang/Double;

.field private y:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->renderingSystem:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lio/sentry/protocol/ViewHierarchyNode;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->children:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->identifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->tag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->width:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->height:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->x:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->y:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->visibility:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->alpha:Ljava/lang/Double;

    return-object p1
.end method


# virtual methods
.method public getAlpha()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->alpha:Ljava/lang/Double;

    return-object p0
.end method

.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/ViewHierarchyNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->children:Ljava/util/List;

    return-object p0
.end method

.method public getHeight()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->height:Ljava/lang/Double;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public getRenderingSystem()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->renderingSystem:Ljava/lang/String;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->visibility:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->width:Ljava/lang/Double;

    return-object p0
.end method

.method public getX()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->x:Ljava/lang/Double;

    return-object p0
.end method

.method public getY()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/ViewHierarchyNode;->y:Ljava/lang/Double;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->renderingSystem:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "rendering_system"

    .line 152
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->renderingSystem:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "type"

    .line 155
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "identifier"

    .line 158
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->identifier:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->tag:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "tag"

    .line 161
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->width:Ljava/lang/Double;

    if-eqz v0, :cond_4

    const-string v0, "width"

    .line 164
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->width:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->height:Ljava/lang/Double;

    if-eqz v0, :cond_5

    const-string v0, "height"

    .line 167
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->height:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->x:Ljava/lang/Double;

    if-eqz v0, :cond_6

    const-string v0, "x"

    .line 170
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->x:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->y:Ljava/lang/Double;

    if-eqz v0, :cond_7

    const-string v0, "y"

    .line 173
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->y:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->visibility:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "visibility"

    .line 176
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->visibility:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->alpha:Ljava/lang/Double;

    if-eqz v0, :cond_9

    const-string v0, "alpha"

    .line 179
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->alpha:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->children:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 181
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "children"

    .line 182
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ViewHierarchyNode;->children:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_a
    iget-object v0, p0, Lio/sentry/protocol/ViewHierarchyNode;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 186
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/ViewHierarchyNode;->unknown:Ljava/util/Map;

    .line 187
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 188
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 191
    :cond_b
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setAlpha(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->alpha:Ljava/lang/Double;

    return-void
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/ViewHierarchyNode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->children:Ljava/util/List;

    return-void
.end method

.method public setHeight(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->height:Ljava/lang/Double;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setRenderingSystem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->renderingSystem:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->tag:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->type:Ljava/lang/String;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->visibility:Ljava/lang/String;

    return-void
.end method

.method public setWidth(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->width:Ljava/lang/Double;

    return-void
.end method

.method public setX(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->x:Ljava/lang/Double;

    return-void
.end method

.method public setY(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/ViewHierarchyNode;->y:Ljava/lang/Double;

    return-void
.end method
