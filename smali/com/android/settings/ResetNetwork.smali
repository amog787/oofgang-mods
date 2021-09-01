.class public Lcom/android/settings/ResetNetwork;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetwork.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field mEsimCheckbox:Landroid/widget/CheckBox;

.field mEsimContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mSubscriptionSpinner:Landroid/widget/Spinner;

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 140
    new-instance v0, Lcom/android/settings/ResetNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetwork$1;-><init>(Lcom/android/settings/ResetNetwork;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetNetwork;I)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method private establishInitialState()V
    .locals 10

    .line 163
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->reset_network_subscription:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    .line 164
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_esim_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_esim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 169
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 171
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 172
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 175
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 178
    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 179
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 183
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v4, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 186
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    if-ne v8, v0, :cond_3

    .line 188
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 190
    :cond_3
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 192
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 194
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 195
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 197
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    new-array v8, v1, [Ljava/lang/Object;

    .line 198
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    .line 199
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x2

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x3

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v7

    const-string v6, "MCC:%s MNC:%s Slot:%s Id:%s"

    .line 198
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 201
    :cond_6
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v6, 0x1090008

    invoke-direct {v0, v4, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    .line 205
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 206
    iget-object v3, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_8

    .line 209
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 211
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_9
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->initiate_reset_network:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateButton:Landroid/widget/Button;

    .line 217
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ResetNetwork;->showEuiccSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 219
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    new-instance v1, Lcom/android/settings/ResetNetwork$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetNetwork$2;-><init>(Lcom/android/settings/ResetNetwork;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 227
    :cond_a
    iget-object p0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    sget p0, Lcom/android/settings/R$string;->reset_network_title:I

    .line 96
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 95
    invoke-virtual {v1, p1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private showEuiccSettings(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "euicc"

    .line 233
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccManager;

    .line 234
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "euicc_provisioned"

    .line 238
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    .line 239
    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x53

    return p0
.end method

.method public synthetic lambda$onCreateView$0$ResetNetwork(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->lambda$onCreateView$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x37

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->showFinalConfirmation()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->establishInitialState()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->reset_network_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_network_reset"

    .line 246
    invoke-static {p3, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 248
    invoke-virtual {p2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 249
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 248
    invoke-static {p2, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 252
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 253
    invoke-virtual {p1, v1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$ResetNetwork$sNSFVrhYYO7NxbKY35cdb4I6sYI;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$ResetNetwork$sNSFVrhYYO7NxbKY35cdb4I6sYI;-><init>(Lcom/android/settings/ResetNetwork;)V

    .line 254
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 256
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 259
    :cond_1
    sget p2, Lcom/android/settings/R$layout;->reset_network:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    .line 261
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->establishInitialState()V

    .line 262
    iget-object p0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    return-object p0

    .line 250
    :cond_2
    :goto_0
    sget p0, Lcom/android/settings/R$layout;->network_reset_disallowed_screen:I

    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method showFinalConfirmation()V
    .locals 3

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 121
    iget-object v2, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 123
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "erase_esim"

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/ResetNetworkConfirm;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 129
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    sget v0, Lcom/android/settings/R$string;->reset_network_confirm_title:I

    .line 130
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 132
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
