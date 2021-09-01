.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PaymentSettings.java"

# interfaces
.implements Lcom/android/settings/nfc/NfcUiccObserver$OnNfcUiccChangeCallback;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 153
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$1;

    sget v1, Lcom/android/settings/R$xml;->nfc_payment_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/nfc/PaymentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PaymentSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x46

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 69
    sget p0, Lcom/android/settings/R$xml;->nfc_payment_settings:I

    return p0
.end method

.method isShowEmptyImage(Landroidx/preference/PreferenceScreen;)Z
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 144
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 145
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/emptyview/EmptyPageView;

    .line 87
    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->nfc_payment_no_apps:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyImageView()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->op_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 75
    new-instance p1, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 76
    invoke-virtual {p1, p0}, Lcom/android/settings/nfc/PaymentBackend;->setFragment(Landroidx/fragment/app/Fragment;)V

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 79
    const-class p1, Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1, v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V

    .line 80
    const-class p1, Lcom/android/settings/nfc/NfcForegroundPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/NfcForegroundPreferenceController;

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 136
    sget p2, Lcom/android/settings/R$string;->nfc_payment_how_it_works:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 137
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class v0, Lcom/android/settings/nfc/HowItWorks;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    const/4 p0, 0x0

    .line 139
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onDataChange()V
    .locals 1

    .line 115
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNfcUicc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 130
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 123
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 124
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 95
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 96
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNfcUicc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/settings/nfc/NfcUiccObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcUiccObserver;-><init>(Lcom/android/settings/nfc/NfcUiccObserver$OnNfcUiccChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_list"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 107
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNfcUicc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

    :cond_0
    return-void
.end method
