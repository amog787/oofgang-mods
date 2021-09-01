.class public Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "AutoSelectPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;
    }
.end annotation


# static fields
.field private static final MINIMUM_DIALOG_TIME_MILLIS:J


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlyAutoSelectInHome:Z

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->MINIMUM_DIALOG_TIME_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    .line 79
    new-instance p1, Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    iget-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    invoke-direct {p1, p2}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    .line 80
    new-instance p2, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$HPYPaZ5Go4jb40eDiUg-se5U0IU;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$HPYPaZ5Go4jb40eDiUg-se5U0IU;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->setPreferredNetworkModeChangedListener(Lcom/android/settings/network/PreferredNetworkModeContentObserver$OnPreferredNetworkModeChangedListener;)V

    return-void
.end method

.method private dismissProgressBar()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updatePreference()V

    return-void
.end method

.method private synthetic lambda$setChecked$1(I)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;

    .line 158
    invoke-interface {v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;->onNetworkSelectModeChanged()V

    goto :goto_1

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->dismissProgressBar()V

    return-void
.end method

.method private synthetic lambda$setChecked$2(J)V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeAutomatic()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkSelectionMode()I

    move-result v0

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 153
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$lx6pxiscZ-gdC70BpNNKuQLu7tE;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$lx6pxiscZ-gdC70BpNNKuQLu7tE;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;I)V

    sget-wide v3, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->MINIMUM_DIALOG_TIME_MILLIS:J

    sub-long/2addr v3, v1

    const-wide/16 v0, 0x0

    .line 162
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 153
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showAutoSelectProgressBar()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 202
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->register_automatically:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 208
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private updatePreference()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 113
    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldDisplayNetworkSelectOptions(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/lifecycle/Lifecycle;I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
    .locals 1

    .line 179
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 180
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 181
    invoke-virtual {p2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 182
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 183
    invoke-virtual {p2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "only_auto_select_in_home_network"

    .line 185
    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 187
    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    .line 189
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkSelectionMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$AutoSelectPreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$setChecked$1$AutoSelectPreferenceController(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setChecked$1(I)V

    return-void
.end method

.method public synthetic lambda$setChecked$2$AutoSelectPreferenceController(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setChecked$2(J)V

    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 144
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->showAutoSelectProgressBar()V

    .line 145
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 146
    new-instance p1, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$F10XVncref23bmw69zLa-WiI2Ug;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$F10XVncref23bmw69zLa-WiI2Ug;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;J)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return v0

    .line 166
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 167
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const-string v2, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;

    .line 169
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x62d

    .line 170
    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->choose_network_title:I

    .line 171
    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 172
    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 173
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 132
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->manual_mode_disallowed_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 135
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
