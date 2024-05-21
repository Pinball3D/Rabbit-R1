package kotlin.reflect;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KProperty;

/* compiled from: KProperty.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0006\b\u0002\u0010\u0003 \u00012\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005:\u0001\u0012J\u001d\u0010\f\u001a\u00028\u00022\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u0001H&¢\u0006\u0002\u0010\u000fJ\u001f\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u0001H'¢\u0006\u0002\u0010\u000fR*\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0007X¦\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lkotlin/reflect/KProperty2;", "D", ExifInterface.LONGITUDE_EAST, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/KProperty;", "Lkotlin/Function2;", "getter", "Lkotlin/reflect/KProperty2$Getter;", "getGetter$annotations", "()V", "getGetter", "()Lkotlin/reflect/KProperty2$Getter;", "get", "receiver1", "receiver2", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "getDelegate", "", "Getter", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface KProperty2<D, E, V> extends KProperty<V>, Function2<D, E, V> {

    /* compiled from: KProperty.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void getGetter$annotations() {
        }
    }

    /* compiled from: KProperty.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\u0004\b\u0003\u0010\u0001*\u0004\b\u0004\u0010\u0002*\u0006\b\u0005\u0010\u0003 \u00012\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/KProperty2$Getter;", "D", ExifInterface.LONGITUDE_EAST, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/KProperty$Getter;", "Lkotlin/Function2;", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Getter<D, E, V> extends KProperty.Getter<V>, Function2<D, E, V> {
    }

    V get(D receiver1, E receiver2);

    Object getDelegate(D receiver1, E receiver2);

    @Override // kotlin.reflect.KProperty
    Getter<D, E, V> getGetter();
}
