.class public Lcom/android/settings/IccLockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;,
        Lcom/android/settings/IccLockSettings$SetIccLockEnabled;
    }
.end annotation


# instance fields
.field private mDialogState:I

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinToggle:Landroidx/preference/SwitchPreference;

.field private mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mSubId:I

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 135
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 690
    new-instance v0, Lcom/android/settings/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$4;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 700
    new-instance v0, Lcom/android/settings/IccLockSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$5;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/IccLockSettings;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/IccLockSettings;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/IccLockSettings;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings/IccLockSettings;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {p1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object p0

    return-object p0
.end method

.method private createCustomTextToast(Ljava/lang/CharSequence;)V
    .locals 6

    const-string v0, "layout_inflater"

    .line 556
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x109012f

    const/4 v2, 0x0

    .line 557
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000b

    .line 558
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 559
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 562
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 566
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 563
    invoke-static {v3, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 567
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v3, v2, 0x7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x7

    if-ne v3, v5, :cond_0

    .line 569
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_0
    const/16 v3, 0x70

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 572
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 574
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050280

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, -0x2

    .line 577
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 578
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x3

    .line 579
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x1030004

    .line 580
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v2, 0x7e1

    .line 581
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 582
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 583
    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0x98

    .line 584
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string/jumbo p1, "window"

    .line 588
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 589
    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/IccLockSettings$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;Landroid/view/WindowManager;Landroid/view/View;)V

    const-wide/16 p0, 0x1b58

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static getActiveSubscriptionInfoForSimSlotIndex(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)",
            "Landroid/telephony/SubscriptionInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 682
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 683
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 646
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->wrong_pin_code_pukked:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 648
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->wrong_pin_code_one:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-le p1, v1, :cond_2

    .line 650
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$plurals;->wrong_pin_code:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 652
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 651
    invoke-virtual {p0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 654
    :cond_2
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->pin_failed:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private iccLockChanged(ZI)V
    .locals 2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccLockChanged: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    .line 536
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->createCustomTextToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 538
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz p1, :cond_2

    .line 539
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_pin_enable_failed:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 540
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_pin_disable_failed:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 543
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 547
    :goto_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 548
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method private iccPinChanged(ZI)V
    .locals 2

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccPinChanged: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 602
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->createCustomTextToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->sim_change_succeeded:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 608
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method private isIccLockEnabled()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 159
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isIccLockEnabled()Z

    move-result p0

    return p0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 662
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x8

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private resetDialogState()V
    .locals 1

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    const/4 v0, 0x2

    .line 671
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const-string v0, ""

    .line 672
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 673
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    const/4 v0, 0x0

    .line 674
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 407
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_1

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_reenter_new:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_change_pin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_enter_new:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_change_pin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_enter_old:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_change_pin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_enter_pin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_4

    .line 411
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_enable_sim_lock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 412
    :cond_4
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_disable_sim_lock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 427
    :goto_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 429
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 431
    :cond_5
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showPinDialog()V
    .locals 2

    .line 391
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 396
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    .line 398
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 400
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .line 498
    new-instance v0, Lcom/android/settings/IccLockSettings$SetIccLockEnabled;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/IccLockSettings$SetIccLockEnabled;-><init>(Lcom/android/settings/IccLockSettings;ZLjava/lang/String;Lcom/android/settings/IccLockSettings$1;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 500
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .line 612
    new-instance v0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;-><init>(Lcom/android/settings/IccLockSettings;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/IccLockSettings$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updatePreferences()V
    .locals 6

    .line 296
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 297
    invoke-virtual {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object v0

    .line 298
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->getActiveSubscriptionInfoForSimSlotIndex(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    .line 301
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 303
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v4

    .line 307
    :goto_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v3

    .line 308
    :goto_3
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 310
    :cond_4
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    move v3, v4

    .line 311
    :cond_5
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_6

    .line 314
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 349
    sget p0, Lcom/android/settings/R$string;->help_url_icc_lock:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x38

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 186
    sget v0, Lcom/android/settings/R$xml;->sim_lock_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "sim_pin"

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const-string v0, "sim_toggle"

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_3

    const-string v0, "dialogState"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const-string v0, "dialogPin"

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    const-string v0, "dialogError"

    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    const-string v0, "enableState"

    .line 194
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 197
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    const-string v0, "newPinCode"

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 214
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 217
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 226
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 228
    invoke-virtual {v1}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 229
    iput v2, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    .line 234
    invoke-static {v1, v4}, Lcom/android/settings/IccLockSettings;->getActiveSubscriptionInfoForSimSlotIndex(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CarrierConfigManager;

    .line 239
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 238
    invoke-virtual {v6, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, "hide_sim_lock_settings_bool"

    .line 241
    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 243
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IccLockSettings"

    const-string v1, "onCreateView: no sim info"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 253
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 254
    sget v0, Lcom/android/settings/R$layout;->icc_lock_tabs:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 255
    sget v4, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 256
    invoke-static {p2, v0, v4, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 257
    invoke-super {p0, p1, v4, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 258
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x1020012

    .line 260
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    const p1, 0x1020013

    .line 261
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabWidget;

    const p1, 0x102000a

    .line 262
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 264
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 265
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 266
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 268
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    .line 269
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    .line 270
    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-nez p2, :cond_3

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v7, Lcom/android/settings/R$string;->sim_editor_title:I

    new-array v8, v1, [Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-virtual {p2, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 273
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p2

    .line 271
    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 270
    invoke-direct {p0, v6, p2}, Lcom/android/settings/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_1

    .line 276
    :cond_4
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    if-eqz p3, :cond_5

    const-string p1, "currentTab"

    .line 278
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 279
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_5
    return-object v0

    .line 283
    :cond_6
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 343
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void

    .line 441
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 442
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 444
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget p2, Lcom/android/settings/R$string;->sim_bad_pin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 445
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    return-void

    .line 448
    :cond_1
    iget p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-eq p1, v0, :cond_4

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 466
    :cond_2
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 467
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget p2, Lcom/android/settings/R$string;->sim_pins_dont_match:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 468
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 469
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 470
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 472
    :cond_3
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 473
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 460
    :cond_4
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 461
    iput p2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 462
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 463
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 453
    :cond_5
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 454
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 455
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 456
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 450
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    :goto_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 483
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 485
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 486
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 487
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 489
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 326
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 330
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const-string v1, "dialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialogPin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    const-string v1, "dialogError"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    const-string v1, "enableState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    const-string v1, "newPinCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 385
    :goto_0
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz p0, :cond_3

    .line 386
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "currentTab"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 290
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 291
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method
