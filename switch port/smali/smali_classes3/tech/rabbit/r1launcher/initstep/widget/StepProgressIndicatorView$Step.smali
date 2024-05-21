.class public final Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;
.super Ljava/lang/Object;
.source "StepProgressIndicatorView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Step"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;",
        "",
        "name",
        "",
        "(Ljava/lang/String;)V",
        "isSelected",
        "",
        "()Z",
        "setSelected",
        "(Z)V",
        "getName",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private isSelected:Z

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;Ljava/lang/String;ILjava/lang/Object;)Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->name:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->copy(Ljava/lang/String;)Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->name:Ljava/lang/String;

    iget-object p1, p1, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isSelected()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->isSelected:Z

    return p0
.end method

.method public final setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->isSelected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Step(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
