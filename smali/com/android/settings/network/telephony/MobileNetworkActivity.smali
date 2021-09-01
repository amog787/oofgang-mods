.class public Lcom/android/settings/network/telephony/MobileNetworkActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "MobileNetworkActivity.java"

# interfaces
.implements Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;


# static fields
.field static final MOBILE_SETTINGS_TAG:Ljava/lang/String; = "mobile_settings:"

.field static final SUB_ID_NULL:I = -0x80000000


# instance fields
.field private mCurSubscriptionId:I

.field private mFragmentForceReload:Z

.field mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mFragmentForceReload:Z

    return-void
.end method

.method private doesIntentContainOptInAction(Landroid/content/Intent;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

    .line 313
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;
    .locals 0

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 280
    invoke-static {p1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    return-object p0
.end method

.method private maybeShowContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 288
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const-string p1, ""

    .line 292
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-static {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryVisible(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-static {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 297
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    .line 300
    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->newInstance(ILjava/lang/CharSequence;)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v2

    .line 304
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_3

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 306
    invoke-static {v0}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private removeContactDiscoveryDialog(I)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private updateTitleAndNavigation(Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private validate(Landroid/content/Intent;)V
    .locals 1

    .line 321
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android.provider.extra.SUB_ID"

    const/high16 v0, -0x80000000

    .line 322
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Intent with action SHOW_CAPABILITY_DISCOVERY_OPT_IN must also include the extra Settings#EXTRA_SUB_ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method buildFragmentTag(I)Ljava/lang/String;
    .locals 1

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mobile_settings:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    if-nez v0, :cond_0

    .line 142
    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    return-object p0
.end method

.method getSubscription()Landroid/telephony/SubscriptionInfo;
    .locals 2

    .line 228
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscriptionForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object p0

    .line 233
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 236
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method getSubscriptionForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    .line 241
    invoke-static {p0, v0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscription(Landroid/content/Context;Lcom/android/settings/network/ProxySubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public onChanged()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 157
    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;)V

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 166
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->removeContactDiscoveryDialog(I)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 104
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->validate(Landroid/content/Intent;)V

    const-string v1, "android.provider.extra.SUB_ID"

    const/high16 v2, -0x80000000

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 127
    :cond_2
    :goto_0
    iput v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->maybeShowContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->registerActiveSubscriptionsListener()V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 180
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->removeActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->validate(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    const-string v1, "android.provider.extra.SUB_ID"

    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 80
    :cond_0
    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    .line 81
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 82
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mFragmentForceReload:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;)V

    if-ne v0, v1, :cond_2

    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->removeContactDiscoveryDialog(I)V

    .line 95
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 96
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->maybeShowContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V

    :cond_4
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 189
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    .line 173
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method registerActiveSubscriptionsListener()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->addActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    return-void
.end method

.method saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 195
    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method switchFragment(Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 250
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 251
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.provider.extra.SUB_ID"

    .line 252
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->buildFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mFragmentForceReload:Z

    const-string v0, "MobileNetworkActivity"

    if-nez p0, :cond_0

    .line 257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keep current fragment: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 260
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Construct fragment: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    new-instance p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    .line 264
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 265
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {v1, v0, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 266
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method updateSubscriptions(Landroid/telephony/SubscriptionInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateTitleAndNavigation(Landroid/telephony/SubscriptionInfo;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->switchFragment(Landroid/telephony/SubscriptionInfo;)V

    .line 217
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/4 p1, 0x0

    .line 218
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mFragmentForceReload:Z

    return-void
.end method
