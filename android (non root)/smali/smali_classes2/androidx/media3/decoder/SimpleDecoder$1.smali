.class Landroidx/media3/decoder/SimpleDecoder$1;
.super Ljava/lang/Thread;
.source "SimpleDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/decoder/SimpleDecoder;-><init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/DecoderOutputBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/decoder/SimpleDecoder;


# direct methods
.method constructor <init>(Landroidx/media3/decoder/SimpleDecoder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoder$1;->this$0:Landroidx/media3/decoder/SimpleDecoder;

    .line 72
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/decoder/SimpleDecoder$1;->this$0:Landroidx/media3/decoder/SimpleDecoder;

    .line 75
    invoke-static {p0}, Landroidx/media3/decoder/SimpleDecoder;->access$000(Landroidx/media3/decoder/SimpleDecoder;)V

    return-void
.end method
