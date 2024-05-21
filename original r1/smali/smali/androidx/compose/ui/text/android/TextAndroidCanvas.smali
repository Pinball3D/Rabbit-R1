.class public final Landroidx/compose/ui/text/android/TextAndroidCanvas;
.super Landroid/graphics/Canvas;
.source "TextAndroidCanvas.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00da\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u000b\n\u0002\u0010\u0014\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0017\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0017J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0017J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u000bH\u0017J(\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0017J(\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011H\u0017J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u0015\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u000bH\u0016J\u0018\u0010\u0015\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J(\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0016J0\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J(\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H\u0017J(\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0011H\u0016J0\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020&H\u0016JH\u0010 \u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020&H\u0016J\"\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J,\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\n2\u0006\u0010+\u001a\u00020\n2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J,\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\n2\u0006\u0010+\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J*\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016JR\u0010\'\u001a\u00020\u00172\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u00020\r2\u0006\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u00112\u0006\u00104\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0017JR\u0010\'\u001a\u00020\u00172\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020\u00112\u0006\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u00112\u0006\u00104\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0017JL\u00105\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\u0006\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00112\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u00112\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010;\u001a\u00020\u00112\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J(\u0010<\u001a\u00020\u00172\u0006\u0010=\u001a\u00020\r2\u0006\u0010>\u001a\u00020\r2\u0006\u0010?\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010@\u001a\u00020\u00172\u0006\u0010A\u001a\u00020\u0011H\u0016J\u0018\u0010@\u001a\u00020\u00172\u0006\u0010A\u001a\u00020\u00112\u0006\u0010B\u001a\u00020CH\u0017J\u0018\u0010@\u001a\u00020\u00172\u0006\u0010A\u001a\u00020\u00112\u0006\u0010B\u001a\u00020DH\u0016J\u0010\u0010@\u001a\u00020\u00172\u0006\u0010A\u001a\u00020EH\u0017J\u0018\u0010@\u001a\u00020\u00172\u0006\u0010A\u001a\u00020E2\u0006\u0010B\u001a\u00020CH\u0017J@\u0010F\u001a\u00020\u00172\u0006\u0010G\u001a\u00020\u000b2\u0006\u0010H\u001a\u00020\r2\u0006\u0010I\u001a\u00020\r2\u0006\u0010J\u001a\u00020\u000b2\u0006\u0010K\u001a\u00020\r2\u0006\u0010L\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0017J0\u0010F\u001a\u00020\u00172\u0006\u0010G\u001a\u00020\u000b2\u0006\u0010M\u001a\u0002092\u0006\u0010J\u001a\u00020\u000b2\u0006\u0010N\u001a\u0002092\u0006\u0010%\u001a\u00020&H\u0017J@\u0010O\u001a\u00020\u00172\u0006\u0010P\u001a\u00020-2\u0006\u0010Q\u001a\u00020\u00112\u0006\u0010R\u001a\u0002092\u0006\u0010S\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\u00112\u0006\u0010U\u001a\u00020V2\u0006\u0010%\u001a\u00020&H\u0017J0\u0010W\u001a\u00020\u00172\u0006\u0010X\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\u0006\u0010Z\u001a\u00020\r2\u0006\u0010[\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010\\\u001a\u00020\u00172\u0006\u0010]\u001a\u0002092\u0006\u0010%\u001a\u00020&H\u0016J(\u0010\\\u001a\u00020\u00172\u0006\u0010]\u001a\u0002092\u0006\u0010.\u001a\u00020\u00112\u0006\u0010^\u001a\u00020\u00112\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010_\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020&H\u0016J0\u0010_\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010`\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&H\u0016J\"\u0010a\u001a\u00020\u00172\u0006\u0010b\u001a\u00020c2\u0006\u0010+\u001a\u00020\n2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0017J\"\u0010a\u001a\u00020\u00172\u0006\u0010b\u001a\u00020c2\u0006\u0010+\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0017J\u0018\u0010d\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010e\u001a\u00020\u00172\u0006\u0010f\u001a\u00020gH\u0016J\u0018\u0010e\u001a\u00020\u00172\u0006\u0010f\u001a\u00020g2\u0006\u0010+\u001a\u00020\nH\u0016J\u0018\u0010e\u001a\u00020\u00172\u0006\u0010f\u001a\u00020g2\u0006\u0010+\u001a\u00020\u000bH\u0016J \u0010h\u001a\u00020\u00172\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010i\u001a\u00020\u00172\u0006\u0010]\u001a\u0002092\u0006\u0010%\u001a\u00020&H\u0016J*\u0010i\u001a\u00020\u00172\u0008\u0010]\u001a\u0004\u0018\u0001092\u0006\u0010.\u001a\u00020\u00112\u0006\u0010^\u001a\u00020\u00112\u0006\u0010%\u001a\u00020&H\u0016J0\u0010j\u001a\u00020\u00172\u0006\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020\u00112\u0006\u0010^\u001a\u00020\u00112\u0006\u0010n\u001a\u0002092\u0006\u0010%\u001a\u00020&H\u0017J \u0010j\u001a\u00020\u00172\u0006\u0010k\u001a\u00020o2\u0006\u0010n\u001a\u0002092\u0006\u0010%\u001a\u00020&H\u0017J \u0010p\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0011H\u0016J\u0018\u0010q\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010q\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020&H\u0016J0\u0010q\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010r\u001a\u00020\u00172\u0006\u0010s\u001a\u00020tH\u0017J(\u0010u\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u000b2\u0006\u0010v\u001a\u00020\r2\u0006\u0010w\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J@\u0010u\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010v\u001a\u00020\r2\u0006\u0010w\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J8\u0010x\u001a\u00020\u00172\u0006\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020\u00112\u0006\u0010^\u001a\u00020\u00112\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J8\u0010x\u001a\u00020\u00172\u0006\u0010k\u001a\u00020y2\u0006\u0010z\u001a\u00020\u00112\u0006\u0010{\u001a\u00020\u00112\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J(\u0010x\u001a\u00020\u00172\u0006\u0010k\u001a\u00020o2\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J8\u0010x\u001a\u00020\u00172\u0006\u0010k\u001a\u00020o2\u0006\u0010z\u001a\u00020\u00112\u0006\u0010{\u001a\u00020\u00112\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J@\u0010|\u001a\u00020\u00172\u0006\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020\u00112\u0006\u0010^\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010}\u001a\u00020\r2\u0006\u0010~\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016J0\u0010|\u001a\u00020\u00172\u0006\u0010k\u001a\u00020o2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010}\u001a\u00020\r2\u0006\u0010~\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0016JT\u0010\u007f\u001a\u00020\u00172\u0007\u0010k\u001a\u00030\u0080\u00012\u0006\u0010z\u001a\u00020\u00112\u0006\u0010{\u001a\u00020\u00112\u0007\u0010\u0081\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u00112\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u00020\r2\u0007\u0010\u0083\u0001\u001a\u00020\u00052\u0006\u0010%\u001a\u00020&H\u0017JS\u0010\u007f\u001a\u00020\u00172\u0006\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020\u00112\u0006\u0010^\u001a\u00020\u00112\u0007\u0010\u0084\u0001\u001a\u00020\u00112\u0007\u0010\u0085\u0001\u001a\u00020\u00112\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u00020\r2\u0007\u0010\u0083\u0001\u001a\u00020\u00052\u0006\u0010%\u001a\u00020&H\u0017JS\u0010\u007f\u001a\u00020\u00172\u0006\u0010k\u001a\u00020y2\u0006\u0010z\u001a\u00020\u00112\u0006\u0010{\u001a\u00020\u00112\u0007\u0010\u0081\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u00112\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u00020\r2\u0007\u0010\u0083\u0001\u001a\u00020\u00052\u0006\u0010%\u001a\u00020&H\u0017Jw\u0010\u0086\u0001\u001a\u00020\u00172\u0007\u0010B\u001a\u00030\u0087\u00012\u0007\u0010\u0088\u0001\u001a\u00020\u00112\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u00112\t\u0010\u0089\u0001\u001a\u0004\u0018\u0001092\u0007\u0010\u008a\u0001\u001a\u00020\u00112\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010;\u001a\u00020\u00112\n\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u00012\u0007\u0010\u008d\u0001\u001a\u00020\u00112\u0007\u0010\u008e\u0001\u001a\u00020\u00112\u0006\u0010%\u001a\u00020&H\u0016J\t\u0010\u008f\u0001\u001a\u00020\u0017H\u0017J\u0012\u0010\u0090\u0001\u001a\u00020\u00052\u0007\u0010\u0091\u0001\u001a\u00020\nH\u0016J\t\u0010\u0092\u0001\u001a\u00020\u0011H\u0016J\u000c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0094\u0001H\u0016J\t\u0010\u0095\u0001\u001a\u00020\u0011H\u0016J\u0012\u0010\u0096\u0001\u001a\u00020\u00172\u0007\u0010\u0097\u0001\u001a\u00020\u0019H\u0017J\t\u0010\u0098\u0001\u001a\u00020\u0011H\u0016J\t\u0010\u0099\u0001\u001a\u00020\u0011H\u0016J\t\u0010\u009a\u0001\u001a\u00020\u0011H\u0016J\t\u0010\u009b\u0001\u001a\u00020\u0011H\u0016J\t\u0010\u009c\u0001\u001a\u00020\u0005H\u0016J\u0011\u0010\u009d\u0001\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0017J\u001b\u0010\u009d\u0001\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u009e\u0001\u001a\u00030\u009f\u0001H\u0017J\u0011\u0010\u009d\u0001\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u000bH\u0017J\u001b\u0010\u009d\u0001\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u000b2\u0008\u0010\u009e\u0001\u001a\u00030\u009f\u0001H\u0017J)\u0010\u009d\u0001\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0017J3\u0010\u009d\u0001\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0008\u0010\u009e\u0001\u001a\u00030\u009f\u0001H\u0017J\t\u0010\u00a0\u0001\u001a\u00020\u0017H\u0016J\u0012\u0010\u00a1\u0001\u001a\u00020\u00172\u0007\u0010\u00a2\u0001\u001a\u00020\u0011H\u0016J\u0012\u0010\u00a3\u0001\u001a\u00020\u00172\u0007\u0010\u00a4\u0001\u001a\u00020\rH\u0016J\t\u0010\u00a5\u0001\u001a\u00020\u0011H\u0016J\u001e\u0010\u00a6\u0001\u001a\u00020\u00112\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\'\u0010\u00a6\u0001\u001a\u00020\u00112\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0007\u0010\u00a7\u0001\u001a\u00020\u0011H\u0017J3\u0010\u00a6\u0001\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J<\u0010\u00a6\u0001\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0007\u0010\u00a7\u0001\u001a\u00020\u0011H\u0017J\u001d\u0010\u00a8\u0001\u001a\u00020\u00112\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000b2\u0007\u0010\u00a9\u0001\u001a\u00020\u0011H\u0016J&\u0010\u00a8\u0001\u001a\u00020\u00112\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000b2\u0007\u0010\u00a9\u0001\u001a\u00020\u00112\u0007\u0010\u00a7\u0001\u001a\u00020\u0011H\u0017J2\u0010\u00a8\u0001\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0007\u0010\u00a9\u0001\u001a\u00020\u0011H\u0016J;\u0010\u00a8\u0001\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0007\u0010\u00a9\u0001\u001a\u00020\u00112\u0007\u0010\u00a7\u0001\u001a\u00020\u0011H\u0017J\u001b\u0010\u00aa\u0001\u001a\u00020\u00172\u0007\u0010\u00ab\u0001\u001a\u00020\r2\u0007\u0010\u00ac\u0001\u001a\u00020\rH\u0016J\u0013\u0010\u00ad\u0001\u001a\u00020\u00172\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0010\u0010\u00ae\u0001\u001a\u00020\u00172\u0007\u0010\u00af\u0001\u001a\u00020\u0001J\u0012\u0010\u00b0\u0001\u001a\u00020\u00172\u0007\u0010\u00b1\u0001\u001a\u00020\u0011H\u0016J\u0015\u0010\u00b2\u0001\u001a\u00020\u00172\n\u0010\u00b3\u0001\u001a\u0005\u0018\u00010\u0094\u0001H\u0016J\u0013\u0010\u00b4\u0001\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001b\u0010\u00b5\u0001\u001a\u00020\u00172\u0007\u0010\u00ab\u0001\u001a\u00020\r2\u0007\u0010\u00ac\u0001\u001a\u00020\rH\u0016J\u001b\u0010\u00b6\u0001\u001a\u00020\u00172\u0007\u0010\u00b7\u0001\u001a\u00020\r2\u0007\u0010\u00b8\u0001\u001a\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0001X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00b9\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/TextAndroidCanvas;",
        "Landroid/graphics/Canvas;",
        "()V",
        "nativeCanvas",
        "clipOutPath",
        "",
        "path",
        "Landroid/graphics/Path;",
        "clipOutRect",
        "rect",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/RectF;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "",
        "clipPath",
        "op",
        "Landroid/graphics/Region$Op;",
        "clipRect",
        "concat",
        "",
        "matrix",
        "Landroid/graphics/Matrix;",
        "disableZ",
        "drawARGB",
        "a",
        "r",
        "g",
        "b",
        "drawArc",
        "oval",
        "startAngle",
        "sweepAngle",
        "useCenter",
        "paint",
        "Landroid/graphics/Paint;",
        "drawBitmap",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "src",
        "dst",
        "colors",
        "",
        "offset",
        "stride",
        "x",
        "y",
        "width",
        "height",
        "hasAlpha",
        "drawBitmapMesh",
        "meshWidth",
        "meshHeight",
        "verts",
        "",
        "vertOffset",
        "colorOffset",
        "drawCircle",
        "cx",
        "cy",
        "radius",
        "drawColor",
        "color",
        "mode",
        "Landroid/graphics/BlendMode;",
        "Landroid/graphics/PorterDuff$Mode;",
        "",
        "drawDoubleRoundRect",
        "outer",
        "outerRx",
        "outerRy",
        "inner",
        "innerRx",
        "innerRy",
        "outerRadii",
        "innerRadii",
        "drawGlyphs",
        "glyphIds",
        "glyphIdOffset",
        "positions",
        "positionOffset",
        "glyphCount",
        "font",
        "Landroid/graphics/fonts/Font;",
        "drawLine",
        "startX",
        "startY",
        "stopX",
        "stopY",
        "drawLines",
        "pts",
        "count",
        "drawOval",
        "drawPaint",
        "drawPatch",
        "patch",
        "Landroid/graphics/NinePatch;",
        "drawPath",
        "drawPicture",
        "picture",
        "Landroid/graphics/Picture;",
        "drawPoint",
        "drawPoints",
        "drawPosText",
        "text",
        "",
        "index",
        "pos",
        "",
        "drawRGB",
        "drawRect",
        "drawRenderNode",
        "renderNode",
        "Landroid/graphics/RenderNode;",
        "drawRoundRect",
        "rx",
        "ry",
        "drawText",
        "",
        "start",
        "end",
        "drawTextOnPath",
        "hOffset",
        "vOffset",
        "drawTextRun",
        "Landroid/graphics/text/MeasuredText;",
        "contextStart",
        "contextEnd",
        "isRtl",
        "contextIndex",
        "contextCount",
        "drawVertices",
        "Landroid/graphics/Canvas$VertexMode;",
        "vertexCount",
        "texs",
        "texOffset",
        "indices",
        "",
        "indexOffset",
        "indexCount",
        "enableZ",
        "getClipBounds",
        "bounds",
        "getDensity",
        "getDrawFilter",
        "Landroid/graphics/DrawFilter;",
        "getHeight",
        "getMatrix",
        "ctm",
        "getMaximumBitmapHeight",
        "getMaximumBitmapWidth",
        "getSaveCount",
        "getWidth",
        "isOpaque",
        "quickReject",
        "type",
        "Landroid/graphics/Canvas$EdgeType;",
        "restore",
        "restoreToCount",
        "saveCount",
        "rotate",
        "degrees",
        "save",
        "saveLayer",
        "saveFlags",
        "saveLayerAlpha",
        "alpha",
        "scale",
        "sx",
        "sy",
        "setBitmap",
        "setCanvas",
        "canvas",
        "setDensity",
        "density",
        "setDrawFilter",
        "filter",
        "setMatrix",
        "skew",
        "translate",
        "dx",
        "dy",
        "ui-text_release"
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
.field private nativeCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    return-void
.end method


# virtual methods
.method public clipOutPath(Landroid/graphics/Path;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 285
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public clipOutRect(FFFF)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 266
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    move-result p0

    return p0
.end method

.method public clipOutRect(IIII)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 271
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipOutRect(IIII)Z

    move-result p0

    return p0
.end method

.method public clipOutRect(Landroid/graphics/Rect;)Z
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 261
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public clipOutRect(Landroid/graphics/RectF;)Z
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 256
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 280
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 276
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0
.end method

.method public clipRect(FFFF)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 247
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result p0

    return p0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 6
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string v0, "op"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 243
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move-result p0

    return p0
.end method

.method public clipRect(IIII)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 251
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result p0

    return p0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 232
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 224
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 228
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 219
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 205
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public disableZ()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 80
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    return-void
.end method

.method public drawARGB(IIII)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 366
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    return-void
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 10

    const-string v0, "paint"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const-string v0, "nativeCanvas"

    .line 362
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 6

    const-string v0, "oval"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 349
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 370
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 412
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 378
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 374
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 11
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string v0, "colors"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const-string v0, "nativeCanvas"

    .line 393
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 11
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string v0, "colors"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const-string v0, "nativeCanvas"

    .line 408
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 10

    const-string v0, "bitmap"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verts"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const-string v0, "nativeCanvas"

    .line 425
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 438
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawColor(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 442
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/BlendMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 456
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 451
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public drawColor(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 447
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawColor(J)V

    return-void
.end method

.method public drawColor(JLandroid/graphics/BlendMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 461
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawColor(JLandroid/graphics/BlendMode;)V

    return-void
.end method

.method public drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8

    const-string v0, "outer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inner"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 572
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 6

    const-string v0, "outer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outerRadii"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerRadii"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 583
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .locals 8

    const-string v0, "glyphIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "font"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 596
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 6

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 465
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 1

    const-string v0, "pts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 469
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 1

    const-string v0, "pts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 473
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 6

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 481
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "oval"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 477
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 485
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "patch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 490
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "patch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 495
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 499
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 1

    const-string v0, "picture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 331
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "picture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 339
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 1

    const-string v0, "picture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 335
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 503
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 507
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 1

    const-string v0, "pts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 511
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 527
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 6
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pos"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 522
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRGB(III)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 543
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawRGB(III)V

    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 6

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 539
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 535
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 531
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawRenderNode(Landroid/graphics/RenderNode;)V
    .locals 1

    const-string v0, "renderNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 736
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 8

    const-string v0, "paint"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 559
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 547
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 7

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 634
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 619
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 7

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 623
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 7

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 615
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 6

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 656
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 8

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 646
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .locals 11

    const-string/jumbo v0, "text"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const-string v0, "nativeCanvas"

    .line 701
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 11

    const-string/jumbo v0, "text"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const-string v0, "nativeCanvas"

    .line 686
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 11

    const-string/jumbo v0, "text"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const-string v0, "nativeCanvas"

    .line 671
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 14

    const-string v0, "mode"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verts"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const-string v0, "nativeCanvas"

    .line 718
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    return-void
.end method

.method public enableZ()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 75
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    return-void
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 61
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return p0
.end method

.method public getDensity()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 96
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getDensity()I

    move-result p0

    return p0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 288
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getDrawFilter()Landroid/graphics/DrawFilter;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 92
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string v0, "ctm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 214
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 107
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result p0

    return p0
.end method

.method public getMaximumBitmapWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 103
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result p0

    return p0
.end method

.method public getSaveCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 181
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 88
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result p0

    return p0
.end method

.method public isOpaque()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 84
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public quickReject(FFFF)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 327
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->quickReject(FFFF)Z

    move-result p0

    return p0
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 322
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result p0

    return p0
.end method

.method public quickReject(Landroid/graphics/Path;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 311
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 306
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z

    move-result p0

    return p0
.end method

.method public quickReject(Landroid/graphics/RectF;)Z
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 301
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 296
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z

    move-result p0

    return p0
.end method

.method public restore()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 177
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public restoreToCount(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 185
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public rotate(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 197
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    return-void
.end method

.method public save()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 111
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p0

    return p0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;)I
    .locals 6

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 142
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 132
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result p0

    return p0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 120
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 116
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result p0

    return p0
.end method

.method public saveLayerAlpha(FFFFI)I
    .locals 6

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 173
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result p0

    return p0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 163
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result p0

    return p0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 151
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    move-result p0

    return p0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 147
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result p0

    return p0
.end method

.method public scale(FF)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 193
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 70
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setCanvas(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setDensity(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 99
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setDensity(I)V

    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 291
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 209
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public skew(FF)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 201
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    return-void
.end method

.method public translate(FF)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const-string p0, "nativeCanvas"

    .line 189
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method
