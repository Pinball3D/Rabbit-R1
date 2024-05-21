package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.OperatingSystem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: PersistentVectorBuilder.kt */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0007\n\u0002\u0010(\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010)\n\u0000\n\u0002\u0010*\n\u0000\n\u0002\u0010+\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0018\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B=\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0010\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0015\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001fJ\u001d\u0010\u001c\u001a\u00020 2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\"J\u001e\u0010#\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u000b2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0016J\u0016\u0010#\u001a\u00020\u001d2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0016J\u001d\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010!\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010'J\u000e\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0016J=\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010+\u001a\u00020\u000b2\u000e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0-H\u0002¢\u0006\u0002\u0010.J\u0016\u0010/\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u000bH\u0096\u0002¢\u0006\u0002\u00100J\r\u00101\u001a\u00020\u000bH\u0000¢\u0006\u0002\b2JG\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u00104\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\b\u0010\u001e\u001a\u0004\u0018\u00010\b2\u0006\u00105\u001a\u000206H\u0002¢\u0006\u0002\u00107J[\u00103\u001a\u00020 2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%2\u0006\u0010!\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u000b2\u0016\u00109\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00070\u00072\u0006\u0010:\u001a\u00020\u000b2\u000e\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007H\u0002¢\u0006\u0002\u0010<J/\u0010=\u001a\u00020 2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010>J\u001d\u0010?\u001a\u00020\u001d2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007H\u0002¢\u0006\u0002\u0010@J\u000f\u0010A\u001a\b\u0012\u0004\u0012\u00028\u00000BH\u0096\u0002J\u001e\u0010C\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070D2\u0006\u0010!\u001a\u00020\u000bH\u0002J\u000e\u0010E\u001a\b\u0012\u0004\u0012\u00028\u00000FH\u0016J\u0016\u0010E\u001a\b\u0012\u0004\u0012\u00028\u00000F2\u0006\u0010!\u001a\u00020\u000bH\u0016J'\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0010\u0010*\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007H\u0002¢\u0006\u0002\u0010HJ-\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010J\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010KJ\u0015\u0010L\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007H\u0002¢\u0006\u0002\u0010\u0012J\u001f\u0010M\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010NJ5\u0010O\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010!\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010PJ?\u0010Q\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u00104\u001a\u00020\u000b2\u0006\u0010R\u001a\u00020\u000b2\u0006\u0010S\u001a\u000206H\u0002¢\u0006\u0002\u0010TJ/\u0010U\u001a\u00020 2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\u0006\u0010R\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010VJM\u0010W\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\u0006\u0010R\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000b2\u0014\u0010X\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070-H\u0002¢\u0006\u0002\u0010YJE\u0010Z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\u0006\u0010R\u001a\u00020\u000b2\u0014\u00109\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u0007H\u0002¢\u0006\u0002\u0010[J?\u0010\\\u001a\u00020 2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\u000e\u0010]\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u000e\u0010^\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007H\u0002¢\u0006\u0002\u0010_J?\u0010`\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\u000e\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u00104\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010aJu\u0010b\u001a\u00020\u000b2\u0012\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001d0d2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010e\u001a\u00020\u000b2\u0006\u0010f\u001a\u00020\u000b2\u0006\u0010g\u001a\u0002062\u0014\u0010h\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070i2\u0014\u00109\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070iH\u0002¢\u0006\u0002\u0010jJ\u001c\u0010k\u001a\u00020\u001d2\u0012\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001d0dH\u0002JA\u0010k\u001a\u00020\u000b2\u0012\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001d0d2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010e\u001a\u00020\u000b2\u0006\u0010g\u001a\u000206H\u0002¢\u0006\u0002\u0010lJ\u0016\u0010k\u001a\u00020\u001d2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0016J,\u0010m\u001a\u00020\u000b2\u0012\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001d0d2\u0006\u0010n\u001a\u00020\u000b2\u0006\u0010g\u001a\u000206H\u0002J\u001a\u0010o\u001a\u00020\u001d2\u0012\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001d0dJ\u0015\u0010p\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u000bH\u0016¢\u0006\u0002\u00100J=\u0010q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u00104\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010S\u001a\u000206H\u0002¢\u0006\u0002\u0010TJ9\u0010r\u001a\u0004\u0018\u00010\b2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\u0006\u0010R\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010sJ/\u0010t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010\u0018\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010KJ\b\u0010R\u001a\u00020\u000bH\u0002J\u001e\u0010u\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010vJE\u0010w\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u00104\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010x\u001a\u00028\u00002\u0006\u0010y\u001a\u000206H\u0002¢\u0006\u0002\u00107JU\u0010z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010{\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u000b2\u0016\u00109\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00070\u00072\u0006\u0010:\u001a\u00020\u000b2\u000e\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007H\u0002¢\u0006\u0002\u0010|Jl\u0010}\u001a\u00020 2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%2\u0006\u0010!\u001a\u00020\u000b2\u000e\u0010~\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010\u007f\u001a\u00020\u000b2\u0016\u00109\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00070\u00072\u0006\u0010:\u001a\u00020\u000b2\u000e\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007H\u0002¢\u0006\u0003\u0010\u0080\u0001J\b\u0010n\u001a\u00020\u000bH\u0002J\u0010\u0010n\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bH\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R4\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\u0010\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007@BX\u0080\u000e¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\n\u001a\u00020\u000bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R0\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007@BX\u0080\u000e¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u001b\u0010\u0012R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0013R\u0018\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0013¨\u0006\u0081\u0001"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/AbstractMutableList;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;", "vector", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;", "vectorRoot", "", "", "vectorTail", "rootShift", "", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;[Ljava/lang/Object;[Ljava/lang/Object;I)V", "ownership", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;", "<set-?>", "root", "getRoot$runtime_release", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", "getRootShift$runtime_release", "()I", "setRootShift$runtime_release", "(I)V", "size", "getSize", "tail", "getTail$runtime_release", "add", "", "element", "(Ljava/lang/Object;)Z", "", "index", "(ILjava/lang/Object;)V", "addAll", "elements", "", "bufferFor", "(I)[Ljava/lang/Object;", OperatingSystem.JsonKeys.BUILD, "copyToBuffer", "buffer", "bufferIndex", "sourceIterator", "", "([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;", "get", "(I)Ljava/lang/Object;", "getModCount", "getModCount$runtime_release", "insertIntoRoot", "shift", "elementCarry", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;", "([Ljava/lang/Object;IILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;", "rightShift", "buffers", "nullBuffers", "nextBuffer", "(Ljava/util/Collection;II[[Ljava/lang/Object;I[Ljava/lang/Object;)V", "insertIntoTail", "([Ljava/lang/Object;ILjava/lang/Object;)V", "isMutable", "([Ljava/lang/Object;)Z", "iterator", "", "leafBufferIterator", "", "listIterator", "", "makeMutable", "([Ljava/lang/Object;)[Ljava/lang/Object;", "makeMutableShiftingRight", "distance", "([Ljava/lang/Object;I)[Ljava/lang/Object;", "mutableBuffer", "mutableBufferWith", "(Ljava/lang/Object;)[Ljava/lang/Object;", "nullifyAfter", "([Ljava/lang/Object;II)[Ljava/lang/Object;", "pullLastBuffer", "rootSize", "tailCarry", "([Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;", "pullLastBufferFromRoot", "([Ljava/lang/Object;II)V", "pushBuffers", "buffersIterator", "([Ljava/lang/Object;IILjava/util/Iterator;)[Ljava/lang/Object;", "pushBuffersIncreasingHeightIfNeeded", "([Ljava/lang/Object;I[[Ljava/lang/Object;)[Ljava/lang/Object;", "pushFilledTail", "filledTail", "newTail", "([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V", "pushTail", "([Ljava/lang/Object;[Ljava/lang/Object;I)[Ljava/lang/Object;", "recyclableRemoveAll", "predicate", "Lkotlin/Function1;", "bufferSize", "toBufferSize", "bufferRef", "recyclableBuffers", "", "(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;Ljava/util/List;Ljava/util/List;)I", "removeAll", "(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)I", "removeAllFromTail", "tailSize", "removeAllWithPredicate", "removeAt", "removeFromRootAt", "removeFromTailAt", "([Ljava/lang/Object;III)Ljava/lang/Object;", "retainFirst", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "setInRoot", "e", "oldElementCarry", "shiftLeafBuffers", "startLeafIndex", "(II[[Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;", "splitToBuffers", "startBuffer", "startBufferSize", "(Ljava/util/Collection;I[Ljava/lang/Object;I[[Ljava/lang/Object;I[Ljava/lang/Object;)V", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PersistentVectorBuilder<E> extends AbstractMutableList<E> implements PersistentList.Builder<E> {
    private MutabilityOwnership ownership;
    private Object[] root;
    private int rootShift;
    private int size;
    private Object[] tail;
    private PersistentList<? extends E> vector;
    private Object[] vectorRoot;
    private Object[] vectorTail;

    private final Object[] mutableBuffer() {
        Object[] objArr = new Object[33];
        objArr[32] = this.ownership;
        return objArr;
    }

    private final Object[] mutableBufferWith(Object element) {
        Object[] objArr = new Object[33];
        objArr[0] = element;
        objArr[32] = this.ownership;
        return objArr;
    }

    /* renamed from: getRoot$runtime_release, reason: from getter */
    public final Object[] getRoot() {
        return this.root;
    }

    /* renamed from: getRootShift$runtime_release, reason: from getter */
    public final int getRootShift() {
        return this.rootShift;
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.size;
    }

    /* renamed from: getTail$runtime_release, reason: from getter */
    public final Object[] getTail() {
        return this.tail;
    }

    public final void setRootShift$runtime_release(int i) {
        this.rootShift = i;
    }

    public PersistentVectorBuilder(PersistentList<? extends E> vector, Object[] objArr, Object[] vectorTail, int i) {
        Intrinsics.checkNotNullParameter(vector, "vector");
        Intrinsics.checkNotNullParameter(vectorTail, "vectorTail");
        this.vector = vector;
        this.vectorRoot = objArr;
        this.vectorTail = vectorTail;
        this.rootShift = i;
        this.ownership = new MutabilityOwnership();
        this.root = this.vectorRoot;
        this.tail = this.vectorTail;
        this.size = this.vector.size();
    }

    public final int getModCount$runtime_release() {
        return this.modCount;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection.Builder
    public PersistentList<E> build() {
        PersistentVector persistentVector;
        if (this.root == this.vectorRoot && this.tail == this.vectorTail) {
            persistentVector = this.vector;
        } else {
            this.ownership = new MutabilityOwnership();
            Object[] objArr = this.root;
            this.vectorRoot = objArr;
            Object[] objArr2 = this.tail;
            this.vectorTail = objArr2;
            if (objArr == null) {
                if (objArr2.length == 0) {
                    persistentVector = UtilsKt.persistentVectorOf();
                } else {
                    Object[] copyOf = Arrays.copyOf(this.tail, size());
                    Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                    persistentVector = new SmallPersistentVector(copyOf);
                }
            } else {
                Object[] objArr3 = this.root;
                Intrinsics.checkNotNull(objArr3);
                persistentVector = new PersistentVector(objArr3, this.tail, size(), this.rootShift);
            }
        }
        this.vector = persistentVector;
        return (PersistentList<E>) persistentVector;
    }

    private final int rootSize() {
        if (size() <= 32) {
            return 0;
        }
        return UtilsKt.rootSize(size());
    }

    private final int tailSize(int size) {
        return size <= 32 ? size : size - UtilsKt.rootSize(size);
    }

    private final int tailSize() {
        return tailSize(size());
    }

    private final boolean isMutable(Object[] buffer) {
        return buffer.length == 33 && buffer[32] == this.ownership;
    }

    private final Object[] makeMutable(Object[] buffer) {
        if (buffer == null) {
            return mutableBuffer();
        }
        return isMutable(buffer) ? buffer : ArraysKt.copyInto$default(buffer, mutableBuffer(), 0, 0, RangesKt.coerceAtMost(buffer.length, 32), 6, (Object) null);
    }

    private final Object[] makeMutableShiftingRight(Object[] buffer, int distance) {
        if (isMutable(buffer)) {
            return ArraysKt.copyInto(buffer, buffer, distance, 0, 32 - distance);
        }
        return ArraysKt.copyInto(buffer, mutableBuffer(), distance, 0, 32 - distance);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        this.modCount++;
        int tailSize = tailSize();
        if (tailSize < 32) {
            Object[] makeMutable = makeMutable(this.tail);
            makeMutable[tailSize] = element;
            this.tail = makeMutable;
            this.size = size() + 1;
        } else {
            pushFilledTail(this.root, this.tail, mutableBufferWith(element));
        }
        return true;
    }

    private final void pushFilledTail(Object[] root, Object[] filledTail, Object[] newTail) {
        int size = size() >> 5;
        int i = this.rootShift;
        if (size > (1 << i)) {
            this.root = pushTail(mutableBufferWith(root), filledTail, this.rootShift + 5);
            this.tail = newTail;
            this.rootShift += 5;
            this.size = size() + 1;
            return;
        }
        if (root == null) {
            this.root = filledTail;
            this.tail = newTail;
            this.size = size() + 1;
        } else {
            this.root = pushTail(root, filledTail, i);
            this.tail = newTail;
            this.size = size() + 1;
        }
    }

    private final Object[] pushTail(Object[] root, Object[] tail, int shift) {
        int indexSegment = UtilsKt.indexSegment(size() - 1, shift);
        Object[] makeMutable = makeMutable(root);
        if (shift == 5) {
            makeMutable[indexSegment] = tail;
        } else {
            makeMutable[indexSegment] = pushTail((Object[]) makeMutable[indexSegment], tail, shift - 5);
        }
        return makeMutable;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        this.modCount++;
        int tailSize = tailSize();
        Iterator<? extends E> it = elements.iterator();
        if (32 - tailSize >= elements.size()) {
            this.tail = copyToBuffer(makeMutable(this.tail), tailSize, it);
            this.size = size() + elements.size();
        } else {
            int size = ((elements.size() + tailSize) - 1) / 32;
            Object[][] objArr = new Object[size];
            objArr[0] = copyToBuffer(makeMutable(this.tail), tailSize, it);
            for (int i = 1; i < size; i++) {
                objArr[i] = copyToBuffer(mutableBuffer(), 0, it);
            }
            this.root = pushBuffersIncreasingHeightIfNeeded(this.root, rootSize(), objArr);
            this.tail = copyToBuffer(mutableBuffer(), 0, it);
            this.size = size() + elements.size();
        }
        return true;
    }

    private final Object[] copyToBuffer(Object[] buffer, int bufferIndex, Iterator<? extends Object> sourceIterator) {
        while (bufferIndex < 32 && sourceIterator.hasNext()) {
            buffer[bufferIndex] = sourceIterator.next();
            bufferIndex++;
        }
        return buffer;
    }

    private final Object[] pushBuffersIncreasingHeightIfNeeded(Object[] root, int rootSize, Object[][] buffers) {
        Object[] makeMutable;
        Iterator<Object[]> it = ArrayIteratorKt.iterator(buffers);
        int i = rootSize >> 5;
        int i2 = this.rootShift;
        if (i < (1 << i2)) {
            makeMutable = pushBuffers(root, rootSize, i2, it);
        } else {
            makeMutable = makeMutable(root);
        }
        while (it.hasNext()) {
            this.rootShift += 5;
            makeMutable = mutableBufferWith(makeMutable);
            int i3 = this.rootShift;
            pushBuffers(makeMutable, 1 << i3, i3, it);
        }
        return makeMutable;
    }

    private final Object[] pushBuffers(Object[] root, int rootSize, int shift, Iterator<Object[]> buffersIterator) {
        if (!buffersIterator.hasNext()) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (shift < 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (shift == 0) {
            return buffersIterator.next();
        }
        Object[] makeMutable = makeMutable(root);
        int indexSegment = UtilsKt.indexSegment(rootSize, shift);
        int i = shift - 5;
        makeMutable[indexSegment] = pushBuffers((Object[]) makeMutable[indexSegment], rootSize, i, buffersIterator);
        while (true) {
            indexSegment++;
            if (indexSegment >= 32 || !buffersIterator.hasNext()) {
                break;
            }
            makeMutable[indexSegment] = pushBuffers((Object[]) makeMutable[indexSegment], 0, i, buffersIterator);
        }
        return makeMutable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        ListImplementation.checkPositionIndex$runtime_release(index, size());
        if (index == size()) {
            add(element);
            return;
        }
        this.modCount++;
        int rootSize = rootSize();
        if (index >= rootSize) {
            insertIntoTail(this.root, index - rootSize, element);
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.root;
        Intrinsics.checkNotNull(objArr);
        insertIntoTail(insertIntoRoot(objArr, this.rootShift, index, element, objectRef), 0, objectRef.getValue());
    }

    private final void insertIntoTail(Object[] root, int index, E element) {
        int tailSize = tailSize();
        Object[] makeMutable = makeMutable(this.tail);
        if (tailSize < 32) {
            ArraysKt.copyInto(this.tail, makeMutable, index + 1, index, tailSize);
            makeMutable[index] = element;
            this.root = root;
            this.tail = makeMutable;
            this.size = size() + 1;
            return;
        }
        Object[] objArr = this.tail;
        Object obj = objArr[31];
        ArraysKt.copyInto(objArr, makeMutable, index + 1, index, 31);
        makeMutable[index] = element;
        pushFilledTail(root, makeMutable, mutableBufferWith(obj));
    }

    private final Object[] insertIntoRoot(Object[] root, int shift, int index, Object element, ObjectRef elementCarry) {
        Object obj;
        int indexSegment = UtilsKt.indexSegment(index, shift);
        if (shift == 0) {
            elementCarry.setValue(root[31]);
            Object[] copyInto = ArraysKt.copyInto(root, makeMutable(root), indexSegment + 1, indexSegment, 31);
            copyInto[indexSegment] = element;
            return copyInto;
        }
        Object[] makeMutable = makeMutable(root);
        int i = shift - 5;
        Object obj2 = makeMutable[indexSegment];
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        makeMutable[indexSegment] = insertIntoRoot((Object[]) obj2, i, index, element, elementCarry);
        while (true) {
            indexSegment++;
            if (indexSegment >= 32 || (obj = makeMutable[indexSegment]) == null) {
                break;
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            makeMutable[indexSegment] = insertIntoRoot((Object[]) obj, i, 0, elementCarry.getValue(), elementCarry);
        }
        return makeMutable;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection<? extends E> elements) {
        Object[] copyInto;
        Intrinsics.checkNotNullParameter(elements, "elements");
        ListImplementation.checkPositionIndex$runtime_release(index, size());
        if (index == size()) {
            return addAll(elements);
        }
        if (elements.isEmpty()) {
            return false;
        }
        this.modCount++;
        int i = (index >> 5) << 5;
        int size = (((size() - i) + elements.size()) - 1) / 32;
        if (size == 0) {
            CommonFunctionsKt.m2285assert(index >= rootSize());
            int i2 = index & 31;
            int size2 = ((index + elements.size()) - 1) & 31;
            Object[] objArr = this.tail;
            Object[] copyInto2 = ArraysKt.copyInto(objArr, makeMutable(objArr), size2 + 1, i2, tailSize());
            copyToBuffer(copyInto2, i2, elements.iterator());
            this.tail = copyInto2;
            this.size = size() + elements.size();
            return true;
        }
        Object[][] objArr2 = new Object[size];
        int tailSize = tailSize();
        int tailSize2 = tailSize(size() + elements.size());
        if (index >= rootSize()) {
            copyInto = mutableBuffer();
            splitToBuffers(elements, index, this.tail, tailSize, objArr2, size, copyInto);
        } else if (tailSize2 > tailSize) {
            int i3 = tailSize2 - tailSize;
            copyInto = makeMutableShiftingRight(this.tail, i3);
            insertIntoRoot(elements, index, i3, objArr2, size, copyInto);
        } else {
            int i4 = tailSize - tailSize2;
            copyInto = ArraysKt.copyInto(this.tail, mutableBuffer(), 0, i4, tailSize);
            int i5 = 32 - i4;
            Object[] makeMutableShiftingRight = makeMutableShiftingRight(this.tail, i5);
            int i6 = size - 1;
            objArr2[i6] = makeMutableShiftingRight;
            insertIntoRoot(elements, index, i5, objArr2, i6, makeMutableShiftingRight);
        }
        this.root = pushBuffersIncreasingHeightIfNeeded(this.root, i, objArr2);
        this.tail = copyInto;
        this.size = size() + elements.size();
        return true;
    }

    private final void insertIntoRoot(Collection<? extends E> elements, int index, int rightShift, Object[][] buffers, int nullBuffers, Object[] nextBuffer) {
        if (this.root == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        int i = index >> 5;
        Object[] shiftLeafBuffers = shiftLeafBuffers(i, rightShift, buffers, nullBuffers, nextBuffer);
        int rootSize = nullBuffers - (((rootSize() >> 5) - 1) - i);
        if (rootSize < nullBuffers) {
            nextBuffer = buffers[rootSize];
            Intrinsics.checkNotNull(nextBuffer);
        }
        splitToBuffers(elements, index, shiftLeafBuffers, 32, buffers, rootSize, nextBuffer);
    }

    private final Object[] shiftLeafBuffers(int startLeafIndex, int rightShift, Object[][] buffers, int nullBuffers, Object[] nextBuffer) {
        if (this.root == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        ListIterator<Object[]> leafBufferIterator = leafBufferIterator(rootSize() >> 5);
        while (leafBufferIterator.previousIndex() != startLeafIndex) {
            Object[] previous = leafBufferIterator.previous();
            ArraysKt.copyInto(previous, nextBuffer, 0, 32 - rightShift, 32);
            nextBuffer = makeMutableShiftingRight(previous, rightShift);
            nullBuffers--;
            buffers[nullBuffers] = nextBuffer;
        }
        return leafBufferIterator.previous();
    }

    private final void splitToBuffers(Collection<? extends E> elements, int index, Object[] startBuffer, int startBufferSize, Object[][] buffers, int nullBuffers, Object[] nextBuffer) {
        Object[] mutableBuffer;
        if (nullBuffers < 1) {
            throw new IllegalStateException("Check failed.".toString());
        }
        Object[] makeMutable = makeMutable(startBuffer);
        buffers[0] = makeMutable;
        int i = index & 31;
        int size = ((index + elements.size()) - 1) & 31;
        int i2 = (startBufferSize - i) + size;
        if (i2 < 32) {
            ArraysKt.copyInto(makeMutable, nextBuffer, size + 1, i, startBufferSize);
        } else {
            int i3 = i2 - 31;
            if (nullBuffers == 1) {
                mutableBuffer = makeMutable;
            } else {
                mutableBuffer = mutableBuffer();
                nullBuffers--;
                buffers[nullBuffers] = mutableBuffer;
            }
            int i4 = startBufferSize - i3;
            ArraysKt.copyInto(makeMutable, nextBuffer, 0, i4, startBufferSize);
            ArraysKt.copyInto(makeMutable, mutableBuffer, size + 1, i, i4);
            nextBuffer = mutableBuffer;
        }
        Iterator<? extends E> it = elements.iterator();
        copyToBuffer(makeMutable, i, it);
        for (int i5 = 1; i5 < nullBuffers; i5++) {
            buffers[i5] = copyToBuffer(mutableBuffer(), 0, it);
        }
        copyToBuffer(nextBuffer, 0, it);
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        ListImplementation.checkElementIndex$runtime_release(index, size());
        return (E) bufferFor(index)[index & 31];
    }

    private final Object[] bufferFor(int index) {
        if (rootSize() <= index) {
            return this.tail;
        }
        Object[] objArr = this.root;
        Intrinsics.checkNotNull(objArr);
        for (int i = this.rootShift; i > 0; i -= 5) {
            Object[] objArr2 = objArr[UtilsKt.indexSegment(index, i)];
            Intrinsics.checkNotNull(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr = objArr2;
        }
        return objArr;
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int index) {
        ListImplementation.checkElementIndex$runtime_release(index, size());
        this.modCount++;
        int rootSize = rootSize();
        if (index >= rootSize) {
            return (E) removeFromTailAt(this.root, rootSize, this.rootShift, index - rootSize);
        }
        ObjectRef objectRef = new ObjectRef(this.tail[0]);
        Object[] objArr = this.root;
        Intrinsics.checkNotNull(objArr);
        removeFromTailAt(removeFromRootAt(objArr, this.rootShift, index, objectRef), rootSize, this.rootShift, 0);
        return (E) objectRef.getValue();
    }

    private final Object removeFromTailAt(Object[] root, int rootSize, int shift, int index) {
        int size = size() - rootSize;
        CommonFunctionsKt.m2285assert(index < size);
        if (size == 1) {
            Object obj = this.tail[0];
            pullLastBufferFromRoot(root, rootSize, shift);
            return obj;
        }
        Object[] objArr = this.tail;
        Object obj2 = objArr[index];
        Object[] copyInto = ArraysKt.copyInto(objArr, makeMutable(objArr), index, index + 1, size);
        copyInto[size - 1] = null;
        this.root = root;
        this.tail = copyInto;
        this.size = (rootSize + size) - 1;
        this.rootShift = shift;
        return obj2;
    }

    private final Object[] removeFromRootAt(Object[] root, int shift, int index, ObjectRef tailCarry) {
        int indexSegment = UtilsKt.indexSegment(index, shift);
        if (shift == 0) {
            Object obj = root[indexSegment];
            Object[] copyInto = ArraysKt.copyInto(root, makeMutable(root), indexSegment, indexSegment + 1, 32);
            copyInto[31] = tailCarry.getValue();
            tailCarry.setValue(obj);
            return copyInto;
        }
        int indexSegment2 = root[31] == null ? UtilsKt.indexSegment(rootSize() - 1, shift) : 31;
        Object[] makeMutable = makeMutable(root);
        int i = shift - 5;
        int i2 = indexSegment + 1;
        if (i2 <= indexSegment2) {
            while (true) {
                Object obj2 = makeMutable[indexSegment2];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                makeMutable[indexSegment2] = removeFromRootAt((Object[]) obj2, i, 0, tailCarry);
                if (indexSegment2 == i2) {
                    break;
                }
                indexSegment2--;
            }
        }
        Object obj3 = makeMutable[indexSegment];
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        makeMutable[indexSegment] = removeFromRootAt((Object[]) obj3, i, index, tailCarry);
        return makeMutable;
    }

    private final void pullLastBufferFromRoot(Object[] root, int rootSize, int shift) {
        if (shift == 0) {
            this.root = null;
            if (root == null) {
                root = new Object[0];
            }
            this.tail = root;
            this.size = rootSize;
            this.rootShift = shift;
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Intrinsics.checkNotNull(root);
        Object[] pullLastBuffer = pullLastBuffer(root, shift, rootSize, objectRef);
        Intrinsics.checkNotNull(pullLastBuffer);
        Object value = objectRef.getValue();
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        this.tail = (Object[]) value;
        this.size = rootSize;
        if (pullLastBuffer[1] == null) {
            this.root = (Object[]) pullLastBuffer[0];
            this.rootShift = shift - 5;
        } else {
            this.root = pullLastBuffer;
            this.rootShift = shift;
        }
    }

    private final Object[] pullLastBuffer(Object[] root, int shift, int rootSize, ObjectRef tailCarry) {
        Object[] pullLastBuffer;
        int indexSegment = UtilsKt.indexSegment(rootSize - 1, shift);
        if (shift == 5) {
            tailCarry.setValue(root[indexSegment]);
            pullLastBuffer = null;
        } else {
            Object obj = root[indexSegment];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            pullLastBuffer = pullLastBuffer((Object[]) obj, shift - 5, rootSize, tailCarry);
        }
        if (pullLastBuffer == null && indexSegment == 0) {
            return null;
        }
        Object[] makeMutable = makeMutable(root);
        makeMutable[indexSegment] = pullLastBuffer;
        return makeMutable;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(final Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return removeAllWithPredicate(new Function1<E, Boolean>() { // from class: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder$removeAll$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(E e) {
                return Boolean.valueOf(elements.contains(e));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                return invoke((PersistentVectorBuilder$removeAll$1<E>) obj);
            }
        });
    }

    public final boolean removeAllWithPredicate(Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        boolean removeAll = removeAll(predicate);
        if (removeAll) {
            this.modCount++;
        }
        return removeAll;
    }

    private final boolean removeAll(Function1<? super E, Boolean> predicate) {
        Object[] pushBuffers;
        int tailSize = tailSize();
        ObjectRef objectRef = new ObjectRef(null);
        if (this.root == null) {
            return removeAllFromTail(predicate, tailSize, objectRef) != tailSize;
        }
        ListIterator<Object[]> leafBufferIterator = leafBufferIterator(0);
        int i = 32;
        while (i == 32 && leafBufferIterator.hasNext()) {
            i = removeAll(predicate, leafBufferIterator.next(), 32, objectRef);
        }
        if (i == 32) {
            CommonFunctionsKt.m2285assert(!leafBufferIterator.hasNext());
            int removeAllFromTail = removeAllFromTail(predicate, tailSize, objectRef);
            if (removeAllFromTail == 0) {
                pullLastBufferFromRoot(this.root, size(), this.rootShift);
            }
            return removeAllFromTail != tailSize;
        }
        int previousIndex = leafBufferIterator.previousIndex() << 5;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i2 = i;
        while (leafBufferIterator.hasNext()) {
            i2 = recyclableRemoveAll(predicate, leafBufferIterator.next(), 32, i2, objectRef, arrayList2, arrayList);
            previousIndex = previousIndex;
        }
        int i3 = previousIndex;
        int recyclableRemoveAll = recyclableRemoveAll(predicate, this.tail, tailSize, i2, objectRef, arrayList2, arrayList);
        Object value = objectRef.getValue();
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr = (Object[]) value;
        ArraysKt.fill(objArr, (Object) null, recyclableRemoveAll, 32);
        if (arrayList.isEmpty()) {
            pushBuffers = this.root;
            Intrinsics.checkNotNull(pushBuffers);
        } else {
            pushBuffers = pushBuffers(this.root, i3, this.rootShift, arrayList.iterator());
        }
        int size = i3 + (arrayList.size() << 5);
        this.root = retainFirst(pushBuffers, size);
        this.tail = objArr;
        this.size = size + recyclableRemoveAll;
        return true;
    }

    private final Object[] retainFirst(Object[] root, int size) {
        if ((size & 31) != 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (size == 0) {
            this.rootShift = 0;
            return null;
        }
        int i = size - 1;
        while (true) {
            int i2 = this.rootShift;
            if ((i >> i2) == 0) {
                this.rootShift = i2 - 5;
                Object[] objArr = root[0];
                Intrinsics.checkNotNull(objArr, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                root = objArr;
            } else {
                return nullifyAfter(root, i, i2);
            }
        }
    }

    private final Object[] nullifyAfter(Object[] root, int index, int shift) {
        if (shift < 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (shift == 0) {
            return root;
        }
        int indexSegment = UtilsKt.indexSegment(index, shift);
        Object obj = root[indexSegment];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object nullifyAfter = nullifyAfter((Object[]) obj, index, shift - 5);
        if (indexSegment < 31) {
            int i = indexSegment + 1;
            if (root[i] != null) {
                if (isMutable(root)) {
                    ArraysKt.fill(root, (Object) null, i, 32);
                }
                root = ArraysKt.copyInto(root, mutableBuffer(), 0, 0, i);
            }
        }
        if (nullifyAfter == root[indexSegment]) {
            return root;
        }
        Object[] makeMutable = makeMutable(root);
        makeMutable[indexSegment] = nullifyAfter;
        return makeMutable;
    }

    private final int removeAllFromTail(Function1<? super E, Boolean> predicate, int tailSize, ObjectRef bufferRef) {
        int removeAll = removeAll(predicate, this.tail, tailSize, bufferRef);
        if (removeAll == tailSize) {
            CommonFunctionsKt.m2285assert(bufferRef.getValue() == this.tail);
            return tailSize;
        }
        Object value = bufferRef.getValue();
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr = (Object[]) value;
        ArraysKt.fill(objArr, (Object) null, removeAll, tailSize);
        this.tail = objArr;
        this.size = size() - (tailSize - removeAll);
        return removeAll;
    }

    private final int removeAll(Function1<? super E, Boolean> predicate, Object[] buffer, int bufferSize, ObjectRef bufferRef) {
        Object[] objArr = buffer;
        int i = bufferSize;
        boolean z = false;
        for (int i2 = 0; i2 < bufferSize; i2++) {
            Object obj = buffer[i2];
            if (predicate.invoke(obj).booleanValue()) {
                if (!z) {
                    objArr = makeMutable(buffer);
                    z = true;
                    i = i2;
                }
            } else if (z) {
                objArr[i] = obj;
                i++;
            }
        }
        bufferRef.setValue(objArr);
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int recyclableRemoveAll(Function1<? super E, Boolean> predicate, Object[] buffer, int bufferSize, int toBufferSize, ObjectRef bufferRef, List<Object[]> recyclableBuffers, List<Object[]> buffers) {
        Object[] mutableBuffer;
        if (isMutable(buffer)) {
            recyclableBuffers.add(buffer);
        }
        Object value = bufferRef.getValue();
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr = (Object[]) value;
        Object[] objArr2 = objArr;
        for (int i = 0; i < bufferSize; i++) {
            Object obj = buffer[i];
            if (!predicate.invoke(obj).booleanValue()) {
                if (toBufferSize == 32) {
                    if (!recyclableBuffers.isEmpty()) {
                        mutableBuffer = recyclableBuffers.remove(recyclableBuffers.size() - 1);
                    } else {
                        mutableBuffer = mutableBuffer();
                    }
                    objArr2 = mutableBuffer;
                    toBufferSize = 0;
                }
                objArr2[toBufferSize] = obj;
                toBufferSize++;
            }
        }
        bufferRef.setValue(objArr2);
        if (objArr != bufferRef.getValue()) {
            buffers.add(objArr);
        }
        return toBufferSize;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        ListImplementation.checkElementIndex$runtime_release(index, size());
        if (rootSize() <= index) {
            Object[] makeMutable = makeMutable(this.tail);
            if (makeMutable != this.tail) {
                this.modCount++;
            }
            int i = index & 31;
            E e = (E) makeMutable[i];
            makeMutable[i] = element;
            this.tail = makeMutable;
            return e;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.root;
        Intrinsics.checkNotNull(objArr);
        this.root = setInRoot(objArr, this.rootShift, index, element, objectRef);
        return (E) objectRef.getValue();
    }

    private final Object[] setInRoot(Object[] root, int shift, int index, E e, ObjectRef oldElementCarry) {
        int indexSegment = UtilsKt.indexSegment(index, shift);
        Object[] makeMutable = makeMutable(root);
        if (shift == 0) {
            if (makeMutable != root) {
                this.modCount++;
            }
            oldElementCarry.setValue(makeMutable[indexSegment]);
            makeMutable[indexSegment] = e;
            return makeMutable;
        }
        Object obj = makeMutable[indexSegment];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        makeMutable[indexSegment] = setInRoot((Object[]) obj, shift - 5, index, e, oldElementCarry);
        return makeMutable;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int index) {
        ListImplementation.checkPositionIndex$runtime_release(index, size());
        return new PersistentVectorMutableIterator(this, index);
    }

    private final ListIterator<Object[]> leafBufferIterator(int index) {
        if (this.root == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        int rootSize = rootSize() >> 5;
        ListImplementation.checkPositionIndex$runtime_release(index, rootSize);
        int i = this.rootShift;
        if (i == 0) {
            Object[] objArr = this.root;
            Intrinsics.checkNotNull(objArr);
            return new SingleElementListIterator(objArr, index);
        }
        Object[] objArr2 = this.root;
        Intrinsics.checkNotNull(objArr2);
        return new TrieIterator(objArr2, index, rootSize, i / 5);
    }
}
