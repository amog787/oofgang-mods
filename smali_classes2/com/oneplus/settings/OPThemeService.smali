.class public Lcom/oneplus/settings/OPThemeService;
.super Landroid/app/Service;
.source "OPThemeService.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

.field private mThemeDoneReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcom/oneplus/settings/OPThemeService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPThemeService$1;-><init>(Lcom/oneplus/settings/OPThemeService;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/oneplus/settings/OPThemeService$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPThemeService$2;-><init>(Lcom/oneplus/settings/OPThemeService;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mThemeDoneReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPThemeService;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/oneplus/settings/OPThemeService;->dismissAndStopService()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPThemeService;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oneplus/settings/OPThemeService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private dismissAndStopService()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    const-string v1, "OPThemeService"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "dismiss"

    .line 86
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mThemeDoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "unregisterReceiver"

    .line 92
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :goto_1
    sget v0, Lcom/android/settings/R$string;->switch_theme_has_success:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.settings.oneplus_theme_ready"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/oneplus/settings/OPThemeService;->mThemeDoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 66
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/android/settings/R$style;->Theme_SubSettings:I

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    sget v2, Lcom/android/settings/R$string;->switch_skin_doing:I

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 72
    iget-object p0, p0, Lcom/oneplus/settings/OPThemeService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "OPThemeService"

    const-string v1, "onStartCommand"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0}, Lcom/oneplus/settings/OPThemeService;->showDialog()V

    .line 55
    invoke-direct {p0}, Lcom/oneplus/settings/OPThemeService;->registerReceiver()V

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
