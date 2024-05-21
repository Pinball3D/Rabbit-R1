.class public final Ltech/rabbit/common/utils/KotlinUtilKt$postDelayOnCurrentLoop$1$1;
.super Ljava/lang/Object;
.source "KotlinUtil.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/common/utils/KotlinUtilKt;->postDelayOnCurrentLoop(Lkotlin/jvm/functions/Function0;J)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinUtil.kt\ntech/rabbit/common/utils/KotlinUtilKt$postDelayOnCurrentLoop$1$1\n+ 2 KotlinUtil.kt\ntech/rabbit/common/utils/KotlinUtilKt\n*L\n1#1,454:1\n68#2,10:455\n*S KotlinDebug\n*F\n+ 1 KotlinUtil.kt\ntech/rabbit/common/utils/KotlinUtilKt$postDelayOnCurrentLoop$1$1\n*L\n294#1:455,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/common/utils/KotlinUtilKt$postDelayOnCurrentLoop$1$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Ltech/rabbit/common/utils/KotlinUtilKt$postDelayOnCurrentLoop$1$1;->$block:Lkotlin/jvm/functions/Function0;

    .line 295
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "catched Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KotUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
