.class public Lcom/android/settings/wifi/RequestToggleWiFiActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestToggleWiFiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;
    }
.end annotation


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;

.field private mLastUpdateState:I

.field private final mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

.field private mState:I

.field private final mTimeoutCommand:Ljava/lang/Runnable;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;Lcom/android/settings/wifi/RequestToggleWiFiActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    .line 56
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$RequestToggleWiFiActivity$PwZgoHTFFBr3iYEQbWj0vZPfHpw;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$RequestToggleWiFiActivity$PwZgoHTFFBr3iYEQbWj0vZPfHpw;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 66
    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_0
    return-void
.end method

.method private scheduleToggleTimeout()V
    .locals 3

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unscheduleToggleTimeout()V
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateUi()V
    .locals 7

    .line 225
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    if-ne v0, v1, :cond_0

    return-void

    .line 228
    :cond_0
    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    goto/16 :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5, v6, v6, v6}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v4, v6, v6, v6}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 265
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 266
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 267
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 268
    sget v1, Lcom/android/settings/R$string;->wifi_stopping:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget v3, Lcom/android/settings/R$string;->allow:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 253
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 254
    sget v3, Lcom/android/settings/R$string;->deny:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 255
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 256
    sget v3, Lcom/android/settings/R$string;->wifi_ask_disable:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5, v6, v6, v6}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v4, v6, v6, v6}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 245
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 246
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 247
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 248
    sget v1, Lcom/android/settings/R$string;->wifi_starting:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 232
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget v3, Lcom/android/settings/R$string;->allow:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 233
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 234
    sget v3, Lcom/android/settings/R$string;->deny:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 235
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 236
    sget v3, Lcom/android/settings/R$string;->wifi_ask_enable:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method public synthetic lambda$new$0$RequestToggleWiFiActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->lambda$new$0()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 p1, 0x4

    .line 124
    iput p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 125
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    goto :goto_0

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 p1, 0x2

    .line 117
    iput p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 118
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 70
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-class p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 83
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x43fa0000    # 500.0f

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x794f8bbe

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const p1, 0x12ecabe9

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "android.net.wifi.action.REQUEST_DISABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_2
    const-string v2, "android.net.wifi.action.REQUEST_ENABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_2

    :cond_4
    const/4 p1, 0x3

    .line 101
    iput p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_2

    .line 97
    :cond_5
    iput v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    :goto_2
    return-void

    .line 89
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find app with package name "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RequestToggleWiFiActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 7

    .line 140
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->register()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 146
    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v1, v4, :cond_b

    if-eq v1, v5, :cond_7

    const/4 v6, 0x4

    if-eq v1, v3, :cond_4

    if-eq v1, v6, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    iput v3, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 203
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    :cond_4
    if-eq v0, v4, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_0

    .line 170
    :cond_5
    iput v6, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 171
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    .line 164
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_7
    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v3, :cond_8

    goto :goto_0

    .line 180
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 185
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    .line 190
    :cond_a
    iput v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_0

    :cond_b
    if-eq v0, v5, :cond_d

    if-eq v0, v3, :cond_c

    goto :goto_0

    .line 150
    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 155
    :cond_d
    iput v5, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 156
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 214
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->unregister()V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->unscheduleToggleTimeout()V

    .line 221
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method
