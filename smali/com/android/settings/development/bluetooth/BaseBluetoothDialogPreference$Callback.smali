.class public interface abstract Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;
.super Ljava/lang/Object;
.source "BaseBluetoothDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getCurrentConfigIndex()I
.end method

.method public abstract getSelectableIndex()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onIndexUpdated(I)V
.end method
