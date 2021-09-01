.class public Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/oneplus/accountsdk/auth/OPAuthWebView$c;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShowChooseIntent:Z

.field private mAccountBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBindArray:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/oneplus/accountsdk/auth/c$a;

.field private mResponse:Lcom/oneplus/accountsdk/auth/OPAuthResponse;

.field private mWeakResponse:Ljava/lang/ref/WeakReference;

.field private mWebView:Lcom/oneplus/accountsdk/auth/OPAuthWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;-><init>(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mAccountBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->isShowChooseIntent:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->isShowChooseIntent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mBindArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)Lcom/oneplus/accountsdk/auth/c$a;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mListener:Lcom/oneplus/accountsdk/auth/c$a;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)Lcom/oneplus/accountsdk/auth/OPAuthResponse;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mResponse:Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->handleOnCancel()V

    return-void
.end method

.method private getOPAccountVersionCode(Landroid/content/Context;)I
    .locals 3

    const-string p0, "com.oneplus.account"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private handleOnCancel()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mResponse:Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->getOPAccountVersionCode(Landroid/content/Context;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_statusCode"

    const-string v2, "2004"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mResponse:Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    invoke-virtual {p0, v0}, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mResponse:Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a:Lcom/oneplus/accountsdk/a;

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a(Lcom/oneplus/accountsdk/a;)V

    :cond_1
    return-void
.end method

.method private initAccountBroadcastReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.onplus.account.login.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oneplus.account.bind.info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onplus.account.cancel.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mAccountBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult: requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->isShowChooseIntent:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mBindArray:[Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lcom/oneplus/accountsdk/auth/OPAuth;->getAccessAccountPremission(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mListener:Lcom/oneplus/accountsdk/auth/c$a;

    invoke-static {v3, v4}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/c$a;)V

    :cond_1
    iput-boolean v2, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->isShowChooseIntent:Z

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mListener:Lcom/oneplus/accountsdk/auth/c$a;

    invoke-static {v0, v1}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/c$a;)V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_5

    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_5

    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$3;-><init>(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mWebView:Lcom/oneplus/accountsdk/auth/OPAuthWebView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mResponse:Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a:Lcom/oneplus/accountsdk/a;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a(Lcom/oneplus/accountsdk/a;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBackPressed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mWebView:Lcom/oneplus/accountsdk/auth/OPAuthWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mWebView:Lcom/oneplus/accountsdk/auth/OPAuthWebView;

    invoke-virtual {v0}, Lcom/oneplus/accountsdk/auth/OPAuthWebView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mResponse:Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a:Lcom/oneplus/accountsdk/a;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a(Lcom/oneplus/accountsdk/a;)V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    const-string v2, "response"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mWeakResponse:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mResponse:Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    :cond_1
    const-string v0, "extra_bind_info_array"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mBindArray:[Ljava/lang/String;

    const-string v0, "extra_middle"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$2;

    invoke-direct {p1, p0}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$2;-><init>(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)V

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mListener:Lcom/oneplus/accountsdk/auth/c$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mListener:Lcom/oneplus/accountsdk/auth/c$a;

    invoke-static {p1, v0}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/c$a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/a;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Missing permission"

    invoke-static {v0, p1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mBindArray:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/oneplus/accountsdk/auth/OPAuth;->getAccessAccountPremission(Landroid/app/Activity;I[Ljava/lang/String;)Z

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->initAccountBroadcastReceiver()V

    return-void

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mAccountBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mAccountBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mWebView:Lcom/oneplus/accountsdk/auth/OPAuthWebView;

    if-eqz v0, :cond_1

    const-string v1, "SignCallback"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mWebView:Lcom/oneplus/accountsdk/auth/OPAuthWebView;

    const-string v1, "JSBridge"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mWebView:Lcom/oneplus/accountsdk/auth/OPAuthWebView;

    const-string v1, "Retry"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mWebView:Lcom/oneplus/accountsdk/auth/OPAuthWebView;

    invoke-virtual {v0}, Lcom/oneplus/accountsdk/auth/OPAuthWebView;->onDestroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mResponse:Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onShowError()V
    .locals 2

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusAuthDeviceIdUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "Hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "file:///android_res/raw/oneplus_auth_errorpage_en.html"

    goto :goto_2

    :cond_2
    :goto_0
    const-string v0, "file:///android_res/raw/oneplus_auth_errorpage_zh_tw.html"

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "file:///android_res/raw/oneplus_auth_errorpage_zh_cn.html"

    :goto_2
    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->mWebView:Lcom/oneplus/accountsdk/auth/OPAuthWebView;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
