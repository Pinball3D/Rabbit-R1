package tech.rabbit.r1systemupdater.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import tech.rabbit.r1systemupdater.model.UpdateConfig;
import tech.rabbit.r1systemupdater.service.ICheckCallback;
import tech.rabbit.r1systemupdater.service.IUpdateCallback;

/* loaded from: classes3.dex */
public interface IUpdateService extends IInterface {
    public static final String DESCRIPTOR = "tech.rabbit.r1systemupdater.service.IUpdateService";

    /* loaded from: classes3.dex */
    public static class Default implements IUpdateService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // tech.rabbit.r1systemupdater.service.IUpdateService
        public void bind(IUpdateCallback iUpdateCallback) throws RemoteException {
        }

        @Override // tech.rabbit.r1systemupdater.service.IUpdateService
        public void check(ICheckCallback iCheckCallback) throws RemoteException {
        }

        @Override // tech.rabbit.r1systemupdater.service.IUpdateService
        public void unbind() throws RemoteException {
        }

        @Override // tech.rabbit.r1systemupdater.service.IUpdateService
        public void update(UpdateConfig updateConfig) throws RemoteException {
        }
    }

    void bind(IUpdateCallback iUpdateCallback) throws RemoteException;

    void check(ICheckCallback iCheckCallback) throws RemoteException;

    void unbind() throws RemoteException;

    void update(UpdateConfig updateConfig) throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IUpdateService {
        static final int TRANSACTION_bind = 1;
        static final int TRANSACTION_check = 3;
        static final int TRANSACTION_unbind = 2;
        static final int TRANSACTION_update = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IUpdateService.DESCRIPTOR);
        }

        public static IUpdateService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IUpdateService.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IUpdateService)) {
                return (IUpdateService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IUpdateService.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IUpdateService.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                bind(IUpdateCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 2) {
                unbind();
                parcel2.writeNoException();
            } else if (i == 3) {
                check(ICheckCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 4) {
                update((UpdateConfig) _Parcel.readTypedObject(parcel, UpdateConfig.CREATOR));
                parcel2.writeNoException();
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        /* loaded from: classes3.dex */
        private static class Proxy implements IUpdateService {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IUpdateService.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // tech.rabbit.r1systemupdater.service.IUpdateService
            public void bind(IUpdateCallback iUpdateCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IUpdateService.DESCRIPTOR);
                    obtain.writeStrongInterface(iUpdateCallback);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // tech.rabbit.r1systemupdater.service.IUpdateService
            public void unbind() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IUpdateService.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // tech.rabbit.r1systemupdater.service.IUpdateService
            public void check(ICheckCallback iCheckCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IUpdateService.DESCRIPTOR);
                    obtain.writeStrongInterface(iCheckCallback);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // tech.rabbit.r1systemupdater.service.IUpdateService
            public void update(UpdateConfig updateConfig) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IUpdateService.DESCRIPTOR);
                    _Parcel.writeTypedObject(obtain, updateConfig, 0);
                    this.mRemote.transact(4, obtain, obtain2, 0);
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
