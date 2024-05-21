package kotlin.collections;

import java.util.RandomAccess;
import kotlin.Metadata;

/* compiled from: _ArraysJvm.kt */
@Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"kotlin/collections/ArraysKt___ArraysJvmKt$asList$5", "Lkotlin/collections/AbstractList;", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "size", "", "getSize", "()I", "contains", "", "element", "get", "index", "(I)Ljava/lang/Float;", "indexOf", "isEmpty", "lastIndexOf", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ArraysKt___ArraysJvmKt$asList$5 extends AbstractList<Float> implements RandomAccess {
    final /* synthetic */ float[] $this_asList;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArraysKt___ArraysJvmKt$asList$5(float[] fArr) {
        this.$this_asList = fArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Float) {
            return contains(((Number) obj).floatValue());
        }
        return false;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Float) {
            return indexOf(((Number) obj).floatValue());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Float) {
            return lastIndexOf(((Number) obj).floatValue());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public int get_size() {
        return this.$this_asList.length;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.$this_asList.length == 0;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public Float get(int index) {
        return Float.valueOf(this.$this_asList[index]);
    }

    public boolean contains(float element) {
        for (float f : this.$this_asList) {
            if (Float.floatToIntBits(f) == Float.floatToIntBits(element)) {
                return true;
            }
        }
        return false;
    }

    public int indexOf(float element) {
        float[] fArr = this.$this_asList;
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            if (Float.floatToIntBits(fArr[i]) == Float.floatToIntBits(element)) {
                return i;
            }
        }
        return -1;
    }

    public int lastIndexOf(float element) {
        float[] fArr = this.$this_asList;
        int length = fArr.length - 1;
        if (length < 0) {
            return -1;
        }
        while (true) {
            int i = length - 1;
            if (Float.floatToIntBits(fArr[length]) == Float.floatToIntBits(element)) {
                return length;
            }
            if (i < 0) {
                return -1;
            }
            length = i;
        }
    }
}
