.class public Lcom/android/settings/nfc/NfcPaymentPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "NfcPaymentPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/nfc/NfcPaymentPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method initialize(Lcom/android/settings/nfc/NfcPaymentPreference$Listener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mListener:Lcom/android/settings/nfc/NfcPaymentPreference$Listener;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 59
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mListener:Lcom/android/settings/nfc/NfcPaymentPreference$Listener;

    if-eqz p0, :cond_0

    .line 60
    invoke-interface {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$Listener;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 69
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mListener:Lcom/android/settings/nfc/NfcPaymentPreference$Listener;

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p0, p1, p2}, Lcom/android/settings/nfc/NfcPaymentPreference$Listener;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method
