.class Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1CpuFilter;
.super Ljava/lang/Object;
.source "SkiaPooledImageRegionDecoder.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->getNumCoresOldPhones()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CpuFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1CpuFilter;->this$0:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    const-string p0, "cpu[0-9]+"

    .line 445
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
