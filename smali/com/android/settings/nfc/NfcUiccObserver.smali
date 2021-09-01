.class public Lcom/android/settings/nfc/NfcUiccObserver;
.super Landroid/database/ContentObserver;
.source "NfcUiccObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcUiccObserver$OnNfcUiccChangeCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/nfc/NfcUiccObserver$OnNfcUiccChangeCallback;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcUiccObserver$OnNfcUiccChangeCallback;)V
    .locals 1

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 25
    iput-object p1, p0, Lcom/android/settings/nfc/NfcUiccObserver;->mCallback:Lcom/android/settings/nfc/NfcUiccObserver$OnNfcUiccChangeCallback;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 31
    iget-object p0, p0, Lcom/android/settings/nfc/NfcUiccObserver;->mCallback:Lcom/android/settings/nfc/NfcUiccObserver$OnNfcUiccChangeCallback;

    invoke-interface {p0}, Lcom/android/settings/nfc/NfcUiccObserver$OnNfcUiccChangeCallback;->onDataChange()V

    return-void
.end method
