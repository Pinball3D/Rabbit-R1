.class public final Landroidx/compose/ui/semantics/SemanticsPropertiesKt;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a4\u0010\u0081\u0001\u001a\u0011\u0012\u000c\u0012\n\u0012\u0005\u0012\u0003H\u0084\u00010\u0083\u00010\u0082\u0001\"\u0010\u0008\u0000\u0010\u0084\u0001*\t\u0012\u0004\u0012\u00020\'0\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020\u0012H\u0082\u0008\u001a\u0017\u0010\u0087\u0001\u001a\u0003H\u0084\u0001\"\u0005\u0008\u0000\u0010\u0084\u0001H\u0002\u00a2\u0006\u0003\u0010\u0088\u0001\u001a+\u0010\u0089\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a+\u0010\u008e\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a+\u0010\u008f\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a\u000c\u0010\u0090\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a\u000c\u0010\u0091\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a+\u0010\u0092\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a\u0015\u0010\u0093\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u0007\u0010\u0094\u0001\u001a\u00020\u0012\u001a+\u0010\u0095\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a9\u0010\u0096\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u001e\u0010\u008c\u0001\u001a\u0019\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u0099\u00010\u0098\u0001\u0012\u0004\u0012\u00020\'\u0018\u00010\u0097\u0001\u001a\u000c\u0010\u009a\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a$\u0010\u009b\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u0016\u0010\u009c\u0001\u001a\u0011\u0012\u0005\u0012\u00030\u009d\u0001\u0012\u0005\u0012\u00030\u009e\u00010\u0097\u0001\u001a1\u0010\u009f\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0016\u0010\u008c\u0001\u001a\u0011\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\'\u0018\u00010\u0097\u0001\u001a\u000e\u0010\u00a0\u0001\u001a\u00030\u008a\u0001*\u00020\u0003H\u0007\u001a+\u0010\u00a1\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a+\u0010\u00a2\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a+\u0010\u00a3\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a+\u0010\u00a4\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a+\u0010\u00a5\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a+\u0010\u00a6\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a\u000c\u0010\u00a7\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a+\u0010\u00a8\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a+\u0010\u00a9\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a\u000c\u0010\u00aa\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a+\u0010\u00ab\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020\'\u0018\u00010\u008d\u0001\u001a[\u0010\u00ac\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122@\u0010\u008c\u0001\u001a;\u0012\u0016\u0012\u00140v\u00a2\u0006\u000f\u0008\u00ae\u0001\u0012\n\u0008\u0086\u0001\u0012\u0005\u0008\u0008(\u00af\u0001\u0012\u0016\u0012\u00140v\u00a2\u0006\u000f\u0008\u00ae\u0001\u0012\n\u0008\u0086\u0001\u0012\u0005\u0008\u0008(\u00b0\u0001\u0012\u0004\u0012\u00020\'\u0018\u00010\u00ad\u0001\u001a0\u0010\u00b1\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0015\u0010\u008c\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u009e\u0001\u0012\u0004\u0012\u00020\'0\u0097\u0001\u001a\u000c\u0010\u00b2\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a1\u0010\u00b3\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0016\u0010\u008c\u0001\u001a\u0011\u0012\u0004\u0012\u00020v\u0012\u0004\u0012\u00020\'\u0018\u00010\u0097\u0001\u001au\u0010\u00b4\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122Z\u0010\u008c\u0001\u001aU\u0012\u0017\u0012\u00150\u009e\u0001\u00a2\u0006\u000f\u0008\u00ae\u0001\u0012\n\u0008\u0086\u0001\u0012\u0005\u0008\u0008(\u00b6\u0001\u0012\u0017\u0012\u00150\u009e\u0001\u00a2\u0006\u000f\u0008\u00ae\u0001\u0012\n\u0008\u0086\u0001\u0012\u0005\u0008\u0008(\u00b7\u0001\u0012\u0016\u0012\u00140\'\u00a2\u0006\u000f\u0008\u00ae\u0001\u0012\n\u0008\u0086\u0001\u0012\u0005\u0008\u0008(\u00b8\u0001\u0012\u0004\u0012\u00020\'\u0018\u00010\u00b5\u0001\u001a0\u0010g\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0016\u0010\u008c\u0001\u001a\u0011\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\'\u0018\u00010\u0097\u0001\"/\u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t*\u0004\u0008\u0004\u0010\u0005\"/\u0010\u000b\u001a\u00020\n*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\n8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010*\u0004\u0008\u000c\u0010\u0005\"(\u0010\u0013\u001a\u00020\u0012*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00128F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\";\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018*\u00020\u00032\u000c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f*\u0004\u0008\u001b\u0010\u0005\"/\u0010!\u001a\u00020 *\u00020\u00032\u0006\u0010\u0000\u001a\u00020 8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&*\u0004\u0008\"\u0010\u0005\"/\u0010(\u001a\u00020\'*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\'8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-*\u0004\u0008)\u0010\u0005\"/\u0010/\u001a\u00020.*\u00020\u00032\u0006\u0010\u0000\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104*\u0004\u00080\u0010\u0005\"2\u00106\u001a\u000205*\u00020\u00032\u0006\u0010\u0000\u001a\u0002058F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00a2\u0006\u0012\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;*\u0004\u00087\u0010\u0005\"5\u0010<\u001a\u00020\'*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\'8F@FX\u0087\u008e\u0002\u00a2\u0006\u0018\u0012\u0004\u0008=\u0010>\u001a\u0004\u0008<\u0010+\"\u0004\u0008@\u0010-*\u0004\u0008?\u0010\u0005\"/\u0010A\u001a\u00020\'*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\'8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008A\u0010+\"\u0004\u0008C\u0010-*\u0004\u0008B\u0010\u0005\"2\u0010E\u001a\u00020D*\u00020\u00032\u0006\u0010\u0000\u001a\u00020D8F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00a2\u0006\u0012\u001a\u0004\u0008G\u00109\"\u0004\u0008H\u0010;*\u0004\u0008F\u0010\u0005\"/\u0010I\u001a\u00020\u0012*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00128F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008K\u0010\u0015\"\u0004\u0008L\u0010\u0017*\u0004\u0008J\u0010\u0005\"/\u0010N\u001a\u00020M*\u00020\u00032\u0006\u0010\u0000\u001a\u00020M8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010S*\u0004\u0008O\u0010\u0005\"2\u0010U\u001a\u00020T*\u00020\u00032\u0006\u0010\u0000\u001a\u00020T8F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00a2\u0006\u0012\u001a\u0004\u0008W\u00109\"\u0004\u0008X\u0010;*\u0004\u0008V\u0010\u0005\"/\u0010Y\u001a\u00020\'*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\'8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008[\u0010+\"\u0004\u0008\\\u0010-*\u0004\u0008Z\u0010\u0005\"/\u0010]\u001a\u00020\u0012*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00128F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008_\u0010\u0015\"\u0004\u0008`\u0010\u0017*\u0004\u0008^\u0010\u0005\"/\u0010a\u001a\u00020\u0012*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00128F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008c\u0010\u0015\"\u0004\u0008d\u0010\u0017*\u0004\u0008b\u0010\u0005\"(\u0010e\u001a\u00020 *\u00020\u00032\u0006\u0010\u0011\u001a\u00020 8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008f\u0010$\"\u0004\u0008g\u0010&\"2\u0010i\u001a\u00020h*\u00020\u00032\u0006\u0010\u0000\u001a\u00020h8F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00a2\u0006\u0012\u001a\u0004\u0008k\u0010l\"\u0004\u0008m\u0010n*\u0004\u0008j\u0010\u0005\"/\u0010p\u001a\u00020o*\u00020\u00032\u0006\u0010\u0000\u001a\u00020o8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010u*\u0004\u0008q\u0010\u0005\"/\u0010w\u001a\u00020v*\u00020\u00032\u0006\u0010\u0000\u001a\u00020v8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008y\u0010z\"\u0004\u0008{\u0010|*\u0004\u0008x\u0010\u0005\"0\u0010}\u001a\u00020.*\u00020\u00032\u0006\u0010\u0000\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0013\u001a\u0004\u0008\u007f\u00102\"\u0005\u0008\u0080\u0001\u00104*\u0004\u0008~\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00b9\u0001"
    }
    d2 = {
        "<set-?>",
        "Landroidx/compose/ui/semantics/CollectionInfo;",
        "collectionInfo",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "getCollectionInfo$delegate",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;",
        "getCollectionInfo",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;",
        "setCollectionInfo",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V",
        "Landroidx/compose/ui/semantics/CollectionItemInfo;",
        "collectionItemInfo",
        "getCollectionItemInfo$delegate",
        "getCollectionItemInfo",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;",
        "setCollectionItemInfo",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V",
        "value",
        "",
        "contentDescription",
        "getContentDescription",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;",
        "setContentDescription",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V",
        "",
        "Landroidx/compose/ui/semantics/CustomAccessibilityAction;",
        "customActions",
        "getCustomActions$delegate",
        "getCustomActions",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;",
        "setCustomActions",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/util/List;)V",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "editableText",
        "getEditableText$delegate",
        "getEditableText",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;",
        "setEditableText",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/text/AnnotatedString;)V",
        "",
        "focused",
        "getFocused$delegate",
        "getFocused",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z",
        "setFocused",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V",
        "Landroidx/compose/ui/semantics/ScrollAxisRange;",
        "horizontalScrollAxisRange",
        "getHorizontalScrollAxisRange$delegate",
        "getHorizontalScrollAxisRange",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;",
        "setHorizontalScrollAxisRange",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ScrollAxisRange;)V",
        "Landroidx/compose/ui/text/input/ImeAction;",
        "imeAction",
        "getImeAction$delegate",
        "getImeAction",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I",
        "setImeAction-4L7nppU",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V",
        "isContainer",
        "isContainer$annotations",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V",
        "isContainer$delegate",
        "setContainer",
        "isTraversalGroup",
        "isTraversalGroup$delegate",
        "setTraversalGroup",
        "Landroidx/compose/ui/semantics/LiveRegionMode;",
        "liveRegion",
        "getLiveRegion$delegate",
        "getLiveRegion",
        "setLiveRegion-hR3wRGc",
        "paneTitle",
        "getPaneTitle$delegate",
        "getPaneTitle",
        "setPaneTitle",
        "Landroidx/compose/ui/semantics/ProgressBarRangeInfo;",
        "progressBarRangeInfo",
        "getProgressBarRangeInfo$delegate",
        "getProgressBarRangeInfo",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;",
        "setProgressBarRangeInfo",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ProgressBarRangeInfo;)V",
        "Landroidx/compose/ui/semantics/Role;",
        "role",
        "getRole$delegate",
        "getRole",
        "setRole-kuIjeqM",
        "selected",
        "getSelected$delegate",
        "getSelected",
        "setSelected",
        "stateDescription",
        "getStateDescription$delegate",
        "getStateDescription",
        "setStateDescription",
        "testTag",
        "getTestTag$delegate",
        "getTestTag",
        "setTestTag",
        "text",
        "getText",
        "setText",
        "Landroidx/compose/ui/text/TextRange;",
        "textSelectionRange",
        "getTextSelectionRange$delegate",
        "getTextSelectionRange",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J",
        "setTextSelectionRange-FDrldGo",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;J)V",
        "Landroidx/compose/ui/state/ToggleableState;",
        "toggleableState",
        "getToggleableState$delegate",
        "getToggleableState",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;",
        "setToggleableState",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/state/ToggleableState;)V",
        "",
        "traversalIndex",
        "getTraversalIndex$delegate",
        "getTraversalIndex",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F",
        "setTraversalIndex",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;F)V",
        "verticalScrollAxisRange",
        "getVerticalScrollAxisRange$delegate",
        "getVerticalScrollAxisRange",
        "setVerticalScrollAxisRange",
        "ActionPropertyKey",
        "Landroidx/compose/ui/semantics/SemanticsPropertyKey;",
        "Landroidx/compose/ui/semantics/AccessibilityAction;",
        "T",
        "Lkotlin/Function;",
        "name",
        "throwSemanticsGetNotSupported",
        "()Ljava/lang/Object;",
        "collapse",
        "",
        "label",
        "action",
        "Lkotlin/Function0;",
        "copyText",
        "cutText",
        "dialog",
        "disabled",
        "dismiss",
        "error",
        "description",
        "expand",
        "getTextLayoutResult",
        "Lkotlin/Function1;",
        "",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "heading",
        "indexForKey",
        "mapping",
        "",
        "",
        "insertTextAtCursor",
        "invisibleToUser",
        "onClick",
        "onLongClick",
        "pageDown",
        "pageLeft",
        "pageRight",
        "pageUp",
        "password",
        "pasteText",
        "performImeAction",
        "popup",
        "requestFocus",
        "scrollBy",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "x",
        "y",
        "scrollToIndex",
        "selectableGroup",
        "setProgress",
        "setSelection",
        "Lkotlin/Function3;",
        "startIndex",
        "endIndex",
        "relativeToOriginalText",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x14

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 739
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;

    const-string/jumbo v3, "stateDescription"

    const-string v4, "getStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 746
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "progressBarRangeInfo"

    const-string v4, "getProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 766
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "paneTitle"

    const-string v4, "getPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 789
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "liveRegion"

    const-string v4, "getLiveRegion(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 797
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "focused"

    const-string v4, "getFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 808
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "isContainer"

    const-string v4, "isContainer(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 816
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "isTraversalGroup"

    const-string v4, "isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 851
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string/jumbo v3, "traversalIndex"

    const-string v4, "getTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 857
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "horizontalScrollAxisRange"

    const-string v4, "getHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 863
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string/jumbo v3, "verticalScrollAxisRange"

    const-string v4, "getVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 887
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "role"

    const-string v4, "getRole(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 900
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string/jumbo v3, "testTag"

    const-string v4, "getTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 918
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "editableText"

    const-string v4, "getEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 923
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string/jumbo v3, "textSelectionRange"

    const-string v4, "getTextSelectionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 933
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "imeAction"

    const-string v4, "getImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    .line 940
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string/jumbo v3, "selected"

    const-string v4, "getSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    .line 947
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "collectionInfo"

    const-string v4, "getCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    .line 955
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "collectionItemInfo"

    const-string v4, "getCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    .line 962
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string/jumbo v3, "toggleableState"

    const-string v4, "getToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    .line 1005
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "customActions"

    const-string v4, "getCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 739
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getStateDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 746
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 766
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 789
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getLiveRegion()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 797
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 808
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 816
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 851
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTraversalIndex()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 857
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 863
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 887
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 900
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 918
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 923
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 933
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 940
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 947
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 955
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionItemInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 962
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1005
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-void
.end method

.method private static final ActionPropertyKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lkotlin/Function<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/compose/ui/semantics/SemanticsPropertyKey<",
            "Landroidx/compose/ui/semantics/AccessibilityAction<",
            "TT;>;>;"
        }
    .end annotation

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 464
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 462
    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public static final synthetic access$throwSemanticsGetNotSupported()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->throwSemanticsGetNotSupported()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final collapse(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getCollapse()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic collapse$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1211
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->collapse(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final copyText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getCopyText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic copyText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1153
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->copyText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final cutText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1170
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getCutText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic cutText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1166
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->cutText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final dialog(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsDialog()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final disabled(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getDisabled()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final dismiss(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1228
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getDismiss()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic dismiss$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1224
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->dismiss(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final error(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getError()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final expand(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getExpand()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic expand$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1198
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->expand(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final getCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/CollectionInfo;

    return-object p0
.end method

.method private static getCollectionInfo$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 947
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionItemInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/CollectionItemInfo;

    return-object p0
.end method

.method private static getCollectionItemInfo$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 955
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionItemInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    invoke-static {}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->throwSemanticsGetNotSupported()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final getCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/CustomAccessibilityAction;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getCustomActions$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 1005
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    return-object p0
.end method

.method private static getEditableText$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 918
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static getFocused$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 797
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-object p0
.end method

.method private static getHorizontalScrollAxisRange$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 857
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/input/ImeAction;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction;->unbox-impl()I

    move-result p0

    return p0
.end method

.method private static getImeAction$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 933
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getLiveRegion(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getLiveRegion()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/LiveRegionMode;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/LiveRegionMode;->unbox-impl()I

    move-result p0

    return p0
.end method

.method private static getLiveRegion$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 789
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getLiveRegion()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getPaneTitle$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 766
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    return-object p0
.end method

.method private static getProgressBarRangeInfo$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 746
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getRole(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/Role;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result p0

    return p0
.end method

.method private static getRole$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 887
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static getSelected$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 940
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getStateDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getStateDescription$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 739
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getStateDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getTestTag$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 900
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    invoke-static {}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->throwSemanticsGetNotSupported()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    return-object p0
.end method

.method public static final getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic getTextLayoutResult$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1014
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final getTextSelectionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getTextSelectionRange$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 923
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/state/ToggleableState;

    return-object p0
.end method

.method private static getToggleableState$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 962
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTraversalIndex()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static getTraversalIndex$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 851
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTraversalIndex()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final getVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-object p0
.end method

.method private static getVerticalScrollAxisRange$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 863
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final heading(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHeading()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final indexForKey(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIndexForKey()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final insertTextAtCursor(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getInsertTextAtCursor()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic insertTextAtCursor$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1104
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->insertTextAtCursor(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final invisibleToUser(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getInvisibleToUser()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final isContainer(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic isContainer$annotations(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use `isTraversalGroup` instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "isTraversalGroup"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method private static isContainer$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 808
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isTraversalGroup$delegate(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;
    .locals 0

    .line 816
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p0

    return-object p0
.end method

.method public static final onClick(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic onClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1027
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final onLongClick(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnLongClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic onLongClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1037
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onLongClick(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final pageDown(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1264
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageDown()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic pageDown$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1260
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pageDown(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final pageLeft(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1277
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageLeft()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic pageLeft$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1273
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pageLeft(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final pageRight(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageRight()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic pageRight$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1286
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pageRight(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final pageUp(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1251
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageUp()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic pageUp$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1247
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pageUp(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final password(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 968
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final pasteText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1189
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getPasteText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic pasteText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1185
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pasteText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final performImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1126
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getPerformImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic performImeAction$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1122
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->performImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final popup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsPopup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final requestFocus(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getRequestFocus()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic requestFocus$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1237
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->requestFocus(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final scrollBy(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getScrollBy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic scrollBy$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1049
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->scrollBy(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final scrollToIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getScrollToIndex()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic scrollToIndex$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1061
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->scrollToIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final selectableGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelectableGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionItemInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setContainer(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/CustomAccessibilityAction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setImeAction-4L7nppU(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V
    .locals 3

    const-string v0, "$this$imeAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-static {p1}, Landroidx/compose/ui/text/input/ImeAction;->box-impl(I)Landroidx/compose/ui/text/input/ImeAction;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setLiveRegion-hR3wRGc(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V
    .locals 3

    const-string v0, "$this$liveRegion"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getLiveRegion()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Landroidx/compose/ui/semantics/LiveRegionMode;->box-impl(I)Landroidx/compose/ui/semantics/LiveRegionMode;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setProgress(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetProgress()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic setProgress$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1076
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setProgress(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ProgressBarRangeInfo;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V
    .locals 3

    const-string v0, "$this$role"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-static {p1}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setSelection(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetSelection()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic setSelection$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1140
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setSelection(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static final setStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getStateDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1092
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Lkotlin/Function;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic setText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1088
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setTextSelectionRange-FDrldGo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;J)V
    .locals 3

    const-string v0, "$this$textSelectionRange"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/state/ToggleableState;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;F)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTraversalIndex()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private static final throwSemanticsGetNotSupported()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You cannot retrieve a semantics property directly - use one of the SemanticsConfiguration.getOr* methods instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
