package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.reflect.KDeclarationContainer;

/* loaded from: classes3.dex */
public class AdaptedFunctionReference implements FunctionBase, Serializable {
    private final int arity;
    private final int flags;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private final String signature;

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.arity;
    }

    public AdaptedFunctionReference(int i, Class cls, String str, String str2, int i2) {
        this(i, CallableReference.NO_RECEIVER, cls, str, str2, i2);
    }

    public AdaptedFunctionReference(int i, Object obj, Class cls, String str, String str2, int i2) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = (i2 & 1) == 1;
        this.arity = i;
        this.flags = i2 >> 1;
    }

    public KDeclarationContainer getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        return this.isTopLevel ? Reflection.getOrCreateKotlinPackage(cls) : Reflection.getOrCreateKotlinClass(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptedFunctionReference)) {
            return false;
        }
        AdaptedFunctionReference adaptedFunctionReference = (AdaptedFunctionReference) obj;
        return this.isTopLevel == adaptedFunctionReference.isTopLevel && this.arity == adaptedFunctionReference.arity && this.flags == adaptedFunctionReference.flags && Intrinsics.areEqual(this.receiver, adaptedFunctionReference.receiver) && Intrinsics.areEqual(this.owner, adaptedFunctionReference.owner) && this.name.equals(adaptedFunctionReference.name) && this.signature.equals(adaptedFunctionReference.signature);
    }

    public int hashCode() {
        Object obj = this.receiver;
        int hashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Class cls = this.owner;
        return ((((((((((hashCode + (cls != null ? cls.hashCode() : 0)) * 31) + this.name.hashCode()) * 31) + this.signature.hashCode()) * 31) + (this.isTopLevel ? 1231 : 1237)) * 31) + this.arity) * 31) + this.flags;
    }

    public String toString() {
        return Reflection.renderLambdaToString(this);
    }
}
