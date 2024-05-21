package androidx.compose.ui.semantics;

import androidx.autofill.HintConstants;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.exifinterface.media.ExifInterface;
import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: SemanticsProperties.kt */
@Metadata(d1 = {"\u0000Î\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a4\u0010\u0081\u0001\u001a\u0011\u0012\f\u0012\n\u0012\u0005\u0012\u0003H\u0084\u00010\u0083\u00010\u0082\u0001\"\u0010\b\u0000\u0010\u0084\u0001*\t\u0012\u0004\u0012\u00020'0\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020\u0012H\u0082\b\u001a\u0017\u0010\u0087\u0001\u001a\u0003H\u0084\u0001\"\u0005\b\u0000\u0010\u0084\u0001H\u0002¢\u0006\u0003\u0010\u0088\u0001\u001a+\u0010\u0089\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a+\u0010\u008e\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a+\u0010\u008f\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a\f\u0010\u0090\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a\f\u0010\u0091\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a+\u0010\u0092\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a\u0015\u0010\u0093\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u0007\u0010\u0094\u0001\u001a\u00020\u0012\u001a+\u0010\u0095\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a9\u0010\u0096\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u001e\u0010\u008c\u0001\u001a\u0019\u0012\f\u0012\n\u0012\u0005\u0012\u00030\u0099\u00010\u0098\u0001\u0012\u0004\u0012\u00020'\u0018\u00010\u0097\u0001\u001a\f\u0010\u009a\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a$\u0010\u009b\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u0016\u0010\u009c\u0001\u001a\u0011\u0012\u0005\u0012\u00030\u009d\u0001\u0012\u0005\u0012\u00030\u009e\u00010\u0097\u0001\u001a1\u0010\u009f\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0016\u0010\u008c\u0001\u001a\u0011\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020'\u0018\u00010\u0097\u0001\u001a\u000e\u0010 \u0001\u001a\u00030\u008a\u0001*\u00020\u0003H\u0007\u001a+\u0010¡\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a+\u0010¢\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a+\u0010£\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a+\u0010¤\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a+\u0010¥\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a+\u0010¦\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a\f\u0010§\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a+\u0010¨\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a+\u0010©\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a\f\u0010ª\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a+\u0010«\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0010\u0010\u008c\u0001\u001a\u000b\u0012\u0004\u0012\u00020'\u0018\u00010\u008d\u0001\u001a[\u0010¬\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122@\u0010\u008c\u0001\u001a;\u0012\u0016\u0012\u00140v¢\u0006\u000f\b®\u0001\u0012\n\b\u0086\u0001\u0012\u0005\b\b(¯\u0001\u0012\u0016\u0012\u00140v¢\u0006\u000f\b®\u0001\u0012\n\b\u0086\u0001\u0012\u0005\b\b(°\u0001\u0012\u0004\u0012\u00020'\u0018\u00010\u00ad\u0001\u001a0\u0010±\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0015\u0010\u008c\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u009e\u0001\u0012\u0004\u0012\u00020'0\u0097\u0001\u001a\f\u0010²\u0001\u001a\u00030\u008a\u0001*\u00020\u0003\u001a1\u0010³\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0016\u0010\u008c\u0001\u001a\u0011\u0012\u0004\u0012\u00020v\u0012\u0004\u0012\u00020'\u0018\u00010\u0097\u0001\u001au\u0010´\u0001\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122Z\u0010\u008c\u0001\u001aU\u0012\u0017\u0012\u00150\u009e\u0001¢\u0006\u000f\b®\u0001\u0012\n\b\u0086\u0001\u0012\u0005\b\b(¶\u0001\u0012\u0017\u0012\u00150\u009e\u0001¢\u0006\u000f\b®\u0001\u0012\n\b\u0086\u0001\u0012\u0005\b\b(·\u0001\u0012\u0016\u0012\u00140'¢\u0006\u000f\b®\u0001\u0012\n\b\u0086\u0001\u0012\u0005\b\b(¸\u0001\u0012\u0004\u0012\u00020'\u0018\u00010µ\u0001\u001a0\u0010g\u001a\u00030\u008a\u0001*\u00020\u00032\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00122\u0016\u0010\u008c\u0001\u001a\u0011\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020'\u0018\u00010\u0097\u0001\"/\u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t*\u0004\b\u0004\u0010\u0005\"/\u0010\u000b\u001a\u00020\n*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\n8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010*\u0004\b\f\u0010\u0005\"(\u0010\u0013\u001a\u00020\u0012*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00128F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017\";\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018*\u00020\u00032\f\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f*\u0004\b\u001b\u0010\u0005\"/\u0010!\u001a\u00020 *\u00020\u00032\u0006\u0010\u0000\u001a\u00020 8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&*\u0004\b\"\u0010\u0005\"/\u0010(\u001a\u00020'*\u00020\u00032\u0006\u0010\u0000\u001a\u00020'8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-*\u0004\b)\u0010\u0005\"/\u0010/\u001a\u00020.*\u00020\u00032\u0006\u0010\u0000\u001a\u00020.8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b1\u00102\"\u0004\b3\u00104*\u0004\b0\u0010\u0005\"2\u00106\u001a\u000205*\u00020\u00032\u0006\u0010\u0000\u001a\u0002058F@FX\u0086\u008e\u0002ø\u0001\u0000¢\u0006\u0012\u001a\u0004\b8\u00109\"\u0004\b:\u0010;*\u0004\b7\u0010\u0005\"5\u0010<\u001a\u00020'*\u00020\u00032\u0006\u0010\u0000\u001a\u00020'8F@FX\u0087\u008e\u0002¢\u0006\u0018\u0012\u0004\b=\u0010>\u001a\u0004\b<\u0010+\"\u0004\b@\u0010-*\u0004\b?\u0010\u0005\"/\u0010A\u001a\u00020'*\u00020\u00032\u0006\u0010\u0000\u001a\u00020'8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\bA\u0010+\"\u0004\bC\u0010-*\u0004\bB\u0010\u0005\"2\u0010E\u001a\u00020D*\u00020\u00032\u0006\u0010\u0000\u001a\u00020D8F@FX\u0086\u008e\u0002ø\u0001\u0000¢\u0006\u0012\u001a\u0004\bG\u00109\"\u0004\bH\u0010;*\u0004\bF\u0010\u0005\"/\u0010I\u001a\u00020\u0012*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00128F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\bK\u0010\u0015\"\u0004\bL\u0010\u0017*\u0004\bJ\u0010\u0005\"/\u0010N\u001a\u00020M*\u00020\u00032\u0006\u0010\u0000\u001a\u00020M8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010S*\u0004\bO\u0010\u0005\"2\u0010U\u001a\u00020T*\u00020\u00032\u0006\u0010\u0000\u001a\u00020T8F@FX\u0086\u008e\u0002ø\u0001\u0000¢\u0006\u0012\u001a\u0004\bW\u00109\"\u0004\bX\u0010;*\u0004\bV\u0010\u0005\"/\u0010Y\u001a\u00020'*\u00020\u00032\u0006\u0010\u0000\u001a\u00020'8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b[\u0010+\"\u0004\b\\\u0010-*\u0004\bZ\u0010\u0005\"/\u0010]\u001a\u00020\u0012*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00128F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b_\u0010\u0015\"\u0004\b`\u0010\u0017*\u0004\b^\u0010\u0005\"/\u0010a\u001a\u00020\u0012*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00128F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\bc\u0010\u0015\"\u0004\bd\u0010\u0017*\u0004\bb\u0010\u0005\"(\u0010e\u001a\u00020 *\u00020\u00032\u0006\u0010\u0011\u001a\u00020 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bf\u0010$\"\u0004\bg\u0010&\"2\u0010i\u001a\u00020h*\u00020\u00032\u0006\u0010\u0000\u001a\u00020h8F@FX\u0086\u008e\u0002ø\u0001\u0000¢\u0006\u0012\u001a\u0004\bk\u0010l\"\u0004\bm\u0010n*\u0004\bj\u0010\u0005\"/\u0010p\u001a\u00020o*\u00020\u00032\u0006\u0010\u0000\u001a\u00020o8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\br\u0010s\"\u0004\bt\u0010u*\u0004\bq\u0010\u0005\"/\u0010w\u001a\u00020v*\u00020\u00032\u0006\u0010\u0000\u001a\u00020v8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\by\u0010z\"\u0004\b{\u0010|*\u0004\bx\u0010\u0005\"0\u0010}\u001a\u00020.*\u00020\u00032\u0006\u0010\u0000\u001a\u00020.8F@FX\u0086\u008e\u0002¢\u0006\u0013\u001a\u0004\b\u007f\u00102\"\u0005\b\u0080\u0001\u00104*\u0004\b~\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006¹\u0001"}, d2 = {"<set-?>", "Landroidx/compose/ui/semantics/CollectionInfo;", "collectionInfo", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "getCollectionInfo$delegate", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/Object;", "getCollectionInfo", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;", "setCollectionInfo", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V", "Landroidx/compose/ui/semantics/CollectionItemInfo;", "collectionItemInfo", "getCollectionItemInfo$delegate", "getCollectionItemInfo", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;", "setCollectionItemInfo", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V", "value", "", "contentDescription", "getContentDescription", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", "setContentDescription", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V", "", "Landroidx/compose/ui/semantics/CustomAccessibilityAction;", "customActions", "getCustomActions$delegate", "getCustomActions", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;", "setCustomActions", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/util/List;)V", "Landroidx/compose/ui/text/AnnotatedString;", "editableText", "getEditableText$delegate", "getEditableText", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;", "setEditableText", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/text/AnnotatedString;)V", "", "focused", "getFocused$delegate", "getFocused", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", "setFocused", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V", "Landroidx/compose/ui/semantics/ScrollAxisRange;", "horizontalScrollAxisRange", "getHorizontalScrollAxisRange$delegate", "getHorizontalScrollAxisRange", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", "setHorizontalScrollAxisRange", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ScrollAxisRange;)V", "Landroidx/compose/ui/text/input/ImeAction;", "imeAction", "getImeAction$delegate", "getImeAction", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", "setImeAction-4L7nppU", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V", "isContainer", "isContainer$annotations", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V", "isContainer$delegate", "setContainer", "isTraversalGroup", "isTraversalGroup$delegate", "setTraversalGroup", "Landroidx/compose/ui/semantics/LiveRegionMode;", "liveRegion", "getLiveRegion$delegate", "getLiveRegion", "setLiveRegion-hR3wRGc", "paneTitle", "getPaneTitle$delegate", "getPaneTitle", "setPaneTitle", "Landroidx/compose/ui/semantics/ProgressBarRangeInfo;", "progressBarRangeInfo", "getProgressBarRangeInfo$delegate", "getProgressBarRangeInfo", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;", "setProgressBarRangeInfo", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ProgressBarRangeInfo;)V", "Landroidx/compose/ui/semantics/Role;", "role", "getRole$delegate", "getRole", "setRole-kuIjeqM", "selected", "getSelected$delegate", "getSelected", "setSelected", "stateDescription", "getStateDescription$delegate", "getStateDescription", "setStateDescription", "testTag", "getTestTag$delegate", "getTestTag", "setTestTag", "text", "getText", "setText", "Landroidx/compose/ui/text/TextRange;", "textSelectionRange", "getTextSelectionRange$delegate", "getTextSelectionRange", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J", "setTextSelectionRange-FDrldGo", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;J)V", "Landroidx/compose/ui/state/ToggleableState;", "toggleableState", "getToggleableState$delegate", "getToggleableState", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;", "setToggleableState", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/state/ToggleableState;)V", "", "traversalIndex", "getTraversalIndex$delegate", "getTraversalIndex", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F", "setTraversalIndex", "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;F)V", "verticalScrollAxisRange", "getVerticalScrollAxisRange$delegate", "getVerticalScrollAxisRange", "setVerticalScrollAxisRange", "ActionPropertyKey", "Landroidx/compose/ui/semantics/SemanticsPropertyKey;", "Landroidx/compose/ui/semantics/AccessibilityAction;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function;", "name", "throwSemanticsGetNotSupported", "()Ljava/lang/Object;", "collapse", "", "label", "action", "Lkotlin/Function0;", "copyText", "cutText", "dialog", "disabled", "dismiss", "error", "description", "expand", "getTextLayoutResult", "Lkotlin/Function1;", "", "Landroidx/compose/ui/text/TextLayoutResult;", "heading", "indexForKey", "mapping", "", "", "insertTextAtCursor", "invisibleToUser", "onClick", "onLongClick", "pageDown", "pageLeft", "pageRight", "pageUp", HintConstants.AUTOFILL_HINT_PASSWORD, "pasteText", "performImeAction", "popup", "requestFocus", "scrollBy", "Lkotlin/Function2;", "Lkotlin/ParameterName;", ViewHierarchyNode.JsonKeys.X, ViewHierarchyNode.JsonKeys.Y, "scrollToIndex", "selectableGroup", "setProgress", "setSelection", "Lkotlin/Function3;", SpellCheckPlugin.START_INDEX_KEY, SpellCheckPlugin.END_INDEX_KEY, "relativeToOriginalText", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SemanticsPropertiesKt {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "stateDescription", "getStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "progressBarRangeInfo", "getProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "paneTitle", "getPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "liveRegion", "getLiveRegion(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "focused", "getFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isContainer", "isContainer(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isTraversalGroup", "isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "traversalIndex", "getTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "horizontalScrollAxisRange", "getHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "verticalScrollAxisRange", "getVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "role", "getRole(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "testTag", "getTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "editableText", "getEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "textSelectionRange", "getTextSelectionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "imeAction", "getImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "selected", "getSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "collectionInfo", "getCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "collectionItemInfo", "getCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "toggleableState", "getToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;", 1)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "customActions", "getCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;", 1))};

    @Deprecated(message = "Use `isTraversalGroup` instead.", replaceWith = @ReplaceWith(expression = "isTraversalGroup", imports = {}))
    public static /* synthetic */ void isContainer$annotations(SemanticsPropertyReceiver semanticsPropertyReceiver) {
    }

    public static final <T> T throwSemanticsGetNotSupported() {
        throw new UnsupportedOperationException("You cannot retrieve a semantics property directly - use one of the SemanticsConfiguration.getOr* methods instead");
    }

    private static final <T extends Function<? extends Boolean>> SemanticsPropertyKey<AccessibilityAction<T>> ActionPropertyKey(String str) {
        return new SemanticsPropertyKey<>(str, SemanticsPropertiesKt$ActionPropertyKey$1.INSTANCE);
    }

    public static final String getContentDescription(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return (String) throwSemanticsGetNotSupported();
    }

    public static final void setContentDescription(SemanticsPropertyReceiver semanticsPropertyReceiver, String value) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getContentDescription(), CollectionsKt.listOf(value));
    }

    static {
        SemanticsProperties.INSTANCE.getStateDescription();
        SemanticsProperties.INSTANCE.getProgressBarRangeInfo();
        SemanticsProperties.INSTANCE.getPaneTitle();
        SemanticsProperties.INSTANCE.getLiveRegion();
        SemanticsProperties.INSTANCE.getFocused();
        SemanticsProperties.INSTANCE.getIsTraversalGroup();
        SemanticsProperties.INSTANCE.getIsTraversalGroup();
        SemanticsProperties.INSTANCE.getTraversalIndex();
        SemanticsProperties.INSTANCE.getHorizontalScrollAxisRange();
        SemanticsProperties.INSTANCE.getVerticalScrollAxisRange();
        SemanticsProperties.INSTANCE.getRole();
        SemanticsProperties.INSTANCE.getTestTag();
        SemanticsProperties.INSTANCE.getEditableText();
        SemanticsProperties.INSTANCE.getTextSelectionRange();
        SemanticsProperties.INSTANCE.getImeAction();
        SemanticsProperties.INSTANCE.getSelected();
        SemanticsProperties.INSTANCE.getCollectionInfo();
        SemanticsProperties.INSTANCE.getCollectionItemInfo();
        SemanticsProperties.INSTANCE.getToggleableState();
        SemanticsActions.INSTANCE.getCustomActions();
    }

    public static final String getStateDescription(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getStateDescription().getValue(semanticsPropertyReceiver, $$delegatedProperties[0]);
    }

    public static final void setStateDescription(SemanticsPropertyReceiver semanticsPropertyReceiver, String str) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        SemanticsProperties.INSTANCE.getStateDescription().setValue(semanticsPropertyReceiver, $$delegatedProperties[0], str);
    }

    public static final ProgressBarRangeInfo getProgressBarRangeInfo(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getProgressBarRangeInfo().getValue(semanticsPropertyReceiver, $$delegatedProperties[1]);
    }

    public static final void setProgressBarRangeInfo(SemanticsPropertyReceiver semanticsPropertyReceiver, ProgressBarRangeInfo progressBarRangeInfo) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(progressBarRangeInfo, "<set-?>");
        SemanticsProperties.INSTANCE.getProgressBarRangeInfo().setValue(semanticsPropertyReceiver, $$delegatedProperties[1], progressBarRangeInfo);
    }

    public static final void heading(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getHeading(), Unit.INSTANCE);
    }

    public static final String getPaneTitle(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getPaneTitle().getValue(semanticsPropertyReceiver, $$delegatedProperties[2]);
    }

    public static final void setPaneTitle(SemanticsPropertyReceiver semanticsPropertyReceiver, String str) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        SemanticsProperties.INSTANCE.getPaneTitle().setValue(semanticsPropertyReceiver, $$delegatedProperties[2], str);
    }

    public static final void disabled(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getDisabled(), Unit.INSTANCE);
    }

    public static final int getLiveRegion(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getLiveRegion().getValue(semanticsPropertyReceiver, $$delegatedProperties[3]).getValue();
    }

    /* renamed from: setLiveRegion-hR3wRGc */
    public static final void m4269setLiveRegionhR3wRGc(SemanticsPropertyReceiver liveRegion, int i) {
        Intrinsics.checkNotNullParameter(liveRegion, "$this$liveRegion");
        SemanticsProperties.INSTANCE.getLiveRegion().setValue(liveRegion, $$delegatedProperties[3], LiveRegionMode.m4240boximpl(i));
    }

    public static final boolean getFocused(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getFocused().getValue(semanticsPropertyReceiver, $$delegatedProperties[4]).booleanValue();
    }

    public static final void setFocused(SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        SemanticsProperties.INSTANCE.getFocused().setValue(semanticsPropertyReceiver, $$delegatedProperties[4], Boolean.valueOf(z));
    }

    public static final boolean isContainer(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getIsTraversalGroup().getValue(semanticsPropertyReceiver, $$delegatedProperties[5]).booleanValue();
    }

    public static final void setContainer(SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        SemanticsProperties.INSTANCE.getIsTraversalGroup().setValue(semanticsPropertyReceiver, $$delegatedProperties[5], Boolean.valueOf(z));
    }

    public static final boolean isTraversalGroup(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getIsTraversalGroup().getValue(semanticsPropertyReceiver, $$delegatedProperties[6]).booleanValue();
    }

    public static final void setTraversalGroup(SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        SemanticsProperties.INSTANCE.getIsTraversalGroup().setValue(semanticsPropertyReceiver, $$delegatedProperties[6], Boolean.valueOf(z));
    }

    public static final void invisibleToUser(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getInvisibleToUser(), Unit.INSTANCE);
    }

    public static final float getTraversalIndex(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getTraversalIndex().getValue(semanticsPropertyReceiver, $$delegatedProperties[7]).floatValue();
    }

    public static final void setTraversalIndex(SemanticsPropertyReceiver semanticsPropertyReceiver, float f) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        SemanticsProperties.INSTANCE.getTraversalIndex().setValue(semanticsPropertyReceiver, $$delegatedProperties[7], Float.valueOf(f));
    }

    public static final ScrollAxisRange getHorizontalScrollAxisRange(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getHorizontalScrollAxisRange().getValue(semanticsPropertyReceiver, $$delegatedProperties[8]);
    }

    public static final void setHorizontalScrollAxisRange(SemanticsPropertyReceiver semanticsPropertyReceiver, ScrollAxisRange scrollAxisRange) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(scrollAxisRange, "<set-?>");
        SemanticsProperties.INSTANCE.getHorizontalScrollAxisRange().setValue(semanticsPropertyReceiver, $$delegatedProperties[8], scrollAxisRange);
    }

    public static final ScrollAxisRange getVerticalScrollAxisRange(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getVerticalScrollAxisRange().getValue(semanticsPropertyReceiver, $$delegatedProperties[9]);
    }

    public static final void setVerticalScrollAxisRange(SemanticsPropertyReceiver semanticsPropertyReceiver, ScrollAxisRange scrollAxisRange) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(scrollAxisRange, "<set-?>");
        SemanticsProperties.INSTANCE.getVerticalScrollAxisRange().setValue(semanticsPropertyReceiver, $$delegatedProperties[9], scrollAxisRange);
    }

    public static final void popup(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getIsPopup(), Unit.INSTANCE);
    }

    public static final void dialog(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getIsDialog(), Unit.INSTANCE);
    }

    public static final int getRole(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getRole().getValue(semanticsPropertyReceiver, $$delegatedProperties[10]).getValue();
    }

    /* renamed from: setRole-kuIjeqM */
    public static final void m4270setRolekuIjeqM(SemanticsPropertyReceiver role, int i) {
        Intrinsics.checkNotNullParameter(role, "$this$role");
        SemanticsProperties.INSTANCE.getRole().setValue(role, $$delegatedProperties[10], Role.m4249boximpl(i));
    }

    public static final String getTestTag(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getTestTag().getValue(semanticsPropertyReceiver, $$delegatedProperties[11]);
    }

    public static final void setTestTag(SemanticsPropertyReceiver semanticsPropertyReceiver, String str) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        SemanticsProperties.INSTANCE.getTestTag().setValue(semanticsPropertyReceiver, $$delegatedProperties[11], str);
    }

    public static final AnnotatedString getText(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return (AnnotatedString) throwSemanticsGetNotSupported();
    }

    public static final void setText(SemanticsPropertyReceiver semanticsPropertyReceiver, AnnotatedString value) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getText(), CollectionsKt.listOf(value));
    }

    public static final AnnotatedString getEditableText(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getEditableText().getValue(semanticsPropertyReceiver, $$delegatedProperties[12]);
    }

    public static final void setEditableText(SemanticsPropertyReceiver semanticsPropertyReceiver, AnnotatedString annotatedString) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(annotatedString, "<set-?>");
        SemanticsProperties.INSTANCE.getEditableText().setValue(semanticsPropertyReceiver, $$delegatedProperties[12], annotatedString);
    }

    public static final long getTextSelectionRange(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getTextSelectionRange().getValue(semanticsPropertyReceiver, $$delegatedProperties[13]).getPackedValue();
    }

    /* renamed from: setTextSelectionRange-FDrldGo */
    public static final void m4271setTextSelectionRangeFDrldGo(SemanticsPropertyReceiver textSelectionRange, long j) {
        Intrinsics.checkNotNullParameter(textSelectionRange, "$this$textSelectionRange");
        SemanticsProperties.INSTANCE.getTextSelectionRange().setValue(textSelectionRange, $$delegatedProperties[13], TextRange.m4402boximpl(j));
    }

    public static final int getImeAction(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getImeAction().getValue(semanticsPropertyReceiver, $$delegatedProperties[14]).getValue();
    }

    /* renamed from: setImeAction-4L7nppU */
    public static final void m4268setImeAction4L7nppU(SemanticsPropertyReceiver imeAction, int i) {
        Intrinsics.checkNotNullParameter(imeAction, "$this$imeAction");
        SemanticsProperties.INSTANCE.getImeAction().setValue(imeAction, $$delegatedProperties[14], ImeAction.m4558boximpl(i));
    }

    public static final boolean getSelected(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getSelected().getValue(semanticsPropertyReceiver, $$delegatedProperties[15]).booleanValue();
    }

    public static final void setSelected(SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        SemanticsProperties.INSTANCE.getSelected().setValue(semanticsPropertyReceiver, $$delegatedProperties[15], Boolean.valueOf(z));
    }

    public static final CollectionInfo getCollectionInfo(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getCollectionInfo().getValue(semanticsPropertyReceiver, $$delegatedProperties[16]);
    }

    public static final void setCollectionInfo(SemanticsPropertyReceiver semanticsPropertyReceiver, CollectionInfo collectionInfo) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(collectionInfo, "<set-?>");
        SemanticsProperties.INSTANCE.getCollectionInfo().setValue(semanticsPropertyReceiver, $$delegatedProperties[16], collectionInfo);
    }

    public static final CollectionItemInfo getCollectionItemInfo(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getCollectionItemInfo().getValue(semanticsPropertyReceiver, $$delegatedProperties[17]);
    }

    public static final void setCollectionItemInfo(SemanticsPropertyReceiver semanticsPropertyReceiver, CollectionItemInfo collectionItemInfo) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(collectionItemInfo, "<set-?>");
        SemanticsProperties.INSTANCE.getCollectionItemInfo().setValue(semanticsPropertyReceiver, $$delegatedProperties[17], collectionItemInfo);
    }

    public static final ToggleableState getToggleableState(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsProperties.INSTANCE.getToggleableState().getValue(semanticsPropertyReceiver, $$delegatedProperties[18]);
    }

    public static final void setToggleableState(SemanticsPropertyReceiver semanticsPropertyReceiver, ToggleableState toggleableState) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(toggleableState, "<set-?>");
        SemanticsProperties.INSTANCE.getToggleableState().setValue(semanticsPropertyReceiver, $$delegatedProperties[18], toggleableState);
    }

    public static final void password(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getPassword(), Unit.INSTANCE);
    }

    public static final void error(SemanticsPropertyReceiver semanticsPropertyReceiver, String description) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(description, "description");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getError(), description);
    }

    public static final void indexForKey(SemanticsPropertyReceiver semanticsPropertyReceiver, Function1<Object, Integer> mapping) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getIndexForKey(), mapping);
    }

    public static final void selectableGroup(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsProperties.INSTANCE.getSelectableGroup(), Unit.INSTANCE);
    }

    public static final List<CustomAccessibilityAction> getCustomActions(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return SemanticsActions.INSTANCE.getCustomActions().getValue(semanticsPropertyReceiver, $$delegatedProperties[19]);
    }

    public static final void setCustomActions(SemanticsPropertyReceiver semanticsPropertyReceiver, List<CustomAccessibilityAction> list) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        SemanticsActions.INSTANCE.getCustomActions().setValue(semanticsPropertyReceiver, $$delegatedProperties[19], list);
    }

    public static /* synthetic */ void getTextLayoutResult$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        getTextLayoutResult(semanticsPropertyReceiver, str, function1);
    }

    public static final void getTextLayoutResult(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function1<? super List<TextLayoutResult>, Boolean> function1) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getGetTextLayoutResult(), new AccessibilityAction(str, function1));
    }

    public static /* synthetic */ void onClick$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        onClick(semanticsPropertyReceiver, str, function0);
    }

    public static final void onClick(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getOnClick(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void onLongClick$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        onLongClick(semanticsPropertyReceiver, str, function0);
    }

    public static final void onLongClick(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getOnLongClick(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void scrollBy$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        scrollBy(semanticsPropertyReceiver, str, function2);
    }

    public static final void scrollBy(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function2<? super Float, ? super Float, Boolean> function2) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getScrollBy(), new AccessibilityAction(str, function2));
    }

    public static /* synthetic */ void scrollToIndex$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        scrollToIndex(semanticsPropertyReceiver, str, function1);
    }

    public static final void scrollToIndex(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function1<? super Integer, Boolean> action) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getScrollToIndex(), new AccessibilityAction(str, action));
    }

    public static /* synthetic */ void setProgress$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        setProgress(semanticsPropertyReceiver, str, function1);
    }

    public static final void setProgress(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function1<? super Float, Boolean> function1) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getSetProgress(), new AccessibilityAction(str, function1));
    }

    public static /* synthetic */ void setText$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        setText(semanticsPropertyReceiver, str, function1);
    }

    public static final void setText(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function1<? super AnnotatedString, Boolean> function1) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getSetText(), new AccessibilityAction(str, function1));
    }

    public static /* synthetic */ void insertTextAtCursor$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        insertTextAtCursor(semanticsPropertyReceiver, str, function1);
    }

    public static final void insertTextAtCursor(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function1<? super AnnotatedString, Boolean> function1) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getInsertTextAtCursor(), new AccessibilityAction(str, function1));
    }

    public static /* synthetic */ void performImeAction$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        performImeAction(semanticsPropertyReceiver, str, function0);
    }

    public static final void performImeAction(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getPerformImeAction(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void setSelection$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        setSelection(semanticsPropertyReceiver, str, function3);
    }

    public static final void setSelection(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function3<? super Integer, ? super Integer, ? super Boolean, Boolean> function3) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getSetSelection(), new AccessibilityAction(str, function3));
    }

    public static /* synthetic */ void copyText$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        copyText(semanticsPropertyReceiver, str, function0);
    }

    public static final void copyText(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getCopyText(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void cutText$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        cutText(semanticsPropertyReceiver, str, function0);
    }

    public static final void cutText(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getCutText(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void pasteText$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        pasteText(semanticsPropertyReceiver, str, function0);
    }

    public static final void pasteText(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getPasteText(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void expand$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        expand(semanticsPropertyReceiver, str, function0);
    }

    public static final void expand(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getExpand(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void collapse$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        collapse(semanticsPropertyReceiver, str, function0);
    }

    public static final void collapse(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getCollapse(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void dismiss$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        dismiss(semanticsPropertyReceiver, str, function0);
    }

    public static final void dismiss(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getDismiss(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void requestFocus$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        requestFocus(semanticsPropertyReceiver, str, function0);
    }

    public static final void requestFocus(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getRequestFocus(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void pageUp$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        pageUp(semanticsPropertyReceiver, str, function0);
    }

    public static final void pageUp(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getPageUp(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void pageDown$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        pageDown(semanticsPropertyReceiver, str, function0);
    }

    public static final void pageDown(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getPageDown(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void pageLeft$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        pageLeft(semanticsPropertyReceiver, str, function0);
    }

    public static final void pageLeft(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getPageLeft(), new AccessibilityAction(str, function0));
    }

    public static /* synthetic */ void pageRight$default(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        pageRight(semanticsPropertyReceiver, str, function0);
    }

    public static final void pageRight(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.set(SemanticsActions.INSTANCE.getPageRight(), new AccessibilityAction(str, function0));
    }
}
