.class public Lcom/oneplus/settings/aboutphone/OPAboutPhone;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPAboutPhone.java"

# interfaces
.implements Lcom/oneplus/settings/aboutphone/Contract$View;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private isBindSimLockServiceSuccess:Z

.field private mAdapter:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentClickView:Landroid/view/View;

.field private mDevHitToast:Landroid/widget/Toast;

.field private mHandler:Landroid/os/Handler;

.field private mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSimLockConnection:Landroid/content/ServiceConnection;

.field private uimRemoteSimLockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

.field private uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 214
    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$4;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$4;-><init>()V

    sput-object v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;-><init>(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)V

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->isBindSimLockServiceSuccess:Z

    .line 286
    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$5;-><init>(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)V

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mSimLockConnection:Landroid/content/ServiceConnection;

    .line 306
    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$6;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$6;-><init>(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)V

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mAdapter:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/aboutphone/OPAboutPhone;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mCurrentClickView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->uimRemoteSimLockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    return-object p0
.end method

.method static synthetic access$502(Lcom/oneplus/settings/aboutphone/OPAboutPhone;Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->uimRemoteSimLockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private bindSimLockService()V
    .locals 5

    .line 248
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->isUimLockServiceEnable()Z

    move-result v0

    const-string v1, "OPAboutPhone"

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 250
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.qualcomm.qti.uim"

    const-string v4, "com.qualcomm.qti.uim.RemoteSimLockService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 252
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mSimLockConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->isBindSimLockServiceSuccess:Z

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind RemoteSimLockService isBindSimLockServiceSuccess = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->isBindSimLockServiceSuccess:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "isSimLockEnable not exist."

    .line 258
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 138
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "soft_view"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPLayoutPreference;

    .line 139
    sget v1, Lcom/android/settings/R$id;->phone_software_info:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    sget v1, Lcom/android/settings/R$id;->recycler_view_software_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 144
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/oneplus/settings/aboutphone/OPAboutPhone$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$3;-><init>(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isUimLockServiceEnable()Z
    .locals 4

    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.qualcomm.qti.uim"

    const-string v3, "com.qualcomm.qti.uim.RemoteSimLockService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 279
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private unBindSimLockService()V
    .locals 2

    .line 264
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->isBindSimLockServiceSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->uimRemoteSimLockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->uimRemoteSimLockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;->deregisterCallback(Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;)I

    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mSimLockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 269
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p0, "OPAboutPhone"

    const-string v0, "unbindService mSimLockConnection."

    .line 271
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelToast()V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mDevHitToast:Landroid/widget/Toast;

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public displayHardWarePreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "hardware_view"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPLayoutPreference;

    .line 110
    sget v1, Lcom/android/settings/R$id;->phone_hardware_info:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setPhoneImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-virtual {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->done()Landroid/view/View;

    .line 114
    invoke-virtual {v0, p2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setCameraMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    .line 115
    invoke-virtual {v0, p3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setCpuMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    .line 116
    invoke-virtual {v0, p4}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setScreenMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "GB RAM + "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->showROMStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ROM"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setStorageMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    .line 118
    invoke-virtual {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->done()Landroid/view/View;

    return-void
.end method

.method public displaySoftWarePreference(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;",
            ">;)V"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mAdapter:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    .line 124
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 125
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mAdapter:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 127
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mAdapter:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;-><init>(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->setOnItemClickListener(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPAboutPhone"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 93
    sget p0, Lcom/android/settings/R$xml;->op_about_phone:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x64

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    invoke-virtual {p1}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->enableDevelopmentSettings()V

    .line 193
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->initView()V

    .line 102
    new-instance p1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, p0, p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/oneplus/settings/aboutphone/Contract$View;)V

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 199
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 200
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 228
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstUnify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->bindSimLockService()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 235
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 236
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstUnify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->unBindSimLockService()V

    .line 238
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public performHapticFeedback()V
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mCurrentClickView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public showLongToast(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->showLongToast(Ljava/lang/String;)V

    return-void
.end method

.method public showLongToast(Ljava/lang/String;)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mDevHitToast:Landroid/widget/Toast;

    .line 170
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
