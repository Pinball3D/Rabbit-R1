.class public final Landroidx/compose/foundation/AbstractClickableNode$InteractionData;
.super Ljava/lang/Object;
.source "Clickable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/AbstractClickableNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InteractionData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R%\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R \u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00f8\u0001\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/AbstractClickableNode$InteractionData;",
        "",
        "()V",
        "centreOffset",
        "Landroidx/compose/ui/geometry/Offset;",
        "getCentreOffset-F1C5BW0",
        "()J",
        "setCentreOffset-k-4lQ0M",
        "(J)V",
        "J",
        "currentKeyPressInteractions",
        "",
        "Landroidx/compose/ui/input/key/Key;",
        "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
        "getCurrentKeyPressInteractions",
        "()Ljava/util/Map;",
        "pressInteraction",
        "getPressInteraction",
        "()Landroidx/compose/foundation/interaction/PressInteraction$Press;",
        "setPressInteraction",
        "(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V",
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
.field public static final $stable:I = 0x8


# instance fields
.field private centreOffset:J

.field private final currentKeyPressInteractions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/key/Key;",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;"
        }
    .end annotation
.end field

.field private pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->currentKeyPressInteractions:Ljava/util/Map;

    .line 655
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->centreOffset:J

    return-void
.end method


# virtual methods
.method public final getCentreOffset-F1C5BW0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->centreOffset:J

    return-wide v0
.end method

.method public final getCurrentKeyPressInteractions()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/key/Key;",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->currentKeyPressInteractions:Ljava/util/Map;

    return-object p0
.end method

.method public final getPressInteraction()Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-object p0
.end method

.method public final setCentreOffset-k-4lQ0M(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->centreOffset:J

    return-void
.end method

.method public final setPressInteraction(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-void
.end method
