package androidx.compose.material3.tokens;

import androidx.compose.material3.MenuKt;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.core.location.LocationRequestCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import kotlin.Metadata;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: PaletteTokens.kt */
@Metadata(d1 = {"\u0000\u0015\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0003\b¢\u0001\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u001c\u0010\f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\r\u0010\u0006R\u001c\u0010\u000e\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000f\u0010\u0006R\u001c\u0010\u0010\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0011\u0010\u0006R\u001c\u0010\u0012\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0013\u0010\u0006R\u001c\u0010\u0014\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0015\u0010\u0006R\u001c\u0010\u0016\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0017\u0010\u0006R\u001c\u0010\u0018\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0019\u0010\u0006R\u001c\u0010\u001a\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u001b\u0010\u0006R\u001c\u0010\u001c\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u001d\u0010\u0006R\u001c\u0010\u001e\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u001f\u0010\u0006R\u001c\u0010 \u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b!\u0010\u0006R\u001c\u0010\"\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b#\u0010\u0006R\u001c\u0010$\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b%\u0010\u0006R\u001c\u0010&\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b'\u0010\u0006R\u001c\u0010(\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b)\u0010\u0006R\u001c\u0010*\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b+\u0010\u0006R\u001c\u0010,\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b-\u0010\u0006R\u001c\u0010.\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b/\u0010\u0006R\u001c\u00100\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b1\u0010\u0006R\u001c\u00102\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b3\u0010\u0006R\u001c\u00104\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b5\u0010\u0006R\u001c\u00106\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b7\u0010\u0006R\u001c\u00108\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b9\u0010\u0006R\u001c\u0010:\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b;\u0010\u0006R\u001c\u0010<\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b=\u0010\u0006R\u001c\u0010>\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b?\u0010\u0006R\u001c\u0010@\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bA\u0010\u0006R\u001c\u0010B\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bC\u0010\u0006R\u001c\u0010D\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bE\u0010\u0006R\u001c\u0010F\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bG\u0010\u0006R\u001c\u0010H\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bI\u0010\u0006R\u001c\u0010J\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bK\u0010\u0006R\u001c\u0010L\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bM\u0010\u0006R\u001c\u0010N\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bO\u0010\u0006R\u001c\u0010P\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bQ\u0010\u0006R\u001c\u0010R\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bS\u0010\u0006R\u001c\u0010T\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bU\u0010\u0006R\u001c\u0010V\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bW\u0010\u0006R\u001c\u0010X\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bY\u0010\u0006R\u001c\u0010Z\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b[\u0010\u0006R\u001c\u0010\\\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b]\u0010\u0006R\u001c\u0010^\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b_\u0010\u0006R\u001c\u0010`\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\ba\u0010\u0006R\u001c\u0010b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bc\u0010\u0006R\u001c\u0010d\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\be\u0010\u0006R\u001c\u0010f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bg\u0010\u0006R\u001c\u0010h\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bi\u0010\u0006R\u001c\u0010j\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bk\u0010\u0006R\u001c\u0010l\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bm\u0010\u0006R\u001c\u0010n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bo\u0010\u0006R\u001c\u0010p\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bq\u0010\u0006R\u001c\u0010r\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bs\u0010\u0006R\u001c\u0010t\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bu\u0010\u0006R\u001c\u0010v\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\bw\u0010\u0006R\u001c\u0010x\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\by\u0010\u0006R\u001c\u0010z\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b{\u0010\u0006R\u001c\u0010|\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b}\u0010\u0006R\u001c\u0010~\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u007f\u0010\u0006R\u001e\u0010\u0080\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u0081\u0001\u0010\u0006R\u001e\u0010\u0082\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u0083\u0001\u0010\u0006R\u001e\u0010\u0084\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u0085\u0001\u0010\u0006R\u001e\u0010\u0086\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u0087\u0001\u0010\u0006R\u001e\u0010\u0088\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u0089\u0001\u0010\u0006R\u001e\u0010\u008a\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u008b\u0001\u0010\u0006R\u001e\u0010\u008c\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u008d\u0001\u0010\u0006R\u001e\u0010\u008e\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u008f\u0001\u0010\u0006R\u001e\u0010\u0090\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u0091\u0001\u0010\u0006R\u001e\u0010\u0092\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u0093\u0001\u0010\u0006R\u001e\u0010\u0094\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u0095\u0001\u0010\u0006R\u001e\u0010\u0096\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u0097\u0001\u0010\u0006R\u001e\u0010\u0098\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u0099\u0001\u0010\u0006R\u001e\u0010\u009a\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u009b\u0001\u0010\u0006R\u001e\u0010\u009c\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u009d\u0001\u0010\u0006R\u001e\u0010\u009e\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b\u009f\u0001\u0010\u0006R\u001e\u0010 \u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b¡\u0001\u0010\u0006R\u001e\u0010¢\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b£\u0001\u0010\u0006R\u001e\u0010¤\u0001\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u000b\n\u0002\u0010\u0007\u001a\u0005\b¥\u0001\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006¦\u0001"}, d2 = {"Landroidx/compose/material3/tokens/PaletteTokens;", "", "()V", "Black", "Landroidx/compose/ui/graphics/Color;", "getBlack-0d7_KjU", "()J", "J", "Error0", "getError0-0d7_KjU", "Error10", "getError10-0d7_KjU", "Error100", "getError100-0d7_KjU", "Error20", "getError20-0d7_KjU", "Error30", "getError30-0d7_KjU", "Error40", "getError40-0d7_KjU", "Error50", "getError50-0d7_KjU", "Error60", "getError60-0d7_KjU", "Error70", "getError70-0d7_KjU", "Error80", "getError80-0d7_KjU", "Error90", "getError90-0d7_KjU", "Error95", "getError95-0d7_KjU", "Error99", "getError99-0d7_KjU", "Neutral0", "getNeutral0-0d7_KjU", "Neutral10", "getNeutral10-0d7_KjU", "Neutral100", "getNeutral100-0d7_KjU", "Neutral20", "getNeutral20-0d7_KjU", "Neutral30", "getNeutral30-0d7_KjU", "Neutral40", "getNeutral40-0d7_KjU", "Neutral50", "getNeutral50-0d7_KjU", "Neutral60", "getNeutral60-0d7_KjU", "Neutral70", "getNeutral70-0d7_KjU", "Neutral80", "getNeutral80-0d7_KjU", "Neutral90", "getNeutral90-0d7_KjU", "Neutral95", "getNeutral95-0d7_KjU", "Neutral99", "getNeutral99-0d7_KjU", "NeutralVariant0", "getNeutralVariant0-0d7_KjU", "NeutralVariant10", "getNeutralVariant10-0d7_KjU", "NeutralVariant100", "getNeutralVariant100-0d7_KjU", "NeutralVariant20", "getNeutralVariant20-0d7_KjU", "NeutralVariant30", "getNeutralVariant30-0d7_KjU", "NeutralVariant40", "getNeutralVariant40-0d7_KjU", "NeutralVariant50", "getNeutralVariant50-0d7_KjU", "NeutralVariant60", "getNeutralVariant60-0d7_KjU", "NeutralVariant70", "getNeutralVariant70-0d7_KjU", "NeutralVariant80", "getNeutralVariant80-0d7_KjU", "NeutralVariant90", "getNeutralVariant90-0d7_KjU", "NeutralVariant95", "getNeutralVariant95-0d7_KjU", "NeutralVariant99", "getNeutralVariant99-0d7_KjU", "Primary0", "getPrimary0-0d7_KjU", "Primary10", "getPrimary10-0d7_KjU", "Primary100", "getPrimary100-0d7_KjU", "Primary20", "getPrimary20-0d7_KjU", "Primary30", "getPrimary30-0d7_KjU", "Primary40", "getPrimary40-0d7_KjU", "Primary50", "getPrimary50-0d7_KjU", "Primary60", "getPrimary60-0d7_KjU", "Primary70", "getPrimary70-0d7_KjU", "Primary80", "getPrimary80-0d7_KjU", "Primary90", "getPrimary90-0d7_KjU", "Primary95", "getPrimary95-0d7_KjU", "Primary99", "getPrimary99-0d7_KjU", "Secondary0", "getSecondary0-0d7_KjU", "Secondary10", "getSecondary10-0d7_KjU", "Secondary100", "getSecondary100-0d7_KjU", "Secondary20", "getSecondary20-0d7_KjU", "Secondary30", "getSecondary30-0d7_KjU", "Secondary40", "getSecondary40-0d7_KjU", "Secondary50", "getSecondary50-0d7_KjU", "Secondary60", "getSecondary60-0d7_KjU", "Secondary70", "getSecondary70-0d7_KjU", "Secondary80", "getSecondary80-0d7_KjU", "Secondary90", "getSecondary90-0d7_KjU", "Secondary95", "getSecondary95-0d7_KjU", "Secondary99", "getSecondary99-0d7_KjU", "Tertiary0", "getTertiary0-0d7_KjU", "Tertiary10", "getTertiary10-0d7_KjU", "Tertiary100", "getTertiary100-0d7_KjU", "Tertiary20", "getTertiary20-0d7_KjU", "Tertiary30", "getTertiary30-0d7_KjU", "Tertiary40", "getTertiary40-0d7_KjU", "Tertiary50", "getTertiary50-0d7_KjU", "Tertiary60", "getTertiary60-0d7_KjU", "Tertiary70", "getTertiary70-0d7_KjU", "Tertiary80", "getTertiary80-0d7_KjU", "Tertiary90", "getTertiary90-0d7_KjU", "Tertiary95", "getTertiary95-0d7_KjU", "Tertiary99", "getTertiary99-0d7_KjU", "White", "getWhite-0d7_KjU", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PaletteTokens {
    public static final PaletteTokens INSTANCE = new PaletteTokens();
    private static final long Black = ColorKt.Color$default(0, 0, 0, 0, 8, null);
    private static final long Error0 = ColorKt.Color$default(0, 0, 0, 0, 8, null);
    private static final long Error10 = ColorKt.Color$default(65, 14, 11, 0, 8, null);
    private static final long Error100 = ColorKt.Color$default(255, 255, 255, 0, 8, null);
    private static final long Error20 = ColorKt.Color$default(96, 20, 16, 0, 8, null);
    private static final long Error30 = ColorKt.Color$default(140, 29, 24, 0, 8, null);
    private static final long Error40 = ColorKt.Color$default(179, 38, 30, 0, 8, null);
    private static final long Error50 = ColorKt.Color$default(220, 54, 46, 0, 8, null);
    private static final long Error60 = ColorKt.Color$default(228, 105, 98, 0, 8, null);
    private static final long Error70 = ColorKt.Color$default(236, 146, 142, 0, 8, null);
    private static final long Error80 = ColorKt.Color$default(242, 184, 181, 0, 8, null);
    private static final long Error90 = ColorKt.Color$default(249, 222, 220, 0, 8, null);
    private static final long Error95 = ColorKt.Color$default(252, 238, 238, 0, 8, null);
    private static final long Error99 = ColorKt.Color$default(255, 251, 249, 0, 8, null);
    private static final long Neutral0 = ColorKt.Color$default(0, 0, 0, 0, 8, null);
    private static final long Neutral10 = ColorKt.Color$default(28, 27, 31, 0, 8, null);
    private static final long Neutral100 = ColorKt.Color$default(255, 255, 255, 0, 8, null);
    private static final long Neutral20 = ColorKt.Color$default(49, 48, 51, 0, 8, null);
    private static final long Neutral30 = ColorKt.Color$default(72, 70, 73, 0, 8, null);
    private static final long Neutral40 = ColorKt.Color$default(96, 93, 98, 0, 8, null);
    private static final long Neutral50 = ColorKt.Color$default(MenuKt.InTransitionDuration, 117, 121, 0, 8, null);
    private static final long Neutral60 = ColorKt.Color$default(147, 144, 148, 0, 8, null);
    private static final long Neutral70 = ColorKt.Color$default(174, 170, 174, 0, 8, null);
    private static final long Neutral80 = ColorKt.Color$default(ComposerKt.providerKey, 197, ComposerKt.compositionLocalMapKey, 0, 8, null);
    private static final long Neutral90 = ColorKt.Color$default(230, 225, 229, 0, 8, null);
    private static final long Neutral95 = ColorKt.Color$default(244, 239, 244, 0, 8, null);
    private static final long Neutral99 = ColorKt.Color$default(255, 251, 254, 0, 8, null);
    private static final long NeutralVariant0 = ColorKt.Color$default(0, 0, 0, 0, 8, null);
    private static final long NeutralVariant10 = ColorKt.Color$default(29, 26, 34, 0, 8, null);
    private static final long NeutralVariant100 = ColorKt.Color$default(255, 255, 255, 0, 8, null);
    private static final long NeutralVariant20 = ColorKt.Color$default(50, 47, 55, 0, 8, null);
    private static final long NeutralVariant30 = ColorKt.Color$default(73, 69, 79, 0, 8, null);
    private static final long NeutralVariant40 = ColorKt.Color$default(96, 93, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 0, 8, null);
    private static final long NeutralVariant50 = ColorKt.Color$default(121, 116, WebSocketProtocol.PAYLOAD_SHORT, 0, 8, null);
    private static final long NeutralVariant60 = ColorKt.Color$default(147, 143, 153, 0, 8, null);
    private static final long NeutralVariant70 = ColorKt.Color$default(174, 169, SubsamplingScaleImageView.ORIENTATION_180, 0, 8, null);
    private static final long NeutralVariant80 = ColorKt.Color$default(ComposerKt.compositionLocalMapKey, 196, 208, 0, 8, null);
    private static final long NeutralVariant90 = ColorKt.Color$default(231, 224, 236, 0, 8, null);
    private static final long NeutralVariant95 = ColorKt.Color$default(245, 238, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 0, 8, null);
    private static final long NeutralVariant99 = ColorKt.Color$default(255, 251, 254, 0, 8, null);
    private static final long Primary0 = ColorKt.Color$default(0, 0, 0, 0, 8, null);
    private static final long Primary10 = ColorKt.Color$default(33, 0, 93, 0, 8, null);
    private static final long Primary100 = ColorKt.Color$default(255, 255, 255, 0, 8, null);
    private static final long Primary20 = ColorKt.Color$default(56, 30, 114, 0, 8, null);
    private static final long Primary30 = ColorKt.Color$default(79, 55, 139, 0, 8, null);
    private static final long Primary40 = ColorKt.Color$default(103, 80, 164, 0, 8, null);
    private static final long Primary50 = ColorKt.Color$default(127, 103, 190, 0, 8, null);
    private static final long Primary60 = ColorKt.Color$default(154, 130, 219, 0, 8, null);
    private static final long Primary70 = ColorKt.Color$default(182, 157, 248, 0, 8, null);
    private static final long Primary80 = ColorKt.Color$default(208, 188, 255, 0, 8, null);
    private static final long Primary90 = ColorKt.Color$default(234, 221, 255, 0, 8, null);
    private static final long Primary95 = ColorKt.Color$default(246, 237, 255, 0, 8, null);
    private static final long Primary99 = ColorKt.Color$default(255, 251, 254, 0, 8, null);
    private static final long Secondary0 = ColorKt.Color$default(0, 0, 0, 0, 8, null);
    private static final long Secondary10 = ColorKt.Color$default(29, 25, 43, 0, 8, null);
    private static final long Secondary100 = ColorKt.Color$default(255, 255, 255, 0, 8, null);
    private static final long Secondary20 = ColorKt.Color$default(51, 45, 65, 0, 8, null);
    private static final long Secondary30 = ColorKt.Color$default(74, 68, 88, 0, 8, null);
    private static final long Secondary40 = ColorKt.Color$default(98, 91, 113, 0, 8, null);
    private static final long Secondary50 = ColorKt.Color$default(122, 114, 137, 0, 8, null);
    private static final long Secondary60 = ColorKt.Color$default(149, 141, 165, 0, 8, null);
    private static final long Secondary70 = ColorKt.Color$default(176, 167, 192, 0, 8, null);
    private static final long Secondary80 = ColorKt.Color$default(ComposerKt.providerMapsKey, 194, 220, 0, 8, null);
    private static final long Secondary90 = ColorKt.Color$default(232, 222, 248, 0, 8, null);
    private static final long Secondary95 = ColorKt.Color$default(246, 237, 255, 0, 8, null);
    private static final long Secondary99 = ColorKt.Color$default(255, 251, 254, 0, 8, null);
    private static final long Tertiary0 = ColorKt.Color$default(0, 0, 0, 0, 8, null);
    private static final long Tertiary10 = ColorKt.Color$default(49, 17, 29, 0, 8, null);
    private static final long Tertiary100 = ColorKt.Color$default(255, 255, 255, 0, 8, null);
    private static final long Tertiary20 = ColorKt.Color$default(73, 37, 50, 0, 8, null);
    private static final long Tertiary30 = ColorKt.Color$default(99, 59, 72, 0, 8, null);
    private static final long Tertiary40 = ColorKt.Color$default(125, 82, 96, 0, 8, null);
    private static final long Tertiary50 = ColorKt.Color$default(152, 105, 119, 0, 8, null);
    private static final long Tertiary60 = ColorKt.Color$default(181, 131, 146, 0, 8, null);
    private static final long Tertiary70 = ColorKt.Color$default(210, 157, 172, 0, 8, null);
    private static final long Tertiary80 = ColorKt.Color$default(239, 184, 200, 0, 8, null);
    private static final long Tertiary90 = ColorKt.Color$default(255, 216, 228, 0, 8, null);
    private static final long Tertiary95 = ColorKt.Color$default(255, 236, 241, 0, 8, null);
    private static final long Tertiary99 = ColorKt.Color$default(255, 251, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 0, 8, null);
    private static final long White = ColorKt.Color$default(255, 255, 255, 0, 8, null);

    /* renamed from: getBlack-0d7_KjU, reason: not valid java name */
    public final long m2022getBlack0d7_KjU() {
        return Black;
    }

    /* renamed from: getError0-0d7_KjU, reason: not valid java name */
    public final long m2023getError00d7_KjU() {
        return Error0;
    }

    /* renamed from: getError10-0d7_KjU, reason: not valid java name */
    public final long m2024getError100d7_KjU() {
        return Error10;
    }

    /* renamed from: getError100-0d7_KjU, reason: not valid java name */
    public final long m2025getError1000d7_KjU() {
        return Error100;
    }

    /* renamed from: getError20-0d7_KjU, reason: not valid java name */
    public final long m2026getError200d7_KjU() {
        return Error20;
    }

    /* renamed from: getError30-0d7_KjU, reason: not valid java name */
    public final long m2027getError300d7_KjU() {
        return Error30;
    }

    /* renamed from: getError40-0d7_KjU, reason: not valid java name */
    public final long m2028getError400d7_KjU() {
        return Error40;
    }

    /* renamed from: getError50-0d7_KjU, reason: not valid java name */
    public final long m2029getError500d7_KjU() {
        return Error50;
    }

    /* renamed from: getError60-0d7_KjU, reason: not valid java name */
    public final long m2030getError600d7_KjU() {
        return Error60;
    }

    /* renamed from: getError70-0d7_KjU, reason: not valid java name */
    public final long m2031getError700d7_KjU() {
        return Error70;
    }

    /* renamed from: getError80-0d7_KjU, reason: not valid java name */
    public final long m2032getError800d7_KjU() {
        return Error80;
    }

    /* renamed from: getError90-0d7_KjU, reason: not valid java name */
    public final long m2033getError900d7_KjU() {
        return Error90;
    }

    /* renamed from: getError95-0d7_KjU, reason: not valid java name */
    public final long m2034getError950d7_KjU() {
        return Error95;
    }

    /* renamed from: getError99-0d7_KjU, reason: not valid java name */
    public final long m2035getError990d7_KjU() {
        return Error99;
    }

    /* renamed from: getNeutral0-0d7_KjU, reason: not valid java name */
    public final long m2036getNeutral00d7_KjU() {
        return Neutral0;
    }

    /* renamed from: getNeutral10-0d7_KjU, reason: not valid java name */
    public final long m2037getNeutral100d7_KjU() {
        return Neutral10;
    }

    /* renamed from: getNeutral100-0d7_KjU, reason: not valid java name */
    public final long m2038getNeutral1000d7_KjU() {
        return Neutral100;
    }

    /* renamed from: getNeutral20-0d7_KjU, reason: not valid java name */
    public final long m2039getNeutral200d7_KjU() {
        return Neutral20;
    }

    /* renamed from: getNeutral30-0d7_KjU, reason: not valid java name */
    public final long m2040getNeutral300d7_KjU() {
        return Neutral30;
    }

    /* renamed from: getNeutral40-0d7_KjU, reason: not valid java name */
    public final long m2041getNeutral400d7_KjU() {
        return Neutral40;
    }

    /* renamed from: getNeutral50-0d7_KjU, reason: not valid java name */
    public final long m2042getNeutral500d7_KjU() {
        return Neutral50;
    }

    /* renamed from: getNeutral60-0d7_KjU, reason: not valid java name */
    public final long m2043getNeutral600d7_KjU() {
        return Neutral60;
    }

    /* renamed from: getNeutral70-0d7_KjU, reason: not valid java name */
    public final long m2044getNeutral700d7_KjU() {
        return Neutral70;
    }

    /* renamed from: getNeutral80-0d7_KjU, reason: not valid java name */
    public final long m2045getNeutral800d7_KjU() {
        return Neutral80;
    }

    /* renamed from: getNeutral90-0d7_KjU, reason: not valid java name */
    public final long m2046getNeutral900d7_KjU() {
        return Neutral90;
    }

    /* renamed from: getNeutral95-0d7_KjU, reason: not valid java name */
    public final long m2047getNeutral950d7_KjU() {
        return Neutral95;
    }

    /* renamed from: getNeutral99-0d7_KjU, reason: not valid java name */
    public final long m2048getNeutral990d7_KjU() {
        return Neutral99;
    }

    /* renamed from: getNeutralVariant0-0d7_KjU, reason: not valid java name */
    public final long m2049getNeutralVariant00d7_KjU() {
        return NeutralVariant0;
    }

    /* renamed from: getNeutralVariant10-0d7_KjU, reason: not valid java name */
    public final long m2050getNeutralVariant100d7_KjU() {
        return NeutralVariant10;
    }

    /* renamed from: getNeutralVariant100-0d7_KjU, reason: not valid java name */
    public final long m2051getNeutralVariant1000d7_KjU() {
        return NeutralVariant100;
    }

    /* renamed from: getNeutralVariant20-0d7_KjU, reason: not valid java name */
    public final long m2052getNeutralVariant200d7_KjU() {
        return NeutralVariant20;
    }

    /* renamed from: getNeutralVariant30-0d7_KjU, reason: not valid java name */
    public final long m2053getNeutralVariant300d7_KjU() {
        return NeutralVariant30;
    }

    /* renamed from: getNeutralVariant40-0d7_KjU, reason: not valid java name */
    public final long m2054getNeutralVariant400d7_KjU() {
        return NeutralVariant40;
    }

    /* renamed from: getNeutralVariant50-0d7_KjU, reason: not valid java name */
    public final long m2055getNeutralVariant500d7_KjU() {
        return NeutralVariant50;
    }

    /* renamed from: getNeutralVariant60-0d7_KjU, reason: not valid java name */
    public final long m2056getNeutralVariant600d7_KjU() {
        return NeutralVariant60;
    }

    /* renamed from: getNeutralVariant70-0d7_KjU, reason: not valid java name */
    public final long m2057getNeutralVariant700d7_KjU() {
        return NeutralVariant70;
    }

    /* renamed from: getNeutralVariant80-0d7_KjU, reason: not valid java name */
    public final long m2058getNeutralVariant800d7_KjU() {
        return NeutralVariant80;
    }

    /* renamed from: getNeutralVariant90-0d7_KjU, reason: not valid java name */
    public final long m2059getNeutralVariant900d7_KjU() {
        return NeutralVariant90;
    }

    /* renamed from: getNeutralVariant95-0d7_KjU, reason: not valid java name */
    public final long m2060getNeutralVariant950d7_KjU() {
        return NeutralVariant95;
    }

    /* renamed from: getNeutralVariant99-0d7_KjU, reason: not valid java name */
    public final long m2061getNeutralVariant990d7_KjU() {
        return NeutralVariant99;
    }

    /* renamed from: getPrimary0-0d7_KjU, reason: not valid java name */
    public final long m2062getPrimary00d7_KjU() {
        return Primary0;
    }

    /* renamed from: getPrimary10-0d7_KjU, reason: not valid java name */
    public final long m2063getPrimary100d7_KjU() {
        return Primary10;
    }

    /* renamed from: getPrimary100-0d7_KjU, reason: not valid java name */
    public final long m2064getPrimary1000d7_KjU() {
        return Primary100;
    }

    /* renamed from: getPrimary20-0d7_KjU, reason: not valid java name */
    public final long m2065getPrimary200d7_KjU() {
        return Primary20;
    }

    /* renamed from: getPrimary30-0d7_KjU, reason: not valid java name */
    public final long m2066getPrimary300d7_KjU() {
        return Primary30;
    }

    /* renamed from: getPrimary40-0d7_KjU, reason: not valid java name */
    public final long m2067getPrimary400d7_KjU() {
        return Primary40;
    }

    /* renamed from: getPrimary50-0d7_KjU, reason: not valid java name */
    public final long m2068getPrimary500d7_KjU() {
        return Primary50;
    }

    /* renamed from: getPrimary60-0d7_KjU, reason: not valid java name */
    public final long m2069getPrimary600d7_KjU() {
        return Primary60;
    }

    /* renamed from: getPrimary70-0d7_KjU, reason: not valid java name */
    public final long m2070getPrimary700d7_KjU() {
        return Primary70;
    }

    /* renamed from: getPrimary80-0d7_KjU, reason: not valid java name */
    public final long m2071getPrimary800d7_KjU() {
        return Primary80;
    }

    /* renamed from: getPrimary90-0d7_KjU, reason: not valid java name */
    public final long m2072getPrimary900d7_KjU() {
        return Primary90;
    }

    /* renamed from: getPrimary95-0d7_KjU, reason: not valid java name */
    public final long m2073getPrimary950d7_KjU() {
        return Primary95;
    }

    /* renamed from: getPrimary99-0d7_KjU, reason: not valid java name */
    public final long m2074getPrimary990d7_KjU() {
        return Primary99;
    }

    /* renamed from: getSecondary0-0d7_KjU, reason: not valid java name */
    public final long m2075getSecondary00d7_KjU() {
        return Secondary0;
    }

    /* renamed from: getSecondary10-0d7_KjU, reason: not valid java name */
    public final long m2076getSecondary100d7_KjU() {
        return Secondary10;
    }

    /* renamed from: getSecondary100-0d7_KjU, reason: not valid java name */
    public final long m2077getSecondary1000d7_KjU() {
        return Secondary100;
    }

    /* renamed from: getSecondary20-0d7_KjU, reason: not valid java name */
    public final long m2078getSecondary200d7_KjU() {
        return Secondary20;
    }

    /* renamed from: getSecondary30-0d7_KjU, reason: not valid java name */
    public final long m2079getSecondary300d7_KjU() {
        return Secondary30;
    }

    /* renamed from: getSecondary40-0d7_KjU, reason: not valid java name */
    public final long m2080getSecondary400d7_KjU() {
        return Secondary40;
    }

    /* renamed from: getSecondary50-0d7_KjU, reason: not valid java name */
    public final long m2081getSecondary500d7_KjU() {
        return Secondary50;
    }

    /* renamed from: getSecondary60-0d7_KjU, reason: not valid java name */
    public final long m2082getSecondary600d7_KjU() {
        return Secondary60;
    }

    /* renamed from: getSecondary70-0d7_KjU, reason: not valid java name */
    public final long m2083getSecondary700d7_KjU() {
        return Secondary70;
    }

    /* renamed from: getSecondary80-0d7_KjU, reason: not valid java name */
    public final long m2084getSecondary800d7_KjU() {
        return Secondary80;
    }

    /* renamed from: getSecondary90-0d7_KjU, reason: not valid java name */
    public final long m2085getSecondary900d7_KjU() {
        return Secondary90;
    }

    /* renamed from: getSecondary95-0d7_KjU, reason: not valid java name */
    public final long m2086getSecondary950d7_KjU() {
        return Secondary95;
    }

    /* renamed from: getSecondary99-0d7_KjU, reason: not valid java name */
    public final long m2087getSecondary990d7_KjU() {
        return Secondary99;
    }

    /* renamed from: getTertiary0-0d7_KjU, reason: not valid java name */
    public final long m2088getTertiary00d7_KjU() {
        return Tertiary0;
    }

    /* renamed from: getTertiary10-0d7_KjU, reason: not valid java name */
    public final long m2089getTertiary100d7_KjU() {
        return Tertiary10;
    }

    /* renamed from: getTertiary100-0d7_KjU, reason: not valid java name */
    public final long m2090getTertiary1000d7_KjU() {
        return Tertiary100;
    }

    /* renamed from: getTertiary20-0d7_KjU, reason: not valid java name */
    public final long m2091getTertiary200d7_KjU() {
        return Tertiary20;
    }

    /* renamed from: getTertiary30-0d7_KjU, reason: not valid java name */
    public final long m2092getTertiary300d7_KjU() {
        return Tertiary30;
    }

    /* renamed from: getTertiary40-0d7_KjU, reason: not valid java name */
    public final long m2093getTertiary400d7_KjU() {
        return Tertiary40;
    }

    /* renamed from: getTertiary50-0d7_KjU, reason: not valid java name */
    public final long m2094getTertiary500d7_KjU() {
        return Tertiary50;
    }

    /* renamed from: getTertiary60-0d7_KjU, reason: not valid java name */
    public final long m2095getTertiary600d7_KjU() {
        return Tertiary60;
    }

    /* renamed from: getTertiary70-0d7_KjU, reason: not valid java name */
    public final long m2096getTertiary700d7_KjU() {
        return Tertiary70;
    }

    /* renamed from: getTertiary80-0d7_KjU, reason: not valid java name */
    public final long m2097getTertiary800d7_KjU() {
        return Tertiary80;
    }

    /* renamed from: getTertiary90-0d7_KjU, reason: not valid java name */
    public final long m2098getTertiary900d7_KjU() {
        return Tertiary90;
    }

    /* renamed from: getTertiary95-0d7_KjU, reason: not valid java name */
    public final long m2099getTertiary950d7_KjU() {
        return Tertiary95;
    }

    /* renamed from: getTertiary99-0d7_KjU, reason: not valid java name */
    public final long m2100getTertiary990d7_KjU() {
        return Tertiary99;
    }

    /* renamed from: getWhite-0d7_KjU, reason: not valid java name */
    public final long m2101getWhite0d7_KjU() {
        return White;
    }

    private PaletteTokens() {
    }
}
