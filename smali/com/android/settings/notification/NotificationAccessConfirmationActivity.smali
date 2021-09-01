.class public Lcom/android/settings/notification/NotificationAccessConfirmationActivity;
.super Landroid/app/Activity;
.source "NotificationAccessConfirmationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mNm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->onAllow()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->cancel()V

    return-void
.end method

.method private onAllow()V
    .locals 5

    const-string v0, "NotificationAccessConfirmationActivity"

    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 101
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lacks permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mNm:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    move-exception v1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get service info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onCreate$0$NotificationAccessConfirmationActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$NotificationAccessConfirmationActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->lambda$onCreate$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "notification"

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mNm:Landroid/app/NotificationManager;

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "component_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "user_id"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "package_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 65
    sget v1, Lcom/android/settings/R$string;->notification_listener_security_warning_title:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 68
    sget v1, Lcom/android/settings/R$string;->notification_listener_security_warning_summary:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 71
    sget p1, Lcom/android/settings/R$string;->allow:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 72
    new-instance p1, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$UvveyFMEwlZ6m4ViLmcVExulBE8;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$UvveyFMEwlZ6m4ViLmcVExulBE8;-><init>(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;)V

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    sget p1, Lcom/android/settings/R$string;->deny:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 74
    new-instance p1, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$hd7i7CSD_dVpjvK__hXE8eDM2I0;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$hd7i7CSD_dVpjvK__hXE8eDM2I0;-><init>(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;)V

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p0, p1}, Lcom/android/internal/app/AlertController;->create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object p1

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->installContent(Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
