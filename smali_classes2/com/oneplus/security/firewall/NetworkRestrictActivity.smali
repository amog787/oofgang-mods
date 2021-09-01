.class public Lcom/oneplus/security/firewall/NetworkRestrictActivity;
.super Lcom/oneplus/settings/BaseAppCompatActivity;
.source "NetworkRestrictActivity.java"

# interfaces
.implements Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/firewall/NetworkRestrictActivity$AppAddOrRemovedReceiver;,
        Lcom/oneplus/security/firewall/NetworkRestrictActivity$NetworkRestrictHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/oneplus/security/firewall/NetworkRestrictAdapter;

.field private mAddOrRemovedReceiver:Lcom/oneplus/security/firewall/NetworkRestrictActivity$AppAddOrRemovedReceiver;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mIsTaskDoing:Z

.field private mListView:Landroid/widget/ListView;

.field protected mMenu:Landroid/view/Menu;

.field private mNetworkRestrictObserver:Landroid/database/ContentObserver;

.field protected mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

.field private mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

.field private mSettingAll:Landroid/widget/TextView;

.field private mShowSystemApp:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/oneplus/settings/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mIsTaskDoing:Z

    .line 62
    iput-boolean v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mShowSystemApp:Z

    const/4 v0, 0x5

    .line 68
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 233
    new-instance v0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/security/firewall/NetworkRestrictActivity$5;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mNetworkRestrictObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mShowSystemApp:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Lcom/oneplus/security/firewall/NetworkRestrictAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mAdapter:Lcom/oneplus/security/firewall/NetworkRestrictAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mSettingAll:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mIsTaskDoing:Z

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/security/firewall/NetworkRestrictActivity;IJ)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->sendHandlerMessage(IJ)V

    return-void
.end method

.method private handleSpringListView(Landroid/view/View;I)V
    .locals 0

    .line 316
    sget p0, Lcom/android/settings/R$id;->spring_layout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 317
    invoke-virtual {p0, p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->addSpringView(I)V

    .line 318
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/edgeeffect/SpringListView;

    .line 319
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->createViewEdgeEffectFactory()Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/edgeeffect/SpringListView;->setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;)V

    return-void
.end method

.method private sendHandlerMessage(IJ)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 227
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 95
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sget p1, Lcom/android/settings/R$layout;->activity_network_restrict_applist:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->app_list:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->handleSpringListView(Landroid/view/View;I)V

    .line 99
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 102
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 103
    new-instance v0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/security/firewall/NetworkRestrictActivity$1;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget p1, Lcom/android/settings/R$id;->setting_all:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mSettingAll:Landroid/widget/TextView;

    .line 111
    sget p1, Lcom/android/settings/R$id;->app_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mListView:Landroid/widget/ListView;

    .line 113
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->oneplus_security_layout_margin_top1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 115
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 119
    new-instance p1, Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-direct {p1, p0}, Lcom/oneplus/security/firewall/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

    .line 120
    new-instance p1, Lcom/oneplus/security/firewall/NetworkRestrictActivity$NetworkRestrictHandler;

    invoke-direct {p1, p0}, Lcom/oneplus/security/firewall/NetworkRestrictActivity$NetworkRestrictHandler;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)V

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance p1, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;

    invoke-direct {p1, p0}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mAdapter:Lcom/oneplus/security/firewall/NetworkRestrictAdapter;

    .line 122
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mAdapter:Lcom/oneplus/security/firewall/NetworkRestrictAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/firewall/NetworkRestrictManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getAppList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->updateData(Ljava/util/List;)V

    .line 124
    new-instance p1, Landroidx/appcompat/widget/PopupMenu;

    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mSettingAll:Landroid/widget/TextView;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    .line 125
    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mMenu:Landroid/view/Menu;

    .line 126
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    .line 127
    sget v0, Lcom/android/settings/R$menu;->menu_firewall_batch:I

    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 128
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    new-instance v0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/security/firewall/NetworkRestrictActivity$2;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 157
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    new-instance v0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/security/firewall/NetworkRestrictActivity$3;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/PopupMenu;->setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V

    .line 164
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mSettingAll:Landroid/widget/TextView;

    new-instance v0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/security/firewall/NetworkRestrictActivity$4;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/firewall/NetworkRestrictManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mShowSystemApp:Z

    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, p0, v0, v1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->refreshAppsNetworkRestrict(Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;ZLjava/util/concurrent/Executor;)V

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/oneplus/security/database/Const;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mNetworkRestrictObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.oneplus.security.ACTION_REFRESH_APP_LIST"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$AppAddOrRemovedReceiver;

    invoke-direct {v0, p0}, Lcom/oneplus/security/firewall/NetworkRestrictActivity$AppAddOrRemovedReceiver;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)V

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mAddOrRemovedReceiver:Lcom/oneplus/security/firewall/NetworkRestrictActivity$AppAddOrRemovedReceiver;

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mAddOrRemovedReceiver:Lcom/oneplus/security/firewall/NetworkRestrictActivity$AppAddOrRemovedReceiver;

    invoke-virtual {v0, p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 200
    sget v0, Lcom/android/settings/R$string;->menu_show_system_app:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    .line 201
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mNetworkRestrictObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mAddOrRemovedReceiver:Lcom/oneplus/security/firewall/NetworkRestrictActivity$AppAddOrRemovedReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 185
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mShowSystemApp:Z

    if-nez v0, :cond_1

    .line 210
    iput-boolean v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mShowSystemApp:Z

    .line 211
    sget v0, Lcom/android/settings/R$string;->menu_hide_system_app:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mShowSystemApp:Z

    .line 214
    sget v0, Lcom/android/settings/R$string;->menu_show_system_app:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 216
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/firewall/NetworkRestrictManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mShowSystemApp:Z

    iget-object v2, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, p0, v0, v2}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->refreshAppsNetworkRestrict(Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;ZLjava/util/concurrent/Executor;)V

    return v1
.end method

.method protected onPause()V
    .locals 1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onTaskError(ILjava/lang/String;)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadAppError type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkRestrictActivity"

    invoke-static {v0, p2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object p2, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

    if-eqz p2, :cond_0

    .line 299
    :try_start_0
    invoke-virtual {p2}, Lcom/oneplus/security/firewall/OPProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 301
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 304
    iput-boolean p2, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mIsTaskDoing:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 306
    sget p1, Lcom/android/settings/R$string;->load_error:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/security/utils/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 308
    sget p1, Lcom/android/settings/R$string;->set_error:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/security/utils/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTaskFinished(ILjava/lang/Object;)V
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadAppFinished type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkRestrictActivity"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 277
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mAdapter:Lcom/oneplus/security/firewall/NetworkRestrictAdapter;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->updateData(Ljava/util/List;)V

    .line 278
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 280
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-virtual {p1}, Lcom/oneplus/security/firewall/OPProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 289
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/firewall/NetworkRestrictManager;

    move-result-object p1

    iget-boolean p2, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mShowSystemApp:Z

    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, p0, p2, v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->refreshAppsNetworkRestrict(Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;ZLjava/util/concurrent/Executor;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 291
    iput-boolean p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mIsTaskDoing:Z

    return-void
.end method

.method public onTaskStart(IZ)V
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadAppStart type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkRestrictActivity"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mIsTaskDoing:Z

    .line 262
    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    if-ne p1, v0, :cond_0

    .line 263
    iget-object p2, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mAdapter:Lcom/oneplus/security/firewall/NetworkRestrictAdapter;

    invoke-virtual {p2}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->getmAppUidItemList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 267
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

    sget p2, Lcom/android/settings/R$string;->firewall_rule_batch_operating:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 268
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1

    .line 264
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

    sget p2, Lcom/android/settings/R$string;->text_waiting:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 265
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mProgressDialog:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_2
    :goto_1
    return-void
.end method
