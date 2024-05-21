package kotlin.reflect;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;

/* compiled from: KClass.kt */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005J\u0013\u0010D\u001a\u00020\u000e2\b\u0010E\u001a\u0004\u0018\u00010\u0002H¦\u0002J\b\u0010F\u001a\u00020GH&J\u0012\u0010H\u001a\u00020\u000e2\b\u0010I\u001a\u0004\u0018\u00010\u0002H'R$\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u0007X¦\u0004¢\u0006\f\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000e8&X§\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\n\u001a\u0004\b\r\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u000e8&X§\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\n\u001a\u0004\b\u0011\u0010\u0010R\u001a\u0010\u0013\u001a\u00020\u000e8&X§\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\n\u001a\u0004\b\u0013\u0010\u0010R\u001a\u0010\u0015\u001a\u00020\u000e8&X§\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\n\u001a\u0004\b\u0015\u0010\u0010R\u001a\u0010\u0017\u001a\u00020\u000e8&X§\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\n\u001a\u0004\b\u0017\u0010\u0010R\u001a\u0010\u0019\u001a\u00020\u000e8&X§\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\n\u001a\u0004\b\u0019\u0010\u0010R\u001a\u0010\u001b\u001a\u00020\u000e8&X§\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\n\u001a\u0004\b\u001b\u0010\u0010R\u001a\u0010\u001d\u001a\u00020\u000e8&X§\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\n\u001a\u0004\b\u001d\u0010\u0010R\u001a\u0010\u001f\u001a\u00020\u000e8&X§\u0004¢\u0006\f\u0012\u0004\b \u0010\n\u001a\u0004\b\u001f\u0010\u0010R\"\u0010!\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\"0\u0007X¦\u0004¢\u0006\f\u0012\u0004\b#\u0010\n\u001a\u0004\b$\u0010\fR\"\u0010%\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00000\u0007X¦\u0004¢\u0006\f\u0012\u0004\b&\u0010\n\u001a\u0004\b'\u0010\fR\u001a\u0010(\u001a\u0004\u0018\u00018\u0000X¦\u0004¢\u0006\f\u0012\u0004\b)\u0010\n\u001a\u0004\b*\u0010+R\u0014\u0010,\u001a\u0004\u0018\u00010-X¦\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R(\u00100\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0000018&X§\u0004¢\u0006\f\u0012\u0004\b2\u0010\n\u001a\u0004\b3\u00104R\u0014\u00105\u001a\u0004\u0018\u00010-X¦\u0004¢\u0006\u0006\u001a\u0004\b6\u0010/R \u00107\u001a\b\u0012\u0004\u0012\u000208018&X§\u0004¢\u0006\f\u0012\u0004\b9\u0010\n\u001a\u0004\b:\u00104R \u0010;\u001a\b\u0012\u0004\u0012\u00020<018&X§\u0004¢\u0006\f\u0012\u0004\b=\u0010\n\u001a\u0004\b>\u00104R\u001c\u0010?\u001a\u0004\u0018\u00010@8&X§\u0004¢\u0006\f\u0012\u0004\bA\u0010\n\u001a\u0004\bB\u0010C¨\u0006J"}, d2 = {"Lkotlin/reflect/KClass;", ExifInterface.GPS_DIRECTION_TRUE, "", "Lkotlin/reflect/KDeclarationContainer;", "Lkotlin/reflect/KAnnotatedElement;", "Lkotlin/reflect/KClassifier;", "constructors", "", "Lkotlin/reflect/KFunction;", "getConstructors$annotations", "()V", "getConstructors", "()Ljava/util/Collection;", "isAbstract", "", "isAbstract$annotations", "()Z", "isCompanion", "isCompanion$annotations", "isData", "isData$annotations", "isFinal", "isFinal$annotations", "isFun", "isFun$annotations", "isInner", "isInner$annotations", "isOpen", "isOpen$annotations", "isSealed", "isSealed$annotations", "isValue", "isValue$annotations", "members", "Lkotlin/reflect/KCallable;", "getMembers$annotations", "getMembers", "nestedClasses", "getNestedClasses$annotations", "getNestedClasses", "objectInstance", "getObjectInstance$annotations", "getObjectInstance", "()Ljava/lang/Object;", "qualifiedName", "", "getQualifiedName", "()Ljava/lang/String;", "sealedSubclasses", "", "getSealedSubclasses$annotations", "getSealedSubclasses", "()Ljava/util/List;", "simpleName", "getSimpleName", "supertypes", "Lkotlin/reflect/KType;", "getSupertypes$annotations", "getSupertypes", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters$annotations", "getTypeParameters", ViewHierarchyNode.JsonKeys.VISIBILITY, "Lkotlin/reflect/KVisibility;", "getVisibility$annotations", "getVisibility", "()Lkotlin/reflect/KVisibility;", "equals", "other", "hashCode", "", "isInstance", "value", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface KClass<T> extends KDeclarationContainer, KAnnotatedElement, KClassifier {

    /* compiled from: KClass.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void getConstructors$annotations() {
        }

        public static /* synthetic */ void getMembers$annotations() {
        }

        public static /* synthetic */ void getNestedClasses$annotations() {
        }

        public static /* synthetic */ void getObjectInstance$annotations() {
        }

        public static /* synthetic */ void getSealedSubclasses$annotations() {
        }

        public static /* synthetic */ void getSupertypes$annotations() {
        }

        public static /* synthetic */ void getTypeParameters$annotations() {
        }

        public static /* synthetic */ void getVisibility$annotations() {
        }

        public static /* synthetic */ void isAbstract$annotations() {
        }

        public static /* synthetic */ void isCompanion$annotations() {
        }

        public static /* synthetic */ void isData$annotations() {
        }

        public static /* synthetic */ void isFinal$annotations() {
        }

        public static /* synthetic */ void isFun$annotations() {
        }

        public static /* synthetic */ void isInner$annotations() {
        }

        public static /* synthetic */ void isOpen$annotations() {
        }

        public static /* synthetic */ void isSealed$annotations() {
        }

        public static /* synthetic */ void isValue$annotations() {
        }
    }

    boolean equals(Object other);

    Collection<KFunction<T>> getConstructors();

    @Override // kotlin.reflect.KDeclarationContainer
    Collection<KCallable<?>> getMembers();

    Collection<KClass<?>> getNestedClasses();

    T getObjectInstance();

    String getQualifiedName();

    List<KClass<? extends T>> getSealedSubclasses();

    String getSimpleName();

    List<KType> getSupertypes();

    List<KTypeParameter> getTypeParameters();

    KVisibility getVisibility();

    int hashCode();

    boolean isAbstract();

    boolean isCompanion();

    boolean isData();

    boolean isFinal();

    boolean isFun();

    boolean isInner();

    boolean isInstance(Object value);

    boolean isOpen();

    boolean isSealed();

    boolean isValue();
}
