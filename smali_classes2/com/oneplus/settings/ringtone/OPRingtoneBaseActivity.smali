.class public abstract Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.super Landroid/preference/PreferenceActivity;
.source "OPRingtoneBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;
    }
.end annotation


# instance fields
.field private isFirst:Z

.field private isPlaying:Z

.field protected isSelectedNone:Z

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mContactsRingtone:Z

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field public mDefualtUri:Landroid/net/Uri;

.field public mHandler:Landroid/os/Handler;

.field public mHasDefaultItem:Z

.field public mIsAlarmNeedVibrate:Z

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

.field public mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

.field private mSimid:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mType:I

.field public mUriForDefaultItem:Landroid/net/Uri;

.field private mUserContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    .line 48
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    .line 49
    iput v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    .line 50
    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mIsAlarmNeedVibrate:Z

    .line 55
    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    .line 62
    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isSelectedNone:Z

    .line 68
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    .line 270
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 413
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$4;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mLookupRingtoneNames:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Landroid/media/Ringtone;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    return p0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isThreePart()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startPreview()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->startVibrate(Landroid/net/Uri;)V

    .line 266
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopAnyPlayingRingtone2()V
    .locals 3

    .line 346
    const-class v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAnyPlayingRingtone2 mDefaultRingtone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    :cond_0
    return-void
.end method


# virtual methods
.method enableSpringEdgeEffect()V
    .locals 6

    .line 475
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 484
    :cond_1
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 486
    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 487
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 489
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 490
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 491
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    const/4 v2, 0x0

    .line 492
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSaveEnabled(Z)V

    .line 495
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/settings/R$layout;->spring_preference_listview:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/edgeeffect/SpringListView;

    .line 496
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const v3, 0x102000a

    .line 497
    invoke-virtual {v0, v3}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->addSpringView(I)V

    .line 498
    invoke-virtual {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;)V

    .line 500
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 501
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mList:Landroid/widget/ListView;

    return-void
.end method

.method public getSim1Enable()Z
    .locals 1

    .line 464
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result p0

    return p0
.end method

.method public getSim2Enable()Z
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result p0

    return p0
.end method

.method public getSimId()I
    .locals 0

    .line 444
    iget p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    return p0
.end method

.method public getUserContext()Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    return-object p0
.end method

.method public isMultiSimEnabled()Z
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p0

    return p0
.end method

.method public isProfileId()Z
    .locals 2

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isManagedProfile :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RingtoneBaseActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThreePart()Z
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasDefaultItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onBackPressed()V
    .locals 3

    .line 401
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 403
    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 405
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 138
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    .line 142
    sget v0, Lcom/android/settings/R$layout;->op_ringtone_activity_parent:I

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    const-string v0, "vibrator"

    .line 143
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    .line 144
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CURRENT_USER_ID"

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 147
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    const-string v3, "RingtoneBaseActivity"

    if-nez v1, :cond_0

    const-string v1, "use application context instead"

    .line 149
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    :cond_0
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v4, 0x1

    .line 153
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const-string v1, "needVibrate"

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mIsAlarmNeedVibrate:Z

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    const-string v1, "ringtone_for_contacts"

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefualtUri:Landroid/net/Uri;

    .line 164
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, "key_selected_item_uri"

    .line 166
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 168
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isSelectedNone:Z

    if-nez p1, :cond_2

    const-string p1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 172
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 177
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefualtUri:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefualtUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUriForDefaultItem:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasDefaultItem:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.intent.extra.ringtone.TITLE"

    .line 181
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "oneplus.intent.extra.ringtone.simid"

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    if-nez p1, :cond_5

    if-ne v0, v4, :cond_3

    .line 185
    sget p1, Lcom/android/settings/R$string;->oneplus_sim1_ringtone_switch:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    if-ne v0, p1, :cond_4

    .line 187
    sget p1, Lcom/android/settings/R$string;->oneplus_sim2_ringtone_switch:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const p1, 0x1040717

    .line 189
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 192
    :cond_5
    :goto_0
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    .line 193
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setVolumeControlStream(I)V

    .line 201
    sget v0, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 202
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    new-instance p1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "phone"

    .line 213
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string p1, "audio"

    .line 214
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 215
    new-instance p1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->enableSpringEdgeEffect()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 230
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onPause()V
    .locals 3

    .line 283
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "key_selected_item_uri"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 113
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 363
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 364
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    if-nez v0, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->lookupRingtoneNames()V

    :cond_0
    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    .line 368
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 369
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_selected_item_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected playRingtone(ILandroid/net/Uri;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 236
    iget-object p2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 241
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone2()V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUriForDefaultItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RingtoneBaseActivity"

    invoke-static {v1, v0}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 249
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    .line 254
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    .line 256
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    .line 257
    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v2

    const/4 v3, 0x2

    .line 256
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->startPreview()V

    :cond_2
    return-void
.end method

.method protected startVibrate(Landroid/net/Uri;)V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 308
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p1, v2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateForSms(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    .line 319
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mIsAlarmNeedVibrate:Z

    if-eqz v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p1, v2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateForAlarm(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p1, v2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateForNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p1, v2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateForRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    .line 326
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyRingMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 327
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void
.end method

.method protected stopAnyPlayingRingtone()V
    .locals 1

    .line 339
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone2()V

    .line 340
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopVibrate()V

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    .line 342
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method protected stopVibrate()V
    .locals 1

    .line 333
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    .line 334
    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method

.method protected abstract updateSelected()V
.end method
