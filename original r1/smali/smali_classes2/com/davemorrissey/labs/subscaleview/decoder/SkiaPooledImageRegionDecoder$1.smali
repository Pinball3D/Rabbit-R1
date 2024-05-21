.class Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;
.super Ljava/lang/Thread;
.source "SkiaPooledImageRegionDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->lazyInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 129
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 132
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$100(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$100(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    move-result-object v1

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$200(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)I

    move-result v1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$300(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->allowAdditionalDecoder(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 136
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$100(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    const-string v3, "Starting decoder"

    .line 138
    invoke-static {v2, v3}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$400(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 139
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$500(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started decoder, took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$400(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start decoder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$400(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
