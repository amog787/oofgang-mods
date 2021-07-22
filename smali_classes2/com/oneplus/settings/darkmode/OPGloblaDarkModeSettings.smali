.class public Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGloblaDarkModeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mItemClicked:Z = false


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListView:Landroid/widget/ListView;

.field mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mFirstLoad:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mNeedReloadData:Z

.field private mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

.field private mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

.field private final mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToastTip:Landroid/widget/Toast;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.oneplus.settings.multiapp/com.oneplus.settings.multiapp.OPBasicDeviceAdminReceiver"

    .line 87
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppList:Ljava/util/List;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mNeedReloadData:Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mFirstLoad:Z

    .line 91
    new-instance v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$2;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 363
    new-instance v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$6;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$6;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/widget/ListView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mItemClicked:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 50
    sput-boolean p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mItemClicked:Z

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->startLoadData()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$802(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mNeedReloadData:Z

    return p1
.end method

.method private initView()V
    .locals 4

    .line 203
    sget-boolean v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mItemClicked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 204
    sput-boolean v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mItemClicked:Z

    return-void

    .line 207
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 208
    sget v0, Lcom/android/settings/R$id;->op_app_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppListView:Landroid/widget/ListView;

    .line 209
    new-instance v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppList:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    .line 210
    iget-object v2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/settings/R$layout;->op_global_dark_mode_head_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 213
    sget v2, Lcom/android/settings/R$id;->op_global_drakmode_toggle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 214
    iget-object v3, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 215
    sget v2, Lcom/android/settings/R$id;->switch_bar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 216
    sget v3, Lcom/android/settings/R$string;->op_global_drak_mode_apps_manage:I

    invoke-virtual {v2, v3, v3}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 218
    iget-object v2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 220
    new-instance v1, Lcom/oneplus/settings/darkmode/-$$Lambda$OPGloblaDarkModeSettings$fsazuE0NxjdMcJTYWmUG8GjWbfs;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/darkmode/-$$Lambda$OPGloblaDarkModeSettings$fsazuE0NxjdMcJTYWmUG8GjWbfs;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 230
    iget-object v1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 231
    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mLoadingContainer:Landroid/view/View;

    .line 232
    sget v1, Lcom/android/settings/R$id;->loading_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 233
    new-instance v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;

    .line 266
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    .line 267
    invoke-direct {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->startLoadData()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->showTips()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onResume$0(Landroid/widget/Switch;Z)V
    .locals 3

    const/4 p1, 0x1

    .line 162
    sput-boolean p1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mItemClicked:Z

    if-eqz p2, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "app_dark_main"

    const-string v1, "main_switch"

    .line 165
    invoke-static {v0, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->enableList(Z)V

    .line 167
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$3;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$3;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;Z)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showTips()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mToastTip:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->oneplus_global_dark_mode_only_valid_in_dark_mode:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mToastTip:Landroid/widget/Toast;

    .line 275
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startLoadData()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->loadAppMode(I)Ljava/util/Map;

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$1$OPGloblaDarkModeSettings(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->lambda$initView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onResume$0$OPGloblaDarkModeSettings(Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->lambda$onResume$0(Landroid/widget/Switch;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 128
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    sget p1, Lcom/android/settings/R$layout;->op_app_list_activity:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 130
    iput-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "vibrator"

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    const-string p1, "package"

    .line 134
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    const-string p1, "account"

    .line 135
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/AccountManager;

    const-string p1, "user"

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string p1, "appops"

    .line 138
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 140
    new-instance p1, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, p0, v0, v1}, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    .line 141
    invoke-direct {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->initView()V

    .line 142
    invoke-direct {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->registerPackageReceiver()V

    .line 143
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x3f2

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 381
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 382
    sput-boolean v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mItemClicked:Z

    .line 383
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 385
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 386
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    invoke-virtual {p0}, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->releaseAppList()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 286
    invoke-static {p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mVibrator:Landroid/os/Vibrator;

    const/16 p2, 0x3eb

    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mVibratePattern:[J

    .line 289
    iget-object p2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, p2}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_0
    if-lez p3, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    const/4 p1, 0x1

    .line 295
    sput-boolean p1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mItemClicked:Z

    .line 296
    iget-object p2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    invoke-virtual {p2, p3}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->getSelected(I)Z

    move-result p2

    xor-int/2addr p2, p1

    .line 297
    iget-object p4, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppList:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oneplus/settings/better/OPAppModel;

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    const/4 v0, 0x0

    const-string v1, "op_dark_mode_tips_already_show"

    invoke-static {p5, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p5

    if-nez p5, :cond_2

    .line 299
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result p5

    invoke-static {p5}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->isGrayList(I)Z

    move-result p5

    if-eqz p5, :cond_2

    if-eqz p2, :cond_2

    .line 301
    new-instance p5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p5, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->op_global_drak_mode_support_description:I

    .line 302
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->okay:I

    new-instance v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$5;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$5;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    .line 303
    invoke-virtual {p5, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {p5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p5

    invoke-virtual {p5}, Landroid/app/Dialog;->show()V

    .line 312
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Oneplus global black  app list item click getAppopsMode:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "OPGloblaDarkModeSettings"

    invoke-static {v0, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result p5

    const/16 v0, 0x68

    const/16 v1, 0x65

    const/16 v2, 0x3f2

    if-ne p5, v1, :cond_3

    .line 314
    invoke-virtual {p4, p1}, Lcom/oneplus/settings/better/OPAppModel;->setDisable(Z)V

    .line 315
    invoke-virtual {p4, v0}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    .line 316
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p5

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, p5, v1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 318
    :cond_3
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 319
    invoke-virtual {p4, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    .line 320
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p5

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p5, v0, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 322
    :cond_4
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result p1

    const/16 p5, 0x64

    const/16 v0, 0x67

    if-ne p1, p5, :cond_5

    .line 323
    invoke-virtual {p4, v0}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    .line 324
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p5

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, p5, v1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 326
    :cond_5
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 327
    invoke-virtual {p4, p5}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    .line 328
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v0

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v0, v1, p5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 330
    :cond_6
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result p1

    const/16 p5, 0x69

    const/16 v1, 0x66

    if-ne p1, v1, :cond_7

    .line 331
    invoke-virtual {p4, p5}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    .line 332
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v0

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v0, v1, p5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 334
    :cond_7
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result p1

    if-ne p1, p5, :cond_8

    .line 335
    invoke-virtual {p4, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    .line 336
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p5

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p5, v0, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    .line 338
    :cond_8
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result p1

    const/16 p5, 0x6b

    if-ne p1, p5, :cond_9

    .line 339
    invoke-virtual {p4, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    .line 340
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p5

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p5, v0, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    .line 342
    :cond_9
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result p1

    const/16 p5, 0x6a

    if-ne p1, p5, :cond_a

    .line 343
    invoke-virtual {p4, v0}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    .line 344
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p5

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, p5, v1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    .line 346
    :cond_a
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result p1

    const/16 p5, 0x6c

    if-ne p1, p5, :cond_b

    .line 347
    invoke-virtual {p4, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    .line 348
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p5

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p5, v0, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    .line 351
    :cond_b
    invoke-virtual {p4, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    .line 352
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p5

    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p5, v0, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 355
    :goto_0
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const-string p5, "app_dark_app"

    const-string v0, "package_name"

    invoke-static {p5, v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p4}, Lcom/oneplus/settings/better/OPAppModel;->getVersionCode()I

    move-result p1

    const-string p4, "0"

    if-lez p1, :cond_c

    .line 357
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_c
    move-object p1, p4

    :goto_1
    const-string v0, "version_code"

    invoke-static {p5, v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    const-string p4, "1"

    :cond_d
    const-string p1, "app_switch"

    .line 358
    invoke-static {p5, p1, p4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    invoke-virtual {p0, p3, p2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->setSelected(IZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 185
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 187
    sput-boolean v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mItemClicked:Z

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 155
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_force_dark_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 159
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/oneplus/settings/darkmode/-$$Lambda$OPGloblaDarkModeSettings$IDQfUg3wamKbZHcyGaART38ODL4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/darkmode/-$$Lambda$OPGloblaDarkModeSettings$IDQfUg3wamKbZHcyGaART38ODL4;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 176
    iget-boolean v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mNeedReloadData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mFirstLoad:Z

    if-nez v0, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->startLoadData()V

    .line 178
    iput-boolean v2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mNeedReloadData:Z

    .line 180
    :cond_2
    iput-boolean v2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->mFirstLoad:Z

    return-void
.end method
