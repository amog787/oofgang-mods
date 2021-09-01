.class public Lcom/android/settings/nfc/NfcPaymentPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NfcPaymentPreferenceController.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/nfc/NfcPaymentPreference$Listener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcPaymentController"


# instance fields
.field private final mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

.field private mSettingsButtonView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    new-instance p2, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;-><init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/PaymentBackend;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/NfcPaymentPreference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    return-object p0
.end method

.method private updateSettingsVisibility()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 172
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/NfcPaymentPreference;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1, p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->initialize(Lcom/android/settings/nfc/NfcPaymentPreference$Listener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_2

    .line 93
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 95
    :cond_2
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 96
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x0

    :cond_3
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    return-object p0

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->nfc_payment_default_not_set:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 112
    sget v0, Lcom/android/settings/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    .line 113
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->updateSettingsVisibility()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 155
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 159
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NfcPaymentController"

    const-string p1, "Settings activity not found."

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onPaymentAppsChanged()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 145
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->unregisterCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    :cond_0
    return-void
.end method

.method public setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 123
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->updateSettingsVisibility()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
