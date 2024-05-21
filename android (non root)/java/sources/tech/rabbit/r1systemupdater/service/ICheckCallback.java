package tech.rabbit.r1systemupdater.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import tech.rabbit.r1systemupdater.model.UpdateConfig;

/* loaded from: classes3.dex */
public interface ICheckCallback extends IInterface {
    public static final String DESCRIPTOR = "tech.rabbit.r1systemupdater.service.ICheckCallback";

    /* loaded from: classes3.dex */
    public static class Default implements ICheckCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // tech.rabbit.r1systemupdater.service.ICheckCallback
        public void onResult(UpdateConfig updateConfig) throws RemoteException {
        }
    }

    void onResult(UpdateConfig updateConfig) throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements ICheckCallback {
        static final int TRANSACTION_onResult = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, ICheckCallback.DESCRIPTOR);
        }

        public static ICheckCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ICheckCallback.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICheckCallback)) {
                return (ICheckCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(ICheckCallback.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(ICheckCallback.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onResult((UpdateConfig) _Parcel.readTypedObject(parcel, UpdateConfig.CREATOR));
                parcel2.writeNoException();
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* loaded from: classes3.dex */
        private static class Proxy implements ICheckCallback {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ICheckCallback.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // tech.rabbit.r1systemupdater.service.ICheckCallback
            public void onResult(UpdateConfig updateConfig) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICheckCallback.DESCRIPTOR);
                    _Parcel.writeTypedObject(obtain, updateConfig, 0);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t, int i) {
            if (t != null) {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
            } else {
                parcel.writeInt(0);
            }
        }
    }
}
